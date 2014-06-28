.//============================================================================
.// $RCSfile: t.smt_sr.many_atobm.c,v $
.//
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//--031:20140515 Delete Start (nomura)
${ws}/* ${te_set.module}${te_set.clear}( ${te_select_related.result_var} ); */
.//--031:20140515 Delete End (nomura)
${ws}if ( 0 != ${te_lnk.left} ) {
${ws}  ${te_set.module}${te_set.copy}( ${te_select_related.result_var}, &${te_lnk.left}->${te_lnk.linkage} );
${ws}}
