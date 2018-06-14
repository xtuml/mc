---

This work is licensed under the Creative Commons CC0 License

---

# Support Simulated Time in MC-3020
### xtUML Project Implementation Note

### 1. Abstract

This note documents the implementation of simulated time.

### 2. Document References

<a id="2.1"></a>2.1 [10252](https://support.onefact.net/issues/10252) Add simulated time to MC-3020.  
<a id="2.2"></a>2.2 [10273](https://support.onefact.net/issues/10273) Project Skyhigh  
<a id="2.3"></a>2.3 [Project Analysis Note](10247_mcenhance_ant.md) MC Enhancements for Time, Trace, State Save, Messaging  

### 3. Background

Simulated Time in MC-3020 implements a form of discrete event
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

### 4. Requirements

Requirements from [[2.3]](#2.3) are repeated here for convenience.

4.1 Simulated Time  
MC-3020 shall support a mode of time which is a form of _discrete event
simulation_.  
4.1.1 Time shall be advanced discretely by a value obtained from the
next-to-expire ticking timer.  
4.1.2 Non-timer event queues shall be fully serviced ("drained") between
interrogations of the ticking timer queue.  Thus, all state machines will
quiesce between successive timer expirations.
4.1.3 Current Clock  
When the real-time clock is accessed (`TIM::current_clock`), the return
value is derived from timers in the ticking timer queue.  
4.1.4 A marking shall be supplied to select between the existing _wall clock_
mode of time and the new _simulated time_ mode.  

### 5. Work Required

5.1 Update TIM generation to recognize the SimulatedTime mark and base time
upon the ticking timers or upon wall clock accordingly.

5.2 Update event dispatching and invoke `TIM_tick()` directly when event queues
are empty and when no interleaved bridges are dispatched.  `TIM_init()` is
moved from `UserInitializationCallout` to `main`.  `UserBackgroundCallout`
shall continue to be invoked each iteration through the dispatcher loop.  ILBs
shall continue to be dispatched each iteration through the loop, but timers
will be launched only when no interleaved bridge dispatch occurred.

5.3 Update TIM to return the simulated time value to `TIM::current_clock`.

### 6. Implementation Comments

6.1 Drain Timer Queue  
The previous `timer_fire` routine launched only one timer per invocation.
This is changed to launch all timers that have a currently expired time.

### 7. Unit Test

### 8. User Documentation

Documentation for Simulated Time was updated in branch `10248_mcmark`.

### 9. Code Changes

<pre>
Fork/Repository:  cortlandstarrett/mc
Branch:  10252_simtime

 arc/c/t.sys_main.c                             |   6 +
 arc/c/t.sys_tim.c                              |  26 +++
 arc/sysc/t.sys_tim.c                           |   1 +
 arc/t.sys_events.c                             |  33 ++--
 arc/t.sys_ilb.c                                |   9 +-
 arc/t.sys_ilb.h                                |   2 +-
 arc/t.sys_threadposix.c                        |   6 +-
 arc/t.sys_threadwin.c                          |   2 +
 arc/t.sys_user_co.c                            |  19 ---
 doc/notes/10247_mcenhance/10248_mcmark_int.md  |  12 +-
 doc/notes/10247_mcenhance/10252_simtime_int.md |  95 +++++++++++
 doc/notes/10247_mcenhance/TIM_bridge.c         | 642 ---------------------------
 12 files changed, 168 insertions(+), 685 deletions(-)

</pre>

### End

