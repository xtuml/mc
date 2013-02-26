.//============================================================================
.// $RCSfile: q.parameters.arc,v $
.//
.// Description:
.// Here we deal with parameters.  The declaration, definition and invocation
.// renderings are built.
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
.function te_parm_RenderParameters
  .param inst_ref_set te_parms
  .param inst_ref te_aba
  .// Consider that we may have additional parameters (like for passing "self").
  .assign defn = ""
  .assign decl = " void"
  .assign invo = ""
  .assign stru = ""
  .assign parameter_trace = ""
  .assign string_format = ""
  .assign assn = ""
  .assign assnbase = ""
  .assign param_delimiter = " "
  .assign format_delimiter = ""
  .assign item_number = 0
  .assign item_count = cardinality te_parms
  .if ( 0 < item_count )
    .invoke SortSetAlphabeticallyByNameAttr( te_parms )
    .select any previous_te_parm from instances of TE_PARM where ( false )
    .assign decl = ""
    .while ( item_number < item_count )
      .for each te_parm in te_parms
        .if ( te_parm.Order == item_number )
          .// Link te_parms together in sequence.
          .if ( not_empty previous_te_parm )
            .// relate previous_te_parm to te_parm across R2041.'succeeds';
            .assign previous_te_parm.nextID = te_parm.ID
            .// end relate
          .end if
          .assign previous_te_parm = te_parm
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
            .if ( "" == te_parm.array_spec )
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
            .assign parameter_trace = ( parameter_trace + ", " ) + te_parm.GeneratedName
            .assign string_format = ( string_format + format_delimiter ) + te_dt.string_format
          .else
            .assign string_format = ( string_format + format_delimiter ) + "[]"
          .end if
          .invoke s = t_oal_smt_event_parameters( "", te_parm.Name, te_parm.GeneratedName, te_dt.Core_Typ, "  " )
          .assign assn = assn + s.result
          .if ( "A00portindex" != "${te_parm.Name}" )
            .assign assnbase = assnbase + s.result
          .end if
          .assign param_delimiter = ", "
          .assign format_delimiter = ","
          .break for
        .end if
      .end for
      .assign item_number = item_number + 1
    .end while
  .end if
  .assign te_aba.ParameterDefinition = defn + ""
  .assign te_aba.ParameterDeclaration = decl + " "
  .assign te_aba.ParameterInvocation = invo
  .assign te_aba.ParameterStructure = stru
  .assign te_aba.ParameterTrace = parameter_trace
  .assign te_aba.ParameterFormat = string_format
  .assign te_aba.ParameterAssignment = assn
  .assign te_aba.ParameterAssignmentBase = assnbase
.end function
.//
