---

This work is licensed under the Creative Commons CC0 License

---

# Update Dialect Attribute in MC
### xtUML Project Implementation Note


1. Abstract
-----------
The Dialect attribute on action bodies became an enumeration in OOAofOOA.
Follow this lead in mcooa.

2. Document References
----------------------
[1] [8920](https://support.onefact.net/issues/8920) - Update Dialect in MC  
[2] [8887](https://support.onefact.net/issues/8887) - Clean up MASL persistence  
[3] [8912](https://support.onefact.net/issues/8912) - Test for empty on `C_EPs`    

3. Background
-------------
As part of [2], the `Dialect` attribute of action body elements was changed
from STRING to an enumeration.  This same change needs to occur in mcooa.
Care must be taken to be sure the enumerators follow the same sequence as
that of MC-Java.

4. Requirements
---------------
4.1 Change Dialect from STRING to the same enumeration used in OOAofOOA.

5. Work Required
----------------
5.1. Add new enumerated type `ActionDialect` with enumerators `oal`
and `masl`.  
5.2 Link ActionDialect as the type for Dialect on: `S_SYNC`, `S_BRG`,
`O_TFR`, `O_DBATTR`, `SM_ACT`, `SPR_PO`, `SPR_PS`, `SPR_RO`, `SPR_RS`.  
5.3 Update the schema.  
5.4 Recompile the MC executables (docgen, docgen.exe, mcmc, mcmc64,
mcmc.exe, m2x and x2m).  
  
6. Implementation Comments
--------------------------
6.1 Found and fixed a typo in [2].  
6.2 Pulled in issue [3] to this work.  
  
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

Branch name: 8920_dialect

xtuml/mc
 doc/notes/8844_unhack_packref_int.md                                        |  2 +-
 doc/notes/8920_dialect_int.md                                               | 91 +++++++++++++++++++++++++++++++++++++
 model/docgen/gen/docgen.c                                                   | 15 ------
 model/escher/gen/ooaofooa.c                                                 |  6 +--
 model/maslin/.externalToolBuilders/Model Compiler.launch                    |  4 +-
 model/maslin/gen/masl2xtuml.c                                               |  6 +--
 model/maslin/gen/masl2xtuml_ooapopulation_class.c                           | 25 +++++-----
 model/maslin/models/maslin/m2x/ooapopulation/ooapopulation.xtuml            | 24 ++++++----
 .../Provided Operation/Provided Operation.xtuml                             |  9 +++-
 .../Provided Signal/Provided Signal.xtuml                                   |  9 +++-
 .../Required Operation/Required Operation.xtuml                             |  9 +++-
 .../Required Signal/Required Signal.xtuml                                   |  9 +++-
 model/mcooa/models/mcooa/ooaofooa/Datatypes/Datatypes.xtuml                 | 54 +++++++++++++++++++++-
 model/mcooa/models/mcooa/ooaofooa/Domain/Bridge/Bridge.xtuml                |  9 +++-
 model/mcooa/models/mcooa/ooaofooa/Domain/Function/Function.xtuml            |  9 +++-
 model/mcooa/models/mcooa/ooaofooa/State Machine/Action/Action.xtuml         |  9 +++-
 .../ooaofooa/Subsystem/Derived Base Attribute/Derived Base Attribute.xtuml  |  9 +++-
 model/mcooa/models/mcooa/ooaofooa/Subsystem/Operation/Operation.xtuml       |  9 +++-
 schema/sql/xtumlmc_schema.sql                                               | 18 ++++----
 19 files changed, 260 insertions(+), 66 deletions(-)

xtuml/packaging
 build/extra_files/docgen     | Bin 1299727 -> 1295014 bytes
 build/extra_files/docgen.exe | Bin 653767 -> 651939 bytes
 build/extra_files/m2x        | Bin 647183 -> 646585 bytes
 build/extra_files/mcmc       | Bin 1856996 -> 1856419 bytes
 build/extra_files/mcmc.exe   | Bin 1177125 -> 1175308 bytes
 build/extra_files/mcmc64     | Bin 2170830 -> 2170101 bytes
 build/extra_files/x2m        | Bin 685380 -> 680533 bytes
 7 files changed, 0 insertions(+), 0 deletions(-)

</pre>

End
---

