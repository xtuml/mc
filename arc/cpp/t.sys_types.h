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
.//
/*----------------------------------------------------------------------------
 * File:  ${te_file.types}.${te_file.hdr_file_ext}
 *
 * ${te_copyright.body}
 *
${system_parameters.s}\
 *--------------------------------------------------------------------------*/

#ifndef ${te_prefix.define_usw}$u{te_file.types}_$u{te_file.hdr_file_ext}
#define ${te_prefix.define_usw}$u{te_file.types}_$u{te_file.hdr_file_ext}
${te_target.c2cplusplus_linkage_begin}
#ifndef _MSC_VER
#define boolean bool
#endif

${system_parameters.body}

/*
 * Core types with byte widths defined for MISRA-C compliance.
 */
typedef          char    c_t;
typedef unsigned char   uc_t;
typedef          int     i_t;
typedef unsigned int    ui_t;
typedef          long    l_t;
typedef unsigned long   ul_t;
typedef   signed char   s1_t;
typedef unsigned char   u1_t;
typedef   signed short  s2_t;
typedef unsigned short  u2_t;
typedef   signed long   s4_t;
typedef unsigned long   u4_t;
typedef          float  r4_t;
typedef          double r8_t;

/*
 * These are some of the fundamental types used universally.
 */
typedef ${te_typemap.domain_number_type} ${te_typemap.domain_number_name};
typedef ${te_typemap.object_number_type} ${te_typemap.object_number_name};
typedef ${te_typemap.object_size_type} ${te_typemap.object_size_name};
typedef ${te_typemap.instance_index_type} ${te_typemap.instance_index_name};
typedef ${te_typemap.state_number_type} ${te_typemap.state_number_name};
typedef ${te_typemap.event_number_type} ${te_typemap.event_number_name};
typedef ${te_typemap.event_flags_type} ${te_typemap.event_flags_name};
typedef ${te_typemap.event_priority_type} ${te_typemap.event_priority_name};
typedef ${te_typemap.SEM_cell_type} ${te_typemap.SEM_cell_name};
typedef ${instid.instid_typedef} ${instid.instid_type};
.if ( persistence_needed.result )
typedef ${link_type_type} ${link_type_name};
.end if

typedef struct {
  ${te_typemap.state_number_name} ${te_instance.current_state};
${inst_id_in_handle}\
} ${te_instance.base};
typedef ${te_instance.base} * ${te_instance.handle};
typedef ${te_instance.handle} ${te_prefix.type}UniqueID_t;

/* Return code type for dispatch of a polymorphic event (see ${te_file.events}.${te_file.hdr_file_ext}).  */
typedef ${te_typemap.poly_return_type} ${te_typemap.poly_return_name};

/* Interleaved bridge node base type.  */
typedef struct ${te_prefix.type}ilb_s ${te_prefix.type}ilb_t;
typedef void ( * ${te_prefix.type}ilb_fp_t )( ${te_prefix.type}ilb_t * );
struct ${te_prefix.type}ilb_s { ${te_prefix.type}ilb_fp_t f; };

/*
 * Time and date core types.
 */
typedef l_t  ${te_prefix.type}Date_t;
typedef u4_t ${te_prefix.type}TimeStamp_t;
typedef u4_t ${te_prefix.type}uSec_t;

#define DomainMultiplier 1

/*
 * Allow for compilerisms (such as 8051 Tasking) to use memory model
 * hints to the compiler.
 */
#ifndef _reentrant
#define _reentrant
#endif

.if ( te_thread.flavor != "Nucleus" )
/*
 * Note we include stdio.h for printf.  Otherwise, it is not needed.
 */
#include <stdio.h>
.end if
#include "${te_file.sets}.${te_file.hdr_file_ext}"
#include "${te_file.callout}.${te_file.hdr_file_ext}"
#include "${te_file.trace}.${te_file.hdr_file_ext}"
#include "${te_file.factory}.${te_file.hdr_file_ext}"
#include "${te_file.events}.${te_file.hdr_file_ext}"
.if( te_sys.AUTOSAR )
#include "Rte_Type.${te_file.hdr_file_ext}"
.end if

${enumeration_info}

${structured_data_types}

${domain_ids.body}

${te_target.c2cplusplus_linkage_end}
#endif  /* ${te_prefix.define_usw}$u{te_file.types}_$u{te_file.hdr_file_ext} */
.//
