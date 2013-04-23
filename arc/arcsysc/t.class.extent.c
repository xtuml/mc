.//============================================================================
.// $RCSfile: t.class.extent.c,v $
.//
.// Notice:
.// (C) Copyright 1998-2012 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
.// Pre-allocated object instance storage pool
${fixed_extent_begin}\
.if ( te_class.PEIsDefinedInData )
${peis.assset}\
.end if
static ${te_set.scope}${te_set.element_type} ${extent_info.container_name}[ ${extent_info.max_size_name} ];
.// If PEI, then allow instance pool to be visible from other classes.
.if ( not te_class.PEIsDefinedInData )
static \
.end if
${te_class.GeneratedName} ${extent_info.obj_pool_var_name}[ ${extent_info.max_size_name} ]\
.if ( te_class.PEIsDefinedInData )
 = {
${peis.body}\
};
.else
;
.end if
${fixed_extent_end}\
.//
.// The following initialization of PEI count is a little nasty.
.// We will assign the active extent pointer to the count just for bringup.
.//
${extent_info.type} ${extent_info.extent} = {
  {${pei_counter}}, ${extent_info.extent_init}, &${extent_info.container_name}[ 0 ],
  (${te_instance.handle}) &${extent_info.obj_pool_var_name},
  sizeof( ${te_class.GeneratedName} ), ${state_init}, ${extent_info.max_size_name}${persistent_extent_attrs.body}
  };
.//
