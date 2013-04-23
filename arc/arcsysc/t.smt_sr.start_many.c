.//============================================================================
.// $RCSfile: t.smt_sr.start_many.c,v $
.//
.// Notice:
.// (C) Copyright 1998-2012 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.assign b = b + "${ws}${te_select_related.te_classGeneratedName} * ${te_lnk.left};\n"
.assign b = b + "${ws}${te_set.scope}${te_set.iterator_class_name} start_many_iterator;\n"
.assign b = b + "${ws}${te_set.iterator_reset}( &start_many_iterator, ${te_select_related.start_var} );\n"
.if ( "any" == te_select_related.multiplicity )
  .assign b = b + "${ws}while ( ( 0 == ${te_select_related.result_var} ) && ( 0 != ( ${te_lnk.left} = (${te_select_related.te_classGeneratedName} *) ${te_set.module}${te_set.iterator_next}( &start_many_iterator ) ) ) ) {\n"
.else
  .assign b = b + "${ws}while ( 0 != ( ${te_lnk.left} = (${te_select_related.te_classGeneratedName} *) ${te_set.module}${te_set.iterator_next}( &start_many_iterator ) ) ) {\n"
.end if
