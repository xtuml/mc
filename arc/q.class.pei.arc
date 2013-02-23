.//============================================================================
.// $RCSfile: q.class.pei.arc,v $
.//
.// Description:
.// This archetype file contains the functions for generating
.// preexisting instances initialization code.
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
.//============================================================================
.// Initialize the instance subsystem.
.// Update the instance and link records with array index values
.// and container counts.
.// The mapping of the instances to a particular array index is
.// arbitrary.
.//============================================================================
.function PEIInstanceSubsystemInit
  .param inst_ref_set o_objs
  .//
  .for each obj in o_objs
    .select many insts related by obj->CSME_CIE[R2961]->I_INS[R2962]
    .// Check for preexisting instance population requirement.
    .// The class must have instances and also be colored.
    .assign i = cardinality insts
    .select one te_class related by obj->TE_CLASS[R2019]
    .if ( ( i > 0 ) and ( te_class.PEIsDefinedInData ) )
      .assign te_class.PEIsDefinedInData = TRUE
    .else
      .assign te_class.PEIsDefinedInData = FALSE
    .end if
    .//
    .assign i = 0
    .for each inst in insts
      .assign inst.Name = "${i}"
      .assign i = i + 1
    .end for
  .end for
.end function
.//
.//
.//============================================================================
.// Count the preexisting instances of the given type.
.// Return the number of preexisting instances for obj.
.//============================================================================
.function PEINumberOfPreexistingInstances
  .param inst_ref o_obj
  .select many inst_set related by o_obj->CSME_CIE[R2961]->I_INS[R2962]
  .assign attr_result = cardinality inst_set
  .// .assign msg =       "PEINumberOfPreexistingInstances is ${attr_result} "
  .// .assign msg = msg + "for ${o_obj.Name} (${o_obj.Key_Lett})"
  .// .print "${msg}"
.end function
.//
.//
.//=============================================================================
.// Generate initializers for preexisting instances.
.// We generate the initializers in array index order.  C initializers
.// will assume sequential ordering.
.//=============================================================================
.function PEIRenderInitializers
  .param inst_ref o_obj
  .assign attr_assset = ""
  .select any te_set from instances of TE_SET
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .if ( te_class.PEIsDefinedInData )
    .assign inst_count = 0
    .select many insts related by o_obj->CSME_CIE[R2961]->I_INS[R2962]
    .assign insts_cardinality = cardinality insts
    .while ( inst_count < insts_cardinality )
      .for each inst in insts
        .if ( inst.Name == "${inst_count}" )
          .invoke initializercode = PEIRenderInitializerBody( inst, o_obj )
          .assign attr_assset = attr_assset + initializercode.assset
  { ${initializercode.result} }\
          .if ( last insts )

          .else
,
          .end if
          .break for
        .end if
      .end for
      .assign inst_count = inst_count + 1
    .end while .// inst_count
    .// If there is a need for relationship set containers, build them up.
    .if ( attr_assset != "" )
      .invoke rel_set_name = PEIGetRelationshipSetContainerName( te_class )
      .assign attr_assset = "static ${te_set.element_type} ${rel_set_name.result}[] = {\n" + attr_assset
      .assign attr_assset = "/* PEI relationship set containers.  */\n" + attr_assset
      .assign attr_assset = attr_assset + "\n};\n"
    .end if
  .end if
