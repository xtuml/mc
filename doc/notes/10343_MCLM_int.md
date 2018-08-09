---

This work is licensed under the Creative Commons CC0 License

---

# Update MCLM to work with current MC-3020
### xtUML Project Implementation Note

### 1. Abstract

MCLM is a fork of the MC-3020 model compiler designed for generating code for
the `nxtOSEK` and `EV3RT-HRP2` Lego Mindstorms platforms. MCLM was forked from
MC-3020 over two years ago. Since then, many things have changed in BridgePoint,
making it no longer compatible with MCLM. This issue is raised to bring MCLM
forward onto the current version of MC-3020 so that it can be used with recent
versions of BridgePoint.

### 2. Document References

<a id="2.1"></a>2.1 [BridgePoint DEI #10343](https://support.onefact.net/issues/10343)  
<a id="2.2"></a>2.2 [EV3RT homepage](http://ev3rt-git.github.io/about/)  

### 3. Background

This work came from an interest to run xtUML applications on the EV3 platform.
The EV3RT operating system [[2.2]](#2.2) will be used. First, the model compiler
must be updated.

### 4. Requirements

4.1 MCLM shall generate code using BridgePoint 6.15 or higher.  
4.2 MCLM shall generate code using pyrsl v2.1.0 or higher.  
4.3 `mcmc` shall be updated for use with MCLM.  
4.4 MCLM shall generate specialized code only when a mark enables it. In other
cases, regular MC-3020 code shall be generated.  

### 5. Work Required

5.1 Bringing in the change set

First, the `mc` repository was rewound to a little over two years ago. Using
this point in the code history, the MC-3020 source was compared with the MCLM
source. Revision control techniques were then used to apply this changeset to
the current version of MC-3020. Some updates were required during this step to
allow the old changes to be compatible with new MC-3020. The most notable of
these changes was with the way `TIM_tick` and `TIM_init` are invoked (which
changed as a result of the new simulated time feature [[2.3]](#2.3)).

5.2 More modifications and adjustments

At this step, the code was reviewed and formatting changes were made to clean up
the changeset. Code was generated for the example project `MCLMProject` in
`modelsjp` and tested on the hardware. No functional changes were made to MCLM.

5.3 Update `mcmc`

Some additional changes were needed to enable `mcmc` to be built and used for
MCLM. These changes were made and the generated sources were updated. The `mcmc`
executables were regenerated for Windows, Linux, and macOS.

5.4 Changes to `modelsjp`

The example project `MCLMProject` in the `modelsjp` repository was updated.
"Load and Persist" was used to upgrade the model data to the latest persistence
version. The built in EEs for the EV3 platform and associated data types were
factored out into a new project `MCLMShared` to aid in reuse for future
projects. The `mc3020` directory was updated to contain the archetypes,
binaries, and schema for the updated model compiler.

### 6. Implementation Comments

None

### 7. Unit Test

7.1 Code was generated for the example project `MCLMProject` and executed on an
EV3 robot. This was a line follower application. The robot performed as
expected.

### 8. User Documentation

None.

### 9. Code Changes

Fork/Repository: leviathan747/mc  
Branch: 10343_MCLM  

<pre>

 arc/c/sys.arc                                                                                                         |  60 +++++++++++-
 arc/c/t.EV3B_bridge.c                                                                                                 | 265 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 arc/c/t.EV3COL_bridge.c                                                                                               |  77 +++++++++++++++
 arc/c/t.EV3GYR_bridge.c                                                                                               |  65 +++++++++++++
 arc/c/t.EV3M_bridge.c                                                                                                 | 132 ++++++++++++++++++++++++++
 arc/c/t.EV3TCH_bridge.c                                                                                               |  45 +++++++++
 arc/c/t.EV3ULS_bridge.c                                                                                               |  57 +++++++++++
 arc/c/t.mclm_ev3.h                                                                                                    |  38 ++++++++
 arc/c/t.sys_ec_b.c                                                                                                    |  84 +++++++++++++++++
 arc/c/t.sys_ec_b_ev3.c                                                                                                |  79 ++++++++++++++++
 arc/c/t.sys_ecr.c                                                                                                     | 360 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arc/c/t.sys_ecr_ev3.c                                                                                                 | 368 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arc/c/t.sys_ev3hrp_app.c                                                                                              |   7 ++
 arc/c/t.sys_ev3hrp_app.h                                                                                              |  31 ++++++
 arc/c/t.sys_main.c                                                                                                    |  10 ++
 arc/c/t.sys_threadev3hrp.c                                                                                            | 200 +++++++++++++++++++++++++++++++++++++++
 arc/c/t.sys_threadev3hrp.cfg                                                                                          |  85 +++++++++++++++++
 arc/c/t.sys_threadnxtosek.c                                                                                           | 233 +++++++++++++++++++++++++++++++++++++++++++++
 arc/c/t.sys_threadnxtosek.c.code                                                                                      | 143 ++++++++++++++++++++++++++++
 arc/c/t.sys_threadnxtosek.oil                                                                                         | 182 ++++++++++++++++++++++++++++++++++++
 arc/c/t.sys_tim_nxtosek.c                                                                                             | 898 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arc/c/t.sys_user_co_ev3.c                                                                                             | 298 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arc/m.datatype.arc                                                                                                    |  23 +++++
 arc/m.system.arc                                                                                                      | 193 +++++++++++++++++++++++++++++++++++++-
 arc/q.class.sem.arc                                                                                                   |   2 +-
 arc/q.domain.bridges.arc                                                                                              |  17 +++-
 arc/q.domain.datatype.arc                                                                                             |   6 ++
 arc/q.sys.populate.arc                                                                                                |  83 ++++++++++++++++
 arc/t.sys_events.c                                                                                                    |  14 ++-
 arc/t.sys_user_co.h                                                                                                   |   3 +-
 bin/mac/mcmc                                                                                                          | Bin 1589232 -> 1611768 bytes
 bin/mcmc                                                                                                              | Bin 2431832 -> 2415936 bytes
 bin/win/mcmc.exe                                                                                                      | Bin 1730306 -> 2010252 bytes
 doc/notes/10343_MCLM_int.md                                                                                           |  97 +++++++++++++++++++
 mcmc/arlan/funcsigs.h                                                                                                 |   7 +-
 mcmc/arlan/o.oal                                                                                                      |  85 ++++++++++++++++-
 mcmc/arlan/o4.oal                                                                                                     | 216 +++++++++++++++++++++++++++++++++++++++++-
 model/escher/gen/ooaofooa.c                                                                                           | 763 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++------------
 model/escher/gen/ooaofooa_c_orig                                                                                      | 763 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++------------
 model/escher/models/escher/mcmc/afun/afun.xtuml                                                                       |  85 ++++++++++++++++-
 model/escher/models/escher/mcmc/afunmark/afunmark.xtuml                                                               | 448 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++---
 model/mcooa/models/mcooa/extensions/Translation Extensions/Extended Data Type/Extended Data Type.xtuml                |  18 ++++
 model/mcooa/models/mcooa/extensions/Translation Extensions/Lego Mindstorms Extension/Lego Mindstorms Extension.xtuml  | 195 ++++++++++++++++++++++++++++++++++++++
 model/mcooa/models/mcooa/extensions/Translation Extensions/Translation Extensions.xtuml                               |  24 +++++
 model/mcooa/models/mcooa/extensions/Translation Marking/Lego Mindstorms Device/Lego Mindstorms Device.xtuml           | 123 ++++++++++++++++++++++++
 model/mcooa/models/mcooa/extensions/Translation Marking/Lego Mindstorms Enumeration/Lego Mindstorms Enumeration.xtuml | 123 ++++++++++++++++++++++++
 model/mcooa/models/mcooa/extensions/Translation Marking/Pre Existing EE/Pre Existing EE.xtuml                         |  87 +++++++++++++++++
 model/mcooa/models/mcooa/extensions/Translation Marking/Thread Element/Thread Element.xtuml                           |  93 ++++++++++++++++++
 model/mcooa/models/mcooa/extensions/Translation Marking/Translation Marking.xtuml                                     |  96 +++++++++++++++++++
 schema/sql/xtumlmc_schema.sql                                                                                         |  38 +++++++-
 50 files changed, 7168 insertions(+), 151 deletions(-)

</pre>

### End

