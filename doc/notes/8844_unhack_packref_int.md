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
 doc/notes/8844_unhack_packref_int.md                                                     |    92 +
 model/docgen/.externalToolBuilders/Model Compiler.launch                                 |     4 +-
 model/docgen/.settings/com.mentor.nucleus.bp.ui.project.preferences.prefs                |     1 +
 model/docgen/models/docgen/lib/docgen/DocGen_imported/DocGen_imported.xtuml              |    15 +-
 model/docgen/models/docgen/lib/docgen/Document_imported/Document_imported.xtuml          |    16 +-
 model/docgen/models/docgen/lib/docgen/docgen.xtuml                                       |    24 -
 model/docgen/models/docgen/lib/docgen/ooaofooa_imported/ooaofooa_imported.xtuml          |    33 +-
 model/docgen/models/docgen/lib/docgen/trigger/trigger.xtuml                              |    73 -
 model/document/.settings/com.mentor.nucleus.bp.ui.project.preferences.prefs              |     1 +
 model/masl/.settings/com.mentor.nucleus.bp.ui.project.preferences.prefs                  |     1 +
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
 model/maslin_new/gen/sys_user_co.c                                                       |     4 +-
 model/maslin_new/models/maslin_new/lib/masl2xtuml/m2x_imported/m2x_imported.xtuml        |    13 +-
 .../maslin_new/models/maslin_new/lib/masl2xtuml/marking_imported/marking_imported.xtuml  |    13 +-
 .../models/maslin_new/lib/masl2xtuml/ooaofooa_imported/ooaofooa_imported.xtuml           |    33 +-
 model/maslout/.externalToolBuilders/Model Compiler.launch                                |     4 +-
 model/maslout/gen/LOG_bridge.c                                                           |    23 +-
 model/maslout/gen/T_bridge.c                                                             |    19 +-
 model/maslout/gen/T_bridge.h                                                             |    42 -
 .../lib/xtuml2masl/{maslout_imported/maslout_imported.xtuml => maslout/maslout.xtuml}    |     4 +-
 model/maslout/models/maslout/lib/xtuml2masl/mcooa_imported/mcooa_imported.xtuml          |    33 +-
 model/maslout/models/maslout/lib/xtuml2masl/xtuml2masl.xtuml                             |     6 +-
 model/mcooa/.settings/com.mentor.nucleus.bp.ui.project.preferences.prefs                 |     1 +
 model/mcshared/.settings/com.mentor.nucleus.bp.ui.project.preferences.prefs              |     1 +

xtuml/packaging
 build/extra_files/gen_erate.exe | Bin 5732783 -> 5732889 bytes
 build/extra_files/gen_erate.pyz | Bin 312484 -> 460422 bytes

</pre>

End
---

