---

This work is licensed under the Creative Commons CC0 License

---

# Display String UUIDs  
### xtUML Project Implementation Note

### 1. Abstract

In its first implementation _Check Referential Integrity_ displays as
integers model element identifiers which are of type `unique_id`.
This makes for a level of indirection that renders the reports difficult
to use.  String UUIDs which match the UUIDs of the existing model
data will be an improvement.  This note documents the changes to support
the display of full 128-bit UUID `unique_id`s.

### 2. Document References

<a id="2.1"></a>2.1 [9742](https://support.onefact.net/issues/9742) Display string UUIDs in referential integrity report  
<a id="2.2"></a>2.2 [9554](https://support.onefact.net/issues/9554) complete integrity check  

### 3. Background

See [[2.2]] and supporting notes.

Note, this work is incomplete.  The referential integrity checker is
running well, but we are attempting to make the UUID changes universal
across all compiled C model-based model compiler applications such as
docgen, m2x, x2m and mcmc.  The testing of mcmc and the other applications
is not complete.  Therefore, this promotion will require follow-on work
after the BridgePoint 6.6 release.

### 4. Requirements

4.1 string UUIDs  
Display attributes of type `unique_id` as UUID strings (instead of integers)
in the referential integrity report.

### 5. Work Required

5.1 128-bit integer representation  
ANSI does not recognize 128-bit integers, but gcc does.  Since we are
using gcc to compile all model-based model compiler binaries, we can
safely selectively use this gcc extension.  A check for its availability
is made, and it is used only when instance loading is enabled.  So now
`unique_id`s can be represented with 128 bits rather than the current
32 bits.

5.2 detect integer and string `unique_id`s  
Detect string UUIDs by looking forward for a '-' character at position 8.
If it is found, convert the string UUID to a 128-bit integer.  Otherwise,
assume that this `unique_id` is already represented as an integer as has
been the case coming from `xtumlmc_build` cleansing.

5.3 conversion routines  
Conversion routines are introduced that convert between string `unique_id`s
(UUIDs) and (128-bit) integers.

5.4 instance cache removal  
A nifty optimization (of batch relate) was previously implemented in MC-3020.
A cache is created that indexes instances by identifier when an instance has
a single attribute primary identifier.  This cache will not work with 128-bit
integer identifiers.  The optimization is now removed.  No measurable loss in
performance is detected so far.  More testing should be done.

5.5 compiled binaries  
Compile the `integrity` binary for Linux, Mac and Windows and place them
into the appropriate location in `mc/bin` (to be copied into `mc/tools/bin`
in the resulting products).

### 6. Implementation Comments

6.1  Just another note that we have a situation here where the source and
and compiled program of `mcmc` are out of sync.

### 7. Unit Test

7.1 GPS Watch and MicrowaveOven  
Run Check Referential Integrity on a workspace with these two models (from
the Quick Start).  See a report something like this:  
<pre>
subtype not found from UC_UCA across R1210:  Assoc_ID "1f3a83d2-5ee6-4f27-826e-914ffe1b8f94" 
subtype not found from UC_UCA across R1210:  Assoc_ID "4dcfa921-1f57-4803-9720-645d8b8dd376" 
subtype not found from UC_UCA across R1210:  Assoc_ID "1d71410e-785c-452e-b41b-2cd56f88352f" 
subtype not found from UC_UCA across R1210:  Assoc_ID "b0f1b58d-9d3e-40e8-a0d2-fdd405bbaf56" 
subtype not found from UC_UCA across R1210:  Assoc_ID "12147d02-a939-46ae-b649-c93bf59049b5" 
subtype not found from UC_UCA across R1210:  Assoc_ID "7caa9d5a-7b65-4bf0-818f-c038d06bd276" 
instances checked:  4141
checks made:  31366
errors found:  6
</pre>

7.2 scripted unit tests  
Run the command line tests as prescribed in `git/models/integrity/README.md`.  

### 8. User Documentation

8.1 Check Referential Integrity Man Page  
The "man page" in the reference Help is updated to explain how to use
the new string UUID.  The file search function in Eclipse makes it simple
to find the referenced element with an integrity violation.

### 9. Code Changes

<pre>
Fork/Repository: cortlandstarrett/bridgepoint, cortlandstarrett/mc
Branch:  9742_uuid

xtuml/bridgepoint:
 src/org.xtuml.bp.doc/Reference/UserInterface/xtuml_integrity/xtuml_integrity.html | 6 ++++--
 src/org.xtuml.bp.doc/Reference/UserInterface/xtuml_integrity/xtuml_integrity.md   | 5 +++--
 2 files changed, 7 insertions(+), 4 deletions(-)

xtuml/mc:
 arc/c/q.sys.singletons.arc                                                     |     6 +-
 arc/c/sys.arc                                                                  |     4 +
 arc/c/t.sys_factory.h                                                          |     3 -
 arc/c/t.sys_sets.h                                                             |     6 +
 arc/c/t.sys_types.h                                                            |     8 +
 arc/q.class.factory.arc                                                        |    11 +-
 arc/q.sys.populate.arc                                                         |     8 +-
 arc/sysc/q.sys.singletons.arc                                                  |     6 +-
 arc/sysc/t.sys_factory.h                                                       |     3 -
 arc/sysc/t.sys_sets.h                                                          |     6 +
 arc/t.sys_factory.c                                                            |     3 -
 arc/t.sys_sets.c                                                               |    68 +-
 arc/t.sys_xtumlload.c                                                          |     9 +-
 bin/integrity                                                                  |   Bin 1038480 -> 2069752 bytes
 bin/mac/integrity                                                              |   Bin 1144212 -> 1333228 bytes
 bin/win/integrity.exe                                                          |   Bin 1034755 -> 1064640 bytes
 bin/xtumlmc_build                                                              |     7 +-
 doc/notes/9742_uuid_int.md                                                     |   123 +
 mcmc/arlan/o.oal                                                               |    14 +-
 model/escher/.externalToolBuilders/Model Compiler.launch                       |     9 +-
 model/escher/gen/ooaofooa.c                                                    |    28 +-
 model/escher/gen/sys_xtuml.c                                                   |    66 +-
 model/escher/models/escher/mcmc/afun/afun.xtuml                                |    14 +-
 model/integrity/.externalToolBuilders/Model Compiler.launch                    |     4 +-
 model/integrity/gen/STRING_bridge.c                                            |   174 +
 model/integrity/gen/STRING_bridge.h                                            |    34 +
 model/integrity/models/integrity/integrity/integrity.xtuml                     |     3 +-
 model/integrity/src/makefile.integrity                                         |     2 +-
 model/mcooa/gen/ooa.txt                                                        | 16766 +++++++++++++++++++++++++
 model/mcooa/models/mcooa/extensions/Translation Extensions/string/string.xtuml |    36 +
 model/mcshared/gen/STRING_bridge.c                                             |    11 +
 model/mcshared/gen/STRING_bridge.h                                             |     1 +
 model/mcshared/models/mcshared/MC_EEs/MC_EEs.xtuml                             |    29 +
 schema/sql/xtumlmc_schema.sql                                                  |     4 +-
 34 files changed, 17396 insertions(+), 70 deletions(-)

</pre>

### End

