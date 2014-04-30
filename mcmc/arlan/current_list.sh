# first for afun
./rsl2oal < ../../arc/frag_util.arc | sed 's/include(file:"${te_file.arc_path}/include(file:"c/' | sh swapreflex.sh > o.oal
./rsl2oal < ../../arc/q.datatype.arc | sh swapreflex.sh >> o.oal
./rsl2oal < ../../arc/q.domain.analyze.arc | sh swapreflex.sh >> o.oal
./rsl2oal < ../../arc/q.domain.limits.arc | sh swapreflex.sh >> o.oal
./rsl2oal < ../../arc/q.oal.analyze.arc | sh swapreflex.sh >> o.oal
./rsl2oal < ../../arc/q.oal.utils.arc | sh swapreflex.sh >> o.oal
./rsl2oal < ../../arc/q.parameters.arc | sh swapreflex.sh >> o.oal
./rsl2oal < ../../arc/q.parm.sort.arc | sh swapreflex.sh >> o.oal
./rsl2oal < ../../arc/q.rel.pseudoformalize.arc | sh swapreflex.sh >> o.oal
./rsl2oal < ../../arc/q.sys.populate.arc | sh swapreflex.sh >> o.oal
./rsl2oal < ../../arc/q.utils.arc | sh swapreflex.sh >> o.oal
./rsl2oal < ../../arc/c/q.sys.singletons.arc | sed 's/""C""/\&quot;C\&quot;/' | sh swapreflex.sh >> o.oal

# second list for afunval
./rsl2oal < ../../arc/q.val.translate.arc | sed 's/""""/"\&quot;"/g' | sh swapreflex.sh > o2.oal

# third list for afunsmt
./rsl2oal < ../../arc/q.names.arc | sed 's/include(file:"${te_file.arc_path}/include(file:"c/' | sh swapreflex.sh > o3.oal
./rsl2oal < ../../arc/q.oal.act_blk.arc | sed 's/, """/, \&quot;"/' | sed 's/+ """/+ "\&quot;/' | sed 's/include(file:"${te_file.arc_path}/include(file:"c/' | sh swapreflex.sh >> o3.oal
./rsl2oal < ../../arc/q.oal.action.arc | sed 's/include(file:"${te_file.arc_path}/include(file:"c/' | sh swapreflex.sh >> o3.oal
./rsl2oal < ../../arc/q.oal.translate.arc | sed 's/include(file:"${te_file.arc_path}/include(file:"c/' | sh swapreflex.sh >> o3.oal
./rsl2oal < ../../arc/q.smt.generate.arc | sed 's/include(file:"${te_file.arc_path}/include(file:"c/' | sh swapreflex.sh >> o3.oal
./rsl2oal < ../../arc/q.r_rel.arc | sed 's/include(file:"${te_file.arc_path}/include(file:"c/' | sh swapreflex.sh >> o3.oal

# fourth list for afunmark
./rsl2oal < ../../arc/m.bridge.arc | sh swapreflex.sh > o4.oal
./rsl2oal < ../../arc/m.class.arc | sh swapreflex.sh >> o4.oal
./rsl2oal < ../../arc/m.component.arc | sh swapreflex.sh >> o4.oal
./rsl2oal < ../../arc/m.datatype.arc | sh swapreflex.sh >> o4.oal
./rsl2oal < ../../arc/m.domain.arc | sh swapreflex.sh >> o4.oal
./rsl2oal < ../../arc/m.event.arc | sh swapreflex.sh >> o4.oal
./rsl2oal < ../../arc/m.system.arc | sh swapreflex.sh >> o4.oal
