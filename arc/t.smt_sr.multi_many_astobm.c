.//============================================================================
.// $RCSfile: t.smt_sr.multi_many_astobm.c,v $
.//
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
${ws}${te_lnk.te_classGeneratedName} * ${te_lnk.linkage};
${ws}${te_set.module}${te_set.iterator_class_name} ${te_lnk.iterator};
${ws}${te_set.iterator_reset}( &${te_lnk.iterator}, &${te_lnk.left}->${te_lnk.linkage} );
${ws}while ( 0 != ( ${te_lnk.linkage} = (${te_lnk.te_classGeneratedName} *) ${te_set.module}${te_set.iterator_next}( &${te_lnk.iterator} ) ) ) {
${ws}  if ( ! ${te_set.module}${te_set.contains}( (${te_set.scope}${te_set.base_class} *) ${te_select_related.result_var}, ${te_lnk.linkage} ) ) {
${ws}    ${te_set.module}${te_set.insert_element}( (${te_set.scope}${te_set.base_class} *) ${te_select_related.result_var}, ${te_lnk.linkage} );
${ws}}}
