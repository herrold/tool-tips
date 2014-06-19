#!/usr/bin/python

# This script will ultimately fix a problem with LSB 5.0 and GTK+ 3,
# where a number of structs are not properly defined.  This script will
# find those structs, parse the correct definition from the actual GTK+ 3
# headers, and output SQL to add those definitions to the database.
#
# It requires a usable database (defined in the usual way; if you can
# "make restore" a specdb checkout, you've got what you need for this
# script) and the GTK+ 3 headers.  For the best consistency, run this
# script against the headers as delivered in openSUSE 12.3 (which was the
# distribution the database was originally defined from). The script
# expects to find these in a local directory named "gtk-3.0" - copy
# from the noted distro to your work directory first.

import sys
import os
import re
import MySQLdb
from string import Template

# debug enabled will show the members scraped from the upstream headers
debug = 1

libraries = ["libgdk-3", "libgtk-3"]
added_fptrs = []


def walk_headers(path):
    for (subpath, dirs, files) in os.walk(path):
        for fn in files:
            if re.search(r'\.h$', fn):
                yield os.path.join(subpath, fn)


# http://www.incognitomind.com/?p=238
# adapted from: http://stackoverflow.com/questions/241327/python-snippet-to-remove-c-and-c-comments  
def un_comment(text):  
    '''strips c/c++ comments'''

    rep = r'//.*?$|/\*.*?\*/|\'(?:\\.|[^\\\'])*\'|"(?:\\.|[^\\"])*"'  
    pattern = re.compile(rep, re.DOTALL | re.MULTILINE)  
    return re.sub(pattern,  
        lambda match:(match.group(0),"")[match.group(0).startswith('/')], text)


def addmembers(flag, struct, grp):
    # we are called after a regexp match/split: clean first
    typ = ' '.join(grp.group(1).split())
    name = ' '.join(grp.group(2).split())
    bitf = 0

    # now try to fix special cases
    # 1: "foo" "*bar" instead of "foo *" "bar"
    if name.startswith('*'):
	name = name.strip('*').strip()
	typ = ' '.join((typ.strip(), '*'))
	#print "DEBUG fixer - ptr: %s|%s" % (typ, name)

    # 2: bitfields, split as "guint foo :" "1"
    if typ.endswith(':'):
	# type=guint submenu_placement :
	typ = typ.strip(':').strip()
	bitf = name
	bitf_mem = re.search(r'(.+)\s+([\w*]+)', typ, re.S)
	if bitf_mem:
	    typ = bitf_mem.group(1)
	    name = bitf_mem.group(2)
	#print "DEBUG fixer - bitf: %s|%s|%s" % (typ, name, bitf)

    # 3: array types.  no idea yet

    struct.append((flag, typ, name, bitf))


def extract_structs(header_path):
    '''extract structure definitions from a tree of headers'''

    # There are many problems with using a simple regexp to parse a
    # struct member.  We'll use a "cleaner" function (above) to try
    # to help with that.

    with open(header_path) as header:
        struct_name = None
        struct_members = []
        header_data = un_comment(header.read())
        while header_data:
            for line in re.split(r'[;\}]\s*', header_data, 0, re.S):
                if struct_name is None:
                    # try to find beginning of struct declr
                    struct_match = re.search(r'^\s*struct\s+(\w+)\s+{',line,re.MULTILINE)
                    if struct_match:
                        struct_name = struct_match.group(1)
                        # since we split on ';' or '}', first member is in
                        # this line also, find by '{'. guess it's not fptr 
                        # which appears to always be true in gtk
                        struct_mem = re.search(r'{\s*(.+)\s+([\w*]+)',line,re.S)
                        if struct_mem:
                            commas = struct_mem.group(1).count(',')
                            # cheat: just dup members to get counts right
                            while commas > 0:
                                addmembers(None, struct_members, struct_mem)
                                commas -= 1
                            addmembers(None, struct_members, struct_mem)
                else:
                    if not line.strip():
                        yield (struct_name, struct_members)
                        struct_name = None
                        struct_members = []
                    else:
                        # try to identify function pointer members
                        struct_mem_fptr = re.search(r'(.+\s+\*?)(\(\*.+)',
                                               line.strip(), re.S)
                        if struct_mem_fptr:
                            addmembers("fptr", struct_members, struct_mem_fptr)
                        else:
                            # then regular members
                            struct_mem = re.search(r'(.+)\s+([\w*]+)',
                                                   line.strip(), re.S)
                            if struct_mem:
                                commas = struct_mem.group(1).count(',')
                                # cheat: just dup members to get counts right
                                while commas > 0:
                                    addmembers(None, struct_members, struct_mem)
                                    commas -= 1
                                addmembers(None, struct_members, struct_mem)

            header_data = un_comment(header.read())


