.//====================================================================
.//
.// $RCSfile: q.utils.arc,v $
.//
.// (c) Copyright 1998-2011 Mentor Graphics Corporation  All rights reserved.
.//
.//====================================================================
.//
.function gen_parameter_list
  .param inst_ref_set parameters
  .param boolean prefix_param_delimiter
  .param string invocation_flavor
  .//
  .assign attr_OAL = ""
  .if ( not_empty parameters )
    .invoke SortSetAlphabeticallyByNameAttr( parameters )
    .assign item_count = cardinality parameters
    .assign item_number = 0
    .assign param_delimiter = ""
    .if(prefix_param_delimiter)
      .assign param_delimiter = ","
    .end if
    .while ( item_number < item_count )
      .for each parameter in parameters
        .if ( parameter.Order == item_number )
          .select one v_val related by parameter->V_VAL[R800]
          .select one te_val related by v_val->TE_VAL[R2040]
          .assign attr_OAL = ( attr_OAL + param_delimiter ) + te_val.OAL
          .if ( "" == te_val.buffer )
            .invoke gen_value( v_val )
          .end if
${param_delimiter}${te_val.buffer}\
          .assign param_delimiter = ", "
          .break for
        .end if
      .end for
      .assign item_number = item_number + 1
    .end while
  .end if
.end function
.//
.//====================================================================
.//
.function is_reflexive
  .param inst_ref r_rel
  .//
  .assign attr_result = false
  .select one srel related by r_rel->R_SIMP[R206]
  .if ( not_empty srel )
    .select many part_set related by srel->R_PART[R207]
    .if ( (cardinality part_set) > 1 )
      .select any part1 related by srel->R_PART[R207]
      .select any part2 related by srel->R_PART[R207] where (selected.OIR_ID != part1.OIR_ID)
      .if ( part1.Obj_ID == part2.Obj_ID )
        .assign attr_result = true
      .end if
    .else
      .select any part related by srel->R_PART[R207]
      .select one form related by srel->R_FORM[R208]
      .if ( not_empty form )
        .if ( part.Obj_ID == form.Obj_ID )
          .assign attr_result = true
        .end if
      .end if
    .end if
  .else
    .select one arel related by r_rel->R_ASSOC[R206]
    .if ( not_empty arel )
      .select one aone related by arel->R_AONE[R209]
      .select one aoth related by arel->R_AOTH[R210]
      .if ( aone.Obj_ID == aoth.Obj_ID )
        .assign attr_result = true
      .end if
    .end if
  .end if
.end function
.//
