---

This work is licensed under the Creative Commons CC0 License

---

# Polymorphic Event Sent to Subtype Fails Silently
### xtUML Project Implementation Note

### 1. Abstract

MC-3020 does not support sending polymorphic events to subtypes.

### 2. Document References

<a id="2.1"></a>2.1 [10327](https://support.onefact.net/issues/10351) Polymorphic event sent to self within subtype is silently dropped by generated code  
<a id="2.2"></a>2.2 [10122](https://support.onefact.net/issues/10122) incorrect event queue handling in mc3020  

### 3. Background

This problem surfaced as a problem with self-directed polymorphic events
and polys applied to timers.  Analysis determined that the problem is more
fundamental than given in the the original headline.  MC-3020 simply does
not support polymorphic events directed at subtypes.  The symptom is the
same; the event is silently dropped.  Related issue [2.2] documents this
and other weaknesses.

The failure scenario is that, upon event generation, the dispatcher for
the supertype is called even though the handle to the subtype has been
passed.  The supertype dispatcher treats this (suptype) handle as if it
were a handle to the supertype.

### 4. Requirements

4.1 Stop failing silently.  
When a polymorphic event directed to a subtype is detected, inform the
user.  Instead of failing silently, fail with an error or warning.  If
possible, fail during translation.  Otherwise, fail during compilation
or at run time.

### 5. Work Required

5.1 Detect Class Mismatch  
Detect a mismatch between the type of the event being sent and the
type of the instance to which the event is directed.  MC-3020 presently
supports only matched types.  This can be detected by comparing the
class associated with the event with the class associated with the
target instance.  If they do not match, exit with an error.

5.2 Fix `switch`.  
Section 5.1 should prevent the need for the following, but it is good C coding
practice to provide a `default:` for a `switch` statement.  This default
shall be provided and will call the user callout `UserEventCantHappenCallout`
with zeroes passes for the current state and next state.

### 6. Implementation Comments

6.1 `mcmc` bug  
`T_bridge.c` in the escher gen folder had an exit bridge that did not
actually exit.  I changed it to call `exit( n )`.  This causes code
generation to exit immediately rather than after the completion of `mcmc`.

### 7. Unit Test

7.1 subev  
The subev model is found attached to the headline issue [1].
Download and import the model as an existing project into a test workspace.
The init function looks like this:  
<pre>
create object instance sup1 of sup;
create object instance sup2 of sup;
create object instance b of b;
create object instance c of c;
c.i = 21845; // 0x5555
relate b to sup1 across R1;
relate c to sup2 across R1;

create event instance e1 of sup1:es() to sup1;
//create event instance e1 of sup1:es() to b;
generate sup1:es() to sup2;
//generate sup1:es() to c;
</pre>
Notice that 2 lines are commented out near the end of the function.
The test will run first as-is and see no errors.  Secondly, the event
precreation will be uncommented.  Failure in translation will be detected.
Thirdly, the last generate will be uncommented (after re-commenting the
precreation).  Failure in translation will be detected again.  
7.1.1 successful delivery  
7.1.1.1 Build the model.  
7.1.1.2 Run it.  
7.1.1.3 See a successful trace as below.  
<pre>
01:52 PM-~/ws/10327/subev/src$ ./a.out
a.c #    27:   CREATE OBJECT INSTANCE sup1 OF sup
a.c #    30:   CREATE OBJECT INSTANCE sup2 OF sup
a.c #    33:   CREATE OBJECT INSTANCE b OF b
a.c #    36:   CREATE OBJECT INSTANCE c OF c
a.c #    39:   ASSIGN c.i = 21845
a.c #    42:   RELATE b TO sup1 ACROSS R1
a.c #    45:   RELATE c TO sup2 ACROSS R1
a.c #    48:   CREATE EVENT INSTANCE e1(  ) TO sup1
a.c #    51:   GENERATE sup1:es() TO sup2
a_c_class.c #   154: Transition started:  c State [1] cs1
a_c_class.c #    86:   LOG::LogInfo( message:sub c state 2 )
sub c state 2
a_c_class.c #   158: Transition complete:  c State [2] cs2
^C
01:52 PM-~/ws/10327/subev/src$
</pre>
7.1.1.4 Exit the run via control-C.  

7.1.2 failed precreation  
7.1.2.1 Uncomment the line `//create event instance e1 of sup1:es() to b;`  
7.1.2.2 Build the model.  
7.1.2.3 See code generation exit prematurely with an ERROR message.  
7.1.3 failed generation  
7.1.2.1 Re-comment the line `//create event instance e1 of sup1:es() to b;`  
7.1.3.2 Uncomment the line `//generate sup1:es() to c;`  
7.1.2.3 Build the model.  
7.1.2.4 See code generation exit prematurely with an ERROR message.  

### 8. User Documentation

No documentation changes are necessary.

### 9. Code Changes

<pre>
Fork/Repository:  cortlandstarrett/mc
Branch:  10327_poly

 arc/q.class.poly.arc                                  |   3 +++
 arc/q.smt.generate.arc                                |  21 ++++++++++++++--
 arc/q.val.translate.arc                               |   2 +-
 bin/mac/mcmc                                          | Bin 1593424 -> 1597520 bytes
 bin/mcmc                                              | Bin 2436008 -> 2436008 bytes
 bin/win/mcmc.exe                                      | Bin 1733447 -> 1734983 bytes
 doc/notes/10327_poly/10327_poly_int.md                |  64 +++++++++++++++++++++++++++++++++++++
 mcmc/arlan/o3.oal                                     |  21 ++++++++++++++--
 model/escher/gen/ooaofooa.c                           |  70 ++++++++++++++++++++++++++++++++++++-----
 model/escher/gen/ooaofooa_c_orig                      |  72 +++++++++++++++++++++++++++++++++++++------
 model/escher/models/escher/mcmc/afunsmt/afunsmt.xtuml |  21 ++++++++++++++--
 11 files changed, 254 insertions(+), 20 deletions(-)

</pre>

### End

