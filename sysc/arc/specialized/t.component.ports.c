.//============================================================================
.// Notice:
.// (C) Copyright 1998-2011 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
/*----------------------------------------------------------------------------
 * File:  ${te_c.port_file}.${te_file.src_file_ext}
 *
 * UML Component Port Messages
 * Component Name:                       ${te_c.Name}
 * Domain Name (if modeled internally):  ${te_c.Name}
 *
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#include "${te_file.types}.${te_file.hdr_file_ext}"
#include "${te_c.Name}.h"

${defaultBehav_functions_body.body}
${sm_implementation}
.//${port_functions.body}
