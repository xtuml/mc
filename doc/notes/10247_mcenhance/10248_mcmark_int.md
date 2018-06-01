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
simulated.  It will default to 'false'.  
5.1.2 Add marking function `MarkSimulatedTime` to `m.system.arc`.  

5.2 State Save  
5.2.1 Add integer attribute `TM_SYSTAG.StateSaveBufferSize` to mark the
depth of the state save buffer expressed in bytes.  
5.2.2 Add marking function `MarkStateSave( buffersize )`
to `m.system.arc`.  

5.3 Class-Specific Trace  
5.3.1 `MarkObjectTraceOn` and `MarkObjectTraceOff` already exist but
are unused.  Use them.  
5.3.2 Add boolean attribute `TE_CLASS.IsTrace` and populate it with
input from the marking functions.  Default to 'false'.  
5.3.2 Add boolean attribute `TE_ABA.IsTrace` and populate with the
conjunction of `TE_CLASS.IsTrace` and `TE_C.StmtTrace`.  
[This may be difficult, because q.sys.populate runs before these
marks are applied.]  

5.4 Tagging Interface Messages as Safe for Interrupts  
5.4.1 Add a new class `Message Mark (TM_MSG)`.  Supply attribute
`IsSafeForInterrupts`.  Default this to false.  
5.4.2 Add marking function `MarkMessageSafeForInterrupts( component,
port, message )` to `m.domain.arc`.  

5.5 Update `funcsigs.h` for the new marking functions following the
instructions in `mcmc/arlan/funcsigs.readme`.  
5.6 Update `mark_all` in `m.system.arc` to set the pass number for the
new markings.  
5.6 Rebuild `mcmc`.  

### 6. Implementation Comments


### 7. Unit Test

7.1 MicrowaveOven Smoke Test  
Compile and run the MicrowaveOven sample project.  

7.2 script
Write archetype that queries the values of the markings.

7.3 Test on Windows  

### 8. User Documentation

The Marking section of the MC-3020 User Guide is updated.

### 9. Code Changes

<pre>
Fork/Repository:  cortlandstarrett/mc  
Branch:  10248_mcmark

 Put the file list here 

</pre>

### End


notes:

Class Trace:
Add attribute to `TE_ABA`.