.end function
.//
.//
.//=============================================================================
.// Generate body of one preexisting instance initializer.
.// First, the initial state initializer is output.
.// The class instance attribute data variable values are generated 
.// in the same order in which they appear in the application analysis OIM.
.// The relationship optimization initializers are then generated.
.//=============================================================================
.function PEIRenderInitializerBody
  .param inst_ref i_ins
  .param inst_ref o_obj
  .assign attr_result = ""
  .assign attr_assset = ""
  .//
  .// Generate state machine state (if needed).
  .//
  .invoke cs_init = PEIRenderInitializerBodyCurrentState( i_ins, o_obj )
  .assign attr_result = attr_result + cs_init.result
  .if ( "" != attr_result )
    .assign attr_result = attr_result + ", "
  .end if
  .//
  .// Generate the attribute value initializers.
  .//
  .select any te_attr related by o_obj->TE_CLASS[R2019]-TE_ATTR[R2061] where ( selected.prevID == 0 )
  .if ( not_empty te_attr )
    .select one o_attr related by te_attr->O_ATTR[R2033]
    .while ( not_empty te_attr )
      .if ( te_attr.translate )
        .select any i_avl related by i_ins->I_AVL[R2909] where ( selected.Attr_ID == o_attr.Attr_ID )
        .invoke avlcode = PEIRenderInitializerBodyAttribute( o_attr, i_avl )
        .assign attr_result = attr_result + avlcode.result
      .end if
      .//
      .// Advance to the next object attribute, if any.
      .select one te_attr related by te_attr->TE_ATTR[R2087.'succeeds']
      .//
      .// Generate comma separator.
      .if ( not_empty te_attr )
        .if ( te_attr.translate )
          .assign attr_result = attr_result + ", "
        .end if
      .end if
    .end while
  .end if
  .//
  .// Generate the association linkage (if needed).
  .//
  .invoke ass_init = PEIRenderInitializerBodyAssociation( i_ins, o_obj )
  .assign attr_result = attr_result + ass_init.result
  .assign attr_assset = attr_assset + ass_init.assset
  .//
.end function
.//
.//
.//=============================================================================
.// Generate initialization for a single attribute value.
.// Return the value as a string quoted correctly (if needed).
.//=============================================================================
.function PEIRenderInitializerBodyAttribute
  .param inst_ref o_attr
  .param inst_ref i_avl
  .assign attr_result = "0"
  .// Get the attribute data type.  Strings need to be quoted.
  .invoke r = GetAttributeCodeGenType( o_attr )
  .assign s_cdt = r.cdt
  .if ( 4 == s_cdt.Core_Typ )
    .// string
    .if ( empty i_avl )
      .// In absence of a populated attribute, use the attribute default value.
      .if ( "" != o_attr.DefaultValue )
        .assign attr_result = o_attr.DefaultValue
      .else
        .assign attr_result = """"""
      .end if
    .else
      .assign attr_result = """${i_avl.Value}"""
    .end if
  .else
    .if ( empty i_avl )
      .assign attr_result = "0"
    .else
      .assign attr_result = i_avl.Value
    .end if
  .end if
.end function
.//
.//
.//=============================================================================
.// Generate the optimized association linkage for this instance.
.// Select the relationship set for this object.  Loop through each one
.// generating linkage anywhere storage is provided (for pointer refs).
.// Get the multiplicity so we know whether we need sets or simple
.// pointers.
.// Do the right thing for each flavor of association, simple, reflexive,
.// associative and sub/super.
.// Return the static initializer body material.
.//=============================================================================
.function PEIRenderInitializerBodyAssociation
  .param inst_ref i_ins
  .param inst_ref o_obj
  .//
  .assign multiplicity = 0
  .assign attr_assset = ""
  .assign attr_result = ""
  .select many te_rels related by o_obj->R_OIR[R201]->R_REL[R201]->TE_REL[R2034]
  .if ( not_empty te_rels )
    .// Pre-order the relationships ascending by their relationship number.
    .// Note:  This decouples code generation from SQL table
    .//        insertion ordering internals.
    .invoke SortSetAscendingByAttr_Numb( te_rels )
    .assign rel_count = 0
    .assign rel_cardinality = cardinality te_rels
    .//
    .while ( rel_count < rel_cardinality )
      .for each te_rel in te_rels
        .if ( te_rel.Order == rel_count )
          .select one rel related by te_rel->R_REL[R2034]
          .if ( not te_rel.storage_needed )
            .break for
          .end if
          .// Simple relationship?
          .select one simple_rel related by rel->R_SIMP[R206]
          .if ( not_empty simple_rel )
            .select one participant related by simple_rel->R_PART[R207]
            .select one formalizer related by simple_rel->R_FORM[R208]
            .if ( empty formalizer )
              .print "\n\tRelationship R${rel.Numb} is not formalized!\n"
              .exit 101
            .end if
            .// Deal with reflexives.
            .if ( participant.Obj_ID == formalizer.Obj_ID )
              .invoke s = PEIRelInitSimpleReflexive( i_ins, o_obj, rel, participant, formalizer )
              .assign attr_result = attr_result + s.result
              .assign attr_assset = attr_assset + s.assset
            .else
              .// Get multiplicity to pass to the code generator.
              .if ( o_obj.Obj_ID == participant.Obj_ID )
                .assign multiplicity = formalizer.Mult
              .else
                .assign multiplicity = participant.Mult
              .end if
              .invoke s = PEIRelInitSimple( i_ins, o_obj, rel, multiplicity )
              .assign attr_result = attr_result + s.result
              .assign attr_assset = attr_assset + s.assset
            .end if .// reflexive
          .else
            .// elif Subtype-Supertype relationship?
            .select one r_subsup related by rel->R_SUBSUP[R206]
            .if ( not_empty r_subsup )
              .invoke s = PEIRelInitSubSuper( i_ins, o_obj, rel, r_subsup )
              .assign attr_result = attr_result + s.result
          .else
            .// elif Associative relationship?
            .select one assrel related by rel->R_ASSOC[R206]
            .if ( not_empty assrel )
              .invoke s = PEIRelInitAssociative( i_ins, o_obj, rel, assrel )
              .assign attr_result = attr_result + s.result
              .assign attr_assset = attr_assset + s.assset
          .else
            .// elif Composed relationship?
            .select one composed_rel related by rel->R_COMP[R206]
            .if ( not_empty composed_rel )
              .print "\nWARNING:  R${rel.Numb} is COMPOSITION - No code generated.\n"
              .invoke s = PEIRelInitComposed( o_obj, rel )
              .assign attr_result = attr_result + s.result
          .else
            .// elif Error: New subtype of R_REL or a corrupted model SQL...
            .print "ERROR:  Unknown association type:R${rel.Numb} for class '${o_obj.Name}' (${o_obj.Key_Lett})"
            .exit 101
          .end if  .// not_empty composed_rel
          .end if  .// not_empty associative_rel
          .end if  .// not_empty subtype_supertype_rel
          .end if  .// not_empty simp_rel
          .break for
        .end if
      .end for
      .assign rel_count = rel_count + 1
    .end while .// rel_count < rel_cardinality
  .end if .// not_empty rel_set
