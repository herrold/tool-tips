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

# debug enabled will show the members scraped from the upstream headers
debug = 0

libraries = ["libgdk-3", "libgtk-3"]


def walk_headers(path):
    for (subpath, dirs, files) in os.walk(path):
        for fn in files:
            if re.search(r'\.h$', fn):
                yield os.path.join(subpath, fn)


# http://www.incognitomind.com/?p=238
# adapted from: http://stackoverflow.com/questions/241327/python-snippet-to-remove-c-and-c-comments  
# strips c/c++ comments  
def un_comment(text):  
    rep = r'//.*?$|/\*.*?\*/|\'(?:\\.|[^\\\'])*\'|"(?:\\.|[^\\"])*"'  
    pattern = re.compile(rep, re.DOTALL | re.MULTILINE)  
    return re.sub(pattern,  
        lambda match:(match.group(0),"")[match.group(0).startswith('/')], text)


def extract_structs(header_path):
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
                            struct_members.append((struct_mem.group(1),
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
                            struct_members.append((struct_mem_fptr.group(1),
                                                   struct_mem_fptr.group(2)))
                        else:
                            # then regular members
                            struct_mem = re.search(r'(.+)\s+([\w*]+)',
                                                   line.strip(), re.S)
                            if struct_mem:
                                struct_members.append((struct_mem.group(1),
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


# detailed printout of scraped struct members
def dumpmembers(type, members):
    if len(members) == 0:
        return

    position = 0
    for member in members:
        print("%s|%d|%s|%s" % (type, position, member[0].strip(), 
                               ' '.join(member[1].split())))
        position += 1


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
                for (type_id, type_name) in \
                        get_structs_in_header_group(conn, hgroup_id):
                    if type_name in detected_structs:
                        hdr_members = len(detected_structs[type_name]["members"])
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
                                       (type_name, library_name))
                        if cursor.rowcount == 0:
                            bad_types.append(type_name)
                            bad_types_info[type_name] = \
                                "missing or disabled ArchType"
                            continue

                        # do we have a member count mismatch?
                        if mem_found != hdr_members:
                            bad_types.append(type_name)
                            bad_types_info[type_name] = \
                                "expect %d members, found %d" % \
                                (hdr_members, mem_found)
                            continue

                        # if we are still here, struct is okay on basic level
                        good_types.append(type_name)

                        # Are there disabled typemembers? If error, it will
                        # have been caught above; this is just for cleanup
                        if mem_disable > 0:
                            members_disabled.append(type_name)

    print("Structs detected to have problems (total %d):" % len(bad_types))
    for type_name in bad_types:
        print("%s (%s)" % (type_name, bad_types_info[type_name]))
        if debug:
            dumpmembers(type_name, detected_structs[type_name]["members"])

    print("Structs detected to not have problems (total %d):" % len(good_types))
    for type_name in good_types:
        print(type_name)

    if members_disabled:
        print("Structs where total members != enabled members in specdb (%d):" %
              len(members_disabled))
        print("NOTE: these may overlap with the two categories above")
        for type_name in members_disabled:
            print(type_name)

if __name__ == "__main__":
    main()
