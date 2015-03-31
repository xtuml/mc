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
.if ( te_sys.InstanceLoading )
extern void mark_pass( c_t * );
#define T_T(x) ( 0 == x ) ? s : strcat(s,x)
.end if
/*
 * UML Domain Functions (Synchronous Services)
 */
.if ( not_empty ilb_te_sync )
#include "${te_file.ilb}.${te_file.hdr_file_ext}"
.end if
${function_definitions}
.//
