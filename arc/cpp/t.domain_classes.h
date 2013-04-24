.//============================================================================
.// $RCSfile: t.domain_classes.h,v $
.//
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
/*----------------------------------------------------------------------------
 * File:  ${te_c.classes_file}.${te_file.hdr_file_ext}
 *
 * This file defines the object type identification numbers for all objects
 * in the following domain:
 *
 * Component:  ${te_c.Name}
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#ifndef $u{te_c.classes_file}_$u{te_file.hdr_file_ext}
#define $u{te_c.classes_file}_$u{te_file.hdr_file_ext}

${te_target.c2cplusplus_linkage_begin}

#define ${class_numbers_list.max_models} ${number_of_state_machines}

/* Define constants to map to class numbers.  */
${class_numbers}#define ${class_numbers_list.max} ${class_number_count}

/* Provide a map of classes to task numbers.  */
#define ${class_numbers_list.task_numbers} ${task_numbers}

#define ${class_info_list.result}${class_info_init}

#define ${te_c.Name}_class_dispatchers${class_dispatchers}
.if ( te_sys.InstanceLoading )

#define ${te_c.Name}_instance_loaders${instance_loaders}

#define ${te_c.Name}_batch_relaters${batch_relaters}
.end if

/* Provide definitions of the shapes of the class structures.  */
${class_typedefs}

/* union of class declarations so we may derive largest class size */
#define ${class_numbers_list.union} \\
${class_union}\

#include "${te_c.datatypes_file}.${te_file.hdr_file_ext}"
${function_include}
${ee_includes}
${class_includes}

${event_unions.body}\

${te_target.c2cplusplus_linkage_end}

#endif  /* $u{te_c.classes_file}_$u{te_file.hdr_file_ext} */
.//