.end function
.//
.//
.//=============================================================================
.// Generate the optimized relationship linkage for a simple association.
.// of multiplicity ONE.
.//=============================================================================
.function PEIRelInitSimple
  .param inst_ref i_ins
  .param inst_ref o_obj
  .param inst_ref r_rel
  .param integer multiplicity
  .//
  .assign attr_result = ""
  .assign attr_assset = ""
  .select any related_inst from instances of I_INS
  .//
  .// Find related instance index.
  .// Traverse the instance to link to instance chain
  .// to get the instance ArrayIndex.
  .if ( multiplicity == 0 )
    .// ONE
    .select any link related by i_ins->I_LIP[R2958]->I_LNK[R2902] where ( selected.Rel_ID == r_rel.Rel_ID )
    .select one related_inst related by link->I_LIP[R2901]->I_INS[R2958]
    .if ( empty related_inst )
      .select any link related by i_ins->I_LIP[R2958]->I_LNK[R2901] where ( selected.Rel_ID == r_rel.Rel_ID )
      .select one related_inst related by link->I_LIP[R2902]->I_INS[R2958]
    .end if
    .if ( not_empty related_inst )
      .select one related_obj related by related_inst->CSME_CIE[R2962]->O_OBJ[R2961]
      .invoke related_extent_info = GetFixedSizeClassExtentInfo( related_obj )
      .assign attr_result = ", &${related_extent_info.obj_pool_var_name}[${related_inst.Name}]"
    .else
      .// not participating
      .assign attr_result = ", 0"
    .end if  .// not empty
  .else
    .// MANY
    .// Build linked list of containers pointing to related instances.
    .select many links related by i_ins->I_LIP[R2958]->I_LNK[R2902] where ( selected.Rel_ID == r_rel.Rel_ID )
    .select many related_insts1 related by links->I_LIP[R2901]->I_INS[R2958]
    .select many links related by i_ins->I_LIP[R2958]->I_LNK[R2901] where ( selected.Rel_ID == r_rel.Rel_ID )
    .select many related_insts2 related by links->I_LIP[R2902]->I_INS[R2958]
    .assign related_insts = related_insts1 | related_insts2
    .invoke s = PEIRenderRelationshipManyOptimization( related_insts, o_obj )
    .assign attr_result = attr_result + s.result
    .assign attr_assset = attr_assset + s.assset
  .end if
  .//
