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
# distribution the database was originally defined from).

import sys
import os
import re
import MySQLdb

libraries = ["libgdk-3", "libgtk-3"]


def walk_headers(path):
    for (subpath, dirs, files) in os.walk(path):
        for fn in files:
            if re.search(r'\.h$', fn):
                yield os.path.join(subpath, fn)


def un_comment(line):
    comment_state = 0
    out_line = ""
    for c in line:
        if c == '/' and comment_state == 0:
            comment_state = 1
        elif comment_state == 1:
            if c == '*':
                comment_state = 2
                out_line += "  "
            else:
                comment_state = 0
                out_line += "/" + c
        elif comment_state == 2:
            if c == '*':
                comment_state += 1
            out_line += " "
        elif comment_state == 3:
            if c == '/':
                comment_state = 0
            else:
                comment_state = 2
            out_line += " "
        else:
            comment_state = 0
            out_line += c
    return out_line


def extract_structs(header_path):
    with open(header_path) as header:
        struct_name = None
        struct_members = []
        header_data = header.read()
        while header_data:
            for raw_line in re.split(r'[;\}]\s*', header_data, 0, re.S):
                line = un_comment(raw_line)
                if struct_name is None:
                    struct_match = re.match(r'^\s*struct\s+(\w+)\s+{', line, re.S)
                    if struct_match:
                        struct_name = struct_match.group(1)
                        struct_mem = re.search(r'{\s*(\w+)\s+(\w+)',
                                               line, re.S)
                        if struct_mem:
                            struct_members.append((struct_mem.group(1),
                                                   struct_mem.group(2)))
                else:
                    if not line.strip():
                        yield (struct_name, struct_members)
                        struct_name = None
                        struct_members = []
                    else:
                        struct_mem = re.search(r'(\w+)\s+([\w*]+)',
                                               line.strip(), re.S)
                        if struct_mem:
                            struct_members.append((struct_mem.group(1),
                                                   struct_mem.group(2)))

            header_data = header.read()


def do_subid_query(conn, query, param):
    cursor = conn.cursor()
    cursor.execute(query, param)
    for row in cursor:
        yield row


def get_library_id_by_name(conn, name):
    cursor = conn.cursor()
    cursor.execute("SELECT Lid FROM Library WHERE Lname = %s",
                   (name,))
    if cursor.rowcount != 1:
        raise RuntimeError("more than one row returned for library " + name)
    return cursor.fetchone()[0]


def get_header_id_by_name(conn, name):
    cursor = conn.cursor()
    cursor.execute("SELECT Hid FROM Header WHERE Hname = %s",
                   (name,))
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

#def get_structs_from_header(header_path):
#    with open(header_path) as header_file:
#        for line in header_file:
#            m = re.match(r'', line)
#            if m:


def main():
    detected_structs = {}
    for header_file in walk_headers("/usr/include/gtk-3.0"):
        print("Considering %s..." % header_file)
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
    for library_name in libraries:
        lib_id = get_library_id_by_name(conn, library_name)
        for (header_id,) in get_headers_from_lib(conn, lib_id):
            for (hgroup_id,) in get_header_groups(conn, header_id):
                                                                            #
                for (type_id, type_name) in \
                        get_structs_in_header_group(conn, hgroup_id):
                    if type_name in detected_structs:
                        hdr_members = len(detected_structs[type_name]["members"])
                        if hdr_members == 0:
                            break
                        cursor = conn.cursor()
                        cursor.execute("SELECT TMid FROM TypeMember WHERE " +
                                       "TMmemberof = %s",
                                       (str(type_id),))
                        if cursor.rowcount != hdr_members:
                            if cursor.rowcount == 0:
                                bad_types.append(type_name)
                            else:
                                # include debugging printout
                                bad_types.append("%s # expect %d, found %d" %
                                   (type_name, hdr_members, cursor.rowcount))
                        else:
                            # before concluding it's good we should
                            # check for a valid ArchType entry for this type
                            cursor.execute("SELECT Tid FROM Type " +
                                           "JOIN ArchType on Tid=ATtid " +
                                           "WHERE Tname=%s AND Tlibrary=%s " +
                                           "AND ATappearedin > ''",
                                           (type_name, library_name))
                            if cursor.rowcount == 1:
                                good_types.append(type_name)
                            else:
                                # include debugging printout
                                bad_types.append("%s # no/disabled ArchType" %
                                                 type_name)

    print("Structs detected to have problems (total %d):" % len(bad_types))
    for type_name in bad_types:
        print(type_name)

    print("Structs detected to not have problems (total %d):" % len(good_types))
    for type_name in good_types:
        print(type_name)

if __name__ == "__main__":
    main()
