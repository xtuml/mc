.//============================================================================
.// $RCSfile: t.ee.h,v $
.//
.// Description:
.// External Entity bridge process skeleton generator.
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
.//
/*----------------------------------------------------------------------------
 * File:  ${te_ee.file}.${te_file.hdr_file_ext}
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  ${te_ee.Name} (${te_ee.Key_Lett})
 * ${te_ee.Descrip}
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#ifndef $u{te_ee.file}_$u{te_file.hdr_file_ext}
#define $u{te_ee.file}_$u{te_file.hdr_file_ext}
${te_target.c2cplusplus_linkage_begin}

${includes.body}
${ee_body.body}\

${te_target.c2cplusplus_linkage_end}
#endif   /* $u{te_ee.file}_$u{te_file.hdr_file_ext} */
