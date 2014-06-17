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


def extract_structs(header_path):
    '''extract structure definitions from a tree of headers'''

    # generally speaking, there are two problems with the way a struct
    # member line is parsed below.
    # 1 "char *foo" splits into "char" and *foo" instead of "char *" and "foo"
    # 2 "gdouble x_root, y_root" splits into "gdouble x_root," and "y_root"
    # (1) can be fixed later, but (2) needs work here, because it affects
    # the count of the number of members extracted, to be compared before
    # any late fixups can be done.  TODO

    with open(header_path) as header:
        struct_name = None
        struct_members = []
        header_data = un_comment(header.read())
        while header_data:
            for line in re.split(r'[;\}]\s*', header_data, 0, re.S):
                if struct_name is None:
                    # try to find beginning of struct declr
                    struct_match = re.match(r'^\s*struct\s+(\w+)\s+{',line,re.S)
                    if struct_match:
                        struct_name = struct_match.group(1)
                        # find first member, assume not fptr 
                        # which appears to always be true in gtk
                        struct_mem = re.search(r'{\s*(.+)\s+([\w*]+)',line,re.S)
                        if struct_mem:
                            commas = struct_mem.group(1).count(',')
                            # cheat: just dup members
                            while commas > 0:
                                struct_members.append((None, 
                                                       struct_mem.group(1),
                                                       struct_mem.group(2)))
                                commas -= 1
                            struct_members.append((None, 
                                                   struct_mem.group(1),
                                                   struct_mem.group(2)))
                else:
                    if not line.strip():
                        yield (struct_name, struct_members)
                        struct_name = None
                        struct_members = []
                    else:
                        # try to identify function pointer members
                        struct_mem_fptr = re.search(r'(.+)\s+(\(\*.+)',
                                               line.strip(), re.S)
                        if struct_mem_fptr:
                            struct_members.append(("fptr",struct_mem_fptr.group(1),
                                                   struct_mem_fptr.group(2)))
                        else:
                            # then regular members
                            struct_mem = re.search(r'(.+)\s+([\w*]+)',
                                                   line.strip(), re.S)
                            if struct_mem:
                                commas = struct_mem.group(1).count(',')
                                # cheat: just dup members
                                while commas > 0:
                                    struct_members.append((None, 
                                                           struct_mem.group(1),
                                                           struct_mem.group(2)))
                                    commas -= 1
                                struct_members.append((None, 
                                                       struct_mem.group(1),
                                                       struct_mem.group(2)))

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


def getid(conn, membertype):
    '''return the Type.Tid for given Type.Tname'''

    # for Gtk/Gdk there are likely dupes, so filter down by library
    if membertype[0:3] == 'Gtk':
        Lib = 'libgtk-3'
    elif membertype[0:3] == 'Gdk':
        Lib = 'libgdk-3'
    else:
        Lib = None

    cursor = conn.cursor()
    #
    # we'd like to check if the type is included, but many types are not.
    # e.g. pointers: the base type is included but not the ptr itself.
    # we could follow the chain, but that is a bunch more work, so skip check.
    #
    if Lib:
        cursor.execute("SELECT DISTINCT Tid FROM Type " +
                       "JOIN ArchType on Tid=ATtid " +
                       "WHERE Tname=%s AND Tlibrary=%s", (membertype,Lib))
    else:
        cursor.execute("SELECT DISTINCT Tid FROM Type " +
                       "JOIN ArchType on Tid=ATtid " +
                       "WHERE Tname=%s", (membertype,))
    if cursor.rowcount == 0:
        return 0
    else:
        return cursor.fetchone()[0]


