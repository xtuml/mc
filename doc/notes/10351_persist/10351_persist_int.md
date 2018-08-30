---

This work is licensed under the Creative Commons CC0 License

---

# Bring Back MC-3020 Persistence
### xtUML Project Implementation Note

### 1. Abstract

Persistence has fallen into disrepair.  This note documents fixing it and
bringing it up to date with the other features and source code of the model
compiler.

### 2. Document References

<a id="2.1"></a>2.1 [10116](https://support.onefact.net/issues/10351) Bring back MC-3020 persistence  
<a id="2.2"></a>2.2 [xtuml models assoc_unformal](https://github.com/xtuml/models/tree/master/VandMC_testing/mctest/assoc_unformal) `assoc_unformal` test model  
<a id="2.3"></a>2.3 [MC-3020 User Guide](https://xtuml.github.io/docs/mcug/) BridgePoint Model Compiler User Guide  

### 3. Background

Persistence of instances and links is a feature that was added to MC-3020
long ago.  The requirements at that time match the requirements for this
present work.  The first requirement is to persist instance data so that
it survives across power cycles (down and up).  The instances that are
present when power is removed are automatically restored when power returns.
Links between persistent instances are also saved and restored to and from
non-volatile storage (NVS).

The feature provides flexibility in terms of non-volatile storage
technologies ranging from disk storage to flash to EEPROM.  The architecture
is insulated from these details and leaves those details to the user.
A default (and example) implementation is provided that relies on the file
I/O provided in standard C libraries (stdio and stdlib).

A period of time passed where no users actively employed the persistence
feature on modern versions of MC-3020.  The primary test suite used to test
changes in the model compiler does not exercise the persistence feature.
Meanwhile many changes to the model compiler source have been implemented
including large changes to support model-based model compilation.  These
factors contributed to the disrepair of the persistence feature archetypes.
Bugs have been introduced mostly by a failure to make changes in places
that need consistency with the other features of the model compiler.

### 4. Requirements

4.1 Fix the persistence feature of MC-3020.  
MC-3020 persistence is broken.  Make it work as well as it was when
originally implemented and delivered to the users.

4.2 Marking  
4.1.1 Support marking of persistent classes, packages and components.  
4.1.2 Support marking of of the depth of the persistence queue cache.  
Between commits, instances are marked dirty and their handles are queued
for the next commit cycle.  This requires a queue of sufficient length.
This length depends heavily upon the nature of the application.  Thus,
a mark must be supplied to control the depth of this queue.  

4.3 Testing  
4.3.1 Provide a test model that can be maintained to test persistence on a
regular basis.  
4.3.2 Test the saving and restoring of both instances and links.  

### 5. Work Required

5.1 Fixes  
5.2 Marking  
5.3 Packaging  
5.4 Test Model  
5.5 mcmc  
5.6 Documentation  

### 6. Implementation Comments

6.1 Extraneous Parentheses  
MC-3020 historically has been generous with parentheses in expressions.
This has been a safe and benign approach until recent versions of `gcc`
complain about these.  The "problem" was ignored but has annoyed us enough
to address it.  The MC unilaterally supplied parentheses for `if` and `while`
statements together with liberally wrapping binary operations with them.
This results in duplication at the top level.  Now, the most common source
of extra parentheses (binary operations) will do a few checks to conditionally
avoid parentheses when at the "top level" of the expression hiearchy.

6.2 ILB for SystemC  
There was a spot in SystemC code that was missing inclusion of interleaved
bridge (ILB) queueing for port messages.  It may be dubious to use the ILB
feature with SystemC, but it makes sense to keep the architecture consistent.

### 7. Unit Test

7.1 Microwave Oven  
7.1.1 Import MicrowaveOven from the Welcome -> QuickStart.  
7.1.2 Build it.  
7.1.3 Run it.  
7.1.4 See a successful run lasting 30 seconds.  
7.1.5 Mark persistence on by adding the following line to `class.mark`:  
```
.invoke MarkPersistentClass( "*", "*", "*" )  
```
7.1.6 Build it.  
7.1.7 Run it.  
7.1.8 See a successful run lasting 30 seconds.  

7.2 `assoc_unformal`  

### 8. User Documentation

No documentation changes are necessary.  The existing documentation in the
User Guide may be visited and refreshed, but it is substantially complete.

### 9. Code Changes

<pre>
Fork/Repository:  cortlandstarrett/mc
Branch:  10351_persist

Fork/Repository:  cortlandstarrett/models
Branch:  10351_persist

</pre>

### End
