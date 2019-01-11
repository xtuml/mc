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

<a id="2.1"></a>2.1 [10351](https://support.onefact.net/issues/10351) Bring back MC-3020 persistence  
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
4.2.1 Support marking of persistent classes, packages and components.  
4.2.2 Support marking of the depth of the persistence queue cache.  
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
5.1.1 The name of the persistence class union was being confused with the
(entire) union itelf (`sys.arc`).  
5.1.2 A persistence data structure had a simple syntax error (`t.sys_sets.h`).  
5.1.3 Parameter handling to action bodies changed, and persistence did not
keep up.  
5.1.4 A boolean operator (`&&`) was being used instead of a binary operator
(`&`) (`t.sys_nvs.c`).  
5.2 Marking  
5.2.1 The marking supplied in the original development stands without change.
However, testing of the marking in the face of model-based model compilation
is accomplished during this work.  
5.3 Packaging  
5.3.1 `getindex` was "moved out a level" so that it can be used by
persistence as well as event handling.  
5.3.2 The default example nvs code is generated into a separate file
(`sys_nvs.c`), but the persistence commit and restore methods are absorbed
into the primary system file (`sys_xtuml`). `sys_nvs.c` is likely to be
copied to the gen folder and modified.  The other code is not likely to be
changed.  
5.4 Test Model  
5.4.1 `assoc_unformal` is now marked with persistence on.  It is set up
for default testing of persistence.  
5.4.2 `assoc_unformal` is updated for the Eclipse Oxygen -based BridgePoint.  
5.5 mcmc  
5.5.1 `mcmc` is updated with changes required for persistence support.  Thus,
the high speed compilation afforded by mcmc is available with these fixes.  
5.5.2 Packaging of `mcmc` is laborious.  As noted in the Implementation
Comments secion, effort to simplify has been expended during this development.  

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

6.3 "quote" and 'tick' and hand-edits  
The compiled model compiler is virtually required for translation of MC-3020,
because of the mass of action language (converted from RSL).  Unfortunately,
there are weaknesses in MC-3020 such that `mcmc` cannot be generated cleanly
from xtUML alone; a few tweaks are required.  The tweaks come in the form of
hand-edits to the generated code.  There are tens of spots in the generated
ooaofooa.c file that require hand edits.  Escaping quotations marks and
single-quotes (ticks) is the single biggest headache among these hand-edits.
During this work, I reduced the number of hand-edits by creating functions
`T_quote` and `T_tick`.  The former returns a string carrying a quotation
mark; the latter returns a string carrying a tick mark.  The hand edit is
then localized to the body of these routines rather than strewn throughout
the generated ooaofooa.c file.  I also improved the instructions guiding
the hand-edits in `HOWTO Create mcmc-docgen.txt`.  

### 7. Unit Test

7.1 Microwave Oven  
This test only provides evidence that the persistence feature can be enabled
and not interfere with normal application execution.  This test does not
exercise the persistence mechanisms other than marking.  
7.1.1 Import MicrowaveOven from the Welcome -> QuickStart.  
7.1.1.1 Add the following line of action language into any function or state
action of the model.
```
i = NVS::version( first:1, second:2 );
```
7.1.2 Build it.  
7.1.3 Run it.  
7.1.4 See a successful run lasting 30 seconds.  
7.1.5 Mark persistence on by adding the following line to `gen/class.mark`:  
```
.invoke MarkPersistentClass( "*", "*", "*" )  
```
7.1.6 Build it.  
7.1.7 Run it.  
7.1.8 See a successful run lasting 30 seconds.  

7.2 `assoc_unformal`  
This test does exercise persistence.  We run the application once with no
stored persistent instances (and links); no persistence file (`nvs.fil`)
is present.  The run will create the persistence file before exiting.
Then, we run again.  The architecture will detect the `nvs.fil` and load
the pre-existing instances and link them up.  The initialization function
of this model detects these pre-existing instances and skips the creation
of them.  The test then runs queries against the loaded instance population.  
7.2.1 Import `xtuml/models/VandMC_testing/mctest/assoc_unformal`.  
7.2.2 Build it.  
7.2.3 Run it.  (Ensure that `nvs.fil` does not exist in the same directory
as the executable before running it this first time.)  
7.2.4 See a successful run with a message "PASSED - LOG::LogSuccess:
Made it to the end." and no other error messages.  
7.2.5 See that `nvs.fil` was created in the same directory as the executable
and that the length of the file is greater tha zero (somewhere around 8k or
9k is expected).  
7.2.6 Run the executable again.  
7.2.4 See a successful run with a message "PASSED - LOG::LogSuccess:
Made it to the end." and no other error messages.  

### 8. User Documentation

No documentation changes are necessary.

### 9. Code Changes

<pre>
Fork/Repository:  cortlandstarrett/mc
Branch:  10351_persist

 arc/c/q.sys.singletons.arc                         |    4 +-
 arc/c/sys.arc                                      |   14 +-
 arc/c/t.sys_factory.h                              |    3 -
 arc/c/t.sys_sets.h                                 |    2 +-
 arc/c/t.sys_types.h                                |    5 +-
 arc/frag_util.arc                                  |    2 +-
 arc/m.system.arc                                   |    2 +-
 arc/q.datatype.arc                                 |    5 +-
 arc/q.domain.limits.arc                            |   16 +-
 arc/q.oal.act_blk.arc                              |    7 +-
 arc/q.oal.action.arc                               |    2 +-
 arc/q.sys.populate.arc                             |   18 +-
 arc/q.val.translate.arc                            |   74 +-
 arc/sysc/sys.arc                                   |   14 +-
 arc/sysc/t.sys_factory.h                           |    3 -
 arc/sysc/t.sys_types.h                             |    7 +
 arc/t.ee.brg.c                                     |   32 +-
 arc/t.ee.c                                         |    3 +
 arc/t.smt_sr.many_astob1where.c                    |    2 +-
 arc/t.smt_sr.multi_many_astob1where.c              |    2 +-
 arc/t.smt_sr.multi_oneany_astob1where.c            |    2 +-
 arc/t.smt_sr.oneany_astob1where.c                  |    2 +-
 arc/t.smt_sr.oneany_atob1where.c                   |    2 +-
 arc/t.sys_events.c                                 |   16 -
 arc/t.sys_factory.c                                |   17 +
 arc/t.sys_nvs.c                                    |    6 +-
 arc/t.sys_nvs.h                                    |    5 -
 arc/t.sys_persist.c                                |   38 +-
 arc/t.sys_persist.h                                |   15 +-
 bin/mac/mcmc                                       |  Bin 1589232 -> 1593424 bytes
 bin/mcmc                                           |  Bin 2431832 -> 2436008 bytes
 bin/win/mcmc.exe                                   |  Bin 1730306 -> 1733447 bytes
 doc/notes/10351_persist/10351_persist_int.md       |  169 +
 mcmc/arlan/convert_templates.sh                    |    2 +-
 mcmc/arlan/current_list.sh                         |    8 +-
 mcmc/arlan/funcsigs.h                              |    3 +-
 mcmc/arlan/o.oal                                   |   47 +-
 mcmc/arlan/o2.oal                                  |   68 +-
 mcmc/arlan/o3.oal                                  |    9 +-
 mcmc/arlan/o4.oal                                  |    4 +-
 model/escher/gen/HOWTO Create mcmc-docgen.txt      |   17 +-
 model/escher/gen/STRING_bridge.c                   |  707 +--
 model/escher/gen/c/t.smt.set_declaration.c         |   12 -
 model/escher/gen/c/t.smt_sr.declare_ref.c          |    8 -
 model/escher/gen/c/t.smt_sr.declare_set.c          |   16 -
 model/escher/gen/c/t.smt_sr.many_astob1where.c     |    4 +-
 .../escher/gen/c/t.smt_sr.multi_many_astob1where.c |    4 +-
 .../gen/c/t.smt_sr.multi_oneany_astob1where.c      |    4 +-
 model/escher/gen/c/t.smt_sr.oneany_astob1where.c   |    4 +-
 model/escher/gen/c/t.smt_sr.oneany_atob1where.c    |    4 +-
 model/escher/gen/c/t.smt_sr.subtypecheck.c         |    8 -
 model/escher/gen/ooaofooa.c                        | 6166 ++++++++++----------
 model/escher/gen/ooaofooa_c_orig                   | 6149 +++++++++----------
 model/escher/gen/sys_user_co.c                     |    2 +
 model/escher/gen/sys_user_co.h                     |    2 +
 model/escher/models/escher/mcmc/afun/afun.xtuml    |   76 +-
 .../models/escher/mcmc/afunmark/afunmark.xtuml     |   28 +-
 .../models/escher/mcmc/afunsmt/afunsmt.xtuml       |   13 +-
 .../models/escher/mcmc/afunval/afunval.xtuml       |   66 +-
 .../Packageable Element/Packageable Element.xtuml  |    2 +-
 60 files changed, 7208 insertions(+), 6714 deletions(-)

Fork/Repository:  cortlandstarrett/models
Branch:  10351_persist

 VandMC_testing/mctest/assoc_unformal/.cproject                  | 25 +++++++++++++------------
 .../com.mentor.nucleus.bp.mc.xmiexport.XMIExportBuilder.launch  |  8 --------
 VandMC_testing/mctest/assoc_unformal/.project                   | 10 ----------
 VandMC_testing/mctest/assoc_unformal/README.txt                 |  7 +++++--
 VandMC_testing/mctest/assoc_unformal/gen/class.mark             |  2 ++
 5 files changed, 35 insertions(+), 47 deletions(-)

</pre>

### End

