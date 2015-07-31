---


---

# Japanese characters in model can cause generator to crash
### xtUML Project Implementation Note


1. Abstract
-----------
Japanese customers are reporting that including Japanese characters in a model
can cause generator to crash.  

2. Document References
----------------------
[1] Issues 42, https://github.com/xtuml/mc/issues/42      
[2] CQ DEI dts0101020170  
[3] Analysis Note, 42_japanese_char_crash_ant.md  
[4] CQ DEI dts0100645645 - Docgen generated html does not display non-ASCII characters properly  
[5] CQ DEI dts0101023424 - Support MarkStateActionCommentBlocksEnabled for non-ASCII characters  
[6] xtumlmc_build README, https://github.com/xtuml/mc/tree/master/bin  

3. Background
-------------
Non-ASCII characters can cause string processing issues when generator is 
parsing INSERT statements or can cause generator to silently fail to output 
target code.  For full details see [3].  

4. Requirements
---------------
As stated in [3], there is only one requirement:  

4.1  Models that contain Japanese characters shall be translatable.  

5. Work Required
----------------
5.1  As noted in [3], generator is simply incapable of handling non-ASCII UTF-8
  characters properly.  Thus, we chose to translate all non-ASCII characters in
  the input SQL file to an ASCII character code sequence.  In this way, generator
  only ever sees ASCII characters.  
5.1.1  When document generation runs, it uses whatever xtumlmc_build.exe is 
  located in the model compiler plug-in for the MC tied to the project.  When
  running DocGen, we do not want to translate the characters to ASCII code 
  sequences.  A new parameter is added to the ```xtumlmc_cleanse_model``` function
  that allows the code translation to be bypassed.  The default value for the 
  parameter is to bypass translation, thus the function remains fully backwards
  compatible requiring no code change by existing clients.  
     
6. Implementation Comments
--------------------------
6.1  While this solution solves generator's inability to handle the model data,
  it has a drawback: native (non-English) language comments in OAL do not fall
  through to function header comments properly when using ```MarkStateActionCommentBlocksEnabled```.
  The function header comments contain the translated character codes.  Issue [5]
  is raised to address this problem.    

6.2  Working on this issue also made us more keenly aware of a known weakness
  in our document generation tool.  Specifically, the ```doc.xml``` file created
  by docgen.exe contains properly encoded UTF-8, but the ```doc.html``` file that
  comes out of xsltproc.exe does not.  Thus, what is displayed to the user is 
  not good data.  Issue [4] is moved to the upcoming release list "Indus" to
  address this.  
  
7. Unit Test
------------
7.1  Compile the new script, see [6].  
7.2  Test build
  - Log in to kbrown-vm-w7-jp
  - Put the new xtumlmc_build.exe into place in the BridgePoint 4.1.0 installation
  - Start BridgePoint 4.1.0 on workspace c:\MentorGraphics\workspaces\fx
  - Build project "cdi_dev"
  - __R__ No code generation errors
  - Build project "MicrowaveOven"
  - __R__ No code generation errors
  - __R__ No code compilation errors
  - Build project "GPS Watch"
  - __R__ No code generation errors
  - __R__ No code compilation errors
  - Build project "ipocdeploy_new"
  - __R__ No code generation errors

8. Code Changes
---------------
Branch name: 42_japanese_char_crash  
Repository: xtuml/mc  

<pre>
bin/xtumlmc_build
doc/notes/42_japanese_char_crash_ant.md
doc/notes/42_japanese_char_crash_int.md
doc/review-minutes/42_japanese_char_crash_ant-rvm.md

</pre>

End
---

