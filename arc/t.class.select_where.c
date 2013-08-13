.//============================================================================
.// $RCSfile: t.class.select_where.c,v $
.//
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
.//============================================================================
.// Generate a routine that encapsulates the scanning of a set for a 
.// specific instance.  The contents of this routine could be changed
.// to optimize this type of selection for speed.  As it stands here,
.// the optimization is more for space.
.//============================================================================
.//

/*
 * Scan the extent for a matching instance.
 */
${te_class.GeneratedName} *
${te_where.select_any_where}( ${param_list} )
{
  ${te_class.GeneratedName} * ${temp_ptr}; 
  ${te_set.scope}${te_set.iterator_class_name} ${iterator};
  ${te_set.iterator_reset}( &${iterator}, &${extent}.${te_extent.active} );
  while ( (${temp_ptr} = (${te_class.GeneratedName} *) ${te_set.module}${te_set.iterator_next}( &${iterator} )) != 0 ) {
    if ( ${compare_stmt} ) {
      return ${temp_ptr};
    }
  }
  return 0;
}
.//