.end function
.//
.//
.//=============================================================================
.// Generate the optimized relationship linkage for a simple reflexive
.// association.
.// In the reflexive case, the part and form are aligned with R2901 and R2902.
.//=============================================================================
.function PEIRelInitSimpleReflexive
  .param inst_ref i_ins
  .param inst_ref o_obj
  .param inst_ref r_rel
  .param inst_ref r_part
  .param inst_ref r_form
  .//
  .assign attr_result = ""
  .assign attr_assset = ""
  .invoke related_extent_info = GetFixedSizeClassExtentInfo( o_obj )
  .select any related_inst from instances of I_INS
  .//
  .// Link the formalizer to the participant.
  .//
  .if ( r_part.Mult == 0 )
    .// ONE
    .select any link related by i_ins->I_LIP[R2958]->I_LNK[R2902] where ( selected.Rel_ID == r_rel.Rel_ID )
    .select one related_inst related by link->I_LIP[R2901]->I_INS[R2958]
    .if ( not_empty related_inst )
      .assign attr_result = attr_result + ", &${related_extent_info.obj_pool_var_name}[${related_inst.Name}]"
    .else
      .// Not participating.
      .assign attr_result = attr_result + ", 0"
    .end if
  .else
    .// MANY
    .// Build linked list of containers pointing to related instances.
    .select many links related by i_ins->I_LIP[R2958]->I_LNK[R2902] where ( selected.Rel_ID == r_rel.Rel_ID )
    .select many related_insts related by links->I_LIP[R2901]->I_INS[R2958]
    .invoke s = PEIRenderRelationshipManyOptimization( related_insts, o_obj )
    .assign attr_result = attr_result + s.result
    .assign attr_assset = attr_assset + s.assset
  .end if
  .//
  .// Now link the participant to the formalizer(s).
  .//
  .if ( r_form.Mult == 0 )
    .// ONE
    .select any link related by i_ins->I_LIP[R2958]->I_LNK[R2901] where ( selected.Rel_ID == r_rel.Rel_ID )
    .select one related_inst related by link->I_LIP[R2902]->I_INS[R2958]
    .if ( not_empty related_inst )
      .assign attr_result = attr_result + ", &${related_extent_info.obj_pool_var_name}[${related_inst.Name}]"
    .else
      .// Not participating.
      .assign attr_result = attr_result + ", 0"
    .end if
  .else
    .// MANY
    .// Build linked list of containers pointing to related instances.
    .select many links related by i_ins->I_LIP[R2958]->I_LNK[R2901] where ( selected.Rel_ID == r_rel.Rel_ID )
    .select many related_insts related by links->I_LIP[R2902]->I_INS[R2958]
    .invoke s = PEIRenderRelationshipManyOptimization( related_insts, o_obj )
    .assign attr_result = attr_result + s.result
    .assign attr_assset = attr_assset + s.assset
  .end if
  .//
