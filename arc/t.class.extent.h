.//============================================================================
.// $RCSfile: t.class.extent.h,v $
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

#define ${te_class.GeneratedName}_MAX_EXTENT_SIZE \
.if ( 0 == te_class.MaxExtentSize )
1
.else
${te_class.MaxExtentSize}
.end if
extern ${te_set.scope}${te_extent.type} ${extent};
    .// If PEI, then allow instance pool to be visible from other classes.
.if ( te_class.PEIsDefinedInData )
extern ${te_class.GeneratedName} ${te_class.GeneratedName}_instances[ ${te_class.GeneratedName}_MAX_EXTENT_SIZE ];
.end if
.//
