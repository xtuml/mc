---


---

# dts0101019771 - //** Comments Cause a Crash in the Model Compiler
### xtUML Project Implementation Note  


1. Abstract
-----------
While on his 2013 Japanese tour, Cort ran into a problem converting FujiXerox models.  The customer had used 
comment formatting like ```//** <some comment>```.  This mixture of C and C++ style comments threw off our filter
in xtumlmc_build in xtumlmc_cleanse_model() which causes the script to add C++ ```//``` comment markers to the rest of the lines in the OAL file as it continued processing.  This, obviously, messed up the data and caused the MCMC app to 
crash as it tried to process this file.

2. History
----------
None.

3. Document References
----------------------
[1] Issues 40 <https://github.com/xtuml/mc/issues/40>  
[2] CQ DEI dts0101019117  
[3] Bugzilla bug 1281 (Mesquite: /*#inline, */ for inlining C code). <http://tucson.wv.mentorg.com/bugzilla/show_bug.cgi?id=1281>  
[4] Analysis note for 1281. < Tucson CVS >/MC-Documentation/internal/technical/mc3020/i1281.ant  
[5] CQ DEI dts0101019678 - Comment //** in OAL causes syntax highlighting problem  

4. Background
-------------
4.1  The comment handling code was added to xtumlmc_build nearly 8 years ago when the function ```xtumlmc_strip_gd```
  was changed to ```xtumlmc_cleanse_model```.  This work was done in conjunction with [3].  A re-reading of [4] 
  indicated that the change was made to solve a problem when the model used the
  ```MarkStateActionCommentBlocksEnabled``` marking.  When this mark is on, the entire OAL is added to the (C-Style) 
  comment block ahead of the output function in the source code.  When the OAL itself used C-style comments, this 
  meant that the use of the marking had the code gen putting C-style comments (from the OAL) inside C-style comments
  in the output code.  This is problematic because the end comment markers ```*/``` in the OAL actually caused the 
  source code comment blocks to be ended prematurely.  
4.1.1  To solve this problem, xtumlmc_build pre-processes the OAL data and changes C-style comments to C++-style 
  comments using ```//```.  The C++ comments inside the C comments in the output code work fine and do not trip up 
  the C compiler.  
4.2  This process worked fine for all these years until we hit the problem outlined in the Abstract section.  We cannot
  allow the pre-processed model to be fouled up this badly.  Our filter must be more robust.  
4.3  While investigating this issue, I found that the problematic comment marker ```//**``` can be dealt with in
  xtumlmc_build.  The OAL parser is able to handle this and treat it as a single-line comment.  However, the OAL
  syntax highlighting plug-in chokes on this comment marker and treats all lines following it up to a ```*/``` as a 
  comment.  This work will not address fixing that syntax highlighting plug-in.  Raised [5] to capture this bug.  
4.4  In C source code, when a comment block is started with ```/*```, extra begin comment markers inside the already
  started comment can cause compiler warnings, but they are not considered compiler errors.  

5. Requirements
---------------
5.1  xtumlmc_build must properly handle the line when a C-style comment appears inside a C++-style comment.

6. Work Required
----------------
6.1  In xtumlmc_build::xtumlmc_cleanse_model, add a new C++-style comment handling block ahead of the existing
  comment block handlers.  It will follow perform the following actions:
```
if ( /\/\// ) {
  # Handle a C++-style comment. If a C-style end comment is inside this 
  # line, replace it with a space, otherwise just output the original line.
  my $pre = $`;
  my $post = $';
  my $line = $_;
  if ( $line =~ /\*\// ) {
    $post =~ s/\*\// /g;
    print $O "$pre//$post"; 
  } else {
    print $O "$line";
  }
} 
```

6.2  It should be noted that the above code will affect every line in the input file.  This means it may modify data
  that is not in an OAL block.  For example, if a V_LST is created by OAL such as ```s = "abc // def */ ghi";```, the 
  above will change the string in the output code to ```s = "abc // def   ghi";```.
6.2.1  We decided that this is a very small window and not worth the effort or code complexity to fix.  Especially
  because xtumlmc_build may be going away.  In addition, we noted that our existing comment processing has existed
  for 8 years and exposes the same type of potential problem and we have never had a complaint about it.  
  
7. Implementation Comments
--------------------------
None.

8. Unit Test
------------
8.1 Test setup and steps:
  - Create the MicrowaveOven sample model.  Open the Beeper, Beeping state activity.  Change the activity to the following OAL:

```
if (self.beep_count == 0) // beeper yet to begin

   /*** comment_a1
   */
   create event instance delay_over of MO_B2:'beep_delay_over' to self;
   assign self.beeper_delay_over = delay_over;
   assign self.beeper_timer = TIM::timer_start(microseconds:100000,event_inst:self.beeper_delay_over);
//** comment1 
elif (self.beep_count == 4) // last beep    

   generate MO_B3:'beeping_stopped' to self; /////***** comment2  ****//// 
   select one oven related by self->MO_O[R3];  //** comment3 
   generate MO_O6:'beeping_over' to oven; //** comment4 */

else

   assign self.beeper_timer = TIM::timer_start(microseconds:100000,event_inst:self.beeper_delay_over);  // comment 5 */ */ * /

end if;  /* comment 6 */

assign self.beep_count = self.beep_count + 1;
```

  - Open domain.mark.  Turn on MarkStateActionCommentBlocksEnabled("*")
  - Build the project and compile the code.
  - __R__ The build and compile are successful
  - Open MicrowaveOven_MO_B_class.c
  - Navigate down to the Beeping State function
  - __R__ The comment block ahead of the function contains the OAL (with end comments */ changed to spaces)

9. Code Changes
---------------
Repository: xtuml/mc
Branch name:  40_comment_fix

<pre>
bin/xtumlmc_build
</pre>

End
---

