.//============================================================================
.// $RCSfile: t.smt_sr.oneany_astob1.c,v $
.//
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
${ws}${te_select_related.result_var} = 0;
${ws}{${te_select_related.te_classGeneratedName} * ${te_lnk.left};
${ws}${te_set.scope}${te_set.iterator_class_name} start_many_iterator;
${ws}${te_set.iterator_reset}( &start_many_iterator, ${te_select_related.start_var} );
${ws}while ( 0 != ( ${te_lnk.left} = (${te_select_related.te_classGeneratedName} *) ${te_set.module}${te_set.iterator_next}( &start_many_iterator ) ) ) {
.if ( "" != subtypecheck )
  ${subtypecheck}
.end if
${ws}  ${te_select_related.result_var} = ${te_lnk.left}->${te_lnk.linkage};
${ws}  if ( 0 != ${te_select_related.result_var} ) {
${ws}    break;
${ws}}}}
