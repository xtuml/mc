---

This work is licensed under the Creative Commons CC0 License

---

# Make Keyed Timers the Default
### xtUML Project Implementation Note

### 1. Abstract

Keyed timers have been an undocumented feature for several years.  This
work documents making keyed timers the default implementation generated
by the model compilers.

### 2. Document References

<a id="2.1"></a>2.1 [10333](https://support.onefact.net/issues/10333) Make Keyed Timers the Default  

### 3. Background

Keyed timers prevent the accidental reuse of an expired timer and prevent
one part of the application from canceling a timer started by another part
of the application.  It does this by assigning a unique _access key_.  The
access key is carried by the owner (who started the timer) and is passed
in to gain access to the timer methods.

This feature has been in place and tested in outside shops through the
years.  In 2018, a user group has been running with both clock time and
simulated time with good results.

### 4. Requirements

4.1 The model compilers shall generate timers with access keys by default.

### 5. Work Required

5.1 Change the default.  
5.1.1 `q.sys.singletons.arc` carries the default for keyed timers.
It is sufficient to change this value from 'false' to 'true'.

### 6. Implementation Comments

6.1 mcmc  
`mcmc` will not be updated in this branch.  It is not worth it.  The
executables for Linux, Windows and MacOS will be updated when there is
a more substantial change.

### 7. Unit Test

7.1 Microwave Oven  
7.1.1 If testing the promotion branch, turn off mcmc.  
7.1.2 Generate code for the example MicrowaveOven model.  
7.1.3 Run it.  
7.1.4 See correct time behavior (application runs for 30 seconds).

### 8. User Documentation

### 9. Code Changes

<pre>
Fork/Repository:  cortlandstarrett/mc
Branch: 10333_ktimer

 arc/c/q.sys.singletons.arc    |  2 +-
 arc/sysc/q.sys.singletons.arc |  2 +-
 doc/notes/10333_ktimer_int.md | 64 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 66 insertions(+), 2 deletions(-)
</pre>

### End

