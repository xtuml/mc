.//============================================================================
.// $RCSfile: t.component.interfaces.h,v $
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
.//
.//
/*----------------------------------------------------------------------------
 * File:  ${te_file.interfaces}.${te_file.hdr_file_ext}"
 *
 * UML Port Messages (Interface Operations and Signals)
 *
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#ifndef $u{te_file.interfaces}_$u{te_file.hdr_file_ext}
#define $u{te_file.interfaces}_$u{te_file.hdr_file_ext}

${te_target.c2cplusplus_linkage_begin}
#include "${te_file.types}.${te_file.hdr_file_ext}"
// messages for interface reference (provision)
class ${te_po.InterfaceName}_provision : virtual public sc_interface {
  public:
${interface_provision_declarations}\
};

// messages for interface reference (requirement)
class ${te_po.InterfaceName}_requirement : virtual public sc_interface {
  public:
${interface_requirement_declarations}\
};

#endif
.//
