## Overview

This directory deals with tools for fixing up missing/broken structure
entries in the LSB specification database.  The use case of a need to 
audit existing entries was exposed during work to resolve LSB 
bug [3943 - gtk3 missing 
types](https://lsbbugs.linuxfoundation.org/show_bug.cgi?id=3943). 
As such there are the larger goals  auditting and correcting 
existing entries, as well as building tooling to permit more 
readily add new libraries prospectively. 

## Walk through

Here's how this setup works
(this information is all available elsewhere, but it was suggested having
a note here might be useful too, as the LSB working group experiments
with git/GitHub as a "low barrier to entry" development method):

<a name="typetable_return">
</a> Data types are all described in the [Type database
table](#typetable).  For a type to actually appear in a header,
it additionally needs one or more records in the [ArchType database
table](#archtypetable): one if the type is generic; one per architecture
if it is variant. A very simple example of a variant type: "int",
which needs to have ArchType.ATsize = 4 for 32-bit architectures, =
8 for 64-bit.  The ArchType record needs to be marked included, that is
ATappearedin is set to some LSB version, the version in which that type
first appeared.

<a name="typemembertable_return"></a> 
For compound data types (Type.Ttype in 'Enum', 'Struct', 'Union',
'FuncPtr' for this example, which ignores any C++ types), there
will additionally have to be entries in the [TypeMember database
table](#typemembertable).  TypeMember entries, which describe each
component of the type.

Function pointer types have a few levels to think about. Let us use
an example to illustrate:

```C
typedef GdkFilterReturn(*GdkFilterFunc) (GdkXEvent * xevent, GdkEvent * event, gpointer data);
```

The type itself is declared this way (the sql lines in the rest of
this description are all grepped out of the relevant table dumps):

```sql
INSERT INTO `Type` VALUES (10003827,'GdkFilterFunc','Typedef',1795,'','No',
   'No','No',NULL,'libgdk-3',0);
INSERT INTO `ArchType` VALUES (1,10003827,'0','5.0',NULL,10003829,NULL);
```

To decode this without having to refer to the DB schema (which may be viewed
at the
end of this file for snapshots of that if you really want it!)
GdkFilterFunc 
 * identified by 10003827, 
 * is a typedef, 
 * belongs to headergroup 1795 (which in turn belongs to gtk-3.0/gdk/gdk.h).

It has a generic ArchType entry which (presently - Summer 2014) 
marks it as appearing in LSB 5.0.  
Because it is a typedef, it needs to have a base type - the object for 
which it s typedef'd . That base type here is 10003829:

```sql
INSERT INTO `Type` VALUES (10003829,'GdkFilterReturn (*)(GdkXEvent *, 
   GdkEvent *, gpointer)','FuncPtr',0,'','No','No','No',NULL,'libgdk-3',0);
INSERT INTO `ArchType` VALUES (1,10003829,'0','',NULL,10003826,NULL);
```

Notice this type is not marked as (directly) included by itself - 
it will be referenced
(by the reverse referant, GdkFilterFunc typedef at a minimum) 
but will not itself independently and expressly appear as
a line in a header file.  That is, it is FIXME implicitly included END FIXME

We can see that the function-pointer type 10003829 
 * points to
a function which takes three arguments, and 
 * has a return type.

The return type is the ArchType.ATbasetype value, 10003826:

```sql
INSERT INTO `Type` VALUES (10003826,'GdkFilterReturn','Typedef',1795,'',
   'No','No','No',NULL,'libgdk-3',0);
INSERT INTO `ArchType` VALUES (1,10003826,'0','5.0',NULL,10003825,NULL);
```

We can chase up and down the foriegn key chain: GdkFilterReturn further - it's a typedef to an enum, itself
a compound type - but doing so doesn't really add to this discussion.  
We conld have considered an "int" just as easily, for the return type.

The three arguments appear in the TypeMember table:

```sql
INSERT INTO `TypeMember` VALUES (234828,'xevent',10003828,0,'',10003829,NULL,
   0,0,NULL,'5.0',1,NULL,NULL);
INSERT INTO `TypeMember` VALUES (234829,'event',10003822,1,'',10003829,NULL,
   0,0,NULL,'5.0',1,NULL,NULL);
INSERT INTO `TypeMember` VALUES (234830,'data',11404,2,'',10003829,NULL,
   0,0,NULL,'5.0',1,NULL,NULL);
```

 * a member named xevent appears in position 0 and is type 10003828
 * a member named event appears in position 1 and is of type 10003822
 * a member named data appears in position 2 and is of type 11404

```sql
INSERT INTO `Type` VALUES (10003828,'GdkXEvent *','Pointer',0,'','No','No',
   'No',NULL,'libgdk-3',0);
INSERT INTO `Type` VALUES (10003822,'GdkEvent *','Pointer',0,'','No','No',
   'No',NULL,'libgdk-3',0);
INSERT INTO `Type` VALUES (11404,'gpointer','Typedef',609,'','No','No','No',
   NULL,'libglib-2.0',0);
```

And we can confirm that this matches our expectation as to the prototype 
we're after.

All three parameters/members are marked as first appearing in LSB 5.0.  
This
versioning step is required for disambiguation.   Compound types can 
change members over time
and the DB needs to be able to track such changing evolution over time.

## Issue on bug 3943 

The incorrect types we are concerned with here, for Gtk and Gdk, are
complex in that they are structures containing function pointer members.
The usual approach is to work up the stack from a most specific end point, 
back to more generic: 
 * define the most basic types first, 
 * then the compound types and typedefs that refer to them, and 
 * so on.

The complication is we're not starting from scratch, but rather grafting 
new types into an existing database.  The import of Gtk
and Gdk had some problems.  
 * We found that a number of things are partially imported;
there may be a Type but not an ArchType, or has an ArchType but not
an ATappearedin entry.  
 * Some structs imported some members but not all.  (It's not
absolutely necessary to have names on the function-pointer parameters,
but for consistency, to match upstream, it's nicer to do so.) 
 * In some
cases the import seems to have named some of the parameters and not
others, which is unfortunate and is an error in the existing data corpus.

So any tool, or human, attempting these needs to know enough to not
just build the descriptions from scratch, but also a rule to understand what's
already there, and where there is a problem, to identify and fix up the ones 
that are not correct.  All of the
structs in question exist, but all (QUERY: really? ALL ?) have parts 
missing, which is another reason for
this exercise.

As a final note, we need to pay attention to the Type.Tlibrary field.
Because many of the Gtk and Gdk types are defined for both Gtk / Gtk 
versions 2.x
and 3.x, we need another axis of differentiation, so we may distinguish which
library and level the type to which object 
refers.  In other words, there will be two Type entries for very
many of the type names, and one must take care to read the correct 
fully-specified entry: Take care to not modify the wrong one!!!

## DB Schema snippets

<a name="typetable"></a>
```sql
CREATE TABLE `Type` (
  `Tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Tname` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Ttype` enum('Intrinsic','FuncPtr','Enum','Pointer','Typedef','Struct','Union',
    'Array','Literal','Const','Class','Unknown','BinVariable','Volatile',
    'Function','Ref','Namespace','Template','TemplateInstance','Macro',
    'MemberPtr','MethodPtr') NOT NULL DEFAULT 'Unknown',
  `Theadgroup` int(10) unsigned NOT NULL DEFAULT '0',
  `Tdescription` varchar(255) NOT NULL DEFAULT '',
  `Tsrconly` enum('Yes','No') NOT NULL DEFAULT 'No',
  `Tconly` enum('Yes','No') NOT NULL DEFAULT 'No',
  `Tindirect` enum('Yes','No') NOT NULL DEFAULT 'No', 
  `Tunmangled` text,
  `Tlibrary` varchar(200) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Tclass` int(10) unsigned NOT NULL DEFAULT '0',
```
[Return](#typetable_return)

<a name="archtypetable"></a>
```sql
CREATE TABLE `ArchType` (
  `ATaid` int(10) unsigned NOT NULL DEFAULT '0',
  `ATtid` int(10) unsigned NOT NULL DEFAULT '0',
  `ATsize` varchar(255) NOT NULL DEFAULT '0',
  `ATappearedin` varchar(5) NOT NULL,
  `ATwithdrawnin` varchar(5) DEFAULT NULL,
  `ATbasetype` int(10) unsigned NOT NULL DEFAULT '0',
  `ATattribute` varchar(255) DEFAULT NULL,
```
[Return](#typetable_return)

<a name="typemembertable"></a>
```sql
CREATE TABLE `TypeMember` (
  `TMid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TMname` varchar(255) NOT NULL DEFAULT '',
  `TMtypeid` int(10) unsigned NOT NULL DEFAULT '0',
  `TMposition` int(11) NOT NULL DEFAULT '0',
  `TMdescription` varchar(255) NOT NULL DEFAULT '',
  `TMmemberof` int(10) unsigned NOT NULL DEFAULT '0',
  `TMarray` varchar(128) DEFAULT NULL,
  `TMbitfield` tinyint(4) NOT NULL DEFAULT '0',
  `TMtypetype` int(10) unsigned NOT NULL DEFAULT '0',
  `TMwithdrawnin` varchar(5) DEFAULT NULL,
  `TMappearedin` varchar(5) NOT NULL,
  `TMaid` int(10) unsigned NOT NULL DEFAULT '1',
  `TMaccess` enum('public','private','protected') DEFAULT NULL,
  `TMvalue` varchar(255) DEFAULT NULL,
```
[Return](#typemembertable_return)
