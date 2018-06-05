---

This work is licensed under the Creative Commons CC0 License

---

# Marking for Time, State Save, Trace and Messages  
### xtUML Project Implementation Note

### 1. Abstract

The model compiler is enhanced with new features involving time,
state save, class-based tracing and messaging.  All of these features
require marking support.  This note documents the new marking
capabilities added to MC-3020.

### 2. Document References

<a id="2.1"></a>2.1 [10247](https://support.onefact.net/issues/10247) MC-3020 Enhancements (project issue)  
<a id="2.2"></a>2.2 [10252](https://support.onefact.net/issues/10252) Add simulated time to MC-3020.  
<a id="2.3"></a>2.3 [10253](https://support.onefact.net/issues/10253) Add state save to MC-3020.  
<a id="2.4"></a>2.3 [10254](https://support.onefact.net/issues/10254) Class-specific Tracing  
<a id="2.5"></a>2.3 [10255](https://support.onefact.net/issues/10255) Tag interface messages as safe for interrupts.  
<a id="2.6"></a>2.3 [Project Analysis Note](10247_mcenhance_ant.md) MC Enhancements for Time, Trace, State Save, Messaging  

### 3. Background

MC-3020 generates code optimized for deeply embedded targets with small
memory footprints.  Development and debug on such targets comes with
challenges.  The implementation of marking for the features described
in [[2.6]](#2.6) is documented in this note.

### 4. Requirements

Requirements from [[2.6]](#2.6) are repeated here for convenience.

4.1 Simulated Time  
...  
4.1.4 A marking shall be supplied to select between the existing _wall clock_
mode of time and the new _simulated time_ mode.  

4.2 State Save  
...  
4.2.4 A marking shall be supplied to enable and configure the state save
feature.  
4.2.4.1 The size of the buffer allocated for state save shall be configured
with marking.  

4.3 Class-Specific Trace  
...  
4.3.2 A marking shall be supplied to identify which classes are included
in or excluded from tracing.  
4.3.3 The mark shall affect instrumentation generated into the application
at build time.  (No run-time configuration is supplied.)  

4.4 Tagging Interface Messages as Safe for Interrupts  
4.4.1 A marking shall be supplied to tag a signal or (void) operation on
an interface as safe for interrupt execution.  


### 5. Work Required

5.1 Simulated Time  
5.1.1 Add boolean attribute `TM_SYSTAG.SimulatedTime` to mark time as
simulated.  Add same attribute to `TE_SYS`.  It will default to 'false'.  
5.1.2 Add marking function `MarkSimulatedTime` to `m.system.arc`.  
5.1.3 Find the system mark and copy marks across to `Extended System
(TE_SYS)` in `q.sys.populate.arc`.  
5.1.4 Update the default marking file, `schema/colors/system.mark`.  

5.2 State Save  
5.2.1 Add integer attribute `TM_SYSTAG.StateSaveBufferSize` to mark the
depth of the state save buffer expressed in bytes.  Add same attribute
to `TE_SYS`.  It will default to zero.  
5.2.2 Add marking function `MarkStateSave( buffersize )`
to `m.system.arc`.  
5.2.3 Find the system mark and copy marks across to `Extended System
(TE_SYS)` in `q.sys.populate.arc`.  
5.2.4 Update the default marking file, `schema/colors/system.mark`.  

5.3 Class-Specific Trace  
5.3.1 `MarkObjectTraceOn` and `MarkObjectTraceOff` already exist but
are unused.  Use them with name changes (Object --> Class).  
5.3.2 Boolean attribute `TE_CLASS.IsTrace` exists.  It defaults to
'true'.  Use it.  
5.3.3 Add boolean attribute `TE_ABA.IsTrace` and populate with the
conjunction of `TE_CLASS.IsTrace` and `TE_C.StmtTrace`.  
[This may be difficult, because q.sys.populate runs before these
marks are applied.]  
5.3.4 Update the default marking file, `schema/colors/class.mark`.  

5.4 Tagging Interface Messages as Safe for Interrupts  
5.4.1 Add a new class `Message Mark (TM_MSG)`.  Supply attribute
`IsSafeForInterrupts`.  Default this to false.  
5.4.2 Add marking function `MarkMessageSafeForInterrupts( component,
port, message )` to `m.bridge.arc`.  
5.4.3 Find and relate the message mark to the matching instance of
`Extended Message Action(TE_MACT)` across R2809 in `q.sys.populate.arc`.
Detect and report non-void message marking, since messages marked
as safe for interrupt execution cannot return data.  
5.4.4 Update the default marking file, `schema/colors/bridge.mark`.  

5.5 Update `funcsigs.h` for the new marking functions following the
instructions in `mcmc/arlan/funcsigs.readme`.  Update the readme.  

5.6 Update `mark_all` in `m.system.arc` to set the pass number for the
new markings.  

5.6 Update the schema (`schema/sql/xtumlmc_schema.sql`).  

5.7 Rebuild `mcmc`.  

### 6. Implementation Comments

6.1 In `mcooa`, fixed cardinality of R2093 and R2094 from
`TE_SELECT_RELATED` to `TE_VAR`.  The schema had been edited to be
correct, but the model was incorrect.  

6.2 Turned off the x bit in the file permissions for a few files.
And permissions on all of the schema/colors/ files are changed.
Also, dos2unix was run on these files.  

### 7. Unit Test

7.1 MicrowaveOven Smoke Test  
Compile and run the MicrowaveOven sample project.  

7.2 RSL scripted marking test  
7.2.1 Import the GPS Watch (OAL) project in from the QuickStart.  
7.2.2 Add the following marks to `gen/bridge.mark` (creating the file
if necessary).
<pre>
.invoke MarkMessageSafeForInterrupts( "Tracking", "Tracking", "startStopPressed" )
.invoke MarkMessageSafeForInterrupts( "Tracking", "Tracking", "lapResetPressed" )
.invoke MarkMessageSafeForInterrupts( "bogusComponent", "bogusPort", "bogusMessage" )
</pre>
7.2.3 Add the following marks to `gen/class.mark`.  
<pre>
.invoke MarkClassTraceOn( "Tracking", "TrackLog" )
.invoke MarkClassTraceOff( "Tracking", "TrackPoint" )
.invoke MarkClassTraceOff( "Location", "Distance" )
</pre>
7.2.4 Add the following marks to `gen/system.mark`.  
<pre>
.invoke MarkStateSave( 777777 )
.invoke MarkSimulatedTime()
</pre>
7.2.5 Paste the following into `gen/event.mark` (create the file if
necessary).  
<pre>
.// Marking test.  Remember to turn off mcmc.
.// Find the message marks and detect a mark that was spelled incorrectly.
.select many tm_msgs from instances of TM_MSG
.for each tm_msg in tm_msgs
  .print "tm_msg:  ${tm_msg.ComponentName}::${tm_msg.PortName}::${tm_msg.Name}"
  .select one te_mact related by tm_msg->TE_MACT[R2809]
  .if ( empty te_mact )
    .print "tm_msg:  No related TE_MACT for ${tm_msg.ComponentName}::${tm_msg.PortName}::${tm_msg.Name}"
  .else
    .print "tm_msg:  Found TE_MACT across R2809 for ${tm_msg.ComponentName}::${tm_msg.PortName}::${tm_msg.Name}"
  .end if
.end for
.// Test the new system marks (MarkStateSave and MarkSimulatedTime).
.select many tm_systags from instances of TM_SYSTAG
.for each tm_systag in tm_systags
  .if ( tm_systag.SimulatedTime )
    .print "tm_systag:  Found simulated time."
  .end if
  .print "tm_systag.StateSaveBufferSize is $t{tm_systag.StateSaveBufferSize}"
.end for
.// Find classes that were tagged to have tracing turned off.
.select many te_classs from instances of te_class where ( not selected.IsTrace )
.for each te_class in te_classs
  .print "te_class:  IsTrace turned off for ${te_class.Name}(${te_class.Key_Lett})"
.end for
.// Bail out early.
.exit 777
</pre>
7.2.6 Build the GPS Watch project.  
7.2.7 See the following in the code generation Console.  
<pre>
event.mark: 3:  INFO:  tm_msg:  Tracking::Tracking::startStopPressed
event.mark: 8:  INFO:  tm_msg:  Found TE_MACT across R2809 for Tracking::Tracking::startStopPressed
event.mark: 3:  INFO:  tm_msg:  Tracking::Tracking::lapResetPressed
event.mark: 8:  INFO:  tm_msg:  Found TE_MACT across R2809 for Tracking::Tracking::lapResetPressed
event.mark: 3:  INFO:  tm_msg:  bogusComponent::bogusPort::bogusMessage
event.mark: 6:  INFO:  tm_msg:  No related TE_MACT for bogusComponent::bogusPort::bogusMessage
event.mark: 14:  INFO:  tm_systag:  Found simulated time.
event.mark: 16:  INFO:  tm_systag.StateSaveBufferSize is 777777
event.mark: 20:  INFO:  te_class:  IsTrace turned off for TrackPoint(TrackPoint)
event.mark: 20:  INFO:  te_class:  IsTrace turned off for Distance(Distance)
</pre>

### 8. User Documentation

The Marking section of the MC-3020 User Guide is updated.

### 9. Code Changes

<pre>
Fork/Repository:  cortlandstarrett/mc  
Branch:  10248_mcmark

 arc/m.bridge.arc                                   |  23 +
 arc/m.class.arc                                    |  22 +-
 arc/m.system.arc                                   |  49 +-
 arc/q.sys.populate.arc                             |  15 +
 arc/q.val.translate.arc                            |   0
 arc/t.sys_sets.c                                   |   0
 doc/notes/10247_mcenhance/10247_mcenhance_ant.md   | 140 +++++
 doc/notes/10247_mcenhance/10248_mcmark_int.md      | 152 +++++
 doc/notes/10247_mcenhance/TIM_bridge.c             | 642 +++++++++++++++++++
 doc/notes/10247_mcenhance/TIM_sim1.png             | Bin 0 -> 117256 bytes
 doc/notes/10247_mcenhance/TIM_sim2.png             | Bin 0 -> 102178 bytes
 doc/notes/10247_mcenhance/ss.c                     |  55 ++
 doc/notes/10247_mcenhance/sys_xtuml.c              | 687 +++++++++++++++++++++
 mcmc/arlan/funcsigs.h                              |   9 +-
 mcmc/arlan/funcsigs.readme                         |   2 +-
 .../Action Block Anchor/Action Block Anchor.xtuml  |  20 +-
 .../Extended Message Action.xtuml                  |  15 +
 .../Extended System/Extended System.xtuml          |  38 +-
 .../Message Mark/Message Mark.xtuml                | 209 +++++++
 .../System Tags/System Tags.xtuml                  |  36 ++
 .../Translation Marking/Translation Marking.xtuml  | 275 ++++++++-
 .../Translation OAL/Translation OAL.xtuml          |   4 +-
 schema/colors/bridge.jap                           | 101 +--
 schema/colors/bridge.mark                          | 111 ++--
 schema/colors/class.mark                           | 524 ++++++++--------
 schema/colors/datatype.jap                         | 314 +++++-----
 schema/colors/datatype.mark                        | 332 +++++-----
 schema/colors/domain.jap                           | 520 ++++++++--------
 schema/colors/domain.mark                          | 436 ++++++-------
 schema/colors/event.jap                            |  86 +--
 schema/colors/event.mark                           |  86 +--
 schema/colors/object.jap                           | 530 ++++++++--------
 schema/colors/populate.arc                         | 240 +++----
 schema/colors/sys_functions.arc                    | 284 ++++-----
 schema/colors/system.jap                           | 499 ++++++++-------
 schema/colors/system.mark                          | 545 ++++++++--------
 schema/colors/system.mark.sysc                     | 516 ++++++++--------
 schema/sql/xtumlmc_schema.sql                      |  16 +-
 38 files changed, 4975 insertions(+), 2558 deletions(-)

</pre>

### End
