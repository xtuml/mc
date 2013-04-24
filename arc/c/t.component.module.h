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
 * File:  ${te_c.module_file}.${te_file.hdr_file_ext}
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#ifndef $u{te_c.module_file}_$u{te_file.hdr_file_ext}
#define $u{te_c.module_file}_$u{te_file.hdr_file_ext}
${te_target.c2cplusplus_linkage_begin}
.if ( "" != te_c.Descrip )
/*
${te_c.Descrip}
*/
.end if

#include "${te_file.types}.${te_file.hdr_file_ext}"
${message_declarations}

${te_target.c2cplusplus_linkage_end}
#endif  /* $u{te_c.module_file}_$u{te_file.hdr_file_ext} */
.//
