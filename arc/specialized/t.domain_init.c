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
.if ( te_sys.InstanceLoading )
Escher_idf ${te_c.Name}_instance_dumpers[ ${max_class_number.max} ] = {${instance_dumpers}
};
.end if
/* xtUML class info (collections, sizes, etc.) */
${dci.class_info_type} * const ${domain_class_info.array_name}[ ${max_class_number.max} ] = {${class_info_init}
};
#endif

.if ( not_empty te_sm )
/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const ${class_dispatch_array.element_type} ${class_dispatch_array.result}[ ${class_numbers.max_models} ] = {
  ${te_c.Name}_class_dispatchers
};
.end if

void ${te_c.Name}_execute_initialization()
{
${init_segment}\
}
.//
