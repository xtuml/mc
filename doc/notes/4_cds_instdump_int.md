---


---

# Instance Dumping and Model Compiler Speed-Up
### xtUML Project Implementation Note  


1.  Abstract
------------
Instance loading and dumping capability in the model compiler will be
added/enhanced to improve translation speed.  The OAL translation
functionality will migrate from RSL to xtUML.


2.  History
-----------
None.

3.  Document References
-----------------------
[1] Issues 4 <https://github.com/xtuml/mc/issues/4>
    Create instance dumper for C model compiler.  
[2] Analysis Note <https://github.com/xtuml/mc/doc/notes/4_cds_instdump_ant.md>
[3] Design Note <https://github.com/xtuml/mc/doc/notes/4_cds_instdump_dnt.md>

6. Work Required
----------------
See [3].

7. Implementation Comments
--------------------------
None.

8. Unit Test
------------
8.1 all agilegc models (xtuml/agilegc/models)
8.2 all mctest models (xtuml/models/VandMCtesting/mctest)

9. Code Changes
---------------
Repository: xtuml/mc
Branch name:  cds_instancedump_cort_4 

<pre>
 arc/frag_util.arc                            |   86 +-
 arc/m.component.arc                          |   18 +
 arc/m.domain.arc                             |   18 +-
 arc/m.registry.arc                           |   36 -
 arc/m.system.arc                             |   62 +-
 arc/q.assoc.pseudoformalize.arc              |   85 +-
 arc/q.class.arc                              |  100 +-
 arc/q.class.events.arc                       |   39 +-
 arc/q.class.factory.arc                      |   83 +-
 arc/q.class.instance.dump.arc                | 6590 +++++++++++++
 arc/q.class.instance.dumper.arc              |   78 +
 arc/q.class.link.arc                         |  660 +-
 arc/q.class.pei.arc                          |  277 +-
 arc/q.class.persist.arc                      |    4 +-
 arc/q.class.poly.arc                         |    5 +-
 arc/q.class.sem.arc                          |    2 +-
 arc/q.class.sm_sm.arc                        |   16 +-
 arc/q.class.where.arc                        |   29 +-
 arc/q.datatype.arc                           |   88 +-
 arc/q.domain.analyze.arc                     |    4 -
 arc/q.domain.bridge.arc                      |   14 +-
 arc/q.domain.bridges.arc                     |    8 +-
 arc/q.domain.classes.arc                     |   28 +-
 arc/q.domain.sync.arc                        |    6 +-
 arc/q.mc_metamodel.populate.arc              |  697 +-
 arc/q.names.arc                              |  272 +-
 arc/q.oal.act_blk.arc                        |   28 +-
 arc/q.oal.action.arc                         |   89 +
 arc/q.oal.analyze.arc                        |  378 -
 arc/q.oal.translate.arc                      |    2 +
 arc/q.oal.utils.arc                          |  287 +
 arc/q.parameters.arc                         |  127 +-
 arc/q.parameters.sort.arc                    |  325 +
 arc/q.r_rel.arc                              |  132 +
 arc/q.smt.generate.arc                       |   59 +-
 arc/q.utils.arc                              |   90 +-
 arc/q.val.translate.arc                      |   48 +-
 arc/schema_gen.arc                           |  986 ++
 arc/specialized/q.component.arc              |  106 +-
 arc/specialized/q.components.arc             |   11 +-
 arc/specialized/q.mc3020.arc                 |   40 +-
 arc/specialized/sys.arc                      |  184 +-
 arc/specialized/t.component.messages.c       |    4 +-
 arc/specialized/t.component.module.h         |    4 +-
 arc/specialized/t.domain_init.c              |   11 +-
 arc/specialized/t.sys_factory.h              |    4 +-
 arc/specialized/t.sys_main.c                 |    8 +-
 arc/specialized/t.sys_tim.c                  |   31 +-
 arc/specialized/t.sys_types.h                |   57 +-
 arc/sys_util.arc                             |  129 +-
 arc/t.class.attribute.mda.c                  |    2 +-
 arc/t.class.instancedumper.c                 |   23 +
 arc/t.class.instancedumper.h                 |   15 +
 arc/t.class.link.h                           |    6 +-
 arc/t.class.op.c                             |    2 +-
 arc/t.class.select_where.h                   |    2 +-
 arc/t.class.sm_act.c                         |    2 +-
 arc/t.domain_classes.h                       |   10 +-
 arc/t.domain_init.h                          |    2 +-
 arc/t.ee.brg.c                               |   10 +-
 arc/t.smt.c                                  |   71 +-
 arc/t.smt_sr.oneany_atob1.c                  |    2 +-
 arc/t.smt_sr.oneany_atob1where.c             |    2 +-
 arc/t.smt_sr.oneany_atobm.c                  |    2 +-
 arc/t.smt_sr.oneany_atobmwhere.c             |    2 +-
 arc/t.sys_events.c                           |   16 +-
 arc/t.sys_factory.c                          |   63 +-
 arc/t.sys_persist.c                          |   36 +-
 arc/t.sys_thread.h                           |    8 +-
 arc/t.sys_xtumlload.c                        |    9 +-
 doc/.DS_Store                                |  Bin 0 -> 6148 bytes
 doc/notes/4_cds_instdump_ant.md              |  245 +
 doc/notes/4_cds_instdump_dnt.md              |  491 +
 doc/notes/grep_for_referential_assignment.sh |  229 +
 doc/notes/grep_output.orig                   |  458 +
 doc/review-minutes/4_cds_instdump_ant.rvm.md |   39 +
 doc/ug/xml/as2class.png                      |  Bin 9583 -> 9583 bytes
 doc/ug/xml/dlist.png                         |  Bin 12945 -> 12945 bytes
 doc/ug/xml/expclass.png                      |  Bin 43399 -> 43399 bytes
 doc/ug/xml/mcanalog.png                      |  Bin 12971 -> 12971 bytes
 doc/ug/xml/merged.png                        |  Bin 4897 -> 4897 bytes
 doc/ug/xml/nvsim.png                         |  Bin 4363 -> 4363 bytes
 doc/ug/xml/parallel.png                      |  Bin 5598 -> 5598 bytes
 doc/ug/xml/peiclass.png                      |  Bin 23073 -> 23073 bytes
 doc/ug/xml/persistdomain.png                 |  Bin 12735 -> 12735 bytes
 doc/ug/xml/persistim.png                     |  Bin 3214 -> 3214 bytes
 doc/ug/xml/slist.png                         |  Bin 63166 -> 63166 bytes
 doc/ug/xml/supersub.png                      |  Bin 48167 -> 48167 bytes
 doc/ug/xml/supersub1.png                     |  Bin 46947 -> 46947 bytes
 doc/ug/xml/supersub2.png                     |  Bin 48104 -> 48104 bytes
 doc/ug/xml/versionmanagement.png             |  Bin 14945 -> 14945 bytes
 schema/sql/xtumlmc_schema.sql                |13408 +++++++++++++-------------
 92 files changed, 18502 insertions(+), 9098 deletions(-)
</pre>

End
---

