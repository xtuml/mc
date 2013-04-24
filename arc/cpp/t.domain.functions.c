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
 * File:  ${te_c.functions_file}.${te_file.src_file_ext}"
 *
 * UML Domain Functions (Synchronous Services) and Port Operations
 *
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

.if ( not_empty te_sync )
#include "${te_file.ilb}.${te_file.hdr_file_ext}"
.end if
${action_includes.body}
${definition.body}
.//