.end function
.//
.//
.//=============================================================================
.// Generate the optimized relationship linkage for an associative
.// relationship.
.// In the reflexive case, R2901 and R2902 will jive with AONE and AOTH.
.// In the non-reflexive, we compare the instance Obj_ID with the
.// AONE/AOTH Obj_ID.
.//=============================================================================
.function PEIRelInitAssociative
  .param inst_ref i_ins
  .param inst_ref o_obj
  .param inst_ref r_rel
  .param inst_ref r_assoc
  .//
  .assign attr_result = ""
  .assign attr_assset = ""
  .select one aone related by r_assoc->R_AONE[R209]
  .select one aoth related by r_assoc->R_AOTH[R210]
  .select one assr related by r_assoc->R_ASSR[R211]
  .//
  .// The other associated instance.
  .//
  .if ( o_obj.Obj_ID == aoth.Obj_ID )
    .// Optimize relationship to associator.
    .if ( ( aone.Mult == 0 ) and ( assr.Mult == 0 ) )
      .// ONE
      .select any link from instances of I_LNK where ( false )
      .if ( aone.Obj_ID == aoth.Obj_ID )
        .// reflexive
        .select any link related by i_ins->I_LIP[R2958]->I_LNK[R2901] where ( selected.Rel_ID == r_rel.Rel_ID )
      .else
        .select any link related by i_ins->I_LIP[R2958]->I_LNK[R2902] where ( selected.Rel_ID == r_rel.Rel_ID )
        .if ( empty link )
          .select one related_obj related by i_ins->CSME_CIE[R2962]->O_OBJ[R2961]
          .if ( related_obj.Obj_ID == aoth.Obj_ID )
            .select any link related by i_ins->I_LIP[R2958]->I_LNK[R2901] where ( selected.Rel_ID == r_rel.Rel_ID )
          .end if
        .end if  .// not empty
      .end if .// reflexive
      .if ( not_empty link )
        .select one related_inst related by link->I_LIP[R2903]->I_INS[R2958]
        .select one related_obj related by related_inst->CSME_CIE[R2962]->O_OBJ[R2961]
        .invoke related_extent_info = GetFixedSizeClassExtentInfo( related_obj )
        .assign attr_result = attr_result + ", &${related_extent_info.obj_pool_var_name}[${related_inst.Name}]"
      .else
        .// not participating
        .assign attr_result = attr_result + ", 0"
      .end if  .// not empty
    .else
      .// MANY
      .// Build linked list of containers pointing to related instances.
      .select many links from instances of I_LNK where ( false )
      .select many related_insts from instances of I_INS where ( false )
      .if ( aone.Obj_ID == aoth.Obj_ID )
        .// reflexive
        .select many links related by i_ins->I_LIP[R2958]->I_LNK[R2901] where ( selected.Rel_ID == r_rel.Rel_ID )
      .else
        .select many links1 related by i_ins->I_LIP[R2958]->I_LNK[R2902] where ( selected.Rel_ID == r_rel.Rel_ID )
        .select many links2 related by i_ins->I_LIP[R2958]->I_LNK[R2901] where ( selected.Rel_ID == r_rel.Rel_ID )
        .assign links = links1 | links2
      .end if
      .select many related_insts related by links->I_LIP[R2903]->I_INS[R2958]
      .invoke s = PEIRenderRelationshipManyOptimization( related_insts, o_obj )
      .assign attr_result = attr_result + s.result
      .assign attr_assset = attr_assset + s.assset
    .end if
  .end if
  .//
  .// The one associated instance.
  .//
  .if ( o_obj.Obj_ID == aone.Obj_ID )
    .// Optimize relationship to associator.
    .if ( ( aoth.Mult == 0 ) and ( assr.Mult == 0 ) )
      .// ONE
      .select any link from instances of I_LNK where ( false )
      .if ( aone.Obj_ID == aoth.Obj_ID )
        .// reflexive
        .select any link related by i_ins->I_LIP[R2958]->I_LNK[R2902] where ( selected.Rel_ID == r_rel.Rel_ID )
      .else
        .select any link related by i_ins->I_LIP[R2958]->I_LNK[R2901] where ( selected.Rel_ID == r_rel.Rel_ID )
        .if ( empty link )
          .select one related_obj related by i_ins->CSME_CIE[R2962]->O_OBJ[R2961]
          .if ( related_obj.Obj_ID == aone.Obj_ID )
            .select any link related by i_ins->I_LIP[R2958]->I_LNK[R2902] where ( selected.Rel_ID == r_rel.Rel_ID )
          .end if
        .end if
      .end if .// reflexive
      .if ( not_empty link )
        .select one related_inst related by link->I_LIP[R2903]->I_INS[R2958]
        .select one related_obj related by related_inst->CSME_CIE[R2962]->O_OBJ[R2961]
        .invoke related_extent_info = GetFixedSizeClassExtentInfo( related_obj )
        .assign attr_result = attr_result + ", &${related_extent_info.obj_pool_var_name}[${related_inst.Name}]"
      .else
        .// not participating
        .assign attr_result = attr_result + ", 0"
      .end if  .// not empty
    .else
      .// MANY
      .// Build linked list of containers pointing to related instances.
      .select many links from instances of I_LNK where ( false )
      .select many related_insts from instances of I_INS where ( false )
      .if ( aone.Obj_ID == aoth.Obj_ID )
        .select many links related by i_ins->I_LIP[R2958]->I_LNK[R2902] where ( selected.Rel_ID == r_rel.Rel_ID )
      .else
        .select many links1 related by i_ins->I_LIP[R2958]->I_LNK[R2902] where ( selected.Rel_ID == r_rel.Rel_ID )
        .select many links2 related by i_ins->I_LIP[R2958]->I_LNK[R2901] where ( selected.Rel_ID == r_rel.Rel_ID )
        .assign links = links1 | links2
      .end if
      .select many related_insts related by links->I_LIP[R2903]->I_INS[R2958]
      .invoke s = PEIRenderRelationshipManyOptimization( related_insts, o_obj )
      .assign attr_result = attr_result + s.result
      .assign attr_assset = attr_assset + s.assset
    .end if
  .end if
  .//
  .// The associative instance.
  .//
  .if ( o_obj.Obj_ID == assr.Obj_ID )
    .// Optimize relationship to both associates.
    .select any link related by i_ins->I_LIP[R2958]->I_LNK[R2903] where ( selected.Rel_ID == r_rel.Rel_ID )
    .if ( not_empty link )
      .select one related_inst related by link->I_LIP[R2901]->I_INS[R2958]
      .select one related_obj related by related_inst->CSME_CIE[R2962]->O_OBJ[R2961]
      .invoke related_extent_info = GetFixedSizeClassExtentInfo( related_obj )
      .select one related_inst2 related by link->I_LIP[R2902]->I_INS[R2958]
      .select one related_obj2 related by related_inst2->CSME_CIE[R2962]->O_OBJ[R2961]
      .invoke related_extent_info2 = GetFixedSizeClassExtentInfo( related_obj2 )
      .if ( ( aone.Obj_ID == aoth.Obj_ID ) or ( related_obj2.Obj_ID == aone.Obj_ID ) )
        .assign attr_result = attr_result + ", &${related_extent_info2.obj_pool_var_name}[${related_inst2.Name}]"
        .assign attr_result = attr_result + ", &${related_extent_info.obj_pool_var_name}[${related_inst.Name}]"
      .else
        .assign attr_result = attr_result + ", &${related_extent_info.obj_pool_var_name}[${related_inst.Name}]"
        .assign attr_result = attr_result + ", &${related_extent_info2.obj_pool_var_name}[${related_inst2.Name}]"
      .end if
    .else
      .// not participating
      .assign attr_result = attr_result + ", 0, 0"
    .end if  .// not empty
  .end if
