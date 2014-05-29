This directory deals with tools for fixing up missing/broken
structure entries.

Here's how this setup works (this information is all available elsewhere,
but it was suggested having a note here might be useful too).

Data types are all described in the Type database table.  For a
type to actually appear in a header, it additionally needs one
or more ArchType records - one if the type is generic, one per
architecture if it is variant. A very simple example of a variant
type: "int", which needs to have ArchType.ATsize = 4 for 32-bit
architectures, = 8 for 64-bit.  The ArchType record needs to be
marked included, that is ATappearedin is set to some LSB version,
the version in which that type first appeared.

For compound data types (Type.Ttype in 'Enum', 'Struct', 'Union',
'FuncPtr' for this example, which ignores any C++ types), there
will additionally have to be TypeMember entries, which describe
each component of the type.

Function pointer types have a few levels to think about. Here
is an example:

```C
typedef GdkFilterReturn(*GdkFilterFunc) (GdkXEvent * xevent, GdkEvent * event, gpointer data);
```

The type itself is declared this way:

```sql
INSERT INTO `Type` VALUES (10003827,'GdkFilterFunc','Typedef',1795,'','No','No','No',NULL,'libgdk-3',0);
INSERT INTO `ArchType` VALUES (1,10003827,'0','5.0',NULL,10003829,NULL);
```

To decode this without having to refer to the DB schema,
GdkFilterFunc is Tid 10003827, is a typedef, belongs to headergroup 1795.
It has a generic ArchType entry which marks it appearing in LSB 5.0,
and since it's a typedef, it needs to have a base type - the thing
it's typedef'd to. The base type here is 10003829:

```sql
INSERT INTO `Type` VALUES (10003829,'GdkFilterReturn (*)(GdkXEvent *, GdkEvent *, gpointer)','FuncPtr',0,'','No','No','No',NULL,'libgdk-3',0);
INSERT INTO `ArchType` VALUES (1,10003829,'0','',NULL,10003826,NULL);
```

Notice this type is not marked as included - it will be referenced
(by the GdkFilterFunc typedef at least) but will not itself appear as
a line in a header file.

We can see that the function-pointer type 10003829 points to
a function which takes three arguments, and has a return type.
The return type is the ArchType.ATbasetype value, 10003826:

```sql
INSERT INTO `Type` VALUES (10003826,'GdkFilterReturn','Typedef',1795,'','No','No','No',NULL,'libgdk-3',0);
INSERT INTO `ArchType` VALUES (1,10003826,'0','5.0',NULL,10003825,NULL);
```

we can chase GdkFilterReturn further - it's a typedef to an
enum, itself a compound type, but doing so doesn't really improve
this description, it could just as easily have been "int" as the
return type.

The three arguments appear in the TypeMember table:

```sql
INSERT INTO `TypeMember` VALUES (234828,'xevent',10003828,0,'',10003829,NULL,0,0,NULL,'5.0',1,NULL,NULL);
INSERT INTO `TypeMember` VALUES (234829,'event',10003822,1,'',10003829,NULL,0,0,NULL,'5.0',1,NULL,NULL);
INSERT INTO `TypeMember` VALUES (234830,'data',11404,2,'',10003829,NULL,0,0,NULL,'5.0',1,NULL,NULL);
```

* a member named xevent appears in position 0 and is type 10003828
* a member named event appears in position 1 and is of type 10003822
* a member named data appears in position 2 and is of type 11404

```sql
INSERT INTO `Type` VALUES (10003828,'GdkXEvent *','Pointer',0,'','No','No','No',NULL,'libgdk-3',0);
INSERT INTO `Type` VALUES (10003822,'GdkEvent *','Pointer',0,'','No','No','No',NULL,'libgdk-3',0);
INSERT INTO `Type` VALUES (11404,'gpointer','Typedef',609,'','No','No','No',NULL,'libglib-2.0',0);
```

And we can see this matches the prototype we're after.

All three parameters/members are marked as appearing in LSB 5.0, this
versioning step is because compound types can change members over time
and the DB needs to be able to track the evolution.

The incorrect types we are concerned with here, for Gtk and Gdk, are
complex in that they are structures containing function pointer members.
You normally need to work up the stack: define the most basic types first,
then the compound types and typedefs that refer to them, and so on.
The complication is we're not starting from scratch.  The import of Gtk
and Gdk had some problems.  A number of things are partially imported;
there may be a Type but not an ArchType, or has an ArchType but not
ATappearedin.  Some structs imported some members but not all.  It's not
absolutely necessary to have names on the function-pointer parameters,
but for consistency, to match upstream, it's nicer to do so.  In some
cases the import seems to have named some of the parameters and not
others, which is unfortunate.

So any tool, or human, attempting these needs to know enough to not
just build the descriptions from scratch, but to find out what's
already there and fix up the ones that are not correct.  All of the
structs in question exist, but all have parts missing, which is why
this exercise in the first place.

As a final note, we need to pay attention to the Type.Tlibrary field.
Because many of the Gtk and Gdk types are defined for both 2.x
and 3.x, they need to be distinguished as to which library the type
refers to.  In other words, there will be two Type entries for very
many of the type names, don't modify the wrong one!!!
