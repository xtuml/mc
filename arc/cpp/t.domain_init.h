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
 * File:  ${te_c.init_file}.${te_file.hdr_file_ext}
 *
 * Initialization services for the following domain:
 * Component:  ${te_c.Name}
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#ifndef $u{te_c.init_file}_$u{te_file.hdr_file_ext}
#define $u{te_c.init_file}_$u{te_file.hdr_file_ext}
${te_target.c2cplusplus_linkage_begin}

extern ${class_info.class_info_type} * const ${domain_class_info.array_name}[];
.if ( ( not_empty sm_ism ) or ( not_empty sm_asm ) )
extern const ${class_dispatch_array.element_type} ${class_dispatch_array.result}[];
.end if
extern void ${te_c.Name}_dom_init( void );

${te_target.c2cplusplus_linkage_end}
#endif  /* $u{te_c.init_file}_$u{te_file.hdr_file_ext} */
.//
