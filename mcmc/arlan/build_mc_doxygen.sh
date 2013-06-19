# Copy the archetypes from above.
echo "build_mc_doxygen:  Copying *.arc files into the current directory."
/bin/cp -f ../*.arc .
echo "build_mc_doxygen:  Copying *.c and *.h files directly to the /src location."
/bin/cp -f ../*.c src
/bin/cp -f ../*.h src

echo "build_mc_doxygen:  Making file scope archetypes into functions."
# Add function start/end to files that are included as archetype commands.
# This is done to files that are a list of commands with no function packaging around them.
# grep include * | grep te_file.arc_path | grep '.arc"'
echo ".function q_class_sm_sm_arc" | cat - ../q.class.sm_sm.arc | cat - endfunction > q.class.sm_sm.arc
echo ".function q_domain_analyze_arc" | cat - ../q.domain.analyze.arc | cat - endfunction > q.domain.analyze.arc
echo ".function q_domain_init_arc" | cat - ../q.domain.init.arc | cat - endfunction > q.domain.init.arc
echo ".function q_domain_syncs_arc" | cat - ../q.domain.syncs.arc | cat - endfunction > q.domain.syncs.arc
echo ".function q_domain_bridges_arc" | cat - ../q.domain.bridges.arc | cat - endfunction > q.domain.bridges.arc
echo ".function q_domain_datatypes_arc" | cat - ../q.domain.datatypes.arc | cat - endfunction > q.domain.datatypes.arc
echo ".function q_classes_arc" | cat - ../q.classes.arc | cat - endfunction > q.classes.arc
echo ".function q_component_ports_arc" | cat - ../q.component.ports.arc | cat - endfunction > q.component.ports.arc
echo ".function sys_arc" | cat - ../sys.arc | cat - endfunction > sys.arc

# Loop through each file in this folder processing it into C-like source.
echo "build_mc_doxygen:  Looping through files converting archetype queries to C-ish..."
for f in `ls -1 *.arc`; do
  echo $f
  #./rsl2oal.sh $f
  /home/cstarret/docs/eclipse/arlan/j2/rsl2oal < $f | grep -v "color_path" | sed "s/te_file.arc_path\///" | sed "s/arc_path\///" > src/$f
  rm $f
done

# Run doxygen to get it all done.
#doxygen SystemC_MC_Arcs.cfg

