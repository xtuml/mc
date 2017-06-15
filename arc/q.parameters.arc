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
  .param inst_ref te_aba
  .param inst_ref_set te_parms
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
  .select any te_chanspec from instances of TE_CHANSPEC
  .select any te_marshalling from instances of TE_MSHL
  .select any te_data_mbr related by raw_data_dt->S_DT[R2021]->S_SDT[R17]->S_MBR[R44]->TE_MBR[R2047] where ( selected.Name == te_chanspec.data_mbr )
  .select any te_size_mbr related by raw_data_dt->S_DT[R2021]->S_SDT[R17]->S_MBR[R44]->TE_MBR[R2047] where ( selected.Name == te_chanspec.size_mbr )
  .select any int_te_dt from instances of TE_DT where ( selected.Name == "integer" )
  .select one te_mact related by te_aba->TE_MACT[R2010]
  .assign num_parameters = ( cardinality te_parms ) + 2
  // Create parameter structure
  u1_t marshalled_data[${te_mact.marshalled_message_len}];
  ${te_string.memset}( marshalled_data, 0, ${te_mact.marshalled_message_len} );
  ${raw_data_dt.ExtName} parameters;
  parameters.${te_data_mbr.GeneratedName} = marshalled_data;
  parameters.${te_size_mbr.GeneratedName} = 0;

  // Package message name
  ${te_marshalling.marshall}( parameters.${te_data_mbr.GeneratedName}, "${te_mact.MessageName}", ${te_string.strlen}("${te_mact.MessageName}") );
  parameters.${te_size_mbr.GeneratedName} += 8 + ${te_string.strlen}("${te_mact.MessageName}");

  // Package return value
  ${te_marshalling.marshall}( parameters.${te_data_mbr.GeneratedName}, "", 0 );
  parameters.${te_size_mbr.GeneratedName} += 4;

  .while ( not_empty te_parm )
    .select one te_dt related by te_parm->TE_DT[R2049]
    .assign size_of = "sizeof"
    .if ( te_dt.Name == "string" )
      .assign size_of = te_string.strlen
    .end if
    .assign data_pointer = "&" + te_parm.GeneratedName
    .if ( ( "" != te_parm.array_spec ) or ( 0 != te_parm.By_Ref ) )
      .assign data_pointer = te_parm.GeneratedName
    .end if
    .assign dereference = ""
    .if ( 0 != te_parm.By_Ref )
      .assign dereference = "*"
    .end if
    .if  ( "A0xtumlsret" != te_parm.GeneratedName )
  // Package parameter: ${te_parm.Name}
  ${te_marshalling.marshall}( parameters.${te_data_mbr.GeneratedName}, ((void*)${data_pointer}), ${size_of}(${dereference}${te_parm.GeneratedName}) );
  parameters.${te_size_mbr.GeneratedName} += 4 + ${size_of}(${dereference}${te_parm.GeneratedName});

    .end if
    .select one te_parm related by te_parm->TE_PARM[R2041.'succeeds']
  .end while
.end function
.//
.// Unpack structured parameters
.function te_parm_UnpackStructuredParameterInvocation
  .param inst_ref base_te_parm
  .param inst_ref_set te_parms
  .assign attr_invo = ""
  .assign attr_repack = ""
  .select any te_marshalling from instances of TE_MSHL
  .select any te_chanspec from instances of TE_CHANSPEC
  .select any te_string from instances of TE_STRING
  .select any te_data_mbr related by base_te_parm->TE_DT[R2049]->S_DT[R2021]->S_SDT[R17]->S_MBR[R44]->TE_MBR[R2047] where ( selected.Name == te_chanspec.data_mbr )
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
  .assign counter = 2
  .assign param_delim = ""
  .while ( not_empty te_parm )
    .select one te_dt related by te_parm->TE_DT[R2049]
    .assign parm_invo = "data_" + te_parm.GeneratedName
    .if ( 0 != te_parm.By_Ref )
      .assign parm_invo = "&" + parm_invo
    .end if
    .assign data_pointer = "data_" + te_parm.GeneratedName
    .if ( "" == te_parm.array_spec )
      .assign data_pointer = "&" + data_pointer
    .end if
    .assign size = ( "sizeof(" + te_dt.ExtName ) + ")"
    .assign new_size = size
    .if ( "string" == te_dt.Name )
      .assign size = te_string.max_string_length
      .assign new_size = te_string.strlen + "(" + data_pointer + ")"
    .end if;
    ${te_dt.ExtName} data_${te_parm.GeneratedName}${te_parm.array_spec}; \
${te_string.memset}( ${data_pointer}, 0, ${size} ); \
    .if ( "A0xtumlsret" != te_parm.GeneratedName )
${te_marshalling.unmarshall}( ${base_te_parm.GeneratedName}.${te_data_mbr.GeneratedName}, ${data_pointer}, ${counter} );
      .select one c_pp related by te_parm->C_PP[R2048]
      .if ( not_empty c_pp )
        .if ( 0 != c_pp.By_Ref )
          .assign attr_repack = attr_repack + "    ${te_marshalling.remarshall}( ${base_te_parm.GeneratedName}.${te_data_mbr.GeneratedName}, ${data_pointer}, ${new_size}, ${counter} );\n"
        .end if
      .end if
      .assign counter = counter + 1
    .else

    .end if;
    .assign attr_invo = ( attr_invo + param_delim ) + parm_invo
    .assign param_delim = ", "
    .select one te_parm related by te_parm->TE_PARM[R2041.'succeeds']
  .end while
.end function
.// Unpack by reference structured parameters and assign them
.function te_parm_ByRefStructuredParameters
  .param inst_ref_set te_parms
  .param inst_ref raw_data_dt
  .select any te_string from instances of TE_STRING
  .select any te_marshalling from instances of TE_MSHL
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
  .assign counter = 2
  .while ( not_empty te_parm )
    .if ( "A0xtumlsret" != te_parm.GeneratedName )
      .select any te_data_mbr related by raw_data_dt->S_DT[R2021]->S_SDT[R17]->S_MBR[R44]->TE_MBR[R2047] where ( selected.Name == "data" )
      .select any te_size_mbr related by raw_data_dt->S_DT[R2021]->S_SDT[R17]->S_MBR[R44]->TE_MBR[R2047] where ( selected.Name == "size" )
      .select one c_pp related by te_parm->C_PP[R2048]
      .select one te_dt related by te_parm->TE_DT[R2049]
      .if ( not_empty c_pp )
        .if ( 0 != c_pp.By_Ref )
          .assign size = ( "sizeof(" + te_dt.ExtName ) + ")"
          .if ( "string" == te_dt.Name )
            .assign size = te_string.max_string_length
          .end if;
  ${te_string.memset}( ${te_parm.GeneratedName}, 0, ${size} ); \
${te_marshalling.unmarshall}( parameters.${te_data_mbr.GeneratedName}, ${te_parm.GeneratedName}, ${counter} );
        .end if
      .end if
      .assign counter = counter + 1
    .end if
    .select one te_parm related by te_parm->TE_PARM[R2041.'succeeds']
  .end while
.end function
