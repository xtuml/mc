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
Buffer sizes were increased, because the `check_referential_integrity`
function in the `integrity` model is the largest OAL body ever.  
5.1.1 Update `mcmc` print statements (instance dumping) statements to
work with 128-bit integers.  
The print statements that serialize the instances into SQL INSERT
statements were changed to call an integer to ASCII conversion routine.
The conversion routine can deal with 32-bit or 128-bit integer `unique_ids`.
5.2 Build integrity for all three platforms.  
This involved changing the Windows build to use the 64-bit gcc.  Only
the 64-bit gcc support 128-bit integers.  
5.3 Automate build of `integrity` on build servers.  
Update `config.xml` in the jenkins build-mc job to include compiling
the `integrity` project model.  Note that a manual step remains when
the metamodel is significantly changed.  The generation of the OAL
for the `check_referential_integrity` function must be done manually.
This is documented in `integrity/gen/HOWTO_build_integrity.txt`.  
5.4 Tease apart the `mcshared`-to-`ooaofmarking` dependency.  
This turned out to be simple.  In `maslin`, the contents of the
`mcshared::model::persist_marking_data` operation were pasted into the
input `end` message.  In `maslout`, the contents of the 
`mcshared::model::load_marking_data` operation were copied into a similarly
named function in `maslin`.  
5.5 Fix bug in class-based state machines.  
[[2.4]] identified a bug in the C code generation that resulted in a
compiler warning.  This was fixed.  

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
With a downloaded server build, generate and compile these applications on
Linux, Mac and Windows.

7.2 scripted integrity unit tests  
Run the command line tests as prescribed in `git/models/integrity/README.md`.  

7.3 build `mcmc` with itself.  
Build the `escher` project.  If building in its own workspace, be sure to
exclude the `ooaofmarking` project.  It is not needed by this project.
Only `escher`, `mcooa` and `mcshared` are required.

7.4 See the integrity executable successfully built on the server.  

### 8. User Documentation

no changes

### 9. Code Changes

<pre>
Fork/Repository: cortlandstarrett/mc, cortlandstarrett/buildmt
Branch:  9719_build_integrity

xtuml/buildmt:
xtuml/mc:
 arc/c/t.sys_sets.h                                                |     4 +-
The signature to the itoa routine is simplified to use its own static buffer
space, because this is used only by the output print statements, which would
be complex to supply buffers from the calling context.
 arc/c/t.sys_types.h                                               |     3 +-
Define a u128_t to be used by the conversion utilities.
 arc/q.class.factory.arc                                           |     2 +-
Just call the uuid conversion utility directly.  Detection of the flavor of
input string is done inside the utility.  The utility is clever enough to
convert a string UUID or a string integer (by detecting dashes in the input).
 arc/q.domain.classes.arc                                          |     2 +-
Fix 9801.
 arc/t.sys_sets.c                                                  |    32 +-
Make the UUID conversion smarter.  It can detect UUIDs and integer strings.
 arc/t.sys_xtumlload.c                                             |     2 +-
Fix a comment.  Add a declaration to avoid implicit declaration warning.
 bin/integrity                                                     |   Bin 2069752 -> 1169624 bytes
 bin/mac/integrity                                                 |   Bin 1333228 -> 1337316 bytes
 bin/mac/mcmc                                                      |   Bin 1450168 -> 1549160 bytes
 bin/mcmc                                                          |   Bin 2314440 -> 2404616 bytes
 bin/win/integrity.exe                                             |   Bin 1064640 -> 1397065 bytes
 bin/win/mcmc.exe                                                  |   Bin 1302459 -> 1702402 bytes
 doc/notes/9719_build_integrity_int.md                             |   104 +
 model/escher/.externalToolBuilders/Model Compiler.launch          |     9 +-
 model/escher/gen/HOWTO Create mcmc-docgen.txt                     |     7 +-
Change instructions to use Windows 64-bit gcc.
 model/escher/gen/STRING_bridge.c                                  |     2 +-
 model/escher/gen/T_bridge.c                                       |     7 +-
 model/escher/gen/ooaofooa.c                                       |     6 +-
Increase buffer to handle integrity (check_referential_integrity).
 model/escher/gen/ooaofooa_c_orig                                  |    29 +-
 model/escher/gen/sys_xtuml.c                                      |    33 +-
vimdiff in the changes generated.  Also, increase buffer.
 model/escher/gen/yywrap.c                                         |     2 +-
Now, since Windows is 64-bit, use a different constant to detect unix.
 model/integrity/gen/HOWTO_build_integrity.txt                     |    10 +-
 model/integrity/gen/STRING_bridge.c                               |     4 -
 model/integrity/gen/build_integrity_cli.sh                        |     3 +-
 model/integrity/models/integrity/integrity/integrity.xtuml        | 16044 ++++++++++++------------
Regen'd ooa.txt is included.  This looks huge but is only a few actual changes.
 model/masl/.externalToolBuilders/Model Compiler.launch            |     4 +-
 model/masl/gen/T_bridge.c                                         |     4 +-
 model/masl/gen/masl_population_class.c                            |     1 -
Artifacts from ooaofmarking not needed.  Stop referencing.
 model/maslin/.externalToolBuilders/Model Compiler.launch          |     4 +-
 model/maslin/models/maslin/lib/masl2xtuml/masl2xtuml.xtuml        |    11 +-
Change to loosen dependency on ooaofmarking.
 model/maslout/.externalToolBuilders/Model Compiler.launch         |     4 +-
 model/maslout/gen/sys_user_co.c                                   |     2 +-
 model/maslout/models/maslout/lib/xtuml2masl/maslout/maslout.xtuml |    30 +
 model/mcooa/gen/integrity.arc                                     |     7 +-
Order the classes so that we get consistent generation in the future.
 model/mcooa/gen/ooa.txt                                           | 16044 +++++++++++++-----------
 model/mcshared/models/mcshared/model/model/model.xtuml            |    53 +-
 36 files changed, 16299 insertions(+), 16170 deletions(-)

</pre>

### End