.end function
.//
.//
.//=============================================================================
.// Generate the optimized relationship linkage for a Subtype/Supertype
.// association.
.//=============================================================================
.function PEIRelInitSubSuper
  .param inst_ref i_ins
  .param inst_ref o_obj
  .param inst_ref r_rel
  .param inst_ref r_subsup
  .assign attr_result = ""
  .//
  .// Find related instance index.
  .// Traverse the instance to link to instance chain
  .// to get the instance ArrayIndex.
  .select one super related by r_subsup->R_SUPER[R212]
  .if ( o_obj.Obj_ID == super.Obj_ID )
    .// Supertype
    .select any link related by i_ins->I_LIP[R2958]->I_LNK[R2901] where ( selected.Rel_ID == r_rel.Rel_ID )
    .select one related_inst related by link->I_LIP[R2902]->I_INS[R2958]
    .if ( empty link )
      .select any link related by i_ins->I_LIP[R2958]->I_LNK[R2902] where ( selected.Rel_ID == r_rel.Rel_ID )
      .select one related_inst related by link->I_LIP[R2901]->I_INS[R2958]
    .end if
    .if ( not_empty link )
      .select one related_object related by related_inst->CSME_CIE[R2962]->O_OBJ[R2961]
      .select one te_class related by related_object->TE_CLASS[R2019]
      .invoke related_extent_info = GetFixedSizeClassExtentInfo( related_object )
      .assign attr_result = ", (void *) &${related_extent_info.obj_pool_var_name}[${related_inst.Name}], ${te_class.system_class_number}"
    .else
      .// not participating
      .assign attr_result = ", 0, 0"
    .end if
  .else
    .// Subtype
    .select any link related by i_ins->I_LIP[R2958]->I_LNK[R2902] where ( selected.Rel_ID == r_rel.Rel_ID )
    .if ( not_empty link )
      .select one related_inst related by link->I_LIP[R2901]->I_INS[R2958]
      .select one related_object related by related_inst->CSME_CIE[R2962]->O_OBJ[R2961]
      .invoke related_extent_info = GetFixedSizeClassExtentInfo( related_object )
      .assign attr_result = ", &${related_extent_info.obj_pool_var_name}[${related_inst.Name}]"
    .else
      .// not participating
      .assign attr_result = ", 0"
    .end if
  .end if
