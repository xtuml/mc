.//============================================================================
.// Notice:
.// (C) Copyright 1998-2010 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
/*----------------------------------------------------------------------------
 * File:  ${te_c.init_file}.${te_file.src_file_ext}
 *
 * Initialization services for the following domain:
 * Component:  ${te_c.Name}
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#include "${te_file.types}.${te_file.hdr_file_ext}"
#include "${te_c.classes_file}.${te_file.hdr_file_ext}"
#include "${te_c.init_file}.${te_file.hdr_file_ext}"
.if ( not_empty te_syncs )
#include "${te_c.functions_file}.${te_file.hdr_file_ext}"
.end if

/* xtUML class info (collections, sizes, etc.) */
${class_info.class_info_type} * const ${domain_class_info.array_name}[ ${max_class_number.max} ] = {
  ${domain_class_info.result}
};

.if ( ( not_empty sm_ism ) or ( not_empty sm_asm ) )
/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const ${class_dispatch_array.element_type} ${class_dispatch_array.result}[ ${class_numbers.max_models} ] = {
  ${te_c.Name}_class_dispatchers
};
.end if

void ${te_c.Name}_dom_init()
{
${init_segment.body}
}
.//
