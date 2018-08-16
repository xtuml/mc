---

This work is licensed under the Creative Commons CC0 License

---

# x2m no longer outputs activities 
### xtUML Project Implementation Note


1. Abstract
-----------
There is a regression of functionality in recent versions of x2m.  The
activities are no longer being output to MASL.

2. Document References
----------------------
[1] [9118](https://support.onefact.net/redmine/issues/9118) Headline issue.    
3. Background
-------------
x2m is responsible for producing a "smasl" data stream as an xtUML model
is converted to MASL files.  There was a regression where this stopped 
working.  

4. Requirements
---------------
4.1 The MASL output flow show produce all the required files.  

5. Work Required
----------------
5.1 `m2x`  
There is a class called "model" in mcshared.  In the work for 9032 we 
introduced an attribute "outputcodeblocks" with DefaultValue field set 
to true.   

Then in x2m where we are handling params we make a call to a "setter" 
function that sets the outputcodeblocks attribute to boolean false.  But 
if we do not see "-s" then x2m just never calls that setter.  It was 
relying on the Default Value of true.  But the generated code did not set 
the boolean default to true for the new attriubute when the "model" class 
was created.  So it went to C boolean default of false.   

Basically x2m always had that attribute "outputcodeblocks" as false whether
we saw -s or not as an argument.   
  
6. Implementation Comments
--------------------------
None.  

7. Unit Test
------------
7.1 Use the masl_round_trip script on SAC_OOA to verify exported
  MASL matches the input.    

8. Code Changes
---------------
<pre>

Fork: keithbrown/mc  9118_activity_bug

doc/9118_activity_bug_int.md
bin/x2m                                            | Bin 695872 -> 687714 bytes
model/maslout/gen/sys_user_co.c                    |   6 ++++--

</pre>

End
---

