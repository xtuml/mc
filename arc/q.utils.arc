.//====================================================================
.//
.// $RCSfile: q.utils.arc,v $
.//
.// (c) Copyright 1998-2013 Mentor Graphics Corporation  All rights reserved.
.//
.//====================================================================
.//
.function gen_parameter_list
  .param inst_ref_set v_pars
  .param boolean prefix_param_delimiter
  .param string invocation_flavor
  .//
  .assign result = ""
  .if ( not_empty v_pars )
    .select any te_string from instances of TE_STRING
    .invoke V_PAR_sort( v_pars )
    .for each v_par in v_pars
      .select one te_par related by v_par->TE_PAR[R2063]
      .select one te_parm related by te_par->TE_PARM[R2091]
      .assign te_par.Order = te_parm.Order
      .assign v_par.Order = te_par.Order
    .end for
    .assign item_count = cardinality v_pars
    .assign item_number = 0
    .assign param_delimiter = ""
    .if ( prefix_param_delimiter )
      .assign param_delimiter = ","
    .end if
    .while ( item_number < item_count )
      .for each v_par in v_pars
        .if ( v_par.Order == item_number )
          .select one v_val related by v_par->V_VAL[R800]
          .select one te_val related by v_val->TE_VAL[R2040]
          .assign result = ( result + param_delimiter ) + te_val.OAL
          .if ( "" == te_val.buffer )
            .invoke gen_value( v_val )
          .end if
${param_delimiter}\
          .//
          .// Determine if the parameter is of type string.
          .// If string, check to see if this parameter is actually a function.
          .// If so, declare a variable in this scope to hold the return string.
          .// Do so by traversing to the te_blk instance to add the declaration.
          .assign stringbody = false
          .select one te_par related by v_par->TE_PAR[R2063]
          .if ( 0 == te_par.By_Ref )
            .select one te_dt related by v_val->S_DT[R820]->TE_DT[R2021]
            .if ( 4 == te_dt.Core_Typ )
              .// Check the four types of returnable action bodies for string.
              .select one v_trv related by v_val->V_TRV[R801]
              .if ( not_empty v_trv )
                .assign stringbody = true
              .else
              .select one v_msv related by v_val->V_MSV[R801]
              .if ( not_empty v_msv )
                .assign stringbody = true
              .else
              .select one v_brv related by v_val->V_BRV[R801]
              .if ( not_empty v_brv )
                .assign stringbody = true
              .else
              .select one v_fnv related by v_val->V_FNV[R801]
              .if ( not_empty v_fnv )
                .assign stringbody = true
              .end if
              .end if
              .end if
              .end if
              .if ( stringbody )
                .assign te_par.buffer = "v_sretval" + "${info.unique_num}"
                .select one te_blk related by v_val->ACT_BLK[R826]->TE_BLK[R2016]
                .assign te_blk.declaration = ( ( ( te_blk.declaration + te_dt.ExtName ) + ( " " + te_par.buffer ) ) + ( "[" + te_string.max_string_length ) ) + "];"
${te_string.strcpy}( ${te_par.buffer}, \
              .end if
            .end if
            .//
            .//
${te_val.buffer}\
            .if ( stringbody )
)\
            .end if
          .else
&(${te_val.buffer})\
          .end if
          .assign param_delimiter = ", "
          .break for
        .end if
      .end for
      .assign item_number = item_number + 1
    .end while
  .end if
  .assign attr_result = result
.end function
.//
.//====================================================================
.//
.function is_reflexive
  .param inst_ref r_rel
  .//
  .assign result = false
  .select one srel related by r_rel->R_SIMP[R206]
  .if ( not_empty srel )
    .select many part_set related by srel->R_PART[R207]
    .if ( (cardinality part_set) > 1 )
      .select any part1 related by srel->R_PART[R207]
      .select any part2 related by srel->R_PART[R207] where (selected.OIR_ID != part1.OIR_ID)
      .if ( part1.Obj_ID == part2.Obj_ID )
        .assign result = true
      .end if
    .else
      .select any part related by srel->R_PART[R207]
      .select one form related by srel->R_FORM[R208]
      .if ( not_empty form )
        .if ( part.Obj_ID == form.Obj_ID )
          .assign result = true
        .end if
      .end if
    .end if
  .else
    .select one arel related by r_rel->R_ASSOC[R206]
    .if ( not_empty arel )
      .select one aone related by arel->R_AONE[R209]
      .select one aoth related by arel->R_AOTH[R210]
      .if ( aone.Obj_ID == aoth.Obj_ID )
        .assign result = true
      .end if
    .end if
  .end if
  .assign attr_result = result
.end function
.//
.//============================================================================
.//   Sort the instances in the instance set <item_set> in ascending numeric
.// order, based on the value of the Numb (integer) attribute value of
.// each instance. The Order (integer) attribute value of each instance will
.// be set to contain a value relative to Numb, indicating the position
.// the instance has in the ordered set.
.//   This function is definately *slow*, but will work with any objects
.// which contain integer attributes <Numb> and <Order>.
.//============================================================================
.function SortSetAscendingByAttr_Numb
  .param inst_ref_set item_set
  .//
  .// Clear the Order attribute of all set members.
  .for each item in item_set
    .assign item.Order = 0
  .end for
  .// simple pseudo bubble sort
  .assign item_set_copy = item_set
  .for each item in item_set
    .for each item_copy in item_set_copy
      .if ( item_copy.Numb > item.Numb )
        .assign item_copy.Order = item_copy.Order + 1
      .end if
    .end for
  .end for
.end function
.//
.//============================================================================
.// Given a set of instances, sets the attribute Order to
.// a value corresponding to the alphabetical order its Name attribute
.// is in the set
.//
.// <item_set> - from instances of anything with Name and Order attributes
.//============================================================================
.function SortSetAlphabeticallyByNameAttr
  .param inst_ref_set item_set
  .//
  .// Clear the Order attribute of all set members.
  .for each item in item_set
    .assign item.Order = 0
  .end for
  .//
  .assign item_set_copy = item_set
  .for each item in item_set
    .for each item_copy in item_set_copy
      .if ( item_copy.Name > item.Name )
        .assign item_copy.Order = item_copy.Order + 1
      .end if
    .end for
  .end for
.end function
.//
