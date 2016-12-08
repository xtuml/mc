---

This work is licensed under the Creative Commons CC0 License

---

# Rename `maslin_new` back to maslin
### xtUML Project Implementation Note


1. Abstract
-----------
This note describes work performed to rename `maslin_new` to maslin.

2. Document References
----------------------
[1] [8770](https://support.onefact.net/issues/8770) - Clean up maslin duplication  
[2] [8523](https://support.onefact.net/issues/8523) - Package disappears from Model Explorer  

3. Background
-------------
maslin was replaced by maslin but not deleted due to [2].  It is
non-trivial to rename a model and project containing, so the work was
deferred to [1].

4. Requirements
---------------
4.1 Rename the model.  
The xtUML Model `maslin_new` shall be `maslin`.  
4.2 Rename the project.  
The Eclipse project `maslin_new` shall be `maslin`.  

5. Work Required
----------------
5.1 Rename the model.  
5.2 Commit and push.  
5.3 Use `sed` to replace `maslin_new` with `maslin` in the C source code
files in the /gen folder.  
5.4 Copy old /src folder (from a previous build).  
5.5 Use `sed` to replace `maslin_new` with `maslin` in the copied C source
code files in the /src folder.  
5.6 `git mv maslin_new maslin` // Rename the project folder.  
5.7 Commit and push.  
5.8 Test per section 7.  
  
6. Implementation Comments
--------------------------
  
7. Unit Test
------------
7.1 Build and compare  
  * Build `maslin`.  
  * Compare generated C files to the ones saved from before.  
  * __R__ See no diffs.  

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc   
Fork: cortlandstarrett/packaging   

Branch name: 8770_maslin

xtuml/mc
 doc/notes/8770_maslin_int.md                                                             |  167 ++++++++++++++
 model/{maslin_new => maslin}/.cproject                                                   |  0
 model/{maslin_new => maslin}/.externalToolBuilders/Model Compiler.launch                 |  0
 .../org.eclipse.cdt.managedbuilder.core.ScannerConfigBuilder (3).launch                  |  0
 .../.externalToolBuilders/org.eclipse.cdt.managedbuilder.core.genmakebuilder (3).launch  |  0
 model/{maslin_new => maslin}/.project                                                    |  2 +-
 .../{maslin_new => maslin}/.settings/com.mentor.nucleus.bp.ui.project.preferences.prefs  |  0
 model/{maslin_new => maslin}/gen/.gitignore                                              |  0
 model/{maslin_new => maslin}/gen/HOWTO_test_maslin.md                                    |  0
 model/{maslin_new => maslin}/gen/IDLINK_bridge.c                                         |  4 +--
 model/{maslin_new => maslin}/gen/LOG_bridge.c                                            |  2 +-
 model/{maslin_new => maslin}/gen/STRING_bridge.c                                         |  4 +--
 model/{maslin_new => maslin}/gen/STRING_bridge.h                                         |  2 +-
 model/{maslin_new => maslin}/gen/bridge.mark                                             |  0
 model/{maslin_new => maslin}/gen/class.mark                                              |  0
 model/{maslin_new => maslin}/gen/datatype.mark                                           |  0
 model/{maslin_new => maslin}/gen/domain.mark                                             |  0
 model/{maslin_new => maslin}/gen/event.mark                                              |  0
 model/{maslin_new => maslin}/gen/masl2xtuml.c                                            |  2 +-
 model/{maslin_new => maslin}/gen/masl2xtuml_O_ATTR_class.c                               |  2 +-
 model/{maslin_new => maslin}/gen/masl2xtuml_S_UDT_class.c                                |  2 +-
 model/{maslin_new => maslin}/gen/masl2xtuml_ooapopulation_class.c                        | 72 ++++++++++++++++++++++----------------------
 model/{maslin_new => maslin}/gen/masl_url.c                                              |  0
 model/{maslin_new => maslin}/gen/masl_url.h                                              |  0
 model/{maslin_new => maslin}/gen/sys_user_co.c                                           |  2 +-
 model/{maslin_new => maslin}/gen/sys_user_co.h                                           |  0
 model/{maslin_new => maslin}/gen/system.mark                                             |  0
 model/{maslin_new/models/maslin_new => maslin/models/maslin}/lib/lib.xtuml               | 16 +++++-----
 .../maslin_new => maslin/models/maslin}/lib/masl2xtuml/m2x_imported/m2x_imported.xtuml   |  6 ++--
 .../models/maslin}/lib/masl2xtuml/marking_imported/marking_imported.xtuml                |  6 ++--
 .../models/maslin_new => maslin/models/maslin}/lib/masl2xtuml/masl2xtuml.xtuml           | 14 ++++-----
 .../models/maslin}/lib/masl2xtuml/ooaofooa_imported/ooaofooa_imported.xtuml              |  6 ++--
 model/{maslin_new/models/maslin_new => maslin/models/maslin}/lib/test/ib/ib.xtuml        |  8 ++---
 model/{maslin_new/models/maslin_new => maslin/models/maslin}/lib/test/ib/test/test.xtuml |  0
 model/{maslin_new/models/maslin_new => maslin/models/maslin}/lib/test/test.xtuml         |  8 ++---
 .../maslin_new => maslin/models/maslin}/m2x/assocFormalization/assocFormalization.xtuml  |  0
 .../models/maslin_new => maslin/models/maslin}/m2x/formalization/formalization.xtuml     |  0
 model/{maslin_new/models/maslin_new => maslin/models/maslin}/m2x/m2x.xtuml               | 38 +++++++++++------------
 .../maslin_new => maslin/models/maslin}/m2x/ooaparticipation/ooaparticipation.xtuml      |  0
 .../models/maslin_new => maslin/models/maslin}/m2x/ooapopulation/ooapopulation.xtuml     |  0
 .../models/maslin}/m2x/referentialAttribute/referentialAttribute.xtuml                   |  0
 .../models/maslin}/m2x/simpleFormalization/simpleFormalization.xtuml                     |  0
 .../models/maslin}/m2x/subsuperFormalization/subsuperFormalization.xtuml                 |  0
 model/{maslin_new/models/maslin_new => maslin/models/maslin}/marking/marking.xtuml       | 40 ++++++++++++------------
 .../models/maslin_new => maslin/models/maslin}/marking/ooaelement/ooaelement.xtuml       |  0
 .../models/maslin_new => maslin/models/maslin}/marking/ooamarkable/ooamarkable.xtuml     |  0
 .../models/maslin_new => maslin/models/maslin}/marking/ooapragma/ooapragma.xtuml         |  0
 .../maslin_new => maslin/models/maslin}/marking/ooapragma_item/ooapragma_item.xtuml      |  0
 .../maslin_new => maslin/models/maslin}/marking/ooapragma_list/ooapragma_list.xtuml      |  0
 .../models/maslin_new => maslin/models/maslin}/marking/ooaunmarkable/ooaunmarkable.xtuml |  0
 .../{maslin_new/models/maslin_new/maslin_new.xtuml => maslin/models/maslin/maslin.xtuml} |  4 +--
 model/{maslin_new/models/maslin_new => maslin/models/maslin}/sysmaslin/sysmaslin.xtuml   | 16 +++++-----
 model/{maslin_new/models/maslin_new => maslin/models/maslin}/systest/systest.xtuml       | 22 +++++++-------
 model/{maslin_new => maslin}/src/.gitignore                                              |  0
 model/{maslin_new => maslin}/src/makefile.maslin                                         |  0
 model/{maslin_new => maslin}/test_data/GPSWatch.smasl                                    |  0
 model/{maslin_new => maslin}/test_data/GPSWatch.sql                                      |  0
 model/{maslin_new => maslin}/test_data/GPSWatch.xtuml                                    |  0
 model/{maslin_new => maslin}/test_data/HeartRateMonitor.smasl                            |  0
 model/{maslin_new => maslin}/test_data/HeartRateMonitor.sql                              |  0
 model/{maslin_new => maslin}/test_data/HeartRateMonitor.xtuml                            |  0
 model/{maslin_new => maslin}/test_data/Location.smasl                                    |  0
 model/{maslin_new => maslin}/test_data/Location.sql                                      |  0
 model/{maslin_new => maslin}/test_data/Location.xtuml                                    |  0
 model/{maslin_new => maslin}/test_data/PSC.smasl                                         |  0
 model/{maslin_new => maslin}/test_data/SAC.smasl                                         |  0
 model/{maslin_new => maslin}/test_data/SAC_PROC.smasl                                    |  0
 model/{maslin_new => maslin}/test_data/SAC_from_m2x.sql                                  |  0
 model/{maslin_new => maslin}/test_data/Tracking.smasl                                    |  0
 model/{maslin_new => maslin}/test_data/Tracking.sql                                      |  0
 model/{maslin_new => maslin}/test_data/Tracking.xtuml                                    |  0
 model/{maslin_new => maslin}/test_data/UI.smasl                                          |  0
 model/{maslin_new => maslin}/test_data/UI.sql                                            |  0
 model/{maslin_new => maslin}/test_data/UI.xtuml                                          |  0
 model/{maslin_new => maslin}/test_data/pragmas/PragTest/PragTest.int                     |  0
 model/{maslin_new => maslin}/test_data/pragmas/PragTest/PragTest.mod                     |  0
 model/{maslin_new => maslin}/test_data/pragmas/PragTest/bar.fn                           |  0
 model/{maslin_new => maslin}/test_data/pragmas/PragTest/foo.svc                          |  0
 model/{maslin_new => maslin}/test_data/pragmas/PragTest/obj1_bar.fn                      |  0
 model/{maslin_new => maslin}/test_data/pragmas/PragTest/obj1_foo.svc                     |  0
 model/{maslin_new => maslin}/test_data/pragmas/PragTest/obj1_st1.al                      |  0
 model/{maslin_new => maslin}/test_data/pragmas/PragTest/term1_bar.tr                     |  0
 model/{maslin_new => maslin}/test_data/pragmas/PragTest/term1_foo.tr                     |  0
 model/{maslin_new => maslin}/test_data/pragmas/PragTestProj/PragTestProj.prj             |  0
 model/{maslin_new => maslin}/test_data/pragmas/PragTestProj/PragTest_term1_bar.tr        |  0
 model/{maslin_new => maslin}/test_data/pragmas/PragTestProj/PragTest_term1_foo.tr        |  0
 model/{maslin_new => maslin}/test_data/referentials/REF.mod                              |  0
 model/{maslin_new => maslin}/test_data/referentials/REF.smasl                            |  0
 model/{maslin_new => maslin}/test_data/referentials/assocREF.mod                         |  0
 model/{maslin_new => maslin}/test_data/referentials/assocREF.smasl                       |  0
 model/{maslin_new => maslin}/test_data/referentials/combinedREF.mod                      |  0
 model/{maslin_new => maslin}/test_data/referentials/combinedREF.smasl                    |  0
 model/{maslin_new => maslin}/test_data/referentials/dependREF.mod                        |  0
 model/{maslin_new => maslin}/test_data/referentials/dependREF.smasl                      |  0
 model/{maslin_new => maslin}/test_data/referentials/subsuperREF.mod                      |  0
 model/{maslin_new => maslin}/test_data/referentials/subsuperREF.smasl                    |  0
 95 files changed, 139 insertions(+), 139 deletions(-)
</pre>

End
---

