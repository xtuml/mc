.//============================================================================
.// Here we deal with parameters.  The declaration, definition and invocation
.// renderings are built.
.//============================================================================
.//
.//
.function te_parm_RenderParameters
  .param inst_ref_set te_parms
  .param inst_ref te_aba
  .// Consider that we may have additional parameters (like for passing "self").
  .assign defn = ""
  .assign decl = ""
  .if ( empty te_parms )
    .assign decl = " void"
  .end if
  .assign invo = ""
  .assign stru = ""
  .assign parameter_trace = ""
  .assign string_format = ""
  .assign assn = ""
  .assign assnbase = ""
  .assign param_delimiter = " "
  .assign format_delimiter = ""
  .assign Order = 0
  .// Be sure we have the first parameter.
  .select any te_parm from instances of TE_PARM where (false)
  .for each te_parm in te_parms
    .break for
  .end for
  .while ( not_empty te_parm )
    .select one prev_te_parm related by te_parm->TE_PARM[R2041.'precedes']
    .if ( empty prev_te_parm )
      .break while
    .else
      .assign te_parm = prev_te_parm
    .end if
  .end while
  .while ( not_empty te_parm )
    .assign te_parm.Order = Order
    .assign Order = Order + 1
    .select one te_dt related by te_parm->TE_DT[R2049]
    .assign te_dt.Included = true
    .assign defn = defn + param_delimiter
    .assign decl = decl + param_delimiter
    .assign param_qual = ""
    .if ( 0 != te_parm.By_Ref )
      .assign param_qual = param_qual + " *"
    .else
      .// CDS const correctness goes here
      .// Arrays in C are always by ref, so add const to scalars only.
      .if ( ( "" == te_parm.array_spec ) and ( ( 1 <= te_dt.Core_Typ ) and ( te_dt.Core_Typ <= 3 ) ) )
        .assign defn = defn + "const "
        .assign decl = decl + "const "
      .end if
    .end if
    .assign defn = ( ( defn + te_dt.ExtName ) + ( param_qual + " " ) ) + ( te_parm.GeneratedName + te_parm.array_spec )
    .assign decl = ( ( decl + te_dt.ExtName ) + ( param_qual + te_parm.array_spec ) )
    .assign invo = ( invo + param_delimiter ) + te_parm.GeneratedName
    .assign stru = ( ( stru + te_dt.ExtName ) + ( param_qual + " " ) ) + ( ( te_parm.GeneratedName + te_parm.array_spec ) + ";\n" )
    .if ( ( "" != te_dt.string_format ) and ( "" == te_parm.array_spec ) )
      .// Do not trace structures or arrays.
      .assign dereference = ""
      .if ( 0 != te_parm.By_Ref )
        .assign dereference = "*"
      .end if
      .assign parameter_trace = ( parameter_trace + ", " ) + ( dereference + te_parm.GeneratedName )
      .assign string_format = ( string_format + format_delimiter ) + te_dt.string_format
    .else
      .assign string_format = ( string_format + format_delimiter ) + "[]"
    .end if
    .invoke r = t_oal_smt_event_parameters( "", te_parm.Name, te_parm.GeneratedName, te_dt.Core_Typ, "  " )
    .assign assn = assn + r.result
    .if ( ( "A00portindex" != te_parm.Name ) and ( "A0xtumlsret" != te_parm.Name ) )
      .assign assnbase = assnbase + r.result
    .end if
    .assign param_delimiter = ", "
    .assign format_delimiter = ","
    .select one te_parm related by te_parm->TE_PARM[R2041.'succeeds']
  .end while
  .if ( "" != defn )
    .assign defn = defn + " "
  .end if
  .assign te_aba.ParameterDefinition = defn
  .assign te_aba.ParameterDeclaration = decl + " "
  .assign te_aba.ParameterInvocation = invo
  .assign te_aba.ParameterStructure = stru
  .assign te_aba.ParameterTrace = parameter_trace
  .assign te_aba.ParameterFormat = string_format
  .assign te_aba.ParameterAssignment = assn
  .assign te_aba.ParameterAssignmentBase = assnbase
.end function
.//
.// Build structured parameter invocation
.function te_parm_BuildStructuredParameterInvocation
  .// TODO-LPS check parameter overflow
  .param inst_ref_set te_parms
  .param inst_ref te_aba
  .param inst_ref raw_data_dt
  .select any te_string from instances of TE_STRING
  .select any te_file from instances of TE_FILE
  .// Be sure we have the first parameter.
  .select any te_parm from instances of TE_PARM where (false)
  .for each te_parm in te_parms
    .break for
  .end for
  .while ( not_empty te_parm )
    .select one prev_te_parm related by te_parm->TE_PARM[R2041.'precedes']
    .if ( empty prev_te_parm )
      .break while
    .else
      .assign te_parm = prev_te_parm
    .end if
  .end while
  // Create parameter structure
  ${raw_data_dt.ExtName} params_${te_aba.GeneratedName};
  ${te_string.memset}( (void*)&params_${te_aba.GeneratedName}, 0, sizeof(${raw_data_dt.ExtName}) );

  .assign counter = 0
  .while ( not_empty te_parm )
  // Package ${te_parm.Name}
    .select one te_dt related by te_parm->TE_DT[R2049]
    .select any te_data_mbr related by raw_data_dt->S_DT[R2021]->S_SDT[R17]->S_MBR[R44]->TE_MBR[R2047] where ( selected.Name == "data" )
    .select any te_size_mbr related by raw_data_dt->S_DT[R2021]->S_SDT[R17]->S_MBR[R44]->TE_MBR[R2047] where ( selected.Name == "size" )
    .assign size_of = "sizeof"
    .if ( te_dt.Name == "string" )
      .assign size_of = te_string.strlen
    .end if
    .include "${te_file.arc_path}/t.component.message.param.c"
    .select one te_parm related by te_parm->TE_PARM[R2041.'succeeds']
    .assign counter = counter + 1

  .end while
.end function
.//
.// Unpack structured parameters
.function te_parm_UnpackStructuredParameterInvocation
  .// TODO-LPS check parameter overflow
  .param inst_ref base_te_parm
  .param inst_ref_set te_parms
  .// Be sure we have the first parameter.
  .select any te_parm from instances of TE_PARM where (false)
  .for each te_parm in te_parms
    .break for
  .end for
  .while ( not_empty te_parm )
    .select one prev_te_parm related by te_parm->TE_PARM[R2041.'precedes']
    .if ( empty prev_te_parm )
      .break while
    .else
      .assign te_parm = prev_te_parm
    .end if
  .end while
  .assign counter = 0
  .assign param_delim = ""
  .while ( not_empty te_parm )
    .select one te_dt related by te_parm->TE_DT[R2049]
    .select any te_data_mbr related by base_te_parm->TE_DT[R2049]->S_DT[R2021]->S_SDT[R17]->S_MBR[R44]->TE_MBR[R2047] where ( selected.Name == "data" )
    .assign param_qual = ""
    .if ( "" != te_parm.array_spec )
      .assign param_qual = "*"
    .end if
${param_delim}(${te_dt.ExtName}${param_qual})${base_te_parm.GeneratedName}.${te_data_mbr.GeneratedName}[${counter}]\
    .assign param_delim = ", "
    .select one te_parm related by te_parm->TE_PARM[R2041.'succeeds']
    .assign counter = counter + 1
  .end while
.end function
.//
