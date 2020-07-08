.//============================================================================
.// Component interfaces top level query.
.//============================================================================
.//
.//
.select any te_file from instances of TE_FILE
.select any te_sys from instances of TE_SYS
.assign pure_virtual = " = 0"
.assign interface_provision_declarations = ""
.assign interface_requirement_declarations = ""
.assign interface_channel_declarations = ""
.assign TLM_message_order = ""
.assign register_offset  = ""
.assign file_epilogue = false
.include "${te_file.arc_path}/t.component.interfaces.h"
.select many c_is from instances of C_I
.for each c_i in c_is
  .select any te_po related by c_i->TE_PO[R2007] where ( selected.Provision and selected.polymorphic )
  .if ( empty te_po )
    .select any te_po related by c_i->TE_PO[R2007] where ( selected.Provision )
  .end if
  .select many te_macts related by te_po->TE_MACT[R2006] where ( selected.Order == 0 )
  .invoke decs = TE_MACT_CreateDeclarations( te_macts, true, true )
  .assign interface_provision_declarations = decs.body
  .select any te_po related by c_i->TE_PO[R2007] where ( ( not selected.Provision ) and selected.polymorphic )
  .if ( empty te_po )
    .select any te_po related by c_i->TE_PO[R2007] where ( not selected.Provision )
  .end if
  .select many te_macts related by te_po->TE_MACT[R2006] where ( selected.Order == 0 )
  .invoke decs = TE_MACT_CreateDeclarations( te_macts, false, true )
  .assign interface_requirement_declarations = decs.body
  .if ( te_sys.SystemCPortsType == "BitLevelSignals" )
    .select any te_po related by c_i->TE_PO[R2007]
    .invoke decs = TE_MACT_CreateDeclarations( te_macts, false, false )
    .assign interface_channel_declarations = decs.body
  .end if  
  .include "${te_file.arc_path}/t.component.interface.h"
  .if ( te_sys.SystemCPortsType == "TLM" )
    .select any te_mact related by c_i->TE_PO[R2007]->TE_MACT[R2006] where ( selected.Order == 0 )
    .invoke msg_order = TE_MACT_GenerateTLMMessageOrder ( te_mact )
    .assign TLM_message_order = TLM_message_order + msg_order.message_order
    .//
    .select any te_po related by c_i->TE_PO[R2007] where ( not selected.Provision )
    .if ( not_empty te_po )
      .invoke reg_offset = TE_MACT_GenerateRegDefs( c_i, te_po )
      .assign register_offset = register_offset + reg_offset.register_offset
    .end if
    .select any te_po related by c_i->TE_PO[R2007] where ( selected.Provision )
    .if ( not_empty te_po )
      .invoke reg_offset = TE_MACT_GenerateRegDefs( c_i, te_po )
      .assign register_offset = register_offset + reg_offset.register_offset
    .end if
  .end if
.end for
.assign file_epilogue = true
.include "${te_file.arc_path}/t.component.interfaces.h"
.emit to file "${te_file.system_include_path}/${te_file.interfaces}.${te_file.hdr_file_ext}"
.//
.if ( te_sys.SystemCPortsType == "TLM" )
  .include "${te_file.arc_path}/t.component.regdefs.h"
  .emit to file "${te_file.system_include_path}/${te_file.registers}.${te_file.hdr_file_ext}"
.end if
.//
