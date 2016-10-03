---

This work is licensed under the Creative Commons CC0 License

---

# Package disappears from Model Explorer
### xtUML Project Implementation Note


1. Abstract
-----------
This note describes work performed to solve problems with disappearing packages
in maslin.   

2. Document References
----------------------
[1] [BridgePoint DEI #8523](https://support.onefact.net/issues/8523)  
[2] [GPS MASL example model](https://github.com/xtuml/models/tree/master/masl/gps)   
[1] [BridgePoint DEI #8770](https://support.onefact.net/issues/8770) - Clean up maslin duplication   

3. Background
-------------
While developing MASL MC tools, we saw cases where the ooapopulation class would
disappear from Model Explorer on initial startup of BridgePoint. To resolve, we 
had to open ooapopulation.xtuml and delete the EP_PKG_PROXY instance at the 
bottom of the file. Then on next startup, the class appeared in ME.   

Later, more classes were added to the maslin package masl2xtuml.  These new
classes suffered from the same problem as ooapopulation.  Each of the classes 
have to be edited before starting BridgePoint to remove the EP_PKG_PROXY.  This 
is a huge pain, especially as more and more developers suffer through this
process when doing maslin work.   

4. Requirements
---------------
4.1  maslin shall be support modification and development without losing the
  display of the internal classes in Model Explorer on restart of the BridgePoint
  tool.    

5. Work Required
----------------
5.1. The process of fixing maslin involved some failed attempts before a working
  method was found.  The failed attempts are captured here:
5.1.1 Attempt 1
  * created new package masl2xtuml_new in maslin project
  * created new classes in masl2xtuml_new  
  * copied attributes and operations from masl2xtuml classes into masl2xtuml_new classes  
  * __ERROR!__ restarted BP, masl2xtuml_new classes are gone in ME.
     
5.1.2 Attempt 2  
  * created new project maslin_new  
  * copied the entire contents of maslin to maslin_new  
  * restart BP
  * __ERROR!__ Packages disappeared from maslin_new/masl2xtuml      

5.2 Process for successful solution  
  * Created new project maslin_new (from scratch)  
  * Created package "p"  
  * Create classes ooaparticipation, ooapopulation, etc one at a time  
  * Copy contents of these classes from original maslin project  
  * Move datatypes and EE from maslin/masl2xtuml to maslin_new/p  
  * Rename "p" to "m2x"  
  * Restart BridgePoint
  * __SUCCESS!__ Classes do not disappear    
5.2.1  Add and attribute in ooapopulation, restart, make sure class is still there.  
5.2.2  Delete new attribute in ooapopulation, restart, make sure class is still there.  

5.3 Fix fallout for gen/ folder file overrides for project name maslin_new 
  rather than  maslin and for function reordering.  
  
6. Implementation Comments
--------------------------
6.1  A new preference was recently added to BridgePoint that controls the 
  ability of the OAL parser to see classes and functions via inter-project 
  references.  The maslout and maslin project preferences are modified to set
  (allow) this feature.   
  
6.2  Because there was open development against the maslin project, this work
  introduces maslin_new as a new project.  The open development changes against 
  maslin will be made against maslin_new, then the old/broken maslin will be 
  deprecated and the maslin_new will permanently take its place.  An issue is
  raised for this task [3].  
  
7. Unit Test
------------
7.1  Build and compare
  * Build maslin_new  
  * Compile the source code  
  * __R__ m2x is created  
  * Put the new m2x into a BridgePoint environment  
  * Convert GPS Watch MASL model [2] into xtuml using masl2xtuml and the new m2x  
  * Import the converted GPS Watch projects into BridgePoint  
  * Export the GPS Watch components back to MASL using BridgePoint tooling  
  * Compare the newly exported model data with the original MASL model [2]  
  * __R__ The files are nearly identical (differences are expected or explainable)  
  
8. Code Changes
---------------
Fork: keithbrown/mc   
Branch name: 8523_repair_maslin

<pre>

doc/notes/8523_fix_maslin.md

maslin/.settings/com.mentor.nucleus.bp.ui.project.preferences.prefs

maslin_new/.externalToolBuilders/Model Compiler.launch
maslin_new/.externalToolBuilders/
    org.eclipse.cdt.managedbuilder.core.genmakebuilder (3).launch
maslin_new/.externalToolBuilders/
    org.eclipse.cdt.managedbuilder.core.ScannerConfigBuilder (3).launch
maslin_new/.settings/com.mentor.nucleus.bp.ui.project.preferences.prefs
maslin_new/gen/.gitignore
maslin_new/gen/bridge.mark
maslin_new/gen/class.mark
maslin_new/gen/datatype.mark
maslin_new/gen/domain.mark
maslin_new/gen/event.mark
maslin_new/gen/HOWTO_test_maslin.md
maslin_new/gen/LOG_bridge.c
maslin_new/gen/masl_url.c
maslin_new/gen/masl_url.h
maslin_new/gen/masl2xtuml_IDLINK_bridge.c
maslin_new/gen/masl2xtuml_O_ATTR_class.c
maslin_new/gen/masl2xtuml_ooapopulation_class.c
maslin_new/gen/masl2xtuml_ooapopulation_class.h
maslin_new/gen/masl2xtuml_S_UDT_class.c
maslin_new/gen/masl2xtuml.c
maslin_new/gen/masl2xtuml.h
maslin_new/gen/STRING_bridge.c
maslin_new/gen/sys_user_co.c
maslin_new/gen/sys_user_co.h
maslin_new/gen/system.mark
maslin_new/models/maslin_new/maslin_new.xtuml
maslin_new/models/maslin_new/lib/lib.xtuml
maslin_new/models/maslin_new/lib/masl2xtuml/masl2xtuml.xtuml
maslin_new/models/maslin_new/lib/masl2xtuml/m2x_imported/m2x_imported.xtuml
maslin_new/models/maslin_new/lib/masl2xtuml/marking_imported/
    marking_imported.xtuml
maslin_new/models/maslin_new/lib/masl2xtuml/ooaofooa_imported/
    ooaofooa_imported.xtuml
maslin_new/models/maslin_new/lib/test/test.xtuml
maslin_new/models/maslin_new/lib/test/ib/ib.xtuml
maslin_new/models/maslin_new/lib/test/ib/test/test.xtuml
maslin_new/models/maslin_new/m2x/m2x.xtuml
maslin_new/models/maslin_new/m2x/assocFormalization/assocFormalization.xtuml
maslin_new/models/maslin_new/m2x/formalization/formalization.xtuml
maslin_new/models/maslin_new/m2x/ooaparticipation/ooaparticipation.xtuml
maslin_new/models/maslin_new/m2x/ooapopulation/ooapopulation.xtuml
maslin_new/models/maslin_new/m2x/referentialAttribute/referentialAttribute.xtuml
maslin_new/models/maslin_new/m2x/simpleFormalization/simpleFormalization.xtuml
maslin_new/models/maslin_new/m2x/subsuperFormalization/
    subsuperFormalization.xtuml
maslin_new/models/maslin_new/marking/marking.xtuml
maslin_new/models/maslin_new/marking/ooaelement/ooaelement.xtuml
maslin_new/models/maslin_new/marking/ooamarkable/ooamarkable.xtuml
maslin_new/models/maslin_new/marking/ooapragma/ooapragma.xtuml
maslin_new/models/maslin_new/marking/ooapragma_item/ooapragma_item.xtuml
maslin_new/models/maslin_new/marking/ooapragma_list/ooapragma_list.xtuml
maslin_new/models/maslin_new/marking/ooaunmarkable/ooaunmarkable.xtuml
maslin_new/models/maslin_new/sysmaslin/sysmaslin.xtuml
maslin_new/models/maslin_new/systest/systest.xtuml
maslin_new/src/.gitignore
maslin_new/src/makefile.maslin
maslin_new/test_data/GPSWatch.smasl
maslin_new/test_data/GPSWatch.sql
maslin_new/test_data/GPSWatch.xtuml
maslin_new/test_data/HeartRateMonitor.smasl
maslin_new/test_data/HeartRateMonitor.sql
maslin_new/test_data/HeartRateMonitor.xtuml
maslin_new/test_data/Location.smasl
maslin_new/test_data/Location.sql
maslin_new/test_data/Location.xtuml
maslin_new/test_data/PSC.smasl
maslin_new/test_data/SAC_from_m2x.sql
maslin_new/test_data/SAC_PROC.smasl
maslin_new/test_data/SAC.smasl
maslin_new/test_data/Tracking.smasl
maslin_new/test_data/Tracking.sql
maslin_new/test_data/Tracking.xtuml
maslin_new/test_data/UI.smasl
maslin_new/test_data/UI.sql
maslin_new/test_data/UI.xtuml
maslin_new/test_data/pragmas/PragTest/bar.fn
maslin_new/test_data/pragmas/PragTest/foo.svc
maslin_new/test_data/pragmas/PragTest/obj1_bar.fn
maslin_new/test_data/pragmas/PragTest/obj1_foo.svc
maslin_new/test_data/pragmas/PragTest/obj1_st1.al
maslin_new/test_data/pragmas/PragTest/PragTest.int
maslin_new/test_data/pragmas/PragTest/PragTest.mod
maslin_new/test_data/pragmas/PragTest/term1_bar.tr
maslin_new/test_data/pragmas/PragTest/term1_foo.tr
maslin_new/test_data/pragmas/PragTestProj/PragTest_term1_bar.tr
maslin_new/test_data/pragmas/PragTestProj/PragTest_term1_foo.tr
maslin_new/test_data/pragmas/PragTestProj/PragTestProj.prj
maslin_new/test_data/referentials/assocREF.mod
maslin_new/test_data/referentials/assocREF.smasl
maslin_new/test_data/referentials/combinedREF.mod
maslin_new/test_data/referentials/combinedREF.smasl
maslin_new/test_data/referentials/dependREF.mod
maslin_new/test_data/referentials/dependREF.smasl
maslin_new/test_data/referentials/REF.mod
maslin_new/test_data/referentials/REF.smasl
maslin_new/test_data/referentials/subsuperREF.mod
maslin_new/test_data/referentials/subsuperREF.smasl
maslin_new/.cproject
maslin_new/.project

maslout/.settings/com.mentor.nucleus.bp.ui.project.preferences.prefs
maslout/models/maslout/lib/xtuml2masl/xtuml2masl.xtuml


</pre>

End
---

