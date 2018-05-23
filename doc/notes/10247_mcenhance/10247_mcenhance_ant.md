---

This work is licensed under the Creative Commons CC0 License

---

# MC Enhancements Analysis
### xtUML Project Analysis Note

### 1. Abstract

The model compiler can be enhanced for a target that is tightly constrained
with memory and power and having a low-bandwidth communication channel to
the outside world.  Four new features are outlined with requirements for
addition to the model compiler capability.

### 2. Document References

<a id="2.1"></a>2.1 [10247](https://support.onefact.net/issues/10247) MC-3020 Enhancements (project issue)  
<a id="2.2"></a>2.2 [10252](https://support.onefact.net/issues/10252) Add simulated time to MC-3020.  
<a id="2.3"></a>2.3 [10253](https://support.onefact.net/issues/10253) Add state save to MC-3020.  
<a id="2.4"></a>2.3 [10254](https://support.onefact.net/issues/10254) Class-specific Tracing  
<a id="2.5"></a>2.3 [10255](https://support.onefact.net/issues/10255) Tag interface messages as safe for interrupts.  

### 3. Background

MC-3020 generates code optimized for deeply embedded targets with small
memory footprints.  Development and debug on such targets comes with
challenges.  The features described in this analysis enhance the existing
model compiler to support simulated time, state save, refined tracing and
a new source of interrupt service routine integration.

### 4. Requirements

4.1 Simulated Time  
MC-3020 shall support a mode of time which is a form of _discrete event
simulation_.  
4.1.1 Time shall be advanced discretely by a value obtained from the
next-to-expire ticking timer.  
4.1.2 Non-timer event queues shall be fully serviced ("drained") between 
interrogations of the ticking timer queue.  Thus, all state machines will
quiesce between successive timer expirations.  
4.1.3 When reading the value of the clock (`TIM::current_clock`), the return
will be a value derived from timers in the ticking timer queue.  
4.1.4 A marking shall be supplied to select between the existing _wall clock_
mode of time and the new _simulated time_ mode.  

4.2 State Save  
4.2.1 The state save API and functionality shall be supplied through a
modeled external entity (EE).  
4.2.1.1 A bridge shall be supplied to trigger a state save to occur.  
4.2.1.2 A bridge shall be supplied to read state save data.  
4.2.2 A program separate from and co-dependent with the application shall be
used to convert state save data into a human readable form.  
4.2.2.1 The formatting program shall be generated together with the
application.  
4.2.2.2 The formatting program shall convert a binary state save file into
human readable text.  
4.2.2.3 The format of the human readable state data shall be comma separated
values with one element per line consisting of strings identifying the
element traced.  
4.2.3 State Save Data  
4.2.3.1 A state save contains encoded information representing the
`current_state` of each running state machine in the model.  The
`current_state` is identified with component, class and instance integer
keys.  
4.2.3.3 A state save contains encoded information representing the
events of the event queues.  
4.2.4 A marking shall be supplied to enable and configure the state save
feature.  
4.2.4.1 The size of the buffer allocated for state save shall be configured
with marking.  

4.3 Class-Specific Trace  
4.3.1 Debug functionality is available in MC-3020 for classes to trace
state machine state transitions and to trace individual action language
statements.  A mechanism shall be provided to enable or disable this
tracing functionality on a class by class basis.  
4.3.2 A marking shall be supplied to identify which classes are included
in or excluded from tracing.  This mark shall affect instrumentation
generated into the application at build time.  (No run-time configuration
is supplied.)  

4.4 Tagging Interface Messages as Safe for Interrupts  
4.4.1 A marking shall be supplied to tag a signal or (void) operation on
an interface as safe for interrupt execution.  
4.4.2 The functionality provided to interface messages tagged as safe for
interrupt execution will be the same as the similar functionality provided
for domain functions using an "interleaved bridge queue".  

### 5. Analysis

5.1 _Simulated Time_  

Simulated Time in MC-3020 will implement a form of discrete event
simulation.  In simulated time mode, no external clock is read.  The
application runs as fast as the architecture allows.  The time base is
derived from timers used to cause functional delays in the production
application.

SystemC and Verifier both support modes where time is "simulated".  In
these environments, "wall clock" is not used.  The timers in the system
advance the system time in sequence of expiration.  This is convenient for
very fast (short-running) and for very slow (long-running) applications.

Conveniently, the existing `time (TIM)` external entity encapsulates the
interface to a time base.  TIM can be extended to support both wall clock
and simulated time modes with appropriate marking.

5.2 State Save  

Consider using `non-volatile store (NVS)` EE.

Questions:  
Do you have a file system or other persistent store?  
Do I need to care about your mechanism for transport?  (I think, no.)  
Do you want both instance-states-only and full-instance dump capabilities?  
What do you anticipate the highest number of instances?  (2^8? 2^16 2^32)?

Have you been using the domain function safe-for-interrupts functionality?  Is it working for you?  

Would you rather mark classes as _included in_ or _excluded from_ tracing?  

5.3 Class-Specific Trace  
5.4 Tagging Interface Messages as Safe for Interrupts  

### 6. Work Required

6.1 Item 1  

### 7. Acceptance Test

7.1 Item 1  

### End
