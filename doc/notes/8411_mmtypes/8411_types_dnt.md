---

This work is licensed under the Creative Commons CC0 License

---

# Type and Typeref:  Beyond a Single UDT
### xtUML Project Design Note

1. Abstract
-----------
Move beyond a blind mapping of all MASL types and typerefs deriving
from a single User Defined Type.

2. Document References
----------------------
[1] [8411 - MM for Type and Typeref](https://support.onefact.net/issues/8411)  

3. Background
-------------
For Raven Basic, `masl2xtuml` mapped all MASL types and typerefs to uniquely
named User Defined Types (UDTs).  This enabled Import/Export round-tripping
with zero diffs.  However, it did not support type hierarchy.  This work adds
type hierarchy and makes types more useful.  However, more still needs to
be done to overhaul the xtUML type system in the future.

4. Requirements
---------------
4.1 Support Import/Export with zero diffs.  
4.1.1 The new type system must store and emit all of the pieces needed to
do full round-trip import and export.  
4.2 Support editing.  
4.2.1 Imported types must be editable.  
4.2.2 New types must be creatable and editable.  
4.2.3 Editing of a sequence, array, set, bag or definition shall be provided.  
4.3 Forward Migration  
4.3.1 Changes are anticipated in the meta-model for _type_ and _typeref_.
This work shall not preclude a reasonable migration from the current model
of xtUML to the enhanced model.  

5. Analysis
-----------
5.1 Where Built-In Types Come From  
5.1.1 xtUML as SQL  
The BridgePoint built-in types are supplied as SQL and are
imported with each new project created.  
5.1.2 OAL in `masl2xtuml`  
The MASL built-in types can be dynamically created during the
MASL-to-xtUML conversion process.  
5.1.3 Concrete MASL  
A list of built-in types could be defined in textual MASL and
be included as part of the import for every model conversion.  

5.2 Levels of Indirection  
5.2.1 Direct Use of xtUML Built-In Types  
xtUML already has a set of built-in types.  Most of the xtUML
built-ins overlap with MASL built-ins.  It would be good to simply
recognize and use the overlap.  Then, additional MASL built-ins can
be added as true (non-derived) built-ins.  
5.2.2 xtUML Built-In -> MASL Built-In -> User Types  
It may be useful to distinguish xtUML built-in types from the 
similar types offered by MASL.  It would be good to derive the
MASL built-ins from the xtUML equivalents.  This may provide a
level of indirection that would be useful in the future if distinction
proved necessary.  In such a scheme new built-ins are created as
User Defined Types (UDTs) based off of the xtUML built-ins.

6. Design
---------
6.1 Add PEIs for more MASL types.  
6.1.1 Add PEIs to the existing set of pre-existing instances of S_DT.  The
current set of preexisting instances represent built-in global types.  Add
a set of built-in global types for MASL that are derived from the xtUML
built-in types.  Each of the below are added to the Globals.xtuml file
which contains the model pre-existing instance data for built-in types.  
6.1.2 The following table lists the types that need to in place.  

MASL Type    | UDT Name       | parent          | UUID                  | parent UUID
-------------|----------------|-----------------|-----------------------|-------------
             | MASLtype       | string          | ba5eda7a-def5-...0011 | ba5eda...04
void         | MASLvoid       | void            | ba5eda7a-def5-...0012 | ba5eda...00
boolean      | MASLboolean    | boolean         | ba5eda7a-def5-...0013 | ba5eda...01
integer      | MASLinteger    | integer         | ba5eda7a-def5-...0014 | ba5eda...02
character    | MASLcharacter  | integer         | ba5eda7a-def5-...0015 | ba5eda...02
wcharacter   | MASLwcharacter | integer         | ba5eda7a-def5-...0016 | ba5eda...02
byte         | MASLbyte       | integer         | ba5eda7a-def5-...0017 | ba5eda...02
long_integer | MASLlong       | integer         | ba5eda7a-def5-...0018 | ba5eda...02
real         | MASLreal       | real            | ba5eda7a-def5-...0019 | ba5eda...03
string       | MASLstring     | string          | ba5eda7a-def5-...001a | ba5eda...04
wstring      | MASLwstring    | string          | ba5eda7a-def5-...001b | ba5eda...04
date         | MASLdate       | date            | ba5eda7a-def5-...001c | ba5eda...0e
duration     | MASLduration   | integer         | ba5eda7a-def5-...001d | ba5eda...02
timestamp    | MASLtimestamp  | timestamp       | ba5eda7a-def5-...001e | ba5eda...10
timer        | MASLtimer      | inst_ref<Timer> | ba5eda7a-def5-...001f | ba5eda...0f
event        | MASLevent      | inst_ref<Event> | ba5eda7a-def5-...0020 | ba5eda...0a
device       | MASLdevice     | MASLtype        | ba5eda7a-def5-...0021 | ba5eda...11
enum         | MASLenum       | MASLtype        | ba5eda7a-def5-...0022 | ba5eda...11
structure    | MASLduration   | MASLtype        | ba5eda7a-def5-...0023 | ba5eda...11
instance     | MASLinstance   | MASLtype        | ba5eda7a-def5-...0024 | ba5eda...11


7. Design Comments
------------------

8. Unit Test
------------

End
---

