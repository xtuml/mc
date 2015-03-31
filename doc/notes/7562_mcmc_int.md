---

This work is licensed under the Creative Commons CC0 License

---

# Update mcmc and MC Model
### xtUML Project Implementation Note  


1.  Abstract
------------
The model compiler archetypes, mcmc, MC model and ancillary (mcmc)
files need to be updated for the 5.0 release.

2.  History
-----------
None.

3.  Document References
-----------------------
[1] Issues 7562 <https://github.com/xtuml/mc/issues/7562>
    update mcmc for 5.0 release

6. Work Required
----------------
6.1     Update model of model compiler adding marks.  
6.2     Update archetypes as needed to make it easier to maintain mcmc.  
6.3     Update the rsl2oal parser and the template engine to the latest arcs.  
6.4     Tweak the by-ref string return code.  It is mostly not used in this
        context.  
6.5     Allow for marks for IPC feature in schema and model.  

7. Implementation Comments
--------------------------
7.1 Fixed traversal of CL_POR in a mark in m.component.arc.  
7.2 Added a function `oal( string )` that generates code containing the
    string parameter.  This is used to identify places in the geneated
    code that need to be modified.  These places are being reduced or
    eliminated gradually.  
7.3 Fixed a hole in the by-ref string return change.  This enables
    the returning of strings through inter-component messages (operation).  

8. Unit Test
------------
8.1 Run model compiler tests.  
8.2 Build mcmc and run model compiler tests with it.  

9. Code Changes
---------------
Repository:  xtuml/mc
Fork:  cortlandstarrett/mc
Branch:  714_ipc

<pre>
 arc/frag_util.arc                                  |     5 -
 arc/m.component.arc                                |     2 +-
 arc/m.system.arc                                   |    23 -
 arc/q.datatype.arc                                 |     1 -
 arc/q.main.arc                                     |     2 -
 arc/q.oal.act_blk.arc                              |     1 -
 arc/q.oal.action.arc                               |     5 -
 arc/q.smt.generate.arc                             |    25 +-
 arc/q.sys.populate.arc                             |    39 +-
 arc/q.val.translate.arc                            |   186 +-
 arc/sysc/q.component.arc                           |     6 +-
 arc/t.domain.functions.c                           |     4 -
 arc/t.smt.return.c                                 |     4 -
 arc/t.sys_sets.c                                   |    12 +-
 doc/notes/714_ipc.ant.md                           |   174 -
 mcmc/arlan/funcsigs.h                              |    91 +-
 mcmc/arlan/o.oal                                   |  3802 ++-
 mcmc/arlan/o2.oal                                  |   163 +-
 mcmc/arlan/o3.oal                                  |   822 +-
 mcmc/arlan/o4.oal                                  |   185 +-
 mcmc/arlan/template_engine                         |   Bin 68050 -> 72127 bytes
 .../.externalToolBuilders/Model Compiler.launch    |     6 +-
 model/com.mentor.nucleus.bp.core/gen/T_bridge.c    |     2 +-
 model/com.mentor.nucleus.bp.core/gen/ooaofooa.c    |  3180 +--
 .../com.mentor.nucleus.bp.core/gen/sys_sys_types.h |    13 +-
 model/com.mentor.nucleus.bp.core/gen/sys_xtuml.c   |    37 +-
 .../gen/template_engine.tab.c                      |  1193 +-
 model/com.mentor.nucleus.bp.core/gen/y.tab.h       |   155 +-
 .../Extended System/Extended System.xtuml          |    38 +-
 .../System Tags/System Tags.xtuml                  |    36 -
 .../components/ooaofooa/ooaofooa/afun/afun.xtuml   |  5779 ++--
 .../ooaofooa/ooaofooa/afunmark/afunmark.xtuml      |  1502 +-
 .../ooaofooa/ooaofooa/afunsmt/afunsmt.xtuml        |  2512 +-
 .../ooaofooa/ooaofooa/afunval/afunval.xtuml        |   375 +-
 schema/sql/xtumlmc_schema.sql                      |     6 +-
</pre>

End
---

