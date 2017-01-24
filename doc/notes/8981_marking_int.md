---

This work is licensed under the Creative Commons CC0 License

---

# MASL Marking Import and Export
### xtUML Project Implementation Note


1. Abstract
-----------
This work documents the implementation of importing new format marking data
into a project as part of MASL-to-xtUML conversion and supplying these marks
downsteam in the xtUML-to-MASL flow.

2. Document References
----------------------
[1] [8980](https://support.onefact.net/redmine/issues/8980) m2x support for updated marking
[2] [8981](https://support.onefact.net/redmine/issues/8981) x2m support for updated marking
[3] [8951](https://support.onefact.net/redmine/issues/8951) marking editor
[4] [8801](https://support.onefact.net/redmine/issues/8801) MASL round trip test
[5] [8981 design note](https://github.com/xtuml/mc/doc/notes/8981_marking_dnt.md) MASL Marking Import and Export  

3. Background
-------------
See [5].

4. Requirements
---------------
See [5].

5. Work Required
----------------
  
6. Implementation Comments
--------------------------
6.1 `*_get_path`  
`package_get_path`, `component_get_path` and `class_get_path` functions
were used in an early version of x2m to locate `.masl` activity files
with the models folder hierarchy.  This method has been supplanted by
storing the activities in the `Action_Semantics` field of the action
homes.  This work repurposes these routines to build "pathkey" strings.
The top-level system name is omitted.

6.2 Deferral  
While repurposing `*_get_path`, it was noted that `*_get_path` is referenced
in a detection of deferred operations.  This code was removed.  The pathing
was being used to find a file that is no longer stored on the file system.

6.3 `underscore_signature`  
This function is deprecated and deleted.

6.4 `mark2pragma`  
It is required to loop up the pramaitems.  #9037 is raised to track.

6.5 XML tag removal  
XML tag parsing was removed from all Descrip fields.

6.6 `markable_name`  
It is important to persist this.  An exception (`S_EXP`) and a function
(`S_SYNC) and/or a class (`O_OBJ`) could have the same name.  These live
in packages; they could be in the same package.  This gives the same
pathkey.  For this work, the window will be minimized by ensuring that
the feature exists for the markable element.

6.7 transtion row marking  
Both states and rows are marked in MASL.  Also, `Non_Existent` is markable.
This will be explored in the Raven training class.

6.8 Identifiers  
It is not clear how we will mark identifiers.  Issue #9034 raised.

7. Unit Test
------------
7.1 SAC  
7.1.1 Have the SAC project.  
7.1.2 Have valid marking files.  
7.1.3 Run Export MASL Domain on SAC.  
7.1.4 See correct pragmas in the output MASL.  

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  8981_marking
Fork: cortlandstarrett/bridgepoint  8981_marking

xtuml/mc
 bin/x2m                                                         | Bin 680533 -> 695696 bytes
 doc/notes/8981_marking_dnt.md                                   | 111 ++++++
 doc/notes/8981_marking_int.md                                   |  94 +++++
 doc/review-minutes/8981_marking_dnt_rvm.md                      |  30 ++
 model/maslout/gen/STRING_bridge.c                               |  28 +-
 model/maslout/gen/sys_user_co.c                                 |   4 +
 .../maslout/models/maslout/lib/xtuml2masl/marking/marking.xtuml |  68 ++++
 .../maslout/models/maslout/lib/xtuml2masl/maslout/maslout.xtuml | 584 +++++++++++-----------------
 .../models/maslout/lib/xtuml2masl/model/model/model.xtuml       |  54 ++-
 model/maslout/models/maslout/lib/xtuml2masl/xtuml2masl.xtuml    |  40 +-
 10 files changed, 631 insertions(+), 382 deletions(-)

xtuml/bridgepoint
 .../org.xtuml.bp.ui.marking/ooaofmarking/Feature/Feature.xtuml  | 158 +++++++++++
 .../models/org.xtuml.bp.ui.marking/ooaofmarking/Mark/Mark.xtuml | 210 ++++++++++++++-
 .../Markable Element Type/Markable Element Type.xtuml           |  34 +++
 .../org.xtuml.bp.ui.marking/ooaofmarking/ooaofmarking.xtuml     | 402 ++++++++++++++++++++++------
 4 files changed, 725 insertions(+), 88 deletions(-)

</pre>

End
---