.end function
.//
.//
.//=============================================================================
.// Generate the optimized relationship linkage for a composed association.
.//=============================================================================
.function PEIRelInitComposed
  .param inst_ref o_obj
  .param inst_ref r_rel
  .assign attr_result = ""
.end function
.//
.//
.//=============================================================================
.// Generate an initializer for the current state attribute if needed.
.//=============================================================================
.function PEIRenderInitializerBodyCurrentState
  .param inst_ref i_ins
  .param inst_ref o_obj
  .assign attr_result = ""
  .select one te_state related by i_ins->SM_STATE[R2915]->TE_STATE[R2037]
  .if ( not_empty te_state )
    .assign attr_result = te_state.enumerator
  .end if
.end function
.//
.//
.//=============================================================================
.// Render relationship MANY optimization.
.// This helper is used to render the code used to optimize a relationship
.// set.  The set variable is generated for inside the instance structure.
.// The linked list body pointing to related instances is also generated.
.//=============================================================================
.function PEIRenderRelationshipManyOptimization
  .param inst_ref_set i_inss
  .param inst_ref o_obj
  .//
  .assign attr_result = ""
  .assign attr_assset = ""
  .select any te_sys from instances of TE_SYS
  .// i_inss, o_obj
  .assign instance_count = cardinality i_inss
  .if ( instance_count > 0 )
    .select one te_class related by o_obj->TE_CLASS[R2019]
    .assign ContainerIndex = te_class.ContainerIndex
    .// A container index starting greater than zero means we are not the
    .// first (instance) to be adding linked lists.  Precede with comma.
    .if ( ContainerIndex > 0 )
      .assign attr_assset = ",\n"
    .end if
    .invoke rel_set_name = PEIGetRelationshipSetContainerName( te_class )
    .assign attr_result = ", { &${rel_set_name.result}[${ContainerIndex}] }"
    .for each related_inst in i_inss
      .assign ContainerIndex = ContainerIndex + 1
      .select one related_obj related by related_inst->CSME_CIE[R2962]->O_OBJ[R2961]
      .invoke related_extent_info = GetFixedSizeClassExtentInfo( related_obj )
      .if ( last i_inss )
        .if ( te_sys.CollectionsFlavor == 20 )
          .assign icount = cardinality i_inss
          .if ( icount > 1 )
            .assign attr_assset = attr_assset + "  { 0, (void *) &${related_extent_info.obj_pool_var_name}[${related_inst.Name}], &${rel_set_name.result}[${ContainerIndex} - 2] }"
          .else
            .assign attr_assset = attr_assset + "  { 0, (void *) &${related_extent_info.obj_pool_var_name}[${related_inst.Name}], 0 }"
          .end if .// cardinality i_inss > 1
        .else
          .assign attr_assset = attr_assset + "  { 0, (void *) &${related_extent_info.obj_pool_var_name}[${related_inst.Name}] }"
        .end if
      .elif ( first i_inss )
        .if ( te_sys.CollectionsFlavor == 20 )
          .assign attr_assset = attr_assset + "  { &${rel_set_name.result}[${ContainerIndex}], (void *) &${related_extent_info.obj_pool_var_name}[${related_inst.Name}], 0 },\n"
        .else
          .assign attr_assset = attr_assset + "  { &${rel_set_name.result}[${ContainerIndex}], (void *) &${related_extent_info.obj_pool_var_name}[${related_inst.Name}] },\n"
        .end if
      .else
        .if ( te_sys.CollectionsFlavor == 20 )
          .assign attr_assset = attr_assset + "  { &${rel_set_name.result}[${ContainerIndex}], (void *) &${related_extent_info.obj_pool_var_name}[${related_inst.Name}], &${rel_set_name.result}[${ContainerIndex} - 2] },\n"
        .else
          .assign attr_assset = attr_assset + "  { &${rel_set_name.result}[${ContainerIndex}], (void *) &${related_extent_info.obj_pool_var_name}[${related_inst.Name}] },\n"
        .end if
      .end if
    .end for
    .assign te_class.ContainerIndex = ContainerIndex
  .else
    .// Empty relationship set.
    .assign attr_result = ", { 0 }"
  .end if
.end function
.//
