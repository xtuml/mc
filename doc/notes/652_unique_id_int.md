---

This work is licensed under the Creative Commons CC0 License

---

# OAL Way and ID Factory
### xtUML Project Implementation Note

1. Abstract
-----------
This issue addresses one place in the archetypes where we search for
the first element in a linked list using the "old RSL way".  This
depends upon the architectural implementation of referential connection.
The "OAL Way" traverses the reflexive association until an empty is
found.

2. Document References
----------------------
[1] [652 - architectural assumption on unique_id](https://support.onefact.net/issues/652)  
[2] [8413 - Add ID factory to MC](https://support.onefact.net/redmine/issues/8413)  

3. Background
-------------
The headline issue is dated but easy to implement.  It needed to be merged
at a time when testing could be performed.  Now is the time.

The second issue [2] is simply a matter of merging this flavor (ID factory)
generated code into the mcmc build.

4. Requirements
---------------
4.1  Change method of finding first enum without changing behavior.  
4.2  Merge in ID factory code changes to generated mcmc code.  

5. Work Required
----------------
5.1. Merge branch associated with [2].  
5.2. Use latest mcmc to generate mcmc.  

6. Implementation Comments
--------------------------

7. Unit Test
------------
7.1  Build `mcmc`  
7.1.1 Build mcmc and use it to build mcmc again.  See no functional changes
in the generated code but only ID factory changes.

8. Code Changes
---------------
Branch name:  652_mcmc

<pre>

 arc/q.domain.datatype.arc                                |   9 +++-
 mcmc/arlan/o.oal                                         |   9 ++--
 model/escher/.externalToolBuilders/Model Compiler.launch |   4 +-
 model/escher/gen/T_bridge.c                              |   2 +
 model/escher/gen/c/t.class.attribute.init.c              |   8 ++-
 model/escher/gen/c/t.smt.assign.c                        |  38 +++++++++++++++
 model/escher/gen/c/t.smt.control.c                       |   2 +-
 model/escher/gen/c/t.smt.return.c                        |  43 ++++++++---------
 model/escher/gen/c/t.smt_sr.chainto1.c                   |   6 +++
 model/escher/gen/ooaofooa.c                              | 172 +++++++++++++++++++++++++++++++++--------------------------------
 model/escher/gen/ooaofooa_c_orig                         |  10 ++--
 model/escher/gen/sys_sys_types.h                         |   3 +-
 model/escher/gen/sys_xtuml.c                             |  10 ++++
 model/escher/models/escher/mcmc/afun/afun.xtuml          |   7 +--

</pre>

End
---

