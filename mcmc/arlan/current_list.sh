# first for afun
grep -vP "[\x80-\xFF]" < ../../arc/frag_util.arc | ./rsl2oal | sed 's/include(file:"${te_file.arc_path}/include(file:"c/' | sh swapreflex.sh >> o.oal
grep -vP "[\x80-\xFF]" < ../../arc/q.datatype.arc | ./rsl2oal | sh swapreflex.sh >> o.oal
grep -vP "[\x80-\xFF]" < ../../arc/q.domain.analyze.arc | ./rsl2oal | sh swapreflex.sh >> o.oal
grep -vP "[\x80-\xFF]" < ../../arc/q.domain.limits.arc | ./rsl2oal | sh swapreflex.sh >> o.oal
grep -vP "[\x80-\xFF]" < ../../arc/q.oal.analyze.arc | ./rsl2oal | sh swapreflex.sh >> o.oal
grep -vP "[\x80-\xFF]" < ../../arc/q.oal.utils.arc | ./rsl2oal | sh swapreflex.sh >> o.oal
grep -vP "[\x80-\xFF]" < ../../arc/q.parameters.arc | ./rsl2oal | sh swapreflex.sh >> o.oal
grep -vP "[\x80-\xFF]" < ../../arc/q.parm.sort.arc | ./rsl2oal | sh swapreflex.sh > o.oal
grep -vP "[\x80-\xFF]" < ../../arc/q.rel.pseudoformalize.arc | ./rsl2oal | sh swapreflex.sh >> o.oal
grep -vP "[\x80-\xFF]" < ../../arc/q.sys.populate.arc | ./rsl2oal | sh swapreflex.sh >> o.oal
grep -vP "[\x80-\xFF]" < ../../arc/q.utils.arc | ./rsl2oal | sh swapreflex.sh >> o.oal
grep -vP "[\x80-\xFF]" < ../../arc/c/q.sys.singletons.arc | ./rsl2oal | sed 's/""C""/\&quot;C\&quot;/' | sh swapreflex.sh >> o.oal

# second list for afunval
grep -vP "[\x80-\xFF]" < ../../arc/q.val.translate.arc | ./rsl2oal | sed 's/""""/"\&quot;"/g' | sh swapreflex.sh > o2.oal

# third list for afunsmt
grep -vP "[\x80-\xFF]" < ../../arc/q.names.arc | ./rsl2oal | sed 's/include(file:"${te_file.arc_path}/include(file:"c/' | sh swapreflex.sh >> o3.oal
grep -vP "[\x80-\xFF]" < ../../arc/q.oal.act_blk.arc | ./rsl2oal | sed 's/, """/, \&quot;"/' | sed 's/+ """/+ "\&quot;/' | sed 's/include(file:"${te_file.arc_path}/include(file:"c/' | sh swapreflex.sh >> o3.oal
grep -vP "[\x80-\xFF]" < ../../arc/q.oal.action.arc | ./rsl2oal | sed 's/include(file:"${te_file.arc_path}/include(file:"c/' | sh swapreflex.sh >> o3.oal
grep -vP "[\x80-\xFF]" < ../../arc/q.oal.translate.arc | ./rsl2oal | sed 's/include(file:"${te_file.arc_path}/include(file:"c/' | sh swapreflex.sh > o3.oal
grep -vP "[\x80-\xFF]" < ../../arc/q.smt.generate.arc | ./rsl2oal | sed 's/include(file:"${te_file.arc_path}/include(file:"c/' | sh swapreflex.sh >> o3.oal
grep -vP "[\x80-\xFF]" < ../../arc/q.r_rel.arc | ./rsl2oal | sed 's/include(file:"${te_file.arc_path}/include(file:"c/' | sh swapreflex.sh >> o3.oal

# fourth list for afunmark
grep -vP "[\x80-\xFF]" < ../../arc/m.bridge.arc | ./rsl2oal | sh swapreflex.sh > o4.oal
grep -vP "[\x80-\xFF]" < ../../arc/m.class.arc | ./rsl2oal | sh swapreflex.sh >> o4.oal
grep -vP "[\x80-\xFF]" < ../../arc/m.component.arc | ./rsl2oal | sh swapreflex.sh >> o4.oal
grep -vP "[\x80-\xFF]" < ../../arc/m.datatype.arc | ./rsl2oal | sh swapreflex.sh >> o4.oal
grep -vP "[\x80-\xFF]" < ../../arc/m.domain.arc | ./rsl2oal | sh swapreflex.sh >> o4.oal
grep -vP "[\x80-\xFF]" < ../../arc/m.event.arc | ./rsl2oal | sh swapreflex.sh >> o4.oal
grep -vP "[\x80-\xFF]" < ../../arc/m.system.arc | ./rsl2oal | sh swapreflex.sh >> o4.oal

# fifth is customizations
grep -vP "[\x80-\xFF]" < ../../arc/fx_util.arc | ./rsl2oal | sed 's/include(file:"${te_file.arc_path}/include(file:"c/' | sh swapreflex.sh >> o5.oal
