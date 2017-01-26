---

This work is licensed under the Creative Commons CC0 License

---

# MASL Marking Import
### xtUML Project Implementation Note


1. Abstract
-----------
This work documents the implementation of importing new format marking data
into a project as part of MASL-to-xtUML conversion

2. Document References
----------------------
[1] [8980](https://support.onefact.net/redmine/issues/8980) m2x support for updated marking
[2] [8981](https://support.onefact.net/redmine/issues/8981) x2m support for updated marking
[3] [8951](https://support.onefact.net/redmine/issues/8951) marking editor
[4] [8801](https://support.onefact.net/redmine/issues/8801) MASL round trip test
[5] [8981 design note](https://github.com/xtuml/mc/doc/notes/8981_marking_dnt.md) MASL Marking Import and Export  
[6] [8981 implementation note](https://github.com/xtuml/mc/doc/notes/8981_marking_int.md) MASL Marking Export  

3. Background
-------------
See [5].

4. Requirements
---------------
See [5].

5. Work Required
----------------
5.1 m2x
5.1.1 Detect pragma messages among the stream of serialized MASL.  Recognize
and maintain model element associations.  This can be done in
`ooapopulation::populate` in the "pragma" if clause.  At this point, the
OOA element has been created and linked, so its path can be calculated.
5.1.2 Create and relate instances in the model of marking.  Create feature
and markable element type instances as needed.  The pragma SMASL statement
has the feature name of the pragma.  Prama items follow.  These become the
features and marks.
5.1.2.1 Upon detection of a pragma `Feature::populate`, `Markable:populate`
and relate the two instances across R2822.
5.1.2.2 Locate the `ooapopulation.current*` the instance being marked,
and `*_get_path` for it.
5.1.2.3 `Mark::populate` with the `markable_name`, `feature_name`, pathkey
and value (from pragma items).  Related together across R2821.
5.1.3 At the end of the m2x processing, serialize the model of marking
into files per 5.3.4.

  
6. Implementation Comments
--------------------------
6.1 `*_get_path`  
`package_get_path`, `component_get_path` and `class_get_path` functions
were used exclusively by `x2m`.  Now, they are needed by maslin.  To
share them, they have been moved to mcshared/functions.

6.2 clean-up  
Cleaned up generation of ooapopulation and masl2xtuml to not need hand edits.  
Deleted ooapopulation before exiting to avoid extra SQL.  
Made STRING the same as in maslout.  
Used package references which allow us to call a class-based class operation
on a class outside the component.  
Added `CSV_bridge` to maslout which was forgotten in other work.  

6.3 Identifiers  
Where do we put marks found on identifiers?

6.4 Transtion Table Row  
Where do we put marks found on transition table row?

6.5 Successfully creating and relating instances of Markable,
Feature and Mark. 
Default (empty) mc3020 marking files are removed.  

6.6 `model` model  
Factored `model` out of maslout and into mcshared.  Added it as
a package reference to maslin.  Note, I used model element move
to accomplish this, and it seems to have worked perfectly as
attested by the commit showing that git recognized the move.

7. Unit Test
------------
7.1 MASL Round Trip Test  
Run [4].  
Expect some pragmas to be missing.

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  8980_marking
Fork: cortlandstarrett/bridgepoint  8980_marking

xtuml/mc
 doc/notes/8980_marking_int.md                                               |   99 -
 doc/notes/8981_marking_dnt.md                                               |   14 +-
 model/maslin/gen/CSV_bridge.c                                               |   83 -
 model/maslin/gen/STRING_bridge.c                                            |   28 +-
 model/maslin/gen/bridge.mark                                                |   59 +
 model/maslin/gen/class.mark                                                 |  250 +
 model/maslin/gen/datatype.mark                                              |  166 +
 model/maslin/gen/domain.mark                                                |  219 +-
 model/maslin/gen/event.mark                                                 |   43 +
 model/maslin/gen/masl2xtuml.c                                               |  655 +++
 model/maslin/gen/masl2xtuml_ooapopulation_class.c                           | 9981 +++++++++++++++++++++++++++++++++++
 model/maslin/gen/sys_user_co.c                                              |   29 +-
 model/maslin/gen/sys_user_co.h                                              |   13 +-
 model/maslin/models/maslin/lib/masl2xtuml/masl2xtuml.xtuml                  |  136 +-
 model/maslin/models/maslin/lib/masl2xtuml/mcfunctions/mcfunctions.xtuml     |   68 -
 model/maslin/models/maslin/lib/masl2xtuml/model/model.xtuml                 |   68 -
 model/maslin/models/maslin/lib/masl2xtuml/ooaofmarking/ooaofmarking.xtuml   |   68 -
 model/maslin/models/maslin/m2x/ooapopulation/ooapopulation.xtuml            |   52 +-
 model/maslin/models/maslin/marking/ooaelement/ooaelement.xtuml              |   69 -
 model/maslin/models/maslin/marking/ooamarkable/ooamarkable.xtuml            |  395 +-
 model/maslin/models/maslin/marking/ooapragma/ooapragma.xtuml                |   56 -
 model/maslin/test_data/pragmas/PragTest/t.smasl                             |  171 -
 model/maslout/gen/CSV_bridge.c                                              |   86 -
 model/maslout/models/maslout/lib/xtuml2masl/maslout/maslout.xtuml           |  170 +-
 model/maslout/models/maslout/lib/xtuml2masl/mcfunctions/mcfunctions.xtuml   |   68 -
 model/maslout/models/maslout/lib/xtuml2masl/model/model.xtuml               |   49 +-
 .../models/maslout/lib/xtuml2masl}/model/model/model.xtuml                  |    4 +-
 model/maslout/models/maslout/lib/xtuml2masl/xtuml2masl.xtuml                |   72 +-
 model/mcshared/models/mcshared/functions/functions.xtuml                    |  222 -
 model/mcshared/models/mcshared/mcshared.xtuml                               |   52 +-
 model/mcshared/models/mcshared/model/model.xtuml                            |   20 -
 31 files changed, 11814 insertions(+), 1651 deletions(-)

xtuml/bridgepoint
 .../models/org.xtuml.bp.ui.marking/ooaofmarking/Feature/Feature.xtuml       | 174 ++++++++++++++++
 .../models/org.xtuml.bp.ui.marking/ooaofmarking/Mark/Mark.xtuml             | 209 ++++++++++++++++++-
 .../ooaofmarking/Markable Element Type/Markable Element Type.xtuml          |  50 +++++
 .../models/org.xtuml.bp.ui.marking/ooaofmarking/ooaofmarking.xtuml          | 402 +++++++++++++++++++++++++++++-------
 4 files changed, 751 insertions(+), 84 deletions(-)

</pre>

End
---