def do_subid_query(conn, query, param):
    cursor = conn.cursor()
    cursor.execute(query, param)
    for row in cursor:
        yield row


def get_library_id_by_name(conn, name):
    cursor = conn.cursor()
    cursor.execute("SELECT Lid FROM Library WHERE Lname = %s", (name,))
    if cursor.rowcount != 1:
        raise RuntimeError("more than one row returned for library " + name)
    return cursor.fetchone()[0]


def get_header_id_by_name(conn, name):
    cursor = conn.cursor()
    cursor.execute("SELECT Hid FROM Header WHERE Hname = %s", (name,))
    if cursor.rowcount != 1:
        raise RuntimeError("more than one row returned for header " + name)
    return cursor.fetchone()[0]


def get_headers_from_lib(conn, lib_id):
    return do_subid_query(conn, "SELECT Hid FROM Header WHERE Hlib = %s", (lib_id,))


def get_header_groups(conn, header_id):
    return do_subid_query(conn,
                          "SELECT HGid FROM HeaderGroup WHERE HGheader = %s",
                          (str(header_id),))


def get_structs_in_header_group(conn, hgroup_id):
    return do_subid_query(conn,
                          "SELECT Tid, Tname FROM Type " +
                          "WHERE Ttype = 'Struct' " +
                          "and Theadgroup = %s ",
                          (hgroup_id,))


def getid(conn, membertype, Lib=None):
    '''return the Type.Tid for given Type.Tname matching
       optional Type.Tlibrary'''

    # for Gtk/Gdk there are likely dupes, so filter down by library
    # in the "nothing is ever simple" category, this works okay
    # for ordinary types, which do indeed begin with Gtk or Gdk
    # for function pointer types, we need to look deeper  TODO
    #
    if not Lib:
        if membertype.startswith('Gtk'):
            Lib = 'libgtk-3'
        elif membertype.startswith('Gdk'):
            Lib = 'libgdk-3'

    # we'd like to check if the type is included, but many types are not.
    # e.g. pointers: the base type is included but not the ptr itself.
    # we could follow the chain, but that is a bunch more work, so skip check.
    #
    cursor = conn.cursor()
    query = "SELECT DISTINCT Tid FROM Type JOIN ArchType on Tid=ATtid " + \
            "WHERE Tname='%s'" % membertype
    if Lib:
        query += "AND Tlibrary='%s'" % Lib
    cursor.execute(query)
    if cursor.rowcount == 0:
        return 0
    else:
        return cursor.fetchone()[0]


