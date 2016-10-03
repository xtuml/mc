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

< Put the file list here >

</pre>

End
---

