.if ( not_empty te_class )
  .if ( te_sys.InstanceLoading )
Escher_idf ${te_c.Name}_instance_dumpers[ ${te_dci.max} ] = {${instance_dumpers}
};
  .end if
/* xtUML class info (collections, sizes, etc.) */
${te_set.scope}${te_cia.class_info_type} * const ${te_c.Name}::${te_dci.array_name}[ ${te_dci.max} ] = {${class_info_init}
};

  .if ( not_empty te_sm )
    .if ( te_thread.enabled )
${te_typemap.object_number_name} ${te_c.Name}::${te_dci.task_list}[ ${te_dci.max_models} ] = {
  ${te_dci.task_numbers}
};
    .end if

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
${class_dispatch_array.element_type} ${te_c.Name}::${class_dispatch_array.result}[ ${te_dci.max_models} ] = {
  ${te_c.Name}_class_dispatchers
};
  .end if
.end if