def addfptr(conn, rtype, data):
    ''' build a function pointer type for the specdb.
        needs Type, ArchType, TypeMembers. Try first to match in
        case it exists, if so don't build new one. Returns the Tid '''
    #
    #  Need to decompose 'data' which is the RHS of ftpr. So perhaps:
    #
    #    "GtkTreeSortable *sortable, GtkTreeIterCompareFunc  sort_func,
    #     gpointer user_data, GDestroyNotify destroy"
    #
    #  We need to produce a string which will be the fptr typename:
    #  "(*) (GtkTreeSortable *, GtkTreeIterCompareFunc, gpointer, GDestroyNotify)"
    # and the individual "arguments", so we can make up typemembers
    #
    TMtmpl = "INSERT INTO TypeMember " + \
             "(TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) " + \
             "VALUES(0,'$name',$tid,$pos,$member,'5.0') # type=$typ"
    TMsql = Template(TMtmpl)
    Ttmpl = "INSERT INTO Type (Tid,Tname,Ttype,Theadgroup,Tlibrary) " + \
            "VALUES(0,'$name','FuncPtr',0,'')"
    Tsql = Template(Ttmpl)
    ATtmpl = "INSERT INTO ArchType " + \
             "(ATaid,ATtid,ATsize,ATappearedin,ATbasetype) " + \
             "VALUES(1,@Tid,0,'5.0',0)"
    #ATsql = Template(ATtmpl)

    if data == 'void':
        # special case, takes no args
        return 9926	# could look up, but we know this one...

    fpstring = "%s (*)" % rtype		# the string for the Type entry
    fpargs = data.split(',')		# parameter strings (type + name)
    fpargv = []				# the individual parameters
    first = 1
    for parm in fpargs:
        if first:
            fpstring += '('
            first = 0
        else:
            fpstring += ', '
        #print "#parm is: ", parm.strip()
        par = re.search(r'(.+\W+)(\w+$)', parm)
        if par:
            #print "# splits to: %s:%s" % (par.group(1).strip(), 
            #                              par.group(2).strip())
            typ = ' '.join(par.group(1).split())
            fpstring += typ
            fpargv.append((typ, par.group(2).strip()))
    fpstring += ')'

    id = getid(conn, fpstring)
    if id:
        # this function pointer already exists, return its ID
        print '# fptr %s found, id=%d' % (fpstring, id)
        return id

    print '# making new ftpr: '
    print Tsql.substitute(name=fpstring)
    print 'SET @Tid=(select last_insert_id())'
    print ATtmpl
    pos = 0
    for (typ, name) in fpargv:
        print '# args (pos=%s, type=%s, typeid=%d, name=%s)' % \
               (pos, typ, getid(conn, typ), name)
        print TMsql.substitute(name=name, tid=getid(conn, typ),
                               pos=pos, member='@Tid', typ=typ)
        pos += 1
        
    return 0


def addtypemembers(conn, structname, typeid, members):
    ''' build SQL to add the typemembers. 
        for function-pointer types, also build the ftpr '''

    if len(members) == 0:
        return

    pos = 0
    TMtmpl = "INSERT INTO TypeMember " + \
             "(TMid,TMname,TMtypeid,TMposition,TMmemberof,TMappearedin) " + \
             "VALUES(0,'$name',$tid,$pos,$member,'5.0') # type=$typ"
    TMsql = Template(TMtmpl)

    for (flag, membertype, name) in members:
        if  flag == "fptr":
            fptr_mem = re.search(r'\(\*\s*(\w+?)\)\s*\((.+)\)',
                                 name.strip(), re.S)
            if fptr_mem:
                memid = addfptr(conn, membertype.strip(), fptr_mem.group(2).strip())
                print TMsql.substitute(name=fptr_mem.group(1), tid=memid, 
                                       pos=pos, member=typeid, typ='fptr')
            else:
                # Unexpected outcome: type is "void (*__gtk_reserved1)"
                # Two upstream headers (gtkfilechooserbutton.h and
                # gtkstatusicon.h) do this instead of the more common
                # "void (*_gtk_reserved1) (void)". Not new, was this way
                # in gtk-2.0 also.  Does not match our pattern. What to do?
                print("#OOPS! what happened? %s|%s" % (membertype, name))
        else:
            # regex splits so if there is a *, it belongs to member name, 
            # not membertype. Fix. (see comment in extract_structs above)
            if name[0] == '*':
                name = name.strip('*')
                membertype = ' '.join((membertype.strip(), '*'))

            memid = getid(conn, membertype)
            print TMsql.substitute(name=' '.join(name.split()), tid=memid, 
                                   pos=pos, member=typeid, typ=membertype)
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
        print "\n# %s (%s " % (structname, bad_types_info[structname])
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
