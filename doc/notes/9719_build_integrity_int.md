---

This work is licensed under the Creative Commons CC0 License

---

# Build integrity binary
### xtUML Project Implementation Note

### 1. Abstract

The _Build Referential Integrity_ application (`integrity`) is a model-based
model compiler.  In the first release, it had to build manually.  This work
documents automating the build.  Along with this work `mcmc` was updated to
work with string UUIDs by leveraging the work done in the `integrity` model.
A small bug around class-based state machine was fixed along the way.

### 2. Document References

<a id="2.1"></a>2.1 [9742](https://support.onefact.net/issues/9742) Display string UUIDs in referential integrity report  
<a id="2.2"></a>2.2 [9554](https://support.onefact.net/issues/9554) complete integrity check  
<a id="2.3"></a>2.3 [9719](https://support.onefact.net/issues/9719) Build integrity.exe  
<a id="2.4"></a>2.4 [9801](https://support.onefact.net/issues/9801) Declarations created for non-existing classes when class-based state machine  

### 3. Background

See [[2.1]] and [[2.2]] and supporting notes.

The referential integrity checker work was incomplete.  The referential
integrity checker is running well, but we needed to make the UUID changes
universal across all compiled C model-based model compiler applications such
as docgen, m2x, x2m and mcmc.  The testing of mcmc and the other applications
is now complete.

There was an annoying dependency between `mcshared` and `ooaofmarking`.
This dependency was a call from `mcshared::model::load_marking_data()`
and `mcshared::model::persist_marking_data()` to operations in `ooaofmarking`.
However, these were being used only by `maslin` and `maslout` and only
in one place each.  So, this dependency was removed by moving these functions
into each of `maslin` and `maslout`.  This results in allowing workspaces
to have `mcshared` without `ooaofmarking` in cases where `ooaofmarking`
is not needed.

### 4. Requirements

4.1 Enhance production `mcmc` to be capable of building `integrity`.  
4.1.1 Update `mcmc` print statements (instance dumping) statements to
work with 128-bit integers.  
4.2 Build integrity for all three platforms.  
4.3 Automate build of `integrity` on build servers.  
4.4 Tease apart the `mcshared`-to-`ooaofmarking` dependency.  
4.5 Fix bug in class-based state machines.  

### 5. Work Required

5.1 Enhance production `mcmc` to be capable of building `integrity`.  
5.1.1 Update `mcmc` print statements (instance dumping) statements to
work with 128-bit integers.  
5.2 Build integrity for all three platforms.  
5.3 Automate build of `integrity` on build servers.  
5.4 Tease apart the `mcshared`-to-`ooaofmarking` dependency.  
5.5 Fix bug in class-based state machines.  

### 6. Implementation Comments

6.1 large `integrity` change set  
There is a large change set in the `integrity` model.  This is largely
an ordering issue which is solved going forward.  Only 3 functional
lines changed, and several lines with an updated output message.  The
rest of the changes are due to the (random) order of the classes being
output by the code generator.  A new (brute force) sort is added to
keep this ordering consistent (by class number) in the future.

### 7. Unit Test

7.1 GPS Watch and MicrowaveOven  
With a server build, generate and compile these applications on Linux, Mac
and Windows.

7.2 scripted integrity unit tests  
Run the command line tests as prescribed in `git/models/integrity/README.md`.  

7.3 build `mcmc` with itself.  

7.4 See the integrity executable successfully built on the server.  

### 8. User Documentation

no changes

### 9. Code Changes

<pre>
Fork/Repository: cortlandstarrett/mc, cortlandstarrett/buildmt
Branch:  9719_build_integrity

xtuml/mc:
xtuml/buildmt:

</pre>

### End

