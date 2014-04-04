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
.if ( "C" == te_target.language )
/*----------------------------------------------------------------------------
 * File:  ${te_c.classes_file}.${te_file.hdr_file_ext}
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  ${te_c.Name}
 *
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#ifndef $u{te_c.classes_file}_$u{te_file.hdr_file_ext}
#define $u{te_c.classes_file}_$u{te_file.hdr_file_ext}

${te_target.c2cplusplus_linkage_begin}

.invoke sysmech = fx_get_sys_mech_file_name()
#include "${sysmech.result}.${te_file.hdr_file_ext}"
.invoke domainenums = fx_get_domain_enums_file_name(te_c)
#include "${domainenums.result}.${te_file.hdr_file_ext}"


.end if
.include "${te_file.arc_path}/t.domain_init.h"

.if ( not_empty first_te_class )
#define ${te_dci.max_models} ${number_of_state_machines}
.//  .if ( "C++" == te_target.language )
    .invoke r = GetDomainTypeIDFromString( te_c.Name )
    .assign dom_id = r.result
#define ${dom_id} 0
.//  .end if
/* Define constants to map to class numbers.  */
${class_numbers}\
#define ${te_dci.max} ${class_number_count}

/* Provide a map of classes to task numbers.  */
#define ${te_dci.task_numbers} ${task_numbers}

#define ${te_c.Name}_class_dispatchers${class_dispatchers}
  .if ( te_sys.InstanceLoading )
#define ESCHER_IDDUMP_MASK 0x0fffffff
#define ${te_c.Name}_instance_loaders${instance_loaders}

#define ${te_c.Name}_batch_relaters${batch_relaters}
  .end if

/* Provide definitions of the shapes of the class structures.  */
${class_typedefs}

/* union of class declarations so we may derive largest class size */
#define ${te_dci.persist_union} \\
${class_union}\

.end if
.if ( not_empty enumeration_te_dts )
.include "${te_file.arc_path}/t.domain_datatypes.h"
.end if
.if ( "C" == te_target.language )
  .if ( not_empty te_sync )
.include "${te_file.arc_path}/t.domain.functions.h"
  .end if
.end if
${ee_includes}
${class_includes}\
${event_unions}\

.if ( "C" == te_target.language )
${te_target.c2cplusplus_linkage_end}
#endif  /* $u{te_c.classes_file}_$u{te_file.hdr_file_ext} */
.end if
