---

This work is licensed under the Creative Commons CC0 License

---

# MC-3020 ignores `ACT_CNV`  
### xtUML Project Implementation Note


1. Abstract
-----------
The model compiler is silently ignoring a legitimate OAL statement for
creating instances.

2. Document References
----------------------
[1] [8033](https://support.onefact.net/issues/8033) MC-3020 ignores `ACT_CNV`  

3. Background
-------------
'Create object instance no variable (`ACT_CNV`)' is an action language
statement that creates an instance without returning an instance handle.
MC-3020 has been ignoring this statement.  It is not used much (maybe
at all), but it is a legal statement.  It should not be ignored.

This work documents implementing the statement.

4. Requirements
---------------
4.1 `ACT_CNV` shall be supported.

5. Work Required
----------------
5.1 mc/arc  
The archetypes need to be updated to support `ACT_CNV`.  It is a subset
of `ACT_CR`, so it is simple and straight-forward.

5.2 `mcmc`  
The compiled model compiler `mcmc` needs to be recompiled and the escher
model updated with rsl2oal translated action language.

6. Implementation Comments
--------------------------

7. Unit Test
------------
7.1 See [1] for supplied unit test.
7.1.1 It shall pass.

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  8033_ACT_CNV  

xtuml/mc
 arc/q.oal.translate.arc                                                 |   1 +
 arc/q.smt.generate.arc                                                  |  38 +++++++++++
 bin/mcmc                                                                | Bin 1856419 -> 1884688 bytes
 bin/mcmc.exe                                                            | Bin 1175308 -> 1188795 bytes
 bin/mcmc64                                                              | Bin 2170101 -> 2220232 bytes
 doc/notes/8033_ACT_CNV_int.md                                           |  63 +++++++++++++++++
 mcmc/arlan/funcsigs.h                                                   |   2 +
 mcmc/arlan/o.oal                                                        |  31 +--------
 mcmc/arlan/o3.oal                                                       |  42 +++++++++++-
 model/escher/gen/ooaofooa.c                                             | 186 +++++++++++++++++--------
 model/escher/models/escher/mcmc/afun/afun.xtuml                         |  28 --------
 model/escher/models/escher/mcmc/afunsmt/afunsmt.xtuml                   |  95 ++++++++++++++++++++++++-
 model/mcooa/models/mcooa/ooaofooa/Instance Access/Instance Access.xtuml |  48 ++++++++++---
 13 files changed, 381 insertions(+), 153 deletions(-)

</pre>

End
---

