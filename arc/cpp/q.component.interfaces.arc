.//============================================================================
.// $RCSfile: q.component.interfaces.arc,v $
.//
.// Description:
.// Component interfaces top level query.
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
.assign pure_virtual = " = 0"
.assign interface_provision_declarations = ""
.assign interface_requirement_declarations = ""
.select many c_is from instances of C_I
.for each c_i in c_is
  .assign message_declarations = ""
  .select any te_file from instances of TE_FILE
  .select any te_po related by c_i->TE_PO[R2007] where ( selected.Provision )
  .select many te_macts related by te_po->TE_MACT[R2006]
  .invoke decs = TE_MACT_CreateDeclarations( te_macts, true, true )
  .assign interface_provision_declarations = decs.body
  .select any te_po related by c_i->TE_PO[R2007] where ( not selected.Provision )
  .select many te_macts related by te_po->TE_MACT[R2006]
  .invoke decs = TE_MACT_CreateDeclarations( te_macts, false, true )
  .assign interface_requirement_declarations = decs.body
  .include "${te_file.arc_path}/t.component.interfaces.h"
.end for
.emit to file "${te_file.system_include_path}/${te_file.interfaces}.${te_file.hdr_file_ext}"
.//
