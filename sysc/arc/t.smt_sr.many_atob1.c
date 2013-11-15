.//============================================================================
.// $RCSfile: t.smt_sr.many_atob1.c,v $
.//
.// Notice:
.// (C) Copyright 1998-2011 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.assign b = b + "${ws}${te_set.clear}( ${te_select_related.result_var} );\n"
.assign b = b + "${ws}if ( 0 != ${te_lnk.linkage} ) {\n"
.assign b = b + "${ws}  ${te_set.insert_element}( (${te_set.base_class} *) ${te_select_related.result_var}, ${te_lnk.linkage} );\n"
.assign b = b + "${ws}}\n"
