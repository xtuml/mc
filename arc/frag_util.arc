.//============================================================================
.// $RCSfile: frag_util.arc,v $
.//
.// Description:
.// This archetype file provides general purpose functions used during 
.// action language translation. They are not specific to any particular
.// fragment generator entry points.
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
.//============================================================================
.// This function is to create a specified number of tabs for
.// indentation. Note that for portability, instead of using a tab character,
.// we will use spaces/blanks instead.
.// This function is implemented via recursive function calls.
.//============================================================================
.function CreateTabs
  .param integer p_num_tabs
  .assign tab = "  "
  .assign result = ""
  .if ( p_num_tabs > 0 )
    .assign num_tabs = p_num_tabs - 1
    .invoke tabs = CreateTabs( num_tabs )
    .assign result = "${tab}${tabs.result}"
  .end if
  .assign attr_result = result
.end function
.//
.//============================================================================
.function BuildDeallocationsForBreakContinueStatement
  .//
  .select any te_set from instances of TE_SET
  .select any asp from instances of TE_ASP
  .select any block related by asp->TE_AUT[R2000]->TE_ABA[R2016]->TE_BLOCK[R2011] where ( selected.Number == asp.CurrentBlock )
  .if ( not_empty block )
    .// Get any inst_ref_set<Object> variables we have populated in this block.
    .select many obj_var_set related by block->TE_OIR[R2014]->TE_OIV[R2014] where ( selected.TypeCode == 2 )
    .// Now scroll back through the blocks to find the loop we are breaking or continuing.
    .select one outer_block related by block->TE_BLOCK[R2012.'precedes']
    .while ( not_empty outer_block )
      .if ( outer_block.Active and ((outer_block.Type == 5) or (outer_block.Type == 6)) )
        .// 5 == FOR, 6 == WHILE
        .break while
      .else
        .if ( outer_block.Active )
          .// Collect inst_ref_set<Object> variables in preceeding block which are still active.
          .select many outer_obj_var_set related by outer_block->TE_OIR[R2014]->TE_OIV[R2014] where ( selected.TypeCode == 2 )
          .assign obj_var_set = obj_var_set | outer_obj_var_set
        .end if
        .select one previous_block related by outer_block->TE_BLOCK[R2012.'precedes']
        .assign outer_block = previous_block
      .end if
    .end while
    .// Get any inst_ref_set<Object> variables populated in the outer loop scope.
    .select many outer_obj_var_set related by outer_block->TE_OIR[R2014]->TE_OIV[R2014] where ( selected.TypeCode == 2 )
    .assign obj_var_set = obj_var_set | outer_obj_var_set
    .if ( not_empty obj_var_set )
{ /* Container deallocation. */
      .for each obj_var in obj_var_set
        .select one obj related by obj_var->O_OBJ[R2015]
${indent.result}  ${te_set.module}${te_set.clear}( &${obj_var.VarName} );  /* ${obj_var.Name} */
      .end for
${indent.result}}
    .end if  .// not_empty obj_var_set 
  .end if  .// not_empty block
.end function
.//
.//============================================================================
.// Initialize the attributes of type unique_id that are identifiers
.// and therefore need to be automatically set up at create time.
.//============================================================================
.function AutoInitializeUniqueIDs
  .param inst_ref o_obj
  .param string instance
  .//
  .assign attr_result = FALSE
  .select any te_instance from instances of TE_INSTANCE
  .select any te_string from instances of TE_STRING
  .invoke first_attr = GetFirstAttributeInObjectModel( o_obj )
  .assign current_attr = first_attr.result
  .while ( not_empty current_attr )
    .select one te_attr related by current_attr->TE_ATTR[R2033]
    .if ( te_attr.translate )
      .invoke member_type = GetAttributeCodeGenType( current_attr )
      .assign cdt = member_type.cdt
      .if ( not_empty cdt )
      .if ( cdt.Core_Typ == 5 )
        .assign dt = member_type.dt
        .// Core_Typ == 5 is "unique_id"
        .// CDS:  Note "select any" when there may be more than one.
        .select any oida related by current_attr->O_OIDA[R105]
        .if ( not_empty oida )
          .select one te_dt related by dt->TE_DT[R2021]
          .assign attr_result = TRUE
${instance}->${te_attr.GeneratedName} = (${te_dt.ExtName}) ${instance};
        .end if
      .elif ( ( 2 == cdt.Core_Typ ) or ( 3 == cdt.Core_Typ ) )
        .// integer or real
        .if ( te_attr.DefaultValue != "" )
${instance}->${te_attr.GeneratedName} = ${te_attr.DefaultValue}; /* DefaultValue */
        .end if
      .elif ( 4 == cdt.Core_Typ )
        .// string
        .if ( te_attr.DefaultValue != "" )
${te_instance.module}${te_string.strcpy}( ${instance}->${te_attr.GeneratedName}, ${te_attr.DefaultValue} ); /* DefaultValue */
        .end if
      .end if  .// cdt.Core_Typ == 5 (unique_id)
      .end if
    .end if
    .//
    .// Advance to the next object attribute, if any.
    .select one next_attr related by current_attr->O_ATTR[R103.'succeeds']
    .assign current_attr = next_attr
  .end while  .// not_empty current_attr
.end function
.//
.//============================================================================
.function ExpandNonOptimizedSpecialWhereComparison
  .param inst_ref o_obj
  .param boolean special
  .param string selected_var_name
  .//
  .if ( special )
    .select any te_instance from instances of TE_INSTANCE
    .select any te_string from instances of TE_STRING
    .assign compare_stmt = ""
    .assign cmp_element = ""
    .select many te_attrs related by o_obj->O_ATTR[R102]->TE_ATTR[R2033] where ( selected.Included )
    .for each te_attr in te_attrs
      .select one obj_attr related by te_attr->O_ATTR[R2033]
      .invoke data_type = GetAttributeCodeGenType( obj_attr )
      .assign dt = data_type.dt
      .if ( "string" != dt.Name )
        .assign cmp_element = "${selected_var_name}->${te_attr.GeneratedName} == ${te_attr.ParamBuffer}"
      .else
        .assign cmp_element = "!${te_instance.module}${te_string.strcmp}(${selected_var_name}->${te_attr.GeneratedName}, ${te_attr.ParamBuffer})"
      .end if
      .assign compare_stmt = compare_stmt + cmp_element
      .if ( not_last te_attrs )
        .assign compare_stmt = compare_stmt + " && "
      .end if
    .end for
${compare_stmt}\
  .end if
.end function
.//
.//============================================================================
.function CreateSpecialWhereComparisonArguments
  .param inst_ref o_obj
  .param inst_ref oid
  .//
  .select many ident_attr_set related by oid->O_OIDA[R105]->O_ATTR[R105]
  .assign num_ident_attr = cardinality ident_attr_set
  .//
  .assign param_list = ""
  .assign ident_attr_count = 0
  .//
  .invoke first_attr = GetFirstAttributeInObjectModel( o_obj )
  .assign current_attr = first_attr.result
  .while ( not_empty current_attr )
    .select one te_attr related by current_attr->TE_ATTR[R2033]
    .if ( te_attr.Included )
      .assign ident_attr_count = ident_attr_count + 1
      .assign param_list = param_list + te_attr.ParamBuffer
      .if ( ident_attr_count < num_ident_attr )
        .assign param_list = param_list + ", "
      .end if
    .end if
    .select one next_attr related by current_attr->O_ATTR[R103.'succeeds']
    .assign current_attr = next_attr
  .end while
  .//
${param_list}\
.end function
.//