def addfptr(conn, rtype, data):
    ''' build a function pointer type for the specdb.
        needs Type, ArchType, TypeMembers. Try first to match in
        case it exists, if so don't build new one. Returns the Tid '''
 
    # Need to decompose 'data' which is the RHS of ftpr. So perhaps:
    #
    #   "GtkTreeSortable *sortable, GtkTreeIterCompareFunc  sort_func,
    #    gpointer user_data, GDestroyNotify destroy"
    #
    # We need to produce a string which will be the fptr typename:
    # (*) (GtkTreeSortable *, GtkTreeIterCompareFunc, gpointer, GDestroyNotify)
    # and the individual "arguments", so we can make up typemembers
    #
    TMtmpl = "INSERT INTO TypeMember " + \
             "(TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) " + \
             "VALUES(0,'$name',$tid,$pos,$member,'5.0'); # type=$typ"
    TMsql = Template(TMtmpl)
    Ttmpl = "INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) " + \
            "VALUES(0,'$name','FuncPtr',0,'libgtk-3');"
    Tsql = Template(Ttmpl)
    ATtmpl = "INSERT INTO ArchType " + \
             "(ATaid,ATtid,ATsize,ATappearedin,ATbasetype) " + \
             "VALUES(1,@Tid,0,'',$ret);"
    ATsql = Template(ATtmpl)

    if data == 'void':
        # recognize special case, return the ftpr string to looup later
        return ('void (*)(void)', None)

    fpstring = "%s (*)" % rtype		# start the string for the Type entry
    fpargs = data.split(',')		# parameter strings (type + name)
    fpargv = []
    first = 1
    Lib = None
    for parm in fpargs:
        if first:
            fpstring += '('
            first = 0
        else:
            fpstring += ', '
        par = re.search(r'(.+\W+)(\w+$)', parm)
        if par:
            typ = ' '.join(par.group(1).split())
            fpstring += typ
            if typ[0:3] == 'Gtk':
                Lib = 'libgtk-3'
            #nice thought, but breaks. just call it libgtk for now.
            #elif typ[0:3] == 'Gdk':
            #    Lib = 'libgdk-3'
            fpargv.append((typ, par.group(2).strip()))
    fpstring += ')'

    id = getid(conn, fpstring, Lib)
    if id:
        # this function pointer already existed in specdb
        # want to return its ID, but because of below, we return the
        # string to query for to find it
        print '# fptr %s found, id=%d' % (fpstring, id)
        return (fpstring, Lib)

    print '# making new ftpr: '
    # the approach of making a static set of strings breaks down here,
    # what if we have previously made the same ftpr type?
    # this script will not know since we have not applied the earlier
    # sql it generated   TODO
    #
    if fpstring in added_fptrs:
        # this function pointer did not exist in specdb, but we have
        # added it in other steps. we can't query for it here then, 
        # but we can return a query string so it can be done "at runtime"
        #
        print "# Found previously added ftptr:", fpstring
        return (fpstring, Lib)
    
    print Tsql.substitute(name=fpstring)
    added_fptrs.append(fpstring)
    print 'SET @Tid=(select last_insert_id());'
    rLib = None
    if rtype[0:3] == 'Gtk':
        rLib = 'libgtk-3'
    elif rtype[0:3] == 'Gdk':
        rLib = 'libgdk-3'
    print ATsql.substitute(ret=(getid(conn,rtype,rLib)))
    pos = 0
    for (typ, name) in fpargv:
        #print '# args (pos=%s, type=%s, typeid=%d, name=%s)' % \
        #       (pos, typ, getid(conn, typ, None), name)
        print TMsql.substitute(name=name, tid=getid(conn, typ, None),
                               pos=pos, member='@Tid', typ=typ)
        pos += 1
        
    return (fpstring, Lib)


def addtypemembers(conn, structname, typeid, members):
    ''' build SQL to add the typemembers. 
        for function-pointer types, also build the ftpr '''

    if len(members) == 0:
        return

    pos = 0
    TMtmpl = "INSERT INTO TypeMember " + \
             "(TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin,TMbitfield) " + \
             "VALUES(0,'$name',$tid,$pos,$member,'5.0',$bitf); # type=$typ"
    TMsql = Template(TMtmpl)

    for (flag, membertype, name, bitf) in members:
        if flag == "fptr":
            fptr_mem = re.search(r'\(\*\s*(\w+?)\)\s*\((.+)\)',
                                 name.strip(), re.S)
            if fptr_mem:
                (fpname, Lib) = addfptr(conn, membertype.strip(), 
                                       fptr_mem.group(2).strip())
                
                query = "SET @Fptr=(SELECT DISTINCT Tid FROM Type " + \
                        "WHERE Tname='%s'" % fpname
                if Lib:
                    query += " AND Tlibrary='%s'" % Lib
                query += ");"
                print query
                print TMsql.substitute(name=fptr_mem.group(1), tid='@Fptr', 
                                 pos=pos, member=typeid, bitf=bitf, typ='fptr')
            else:
                # Unexpected outcome: type is "void (*__gtk_reserved1)"
                # Two upstream headers (gtkfilechooserbutton.h and
                # gtkstatusicon.h) do this instead of the more common
                # "void (*_gtk_reserved1) (void)". Not new, was this way
                # in gtk-2.0 also.  Does not match our pattern. What to do?
                print("#OOPS! what happened? %s|%s" % (membertype, name))
        else:
            memid = getid(conn, membertype)
            if not memid:
                print "#WARN: %s returned tid=0" % membertype
            print TMsql.substitute(name=' '.join(name.split()), tid=memid, 
                             pos=pos, member=typeid, bitf=bitf, typ=membertype)
        pos += 1


