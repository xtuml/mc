.//============================================================================
.// $RCSfile: t.smt_sr.oneany_astob1where.c,v $
.//
.// Notice:
.// (C) Copyright 1998-2012 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.assign b = b + "${ws}${te_select_related.result_var} = 0;\n"
.assign b = b + "${ws}{${te_select_related.te_classGeneratedName} * ${te_lnk.left};\n"
.assign b = b + "${ws}${te_set.scope}${te_set.iterator_class_name} start_many_iterator;\n"
.assign b = b + "${ws}${te_set.iterator_reset}( &start_many_iterator, ${te_select_related.start_var} );\n"
.assign b = b + "${ws}while ( 0 != ( ${te_lnk.left} = (${te_select_related.te_classGeneratedName} *) ${te_set.module}${te_set.iterator_next}( &start_many_iterator ) ) ) {\n"
.assign b = b + "${ws}  ${te_lnk.te_classGeneratedName} * selected = ${te_lnk.left}->${te_lnk.linkage};\n"
.assign b = b + "${ws}  if ( ( 0 != selected ) && ${te_select_related.where_clause} ) {\n"
.assign b = b + ( "    " + subtypecheck )
.assign b = b + "${ws}    ${te_select_related.result_var} = selected;\n"
.assign b = b + "${ws}    break;\n"
.assign b = b + "${ws}}}}\n"
