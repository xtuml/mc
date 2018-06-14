---

This work is licensed under the Creative Commons CC0 License

---

# Mark Messages Safe for Interrupts  
### xtUML Project Implementation Note

### 1. Abstract

This note documents adding support for marking interface messages
as safe for interrupt execution.

### 2. Document References

<a id="2.1"></a>2.1 [10255](https://support.onefact.net/issues/10255) Interrupt-Safe Messages  
<a id="2.2"></a>2.2 [10273](https://support.onefact.net/issues/10273) Project Skyhigh  
<a id="2.3"></a>2.3 [Project Analysis Note](10247_mcenhance_ant.md) MC Enhancements for Time, Trace, State Save, Messaging  
<a id="2.4"></a>2.4 [Marking Implementation Note](10248_mcmark_int.md) MC Enhancements  

### 3. Background

See [[2.3]](2.3).

### 4. Requirements

Requirements from [[2.3]](#2.3) are repeated here for convenience.
(Numbering is preserved from the analysis note.)

4.4 Tagging Interface Messages as Safe for Interrupts  
4.4.1 A marking shall be supplied to tag a signal or (void) operation on
an interface as safe for interrupt execution.  
4.4.2 The functionality provided to interface messages tagged as safe for
interrupt execution will be the same as the similar functionality provided
for domain functions using an "interleaved bridge queue".

### 5. Work Required

5.1 Update Safe Function Processing  
The routines used for generating synchronous services as safe for interrupts
can be generalized and reused for messages.  The functionality provides
the internals for the deferring and deferred functions.  The marshalling
of the parameters is also common.  Update the routines accordingly.

5.2 Count Safe Messages  
Add the count of messages marked as safe together with functions marked
as safe to arrive at the total number of interleaved messages for the system.

5.3 Source Packaging  
Package the generated source of interleaved bridge system code into
existing files to avoid file proliferation.  
5.2.1 Package `sys_ilb.h` into `*sys_types.h`.  
5.2.2 Package `sys_ilb.c` into `sys_xtuml.c`.  

### 6. Implementation Comments

6.1 Normal Naming  
In the synchronous service case, only hand-crafted code invokes the special
stub that posts and defers execution of the function.  The same will be true
for messages.  The deferring/queueing will be done only when the special
stub is called.  Normally wired interface messages will travel the direct
path into the message body action.

6.2 unused lines  
Some dead code was removed from `q.component.arc`.  

### 7. Unit Test

### 8. User Documentation

User documentation was updated for marking for this feature in [[2.4]](2.4).  

### 9. Code Changes

<pre>
Fork/Repository:  cortlandstarrett/mc
Branch:  10255_msgisr

 arc/c/q.component.arc       | 17 ++++++++++++++---
 arc/c/q.sys.singletons.arc  |  2 --
 arc/c/sys.arc               | 16 ----------------
 arc/c/t.component.message.c | 29 +++++++++++++++++++++++++++++
 arc/c/t.sys_types.h         |  4 ++++
 arc/q.domain.limits.arc     |  5 ++++-
 arc/q.domain.sync.arc       | 55 ++++++++++++++++++++-----------------------------------
 arc/sysc/sys.arc            | 16 ----------------
 arc/t.domain.function.c     | 17 ++++++++++++-----
 arc/t.domain.functions.c    |  3 ---
 arc/t.sys_events.c          |  4 ----
 arc/t.sys_factory.c         |  6 ++++++
 arc/t.sys_ilb.c             | 15 +++------------
 arc/t.sys_ilb.h             | 21 ++-------------------
 doc/notes/10247_mcenhance/10255_msgisr_int.md | 99 ++++++++++++++
 15 files changed, 94 insertions(+), 116 deletions(-)

</pre>

### End
