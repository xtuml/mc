.//============================================================================
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
 * File:  ${te_c.datatypes_file}.${te_file.hdr_file_ext}
 *
 * Enumerated data types in the application analysis of component:
 * Component:  ${te_c.Name}
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#ifndef $u{te_c.datatypes_file}_$u{te_file.hdr_file_ext}
#define $u{te_c.datatypes_file}_$u{te_file.hdr_file_ext}
${te_target.c2cplusplus_linkage_begin}

${enumeration_info}
${structured_data_types}
.if ( not_empty te_c )
#include "${te_c.port_file}.${te_file.hdr_file_ext}"
.end if

${te_target.c2cplusplus_linkage_end}
#endif  /* $u{te_c.datatypes_file}_$u{te_file.hdr_file_ext} */
.//
