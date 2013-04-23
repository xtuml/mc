.//============================================================================
.// Notice:
.// (C) Copyright 1998-2012 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
#if ${max_class_number.max} > 0
/* xtUML class info (collections, sizes, etc.) */
${te_set.scope}${dci.class_info_type} * const ${te_c.Name}::${domain_class_info.array_name}[ ${max_class_number.max} ] = {
  ${domain_class_info.result}
};
#endif

.if ( not_empty te_sm )
  .if ( te_thread.enabled )
${te_typemap.object_number_name} ${te_c.Name}::${class_numbers.task_list}[ ${class_numbers.max_models} ] = {
  ${class_numbers.task_numbers}
};
  .end if

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
${class_dispatch_array.element_type} ${te_c.Name}::${class_dispatch_array.result}[ ${class_numbers.max_models} ] = {
  ${te_c.Name}_class_dispatchers
};
.end if
