---

This work is licensed under the Creative Commons CC0 License

---

# Support Package References in MC
### xtUML Project Implementation Note

1. Abstract
-----------

This note documents the changes to the model compiler to support
Package References (EP_PKGREF).

2. Document References
----------------------
2.1 [#8072 Support package references in the MC.](https://support.onefact.net/issues/8072) -- issue for this work  
2.2 [#8633 Package References (Imported Packages)](https://support.onefact.net/issues/8633) -- This is the parent issue.  
2.3 [Analysis Note for Package References](https://github.com/xtuml/bridgepoint/blob/master/doc-bridgepoint/notes/8633_PackageReference/8633_PackageReference_ant.md)  

3. Background
-------------
The xtUML metamodel has been updated in BridgePoint to add Package
Reference (EP_PKGREF).  A reflexive associative is added as R1402.
The parallel change needs to be made to `mcooa`.

4. Requirements
---------------
4.1 Continue supporting package reference marking the old hacky way for now.  
4.2 Raise a follow-on issue to remove the hacky way of importing packages.  
4.3 Navigate R1402 to support package references the new way.  

5. Design
---------
Package references are already supported in MC-3020 using the scheme of
marking an imported package in the Descrip field.  So, the work to make
this work work by traversing R1402 is small.

Namely, instead of stitching the imported package directly into the
parent component, we will navigate across R1402 to the imported package.
For current MC-3020, we can navigate this association only once for
classes and functions.  MC-3020 does not know how to have the same
class or function in more than one component.  Datatypes and EEs that
are in imported packages will use the existing "system-level" naming
scheme.  Such elements can be shared in multiple componenents; the
generated C code simply accesses them globally.

6. Work Required
----------------
as outlined in the design

7. Implementation Comments
--------------------------
7.1 Rebuild docgen.  
Docgen needed to be built to support the updated schema.

7.2 Fix STRING::quote.  
A better way to handle string quotes was introduced during a fix to
`maslout`.  Implement a simpler way here.

7.3 Fix 1:M associative reflexive Link and Unlink.  
This work revealed a bug in MC-3020 link and unlink code for associative
reflexives that have one-to-many cardinality.

7.4 Dialect  
Add Dialect attribute to action body classes for Raven.

7.5 empty handle detection  
Found and fixed a bug in empty handle detection for expressions.
We were not returning the handle from the call.  Added the return
statement.

7.6 Merge in Raven Production  
Merged in Raven Production branch.

8. Unit Test
------------
8.1 Build and test `docgen`.  
Docgen uses package references.  Be sure it still works by generating
documentation using a version of docgen using the updated `mcooa`.  
8.2 Build and test `mcmc`.  

9. User Documentation
---------------------
None

10. Code Changes
----------------
Fork/Repository:  cortlandstarrett/mc  
Fork/Repository:  cortlandstarrett/packaging  
Branch:  8072_packref  

<pre>

 arc/q.sys.populate.arc                             |   83 +-
 arc/t.class.relate_assref.c                        |   12 +-
 arc/t.sys_sets.c                                   |    1 +
 doc/notes/8072_packref/8072_packref_int.md         |   83 ++
 mcmc/arlan/funcsigs.h                              |    1 +
 mcmc/arlan/o.oal                                   |   53 +-
 mcmc/arlan/o2.oal                                  |    8 +-
 mcmc/arlan/o3.oal                                  |    2 +-
 mcmc/arlan/o4.oal                                  |    4 +-
 mcmc/arlan/swapreflex.sh                           |    3 +
 model/docgen/gen/docgen.c                          |    4 +
 model/escher/gen/ooaofooa.c                        |  131 ++-
 model/escher/gen/sys_sys_types.h                   |  418 --------
 model/escher/gen/sys_xtuml.c                       |   11 +
 model/escher/models/escher/mcmc/afun/afun.xtuml    | 1022 ++++++++++----------
 .../gen/masl2xtuml_ooapopulation_class.c           |   18 +
 .../m2x/ooapopulation/ooapopulation.xtuml          |   18 +-
 model/maslin_new/src/makefile.maslin               |    3 +-
 model/maslout/gen/STRING_bridge.c                  |    7 +-
 model/maslout/gen/STRING_bridge.h                  |   33 +
 .../Provided Operation/Provided Operation.xtuml    |   18 +
 .../Provided Signal/Provided Signal.xtuml          |   18 +
 .../Required Operation/Required Operation.xtuml    |   18 +
 .../Required Signal/Required Signal.xtuml          |   18 +
 .../mcooa/ooaofooa/Domain/Bridge/Bridge.xtuml      |   18 +
 .../mcooa/ooaofooa/Domain/Function/Function.xtuml  |   18 +
 .../Element Packaging/Element Packaging.xtuml      |  448 ++++++++-
 .../Package Reference/Package Reference.xtuml      |  130 +++
 .../ooaofooa/State Machine/Action/Action.xtuml     |   18 +
 .../Derived Base Attribute.xtuml                   |   18 +
 .../ooaofooa/Subsystem/Operation/Operation.xtuml   |   18 +
 model/mcshared/gen/STRING_bridge.h                 |   32 +
 schema/sql/xtumlmc_schema.sql                      |   33 +-
 33 files changed, 1639 insertions(+), 1081 deletions(-)

 build/extra_files/docgen     | Bin 1220622 -> 1217807 bytes
 build/extra_files/docgen.exe | Bin 575301 -> 571847 bytes
 build/extra_files/mcmc       | Bin 1749565 -> 1754355 bytes
 build/extra_files/mcmc.exe   | Bin 1070320 -> 1072774 bytes
 build/extra_files/mcmc64     | Bin 2067174 -> 2068125 bytes

</pre>


End
---

