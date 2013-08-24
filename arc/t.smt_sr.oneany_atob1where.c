.//============================================================================
.// $RCSfile: t.smt_sr.oneany_atob1where.c,v $
.//
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
${ws}{${te_select_related.result_var} = 0;
${ws}{${te_class.GeneratedName} * selected = ( 0 != ${te_lnk.left} ) ? ${te_lnk.left}->${te_lnk.linkage} : 0;
${ws}if ( ( 0 != selected ) && ${te_select_related.where_clause} ) {
${ws}  ${te_select_related.result_var} = selected;
${ws}}}}
