.//============================================================================
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
.if ( "SystemC" == te_thread.flavor )
    SC_THREAD( ${te_sync.intraface_method} );
.else
    ${te_sync.intraface_method}();
.end if
.//