def main():
    detected_structs = {}
    for header_file in walk_headers("./gtk-3.0"):
        #print("Considering %s..." % header_file)
        for (struct_name, struct_members) in extract_structs(header_file):
            detected_structs[struct_name] = {}
            detected_structs[struct_name]["header_path"] = header_file
            detected_structs[struct_name]["members"] = struct_members

    conn = MySQLdb.connect(host=os.environ['LSBDBHOST'],
                           user=os.environ['LSBUSER'],
                           passwd=os.environ['LSBDBPASSWD'],
                           db=os.environ['LSBDB'])

    good_types = []
    bad_types = []
    bad_types_info = {}
    members_disabled = []
    for library_name in libraries:
        lib_id = get_library_id_by_name(conn, library_name)
        for (header_id,) in get_headers_from_lib(conn, lib_id):
            for (hgroup_id,) in get_header_groups(conn, header_id):
                for (type_id, typename) in \
                        get_structs_in_header_group(conn, hgroup_id):
                    if typename in detected_structs:
                        hdr_members = len(detected_structs[typename]["members"])
                        # if no members, nothing to do
                        if hdr_members == 0:
                            continue

                        cursor = conn.cursor()
                        # how many included typemembers are there?
                        cursor.execute("SELECT TMid FROM TypeMember WHERE " +
                                       "TMmemberof = %s AND TMappearedin > ''",
                                       (str(type_id),))
                        mem_found = cursor.rowcount

                        # how many not-included typemembers are there?
                        cursor.execute("SELECT TMid FROM TypeMember WHERE " +
                                       "TMmemberof = %s AND TMappearedin = ''", 
                                       (str(type_id),))
                        mem_disable = cursor.rowcount

                        # is this type included at all?
                        cursor.execute("SELECT Tid FROM Type " +
                                       "JOIN ArchType on Tid=ATtid " +
                                       "WHERE Tname=%s AND Tlibrary=%s " +
                                       "AND ATappearedin > ''",
                                       (typename, library_name))
                        if cursor.rowcount == 0:
                            bad_types.append((typename,None))
                            bad_types_info[typename] = \
                                "missing or disabled ArchType"
                            continue

                        # do we have a member count mismatch?
                        typeid = cursor.fetchone()[0]
                        if mem_found != hdr_members:
                            bad_types.append((typename,typeid))
                            bad_types_info[typename] = \
                                "expect %d members, found %d" % \
                                (hdr_members, mem_found)
                            continue

                        # if we are still here, struct is okay on basic level
                        good_types.append(typename)

                        # Are there disabled typemembers? If error, it will
                        # have been caught above; this is just for cleanup
                        if mem_disable > 0:
                            members_disabled.append(typename)

    print "# Structs detected to have problems (total %d):" % len(bad_types)
    for (structname, typeid) in bad_types:
        print "\n# %s (%s)" % (structname, bad_types_info[structname])
        if debug:
            addtypemembers(conn, structname, typeid,
                           detected_structs[structname]["members"])

    print "\n# Structs detected to not have problems (total %d):" % len(good_types)
    for structname in good_types:
        print '#', structname 

    if members_disabled:
        print "\n# Structs where total members != enabled members in specdb (%d):" % \
              len(members_disabled)
        print "# NOTE: these may overlap with the two categories above"
        for structname in members_disabled:
            print '#', structname 

if __name__ == "__main__":
    main()
