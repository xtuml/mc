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

.assign include_file_name_def = "$u{bridgeExtendPrefix.result}_$u{te_file.hdr_file_ext}"
#ifndef ${include_file_name_def}
#define ${include_file_name_def}

${te_target.c2cplusplus_linkage_begin}

${includes.body}
${ee_body.body}\

${te_target.c2cplusplus_linkage_end}

#endif   /* $u{include_file_name} */
