---

Copyright 2012-2013 Mentor Graphics Corp.  All Rights Reserved. 

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
[3] Bugzilla bug 1281. <http://tucson.wv.mentorg.com/bugzilla/show_bug.cgi?id=1281>
[4] Analysis note for 1281. < Tucson CVS >/MC-Documentation/internal/technical/mc3020/i1281.ant

4. Background
-------------

5. Requirements
---------------
5.1  xtumlmc_build must not be too greedy

6. Work Required
----------------

7. Implementation Comments
--------------------------
None.

8. Unit Test
------------
8.1 Test setup and steps:
  - Create the MicrowaveOven sample model.  Open the Beeper, Beeping state activity.  Change the activity to the following OAL:
```
if (self.beep_count == 0) // beeper yet to begin

   /*** commentb1
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
A       bin/xtumlmc_build
</pre>

End
---

