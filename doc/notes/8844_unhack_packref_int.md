---

This work is licensed under the Creative Commons CC0 License

---

# Unhack Package References in the MC
### xtUML Project Implementation Note


1. Abstract
-----------
This note describes work performed to use actual package references
in the model compiler models.

2. Document References
----------------------
[1] [8844](https://support.onefact.net/issues/8844) - Unhack package references  
[2] [8072](https://support.onefact.net/issues/8072) - Support package references in the MC  
[3] [GPS MASL example model](https://github.com/xtuml/models/tree/master/masl/gps)  

3. Background
-------------
Pacakge references were introduced into the model compiler models in [2].
For the first pass of this work, a "hack" method was used that employed
the `Descrip` field of an empty package.  This allowed package references
to work before they were fully supported in the BridgePoint editor.  The
hack has served its purpose and needs to be removed from the archetypes
and from the model-based model compiler applications.

4. Requirements
---------------
4.1 `Descrip` field -based Package References  
`Descrip` field -based package referencing shall be deprecated from the
archetypes.  
4.2 Model Compiler Models  
All of the model-based model compiler xtUML models shall be updated to
use real package references (`EP_PKGREF`).  
4.1.1 docgen  
4.1.2 Document  
4.1.3 escher  
4.1.5 masl  
4.1.6 `maslin_new`  
4.1.7 maslout  

5. Work Required
----------------
5.1. Remove hacky code from `q.sys.populate.arc`.  
5.2 Model Updates  
For each of the models listed in section 4, do the following:  
5.2.1 Clear out `Descrip` field for package reference packages.  
5.2.2 Assign packages as Package References.  
5.2.3 Build and clean up.  
  
6. Implementation Comments
--------------------------
6.1 When recompiling models, some updates to the generated code needed
to be made around string processing.

6.2 Added `gen_erate.exe` and `gen_erate.pyz` to the packaging repository
on behalf of issue 8891, since this issue was already updating binaries.

6.3 Discovered an issue that caused a lot of files to be changed.  Here is
the skype log for it:
<pre>
[12/3/16, 8:05:24 PM] Cortland Starrett: I have a bizarre scenario.
On a single project, prebuilder output is different when run from different workspaces.
[12/3/16, 8:06:40 PM] Cortland Starrett: And there is only 1 difference, some (not all) S_IRDT instances.
[12/3/16, 8:09:41 PM] Cortland Starrett: The project is mcooa which is included in a few different workspaces.
When I run prebuilder on it from my ‘escher’ workspace, it omits some of the S_IRDT instances.  The ‘docgen’ and ‘x2m’ workspaces do fine.
[12/3/16, 8:13:38 PM] Cortland Starrett: I can repeat the same omissions when running prebuilder on a referring project or running on ‘mcooa’ by itself.
[12/3/16, 9:02:49 PM] Cortland Starrett: When I create a brand new workspace with the same 3 projects (escher, mcooa, mcshared), some S_IRDTs are still missing.
[12/3/16, 9:03:26 PM] Cortland Starrett: When I create a brand new workspace with just mcooa, I get all of the instance data.
[12/4/16, 12:44:36 AM] Cortland Starrett: I was able to figure this out.  I believe it had something to do with bad proxies in the mcooa project… and not just bad paths, bad IDs (to the system).
</pre>
  
7. Unit Test
------------
7.1 Build and compare  
  * Build docgen, escher, `maslin_new` and maslout  
  * Compile the source code.  
  * __R__ docgen, docgen.exe, mcmc, mcmc64, mcmc.exe, m2x and x2m are created.  
  * Put the new executables into a BridgePoint environment.  
  * Add `gen_erate.exe` to a Windows environment and add `gen_erate.pyz` to Linux.  
  * Convert GPS Watch MASL model [3] into xtuml using masl2xtuml and the new m2x  
  * Import the converted GPS Watch projects into BridgePoint  
  * Export the GPS Watch components back to MASL using BridgePoint tooling  
  * Compare the newly exported model data with the original MASL model [3]  
  * __R__ The files are nearly identical (differences are expected or explainable)  
  * Generate documentation.  
  * __R__ Documentation HTML is produced.  
  
7.2 Gen code  
  * Import the MicrwowaveOven example project.  
  * Build it.  
  * __R__ Code generates with no errors in the Console.  

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc   
Fork: cortlandstarrett/packaging   

Branch name: 8844_unhack_packref

xtuml/mc
 arc/q.sys.populate.arc                                                                   |    31 -
 doc/notes/8844_unhack_packref_int.md                                                     |   152 +
 model/docgen/.externalToolBuilders/Model Compiler.launch                                 |     4 +-
 model/docgen/.settings/com.mentor.nucleus.bp.ui.project.preferences.prefs                |     1 +
 model/docgen/gen/domain.mark                                                             |     1 +
 model/docgen/gen/sys_user_co.c                                                           |     3 +-
 model/docgen/gen/sys_user_co.h                                                           |     6 +-
 model/docgen/models/docgen/lib/docgen/DocGen_imported/DocGen_imported.xtuml              |    15 +-
 model/docgen/models/docgen/lib/docgen/Document_imported/Document_imported.xtuml          |    16 +-
 model/docgen/models/docgen/lib/docgen/docgen.xtuml                                       |    24 -
 model/docgen/models/docgen/lib/docgen/ooaofooa_imported/ooaofooa_imported.xtuml          |    33 +-
 model/docgen/models/docgen/lib/docgen/trigger/trigger.xtuml                              |    73 -
 model/document/.settings/com.mentor.nucleus.bp.ui.project.preferences.prefs              |     1 +
 model/escher/.classpath                                                                  |     2 +-
 model/escher/.externalToolBuilders/Model Compiler.launch                                 |    12 +-
 model/escher/.settings/com.mentor.nucleus.bp.ui.project.preferences.prefs                |     1 +
 model/escher/gen/STRING_bridge.c                                                         |   315 +-
 model/escher/gen/STRING_bridge.h                                                         |    12 +-
 model/escher/gen/domain.mark                                                             |     1 +
 model/escher/gen/ooaofooa.c                                                              |     6 +
 model/escher/gen/sys_user_co.c                                                           |     3 +-
 model/escher/gen/sys_user_co.h                                                           |     6 +-
 .../models/escher/components/ooaofooa/extensions_imported/extensions_imported.xtuml      |    13 +-
 model/escher/models/escher/components/ooaofooa/mcmc_imported/mcmc_imported.xtuml         |    13 +-
 model/escher/models/escher/components/ooaofooa/ooaofooa_imported/ooaofooa_imported.xtuml |    33 +-
 model/masl/.externalToolBuilders/Model Compiler.launch                                   |     4 +-
 model/masl/.settings/com.mentor.nucleus.bp.ui.project.preferences.prefs                  |     1 +
 model/masl/gen/STRING_bridge.c                                                           |     7 +-
 model/masl/gen/STRING_bridge.h                                                           |    33 +
 model/masl/gen/sys_user_co.c                                                             |     3 +-
 model/masl/gen/sys_user_co.h                                                             |     2 +-
 model/masl/models/masl/lib/masl/init/init.xtuml                                          |    79 -
 model/masl/models/masl/lib/masl/masl.xtuml                                               |    24 -
 model/masl/models/masl/lib/masl/masl_imported/masl_imported.xtuml                        |    13 +-
 model/masl/models/masl/lib/masl/maslpopulation_imported/maslpopulation_imported.xtuml    |    13 +-
 model/masl/models/masl/lib/masl/masltypes_imported/masltypes_imported.xtuml              |    13 +-
 .../org.eclipse.cdt.managedbuilder.core.ScannerConfigBuilder.launch                      |     7 -
 .../.externalToolBuilders/org.eclipse.cdt.managedbuilder.core.genmakebuilder.launch      |     7 -
 model/maslin_new/.externalToolBuilders/Model Compiler.launch                             |     4 +-
 model/maslin_new/gen/{masl2xtuml_IDLINK_bridge.c => IDLINK_bridge.c}                     |     9 +-
 model/maslin_new/gen/STRING_bridge.c                                                     |     7 +-
 model/maslin_new/gen/STRING_bridge.h                                                     |    33 +
 model/maslin_new/gen/masl2xtuml.c                                                        |     6 +-
 model/maslin_new/gen/masl2xtuml.h                                                        |    22 -
 model/maslin_new/gen/masl2xtuml_O_ATTR_class.c                                           |     2 +-
 model/maslin_new/gen/masl2xtuml_S_UDT_class.c                                            |     2 +-
 model/maslin_new/gen/masl2xtuml_ooapopulation_class.c                                    |    78 +-
 model/maslin_new/gen/masl2xtuml_ooapopulation_class.h                                    |   220 -
 model/maslin_new/gen/sys_user_co.c                                                       |     9 +-
 model/maslin_new/gen/sys_user_co.h                                                       |     4 +-
 model/maslin_new/models/maslin_new/lib/masl2xtuml/m2x_imported/m2x_imported.xtuml        |    13 +-
 .../maslin_new/models/maslin_new/lib/masl2xtuml/marking_imported/marking_imported.xtuml  |    13 +-
 .../models/maslin_new/lib/masl2xtuml/ooaofooa_imported/ooaofooa_imported.xtuml           |    33 +-
 model/maslout/.externalToolBuilders/Model Compiler.launch                                |     4 +-
 model/maslout/gen/LOG_bridge.c                                                           |    23 +-
 model/maslout/gen/T_bridge.c                                                             |    19 +-
 model/maslout/gen/T_bridge.h                                                             |    42 -
 model/maslout/gen/domain.mark                                                            |     1 +
 model/maslout/gen/sys_user_co.c                                                          |     4 +-
 model/maslout/gen/sys_user_co.h                                                          |     2 +-
 .../lib/xtuml2masl/{maslout_imported/maslout_imported.xtuml => maslout/maslout.xtuml}    |     4 +-
 model/maslout/models/maslout/lib/xtuml2masl/mcooa_imported/mcooa_imported.xtuml          |    33 +-
 model/maslout/models/maslout/lib/xtuml2masl/xtuml2masl.xtuml                             |     6 +-
 model/mcooa/.externalToolBuilders/Model Compiler.launch                                  |     6 +-
 model/mcooa/.settings/com.mentor.nucleus.bp.ui.project.preferences.prefs                 |     1 +
 .../extensions/Translation Extensions/Action Block Anchor/Action Block Anchor.xtuml      |     2 +-
 .../mcooa/extensions/Translation Extensions/Class Info Array/Class Info Array.xtuml      |     2 +-
 .../mcooa/extensions/Translation Extensions/Component Instance/Component Instance.xtuml  |     2 +-
 model/mcooa/models/mcooa/extensions/Translation Extensions/Dispatcher/Dispatcher.xtuml   |     2 +-
 .../models/mcooa/extensions/Translation Extensions/DomainClassInfo/DomainClassInfo.xtuml |     2 +-
 .../models/mcooa/extensions/Translation Extensions/Extended Action/Extended Action.xtuml |     2 +-
 .../Translation Extensions/Extended Actual Parameter/Extended Actual Parameter.xtuml     |     2 +-
 .../mcooa/extensions/Translation Extensions/Extended Attribute/Extended Attribute.xtuml  |     2 +-
 .../models/mcooa/extensions/Translation Extensions/Extended Bridge/Extended Bridge.xtuml |     2 +-
 .../models/mcooa/extensions/Translation Extensions/Extended Class/Extended Class.xtuml   |     2 +-
 .../mcooa/extensions/Translation Extensions/Extended Component/Extended Component.xtuml  |     2 +-
 .../mcooa/extensions/Translation Extensions/Extended Data Type/Extended Data Type.xtuml  |     2 +-
 .../Translation Extensions/Extended Derived Attribute/Extended Derived Attribute.xtuml   |     2 +-
 .../mcooa/extensions/Translation Extensions/Extended Dimension/Extended Dimension.xtuml  |     2 +-
 .../extensions/Translation Extensions/Extended Enumerator/Extended Enumerator.xtuml      |     2 +-
 .../models/mcooa/extensions/Translation Extensions/Extended Event/Extended Event.xtuml   |     2 +-
 .../Translation Extensions/Extended External Entity/Extended External Entity.xtuml       |     2 +-
 .../mcooa/extensions/Translation Extensions/Extended Function/Extended Function.xtuml    |     2 +-
 .../models/mcooa/extensions/Translation Extensions/Extended Member/Extended Member.xtuml |     2 +-
 .../Translation Extensions/Extended Message Action/Extended Message Action.xtuml         |     2 +-
 .../Translation Extensions/Extended Object In Relation/Extended Object In Relation.xtuml |     4 +-
 .../mcooa/extensions/Translation Extensions/Extended Operation/Extended Operation.xtuml  |     2 +-
 .../mcooa/extensions/Translation Extensions/Extended Parameter/Extended Parameter.xtuml  |     2 +-
 .../models/mcooa/extensions/Translation Extensions/Extended Port/Extended Port.xtuml     |     2 +-
 .../mcooa/extensions/Translation Extensions/Extended Relation/Extended Relation.xtuml    |     2 +-
 .../Translation Extensions/Extended State Machine/Extended State Machine.xtuml           |     2 +-
 .../models/mcooa/extensions/Translation Extensions/Extended State/Extended State.xtuml   |     2 +-
 .../models/mcooa/extensions/Translation Extensions/Extended System/Extended System.xtuml |     2 +-
 .../models/mcooa/extensions/Translation Extensions/Extended Value/Extended Value.xtuml   |     2 +-
 .../mcooa/extensions/Translation Extensions/Extended Variable/Extended Variable.xtuml    |     2 +-
 .../models/mcooa/extensions/Translation Extensions/Extended Where/Extended Where.xtuml   |     2 +-
 .../mcooa/extensions/Translation Extensions/Interface Instance/Interface Instance.xtuml  |     2 +-
 .../models/mcooa/extensions/Translation Extensions/Message Queue/Message Queue.xtuml     |     2 +-
 .../extensions/Translation Extensions/Special Where Clause/Special Where Clause.xtuml    |     2 +-
 model/mcooa/models/mcooa/extensions/Translation Extensions/Translation Extensions.xtuml  |     4 +-
 model/mcooa/models/mcooa/extensions/Translation Extensions/container/container.xtuml     |     2 +-
 model/mcooa/models/mcooa/extensions/Translation Extensions/copyright/copyright.xtuml     |     2 +-
 model/mcooa/models/mcooa/extensions/Translation Extensions/dlist/dlist.xtuml             |     2 +-
 .../Translation Extensions/dynamic memory allocation/dynamic memory allocation.xtuml     |     2 +-
 model/mcooa/models/mcooa/extensions/Translation Extensions/event queue/event queue.xtuml |     2 +-
 model/mcooa/models/mcooa/extensions/Translation Extensions/extent/extent.xtuml           |     2 +-
 model/mcooa/models/mcooa/extensions/Translation Extensions/file/file.xtuml               |     2 +-
 model/mcooa/models/mcooa/extensions/Translation Extensions/instance/instance.xtuml       |     2 +-
 .../mcooa/extensions/Translation Extensions/interleaved bridge/interleaved bridge.xtuml  |     2 +-
 model/mcooa/models/mcooa/extensions/Translation Extensions/output file/output file.xtuml |     2 +-
 model/mcooa/models/mcooa/extensions/Translation Extensions/persistence/persistence.xtuml |     2 +-
 model/mcooa/models/mcooa/extensions/Translation Extensions/prefix/prefix.xtuml           |     2 +-
 .../Translation Extensions/relationship information/relationship information.xtuml       |     2 +-
 .../extensions/Translation Extensions/relationship storage/relationship storage.xtuml    |     2 +-
 model/mcooa/models/mcooa/extensions/Translation Extensions/slist/slist.xtuml             |     2 +-
 model/mcooa/models/mcooa/extensions/Translation Extensions/string/string.xtuml           |     2 +-
 model/mcooa/models/mcooa/extensions/Translation Extensions/target/target.xtuml           |     2 +-
 model/mcooa/models/mcooa/extensions/Translation Extensions/thread/thread.xtuml           |     2 +-
 model/mcooa/models/mcooa/extensions/Translation Extensions/timer/timer.xtuml             |     2 +-
 model/mcooa/models/mcooa/extensions/Translation Extensions/trace/trace.xtuml             |     2 +-
 model/mcooa/models/mcooa/extensions/Translation Extensions/type map/type map.xtuml       |     2 +-
 .../mcooa/models/mcooa/extensions/Translation Extensions/user callout/user callout.xtuml |     2 +-
 model/mcooa/models/mcooa/extensions/Translation Marking/CPP Template/CPP Template.xtuml  |     2 +-
 .../models/mcooa/extensions/Translation Marking/Component Mark/Component Mark.xtuml      |     2 +-
 .../mcooa/extensions/Translation Marking/Data Type Pointer/Data Type Pointer.xtuml       |     2 +-
 .../mcooa/extensions/Translation Marking/Data Type Precision/Data Type Precision.xtuml   |     2 +-
 .../models/mcooa/extensions/Translation Marking/Enumeration Init/Enumeration Init.xtuml  |     2 +-
 .../models/mcooa/extensions/Translation Marking/Enumerator Value/Enumerator Value.xtuml  |     2 +-
 .../mcooa/models/mcooa/extensions/Translation Marking/Function Mark/Function Mark.xtuml  |     2 +-
 .../models/mcooa/extensions/Translation Marking/Interface Mark/Interface Mark.xtuml      |     2 +-
 model/mcooa/models/mcooa/extensions/Translation Marking/System Tags/System Tags.xtuml    |     2 +-
 model/mcooa/models/mcooa/extensions/Translation Marking/Tasking Mark/Tasking Mark.xtuml  |     2 +-
 .../Translation Marking/Template Parameter Value/Template Parameter Value.xtuml          |     2 +-
 .../mcooa/extensions/Translation Marking/Template Parameter/Template Parameter.xtuml     |     2 +-
 model/mcooa/models/mcooa/extensions/Translation Marking/Translation Marking.xtuml        |    58 +-
 model/mcooa/models/mcooa/extensions/Translation Marking/build/build.xtuml                |     2 +-
 model/mcooa/models/mcooa/extensions/Translation OAL/Extended Block/Extended Block.xtuml  |     2 +-
 .../mcooa/extensions/Translation OAL/Extended Chain Link/Extended Chain Link.xtuml       |     2 +-
 .../models/mcooa/extensions/Translation OAL/Extended Statement/Extended Statement.xtuml  |     2 +-
 model/mcooa/models/mcooa/extensions/Translation OAL/OAL assign/OAL assign.xtuml          |     2 +-
 model/mcooa/models/mcooa/extensions/Translation OAL/OAL break/OAL break.xtuml            |     2 +-
 model/mcooa/models/mcooa/extensions/Translation OAL/OAL bridge/OAL bridge.xtuml          |     2 +-
 model/mcooa/models/mcooa/extensions/Translation OAL/OAL continue/OAL continue.xtuml      |     2 +-
 model/mcooa/models/mcooa/extensions/Translation OAL/OAL control/OAL control.xtuml        |     2 +-
 .../models/mcooa/extensions/Translation OAL/OAL create_event/OAL create_event.xtuml      |     2 +-
 .../mcooa/extensions/Translation OAL/OAL create_instance/OAL create_instance.xtuml       |     2 +-
 .../mcooa/extensions/Translation OAL/OAL delete_instance/OAL delete_instance.xtuml       |     2 +-
 model/mcooa/models/mcooa/extensions/Translation OAL/OAL elif/OAL elif.xtuml              |     2 +-
 model/mcooa/models/mcooa/extensions/Translation OAL/OAL else/OAL else.xtuml              |     2 +-
 .../mcooa/extensions/Translation OAL/OAL event_parameters/OAL event_parameters.xtuml     |     2 +-
 model/mcooa/models/mcooa/extensions/Translation OAL/OAL for/OAL for.xtuml                |     2 +-
 model/mcooa/models/mcooa/extensions/Translation OAL/OAL function/OAL function.xtuml      |     2 +-
 model/mcooa/models/mcooa/extensions/Translation OAL/OAL generate/OAL generate.xtuml      |     2 +-
 .../Translation OAL/OAL generate_creator_event/OAL generate_creator_event.xtuml          |     2 +-
 .../Translation OAL/OAL generate_precreated_event/OAL generate_precreated_event.xtuml    |     2 +-
 .../mcooa/extensions/Translation OAL/OAL generate_to_class/OAL generate_to_class.xtuml   |     2 +-
 model/mcooa/models/mcooa/extensions/Translation OAL/OAL if/OAL if.xtuml                  |     2 +-
 model/mcooa/models/mcooa/extensions/Translation OAL/OAL iop/OAL iop.xtuml                |     2 +-
 model/mcooa/models/mcooa/extensions/Translation OAL/OAL operation/OAL operation.xtuml    |     2 +-
 model/mcooa/models/mcooa/extensions/Translation OAL/OAL relate/OAL relate.xtuml          |     2 +-
 .../models/mcooa/extensions/Translation OAL/OAL relate_using/OAL relate_using.xtuml      |     2 +-
 model/mcooa/models/mcooa/extensions/Translation OAL/OAL return/OAL return.xtuml          |     2 +-
 model/mcooa/models/mcooa/extensions/Translation OAL/OAL select/OAL select.xtuml          |     2 +-
 .../models/mcooa/extensions/Translation OAL/OAL select_related/OAL select_related.xtuml  |     4 +-
 .../models/mcooa/extensions/Translation OAL/OAL select_where/OAL select_where.xtuml      |     2 +-
 model/mcooa/models/mcooa/extensions/Translation OAL/OAL sgn/OAL sgn.xtuml                |     2 +-
 model/mcooa/models/mcooa/extensions/Translation OAL/OAL unrelate/OAL unrelate.xtuml      |     2 +-
 .../models/mcooa/extensions/Translation OAL/OAL urelate_using/OAL urelate_using.xtuml    |     2 +-
 model/mcooa/models/mcooa/extensions/Translation OAL/OAL while/OAL while.xtuml            |     2 +-
 model/mcooa/models/mcooa/extensions/Translation OAL/Translation OAL.xtuml                |     4 +-
 model/mcshared/.settings/com.mentor.nucleus.bp.ui.project.preferences.prefs              |     1 +

xtuml/packaging
 build/extra_files/docgen        | Bin 1217807 -> 1299727 bytes
 build/extra_files/docgen.exe    | Bin 571847 -> 653767 bytes
 build/extra_files/gen_erate.exe | Bin 5732783 -> 5732889 bytes
 build/extra_files/gen_erate.pyz | Bin 312484 -> 460422 bytes
 build/extra_files/m2x           | Bin 1845235 -> 647183 bytes
 build/extra_files/masl          | Bin 527785 -> 239623 bytes
 build/extra_files/mcmc          | Bin 1754355 -> 1856996 bytes
 build/extra_files/mcmc.exe      | Bin 1072774 -> 1177125 bytes
 build/extra_files/mcmc64        | Bin 2068125 -> 2170830 bytes
 build/extra_files/x2m           | Bin 6512915 -> 685380 bytes

</pre>

End
---

