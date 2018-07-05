---

This work is licensed under the Creative Commons CC0 License

---

# Enable/Disable Tracing by Class  
### xtUML Project Implementation Note

### 1. Abstract

This note documents the changes necessary to trace conditionally on a
class by class basis.

### 2. Document References

<a id="2.1"></a>2.1 [10254](https://support.onefact.net/issues/10254) Class-specific Tracing  
<a id="2.2"></a>2.2 [10273](https://support.onefact.net/issues/10273) Project Skyhigh  
<a id="2.3"></a>2.3 [Project Analysis Note](10247_mcenhance_ant.md) MC Enhancements for Time, Trace, State Save, Messaging  
<a id="2.4"></a>2.4 [Marking Implementation Note](10248_mcmark_int.md) MC Enhancements  

### 3. Background

Trace marking has historically had a granularity of component (domain).  State
machine state transition tracing and action language tracing are available in
MC-3020.  This is fine for most applications.  However, some applications can
get much more useful tracing if specific classes are traced while other classes
are not.  For example, periodic or polling applications may spend most of their
cycles running in steady state with nothing of particular interest to trace.
Such applications can benefit by excluding the steady state class tracing from
the log.  Classes with interesting behavior can trace while uninteresting
classes can run without generating trace information.

### 4. Requirements

Requirements from [[2.3]](#2.3) are repeated here for convenience.
(Numbering is preserved from the analysis note.)

4.3 Class-Specific Trace  
4.3.1 Debug functionality is available in MC-3020 for classes to trace
state machine state transitions and to trace individual action language
statements.  A mechanism shall be provided to enable or disable this
tracing functionality on a class by class basis.  
4.3.2 A marking shall be supplied to identify which classes are included
in or excluded from tracing.  
4.3.3 The mark shall affect instrumentation generated into the application
at build time.  (No run-time configuration is supplied.)  

### 5. Work Required

5.1 Add a boolean 'IsTrace' attribute to both `Extended Class (TE_CLASS)`
and `Action Block Anchor (TE_ABA)` to indicate whether tracing is enabled
for the class or block respectively.  Default value to 'true'.  From the
marking functions set or reset this flag as requested.

5.1.1 Conditionally emit trace instrumentation into the code based upon
the value of the 'IsTrace' attribute as a conjunction with the component-
level marking.  This means that both the component and class must have
tracing enabled to get any tracing information.

### 6. Implementation Comments

6.1 Moved some initialization that should be in the class factory into
that function.

### 7. Unit Test

7.1  MicrowaveOven
7.1.1 Import the MicrowaveOven project from Help -> Welcome -> QuickStart.  
7.1.2 Build the project.  
7.1.3 From a shell, run the built executable.  
7.1.4 See tracing output and see the program run for 30 seconds before
exiting on its own.  Notice tracing from all classes with behavior.  
7.1.5 In `class.mark`, mark class tracing off for two classes:  
```
.invoke MarkClassTraceOff( "MicrowaveOven", "MO_O" )
.invoke MarkClassTraceOff( "MicrowaveOven", "MO_TS" )

```
7.1.6 Build the project.  
7.1.7 From the shell, run the built executable.  
7.1.8 See tracing output and see the program run for 30 seconds before
exiting on its own.  Notice tracing from all classes (Magnetron Tube
and Door) except those marked off above.  

### 8. User Documentation

User documentation was updated for marking for this feature in [[2.4]](2.4).  

### 9. Code Changes

<pre>
Fork/Repository:  cortlandstarrett/mc
Branch:  10254_classtrace

 arc/m.class.arc                                   | 36 ++++++++++++++++++++++++++++----
 arc/q.oal.act_blk.arc                             |  2 +-
 arc/q.sys.populate.arc                            | 40 ++++++++++++++++++------------------
 arc/t.class.cdispatch.c                           | 12 +++++------
 arc/t.class.idispatch.c                           | 12 +++++------
 doc/notes/10247_mcenhance/10254_classtrace_int.md | 82 ++++++++++++++++++++++++++++++++++++
 6 files changed, 147 insertions(+), 37 deletions(-)

</pre>

### End
