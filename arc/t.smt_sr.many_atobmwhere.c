.//============================================================================
.// $RCSfile: t.smt_sr.many_atobmwhere.c,v $
.//
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//-- 031:20140515 Modified Start (nomura)
.//-- 027:20140417 Modified Start (nomura)
${ws}${te_set.module}${te_set.clear}( ${te_select_related.result_var}, &pG_${te_class.GeneratedName}_extent );
.//-- 027:20140417 Modified End (nomura)
.//-- 031:20140515 Modified End (nomura)
${ws}{${te_lnk.te_classGeneratedName} * selected;
${ws}${te_set.scope}${te_set.iterator_class_name} ${te_lnk.iterator};
${ws}${te_set.iterator_reset}( &${te_lnk.iterator}, &${te_lnk.left}->${te_lnk.linkage} );
${ws}while ( 0 != ( selected = (${te_lnk.te_classGeneratedName} *) ${te_set.module}${te_set.iterator_next}( &${te_lnk.iterator} ) ) ) {
${ws}  if ( ${te_select_related.where_clause} ) {
${ws}    if ( ! ${te_set.module}${te_set.contains}( (${te_set.scope}${te_set.base_class} *) ${te_select_related.result_var}, selected ) ) {
${ws}      ${te_set.module}${te_set.insert_element}( (${te_set.scope}${te_set.base_class} *) ${te_select_related.result_var}, selected );
${ws}}}}}
