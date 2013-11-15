.//============================================================================
.// $RCSfile: t.class.extent.h,v $
.//
.// Notice:
.// (C) Copyright 1998-2011 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//

#define ${extent_info.max_size_name} ${extent_info.max_size_value}
extern ${extent_info.type} ${extent_info.extent};
    .// If PEI, then allow instance pool to be visible from other classes.
.if ( te_class.PEIsDefinedInData )
extern ${te_class.GeneratedName} ${extent_info.obj_pool_var_name}[ ${extent_info.max_size_name} ];
.end if
.//
