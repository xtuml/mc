.//============================================================================
.// $RCSfile: t.smt_sr.many_astob1where.c,v $
.//
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
${ws}${te_set.module}${te_set.clear}( ${te_select_related.result_var} );
${ws}{${te_select_related.te_classGeneratedName} * ${te_lnk.left};
${ws}${te_set.scope}${te_set.iterator_class_name} start_many_iterator;
${ws}${te_set.iterator_reset}( &start_many_iterator, ${te_select_related.start_var} );
${ws}while ( 0 != ( ${te_lnk.left} = (${te_select_related.te_classGeneratedName} *) ${te_set.module}${te_set.iterator_next}( &start_many_iterator ) ) ) {
.if ( "" != subtypecheck )
  ${subtypecheck}
.end if
${ws}  {${te_lnk.te_classGeneratedName} * selected = ${te_lnk.left}->${te_lnk.linkage};
${ws}  if ( ( 0 != selected ) && ${te_select_related.where_clause} ) {
${ws}    if ( ! ${te_set.module}${te_set.contains}( (${te_set.scope}${te_set.base_class} *) ${te_select_related.result_var}, selected ) ) {
${ws}      ${te_set.module}${te_set.insert_element}( (${te_set.scope}${te_set.base_class} *) ${te_select_related.result_var}, selected );
${ws}}}}}}
