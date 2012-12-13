.//============================================================================
.// $RCSfile: q.names.arc,v $
.//
.// Description:
.// This archetype file contains utility functions for implementation namings
.// that span multiple archetype files.
.//
.// Notice:
.// (C) Copyright 1998-2012 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
.//
.//============================================================================
.// Return a information on variables and types used in defining the
.// instance collections for a class.
.//============================================================================
.function GetFixedSizeClassExtentInfo
  .param inst_ref o_obj
  .//
  .select any te_extent from instances of TE_EXTENT
  .select any te_set from instances of TE_SET
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .assign attr_max_size_name  = te_class.GeneratedName + "_MAX_EXTENT_SIZE"
  .assign attr_max_size_value = te_class.MaxExtentSize
  .if ( attr_max_size_value == 0 )
    .assign attr_max_size_value = 1
  .end if
  .assign attr_element_type = te_extent.container_type
  .assign attr_extent_type = te_extent.sets_type
  .assign attr_extent = ( "pG_" + te_class.GeneratedName ) + "_extent"
  .assign attr_extent_var_name = "${attr_extent}.${te_extent.active}"
  .assign attr_extent_init = te_extent.initializer
  .assign attr_active_extent_type = te_extent.sets_type
  .assign attr_free_extent_type = te_extent.sets_type
  .assign attr_free_extent_var_name = "${attr_extent}.${te_extent.inactive}"
  .assign attr_obj_pool_var_name = te_class.GeneratedName + "_instances"
  .assign attr_container_name = te_class.GeneratedName + "_container"
  .assign attr_type = te_set.scope + te_extent.type
.end function
.//
.//============================================================================
.function GetNavigateLinkMethodName
  .param inst_ref from_o_obj
  .param inst_ref to_o_obj
  .param inst_ref r_rel
  .param string   rel_phrase
  .//
  .assign attr_result = ""
  .select one te_c related by to_o_obj->TE_CLASS[R2019]->TE_C[R2064]
  .if ( not_empty te_c )
    .assign attr_result = "${te_c.Name}_${to_o_obj.Key_Lett}_R${r_rel.Numb}_From_${from_o_obj.Key_Lett}"
    .//
    .invoke suffix = GetRelationshipSuffix( to_o_obj, r_rel, rel_phrase )
    .if ( suffix.result != "" )
      .assign attr_result = attr_result + "_${suffix.result}"
    .end if
  .end if
.end function
.//
.//============================================================================
.// Return the name of the associative relationship link method.
.//============================================================================
.function GetAssociativeLinkMethodName
  .param inst_ref left_o_obj
  .param inst_ref right_o_obj
  .param inst_ref assoc_o_obj
  .param inst_ref r_rel
  .param string   rel_phrase
  .//
  .assign attr_left_obj_is_aone = FALSE
  .assign attr_reflexive = FALSE
  .assign attr_name = ""
  .assign attr_result = ""
  .//
  .select one te_class related by assoc_o_obj->TE_CLASS[R2019]
  .if ( not_empty te_class )
    .select one aone related by r_rel->R_ASSOC[R206]->R_AONE[R209]
    .select one aoth related by r_rel->R_ASSOC[R206]->R_AOTH[R210]
    .if ( left_o_obj.Obj_Id == aone.Obj_ID )
      .assign attr_left_obj_is_aone = TRUE
    .end if
    .//
    .assign associative_reflexive = FALSE
    .if ( aone.Obj_Id == aoth.Obj_Id )
      .assign attr_reflexive = TRUE
    .end if
    .//
    .assign attr_name = te_class.GeneratedName + "_R${r_rel.Numb}_Link"
    .assign attr_result = ( te_class.GeneratedName + "::" ) + attr_name
    .//
    .invoke suffix = GetRelationshipSuffix( right_o_obj, r_rel, rel_phrase )
    .if ( suffix.result != "" )
      .assign attr_name = attr_name + "_${suffix.result}"
      .assign attr_result = attr_result + "_${suffix.result}"
    .end if
    .select any te_target from instances of TE_TARGET
    .if ( "C" == te_target.language )
      .assign attr_result = attr_name
    .end if
  .end if
.end function
.//
.//============================================================================
.function GetAssociativeUnlinkMethodName
  .param inst_ref left_o_obj
  .param inst_ref right_o_obj
  .param inst_ref assoc_o_obj
  .param inst_ref r_rel
  .param string   rel_phrase
  .//
  .assign attr_left_obj_is_aone = FALSE
  .assign attr_reflexive = FALSE
  .assign attr_name = ""
  .assign attr_result = ""
  .//
  .select one te_class related by assoc_o_obj->TE_CLASS[R2019]
  .if ( not_empty te_class )
    .select one aone related by r_rel->R_ASSOC[R206]->R_AONE[R209]
    .select one aoth related by r_rel->R_ASSOC[R206]->R_AOTH[R210]
    .if ( left_o_obj.Obj_Id == aone.Obj_ID )
      .assign attr_left_obj_is_aone = TRUE
    .end if
    .//
    .assign associative_reflexive = FALSE
    .if ( aone.Obj_Id == aoth.Obj_Id )
      .assign attr_reflexive = TRUE
    .end if
    .//
    .assign attr_name = te_class.GeneratedName + "_R${r_rel.Numb}_Unlink"
    .assign attr_result = ( te_class.GeneratedName + "::" ) + attr_name
    .//
    .invoke suffix = GetRelationshipSuffix( right_o_obj, r_rel, rel_phrase )
    .if ( suffix.result != "" )
      .assign attr_name = attr_name + "_${suffix.result}"
      .assign attr_result = attr_result + "_${suffix.result}"
    .end if
    .select any te_target from instances of TE_TARGET
    .if ( "C" == te_target.language )
      .assign attr_result = attr_name
    .end if
  .end if
.end function
.//
.//============================================================================
.function GetRelateToName
  .param inst_ref o_obj
  .param inst_ref r_rel
  .param string   rel_phrase
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .assign attr_name = te_class.GeneratedName + "_R${r_rel.Numb}_Link"
  .assign attr_result = ( te_class.GeneratedName + "::" ) + attr_name
  .invoke suffix = GetRelationshipSuffix( o_obj, r_rel, rel_phrase )
  .if ( suffix.result != "" )
    .assign attr_name = attr_name + "_${suffix.result}"
    .assign attr_result = attr_result + "_${suffix.result}"
  .end if
  .select any te_target from instances of TE_TARGET
  .if ( "C" == te_target.language )
    .assign attr_result = attr_name
  .end if
.end function
.//
.//============================================================================
.function GetUnrelateFromName
  .param inst_ref o_obj
  .param inst_ref r_rel
  .param string   rel_phrase
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .assign attr_name = te_class.GeneratedName + "_R${r_rel.Numb}_Unlink"
  .assign attr_result = ( te_class.GeneratedName + "::" ) + attr_name
  .invoke suffix = GetRelationshipSuffix( o_obj, r_rel, rel_phrase )
  .if ( suffix.result != "" )
    .assign attr_name = attr_name + "_${suffix.result}"
    .assign attr_result = attr_result + "_${suffix.result}"
  .end if
  .select any te_target from instances of TE_TARGET
  .if ( "C" == te_target.language )
    .assign attr_result = attr_name
  .end if
.end function
.//
.//============================================================================
.// This function returns the name of the object member data to be used
.// for (optimized) storage of a link to a related object.
.//============================================================================
.function GetRelationshipDataMemberName
  .param inst_ref o_obj
  .param inst_ref r_rel
  .param string   rel_phrase
  .assign attr_result = ( o_obj.Key_Lett + "_R" ) + "${r_rel.Numb}"
  .assign attr_obj_id = ""
  .invoke suffix = GetRelationshipSuffix( o_obj, r_rel, rel_phrase )
  .assign attr_Mult = suffix.Mult
  .assign attr_assoc_type = suffix.assoc_type
  .if ( suffix.result != "" )
    .assign attr_result = attr_result + ( "_" + suffix.result )
  .end if
  .// Subtype-Supertype relationship?
  .select one subsup_rel related by r_rel->R_SUBSUP[R206]
  .if ( not_empty subsup_rel )
    .select any subtype related by r_rel->R_SUBSUP[R206]->R_SUB[R213] where ( selected.Obj_ID == o_obj.Obj_ID )
    .if ( not_empty subtype )
      .assign attr_result = ( "R" + "${r_rel.Numb}" ) + "_subtype"
      .assign attr_obj_id = ( "R" + "${r_rel.Numb}" ) + "_object_id"
    .end if
  .end if
.end function
.//
.//============================================================================
.// Given a relationship <rel> and the object at the other (e.g., right)
.// end <right_obj>, determine the suffix to be used in the relationship
.// link, unlink, and navigation accessor methods.
.// Parameter <rel_phrase> is used for reflexive relationships to determine
.// which "end" of the relationship to get the suffix for.
.//============================================================================
.function GetRelationshipSuffix
  .param inst_ref right_o_obj
  .param inst_ref r_rel
  .param string   rel_phrase
  .//
  .assign attr_result = ""
  .// Default to "one" for sub/super.
  .assign attr_Mult = 0
  .assign attr_assoc_type = "subsuper"
  .select one simple_rel related by r_rel->R_SIMP[R206]
  .if ( not_empty simple_rel )
    .select one participant related by simple_rel->R_PART[R207]
    .select one formalizer related by simple_rel->R_FORM[R208]
    .if ( right_o_obj.Obj_ID == participant.Obj_ID )
      .assign attr_Mult = participant.Mult
      .assign attr_assoc_type = "part"
    .else
      .assign attr_Mult = formalizer.Mult
      .assign attr_assoc_type = "form"
    .end if
    .if ( participant.Obj_ID == formalizer.Obj_ID )
      .if ( participant.Txt_Phrs == rel_phrase )
        .assign attr_Mult = participant.Mult
        .assign attr_assoc_type = "part"
        .assign attr_result = "$_{participant.Txt_Phrs}"
      .elif ( formalizer.Txt_Phrs == rel_phrase )
        .assign attr_Mult = formalizer.Mult
        .assign attr_assoc_type = "form"
        .assign attr_result = "$_{formalizer.Txt_Phrs}"
      .else
        .assign msg = "\nTRANSLATION ERROR:  ${right_o_obj.Key_Lett}[R${r_rel.Numb}.'${rel_phrase}']"
        .assign msg = msg + "\nInternal logic error for reflexive simple relationship."
        .print "${msg}"
        .exit 101
      .end if
    .end if
  .else
    .select one assoc_rel related by r_rel->R_ASSOC[R206]
    .if ( not_empty assoc_rel )
      .select one assr related by assoc_rel->R_ASSR[R211]
      .select one one_side related by assoc_rel->R_AONE[R209]
      .select one other_side related by assoc_rel->R_AOTH[R210]
      .if ( one_side.Obj_ID == other_side.Obj_ID )
        .// Reflexive associative relationship
        .if ( rel_phrase == one_side.Txt_Phrs )
          .assign attr_Mult = one_side.Mult
          .assign attr_assoc_type = "aone"
          .assign attr_result = "$_{one_side.Txt_Phrs}"
          .// CDS Consider checking here for one side versus other side.
          .// In a role-symmetric reflexive associative, the relationship
          .// phrase may be identical on both ends.
        .elif ( rel_phrase == other_side.Txt_Phrs )
          .assign attr_Mult = other_side.Mult
          .assign attr_assoc_type = "aoth"
          .assign attr_result = "$_{other_side.Txt_Phrs}"
        .else
          .assign msg = "\nTRANSLATION ERROR:  ${right_o_obj.Key_Lett}[R${r_rel.Numb}.'${rel_phrase}']"
          .assign msg = msg + "\nInternal logic error for reflexive associative relationship."
          .print "${msg}"
          .exit 101
        .end if
        .if ( right_o_obj.Obj_ID == assr.Obj_ID )
          .assign attr_assoc_type = "assr"
        .end if
      .else
        .if ( right_o_obj.Obj_ID == one_side.Obj_ID )
          .assign attr_Mult = one_side.Mult
          .assign attr_assoc_type = "aone"
        .elif ( right_o_obj.Obj_ID == other_side.Obj_ID )
          .assign attr_Mult = other_side.Mult
          .assign attr_assoc_type = "aoth"
        .else
          .assign attr_Mult = assr.Mult
          .assign attr_assoc_type = "assr"
        .end if
      .end if  .// one_side.Obj_ID == other_side.Obj_ID
    .end if  .// not_empty assoc_rel
  .end if  .//  not_empty simp_rel
.end function
.//
.//============================================================================
.// Get the name of the method to relate instances across a relationship.
.// Inputs:
.// left_obj - Instance reference to the left object in the relationship.
.// right_obj - Instance reference to the right object in the relationship.
.// rel - Instance reference to the relationship.
.// rel_phrase - Relationship phrase.  It is always present for a reflexive
.//  relationship, optional for a non-reflexive.
.//
.// Return <result> the name of the method to be used to relate two objects.
.//============================================================================
.function GetRelateMethodName
  .param inst_ref left_o_obj
  .param inst_ref right_o_obj
  .param inst_ref r_rel
  .param string   rel_phrase
  .//
  .assign attr_name = ""
  .assign attr_result = ""
  .assign formalizing_o_obj = left_o_obj
  .assign participant_o_obj = right_o_obj
  .//
  .invoke link_info = GetLinkParameters( left_o_obj, right_o_obj, r_rel, rel_phrase )
  .if ( not link_info.left_is_formalizer )
    .assign formalizing_o_obj = right_o_obj
    .assign participant_o_obj = left_o_obj
  .end if
  .//
  .select one te_class related by formalizing_o_obj->TE_CLASS[R2019]
  .if ( not_empty te_class )
    .assign attr_name = te_class.GeneratedName + "_R${r_rel.Numb}_Link"
    .assign attr_result = ( te_class.GeneratedName + "::" ) + attr_name
  .end if
  .//
  .invoke suffix = GetRelationshipSuffix( formalizing_o_obj, r_rel, rel_phrase )
  .if ( suffix.result != "" )
    .assign attr_name = attr_name + "_${suffix.result}"
    .assign attr_result = attr_result + "_${suffix.result}"
  .end if
  .select any te_target from instances of TE_TARGET
  .if ( "C" == te_target.language )
    .assign attr_result = attr_name
  .end if
.end function
.//
.//============================================================================
.// Get the name of the method to unrelate instances across a relationship.
.// Inputs:
.// left_o_obj - Instance reference to the left object in the relationship.
.// right_o_obj - Instance reference to the right object in the relationship.
.// rel - Instance reference to the relationship.
.// rel_phrase - Relationship phrase.  It is always present for a reflexive
.//  relationship, optional for a non-reflexive.
.//
.// Return <result> the name of the method to be used to unrelate two objects.
.//============================================================================
.function GetUnrelateMethodName
  .param inst_ref left_o_obj
  .param inst_ref right_o_obj
  .param inst_ref r_rel
  .param string   rel_phrase
  .//
  .assign formalizing_o_obj = left_o_obj
  .assign participant_o_obj = right_o_obj
  .//
  .invoke link_info = GetLinkParameters( left_o_obj, right_o_obj, r_rel, rel_phrase )
  .if ( not link_info.left_is_formalizer )
    .assign formalizing_o_obj = right_o_obj
    .assign participant_o_obj = left_o_obj
  .end if
  .//
  .select one te_class related by formalizing_o_obj->TE_CLASS[R2019]
  .assign attr_name = te_class.GeneratedName + "_R${r_rel.Numb}_Unlink"
  .assign attr_result = ( te_class.GeneratedName + "::" ) + attr_name
  .//
  .invoke suffix = GetRelationshipSuffix( formalizing_o_obj, r_rel, rel_phrase )
  .if ( suffix.result != "" )
    .assign attr_name = attr_name + "_${suffix.result}"
    .assign attr_result = attr_result + "_${suffix.result}"
  .end if
  .select any te_target from instances of TE_TARGET
  .if ( "C" == te_target.language )
    .assign attr_result = attr_name
  .end if
.end function
.//
.//============================================================================
.// Return the name of the object relationship container array.
.// This array of containoids is used to optimize relationships when
.// there are preexisting instances.
.//============================================================================
.function PEIGetRelationshipSetContainerName
  .param inst_ref te_class
  .assign attr_result = te_class.GeneratedName + "_rel_set_lists"
.end function
.//
.//============================================================================
.// Return the name and type of the domain dispatcher.
.//============================================================================
.function GetDomainDispatcherTableName
  .param string registered_name
  .assign attr_result = registered_name + "_EventDispatcher"
  .assign attr_element_type = "EventTaker_t"
.end function
.//
.//============================================================================
.function GetSuperTypePolymorphicEventMethodName
  .param inst_ref te_class
  .param inst_ref r_rel
  .assign attr_result = te_class.GeneratedName + "_R${r_rel.Numb}PolymorphicEvent"
.end function
.//
.//============================================================================
.function GetDomainTypeIDFromString
  .param string dom_name
  .select any te_typemap from instances of TE_TYPEMAP
  .assign attr_name = "$r{dom_name}" + "_DOMAIN_ID"
  .assign attr_type = te_typemap.domain_number_name
.end function
.//
.//============================================================================
.// Provide the name of the class_info structure and its members.
.//============================================================================
.function GetClassInfoArrayNaming
  .select any te_typemap from instances of TE_TYPEMAP
  .select any te_extent from instances of TE_EXTENT
  .assign attr_class_info_name = "domain_class_info"
  .assign attr_class_info_type = te_extent.type
  .assign attr_active_count = "active_count"
  .assign attr_class_count = "domain_class_count"
  .assign attr_count_type = te_typemap.object_number_name
.end function
.//
.//============================================================================
.// Provide a name for the routine that will check if an instance is
.// dirty, mark it if is not and queue it for flusing later.
.//============================================================================
.function GetPersistentCheckMarkPostName
  .select any te_instance from instances of TE_INSTANCE
  .select any te_prefix from instances of TE_PREFIX
  .select any te_typemap from instances of TE_TYPEMAP
  .assign attr_name = te_prefix.result + "PersistenceCheckMarkPost"
  .assign attr_type = "void"
  .assign attr_arglist_types = "  ${te_instance.handle},\n  const ${te_typemap.domain_number_name},\n  const ${te_typemap.object_number_name}"
  .assign attr_arglist = "  ${te_instance.handle} instance,\n  const ${te_typemap.domain_number_name} domain_num,\n  const ${te_typemap.object_number_name} class_num"
.end function
.//
.//============================================================================
.// Provide a name for the routine that will post links to the persistence
.// flush queue.
.//============================================================================
.function GetPersistentPostLinkName
  .select any te_instance from instances of TE_INSTANCE
  .select any te_prefix from instances of TE_PREFIX
  .select any te_typemap from instances of TE_TYPEMAP
  .assign attr_name = te_prefix.result + "PersistencePostLink"
  .assign attr_type = "void"
  .assign attr_arglist_types = "  const s1_t, const ${te_typemap.domain_number_name},\n  const ${te_typemap.object_number_name}, const ${te_typemap.instance_index_name},\n  ${te_instance.handle}, const ${te_typemap.object_number_name},\n  ${te_instance.handle}, const ${te_typemap.object_number_name},\n  ${te_instance.handle}, const ${te_typemap.object_number_name}"
  .assign attr_arglist = "  const s1_t operation, const ${te_typemap.domain_number_name} domain,\n  const ${te_typemap.object_number_name} owning_class, const ${te_typemap.instance_index_name} ri,\n  ${te_instance.handle} left, const ${te_typemap.object_number_name} l,\n   ${te_instance.handle} right, const ${te_typemap.object_number_name} r,\n  ${te_instance.handle} assoc, const ${te_typemap.object_number_name} a"
.end function
.//
.//============================================================================
.// Return the name of the extended attribute variable for use by
.// the persistent restore operation.  This attribute represents the
.// instance index of the class extent at time of persistent stowage
.// together with the class number (across domains) of the class.
.// Also return the types for this attribute variable.
.//============================================================================
.function GetPersistentInstanceIdentifierVariable
  .//
  .select any te_typemap from instances of TE_TYPEMAP
  .assign attr_domainnum_name = "domainnum"
  .assign attr_domainnum_type = te_typemap.domain_number_name
  .assign attr_classnum_name = "classnum"
  .assign attr_classnum_type = te_typemap.object_number_name
  .assign attr_index_name = "index"
  .assign attr_index_type = te_typemap.instance_index_name
  .assign attr_instid_typedef = "struct {\n  ${attr_domainnum_type} ${attr_domainnum_name};\n  ${attr_classnum_type} ${attr_classnum_name};\n  ${attr_index_type} ${attr_index_name};\n}"
  .assign attr_instid_type = "InstanceIdentifier_t"
  .assign attr_instid_name = "instance_identifier"
  .assign attr_dirty_type = "s1_t"
  .assign attr_dirty_name = "persist_dirty"
  .assign attr_dirty_dirty = 1
  .assign attr_dirty_clean = 0
.end function
.//
.//============================================================================
.// Return the constant name to be used for the domain class number set.
.//============================================================================
.function GetDomainClassNumberName
  .param string registered_domain
  .assign attr_result = registered_domain + "_CLASS_NUMBERS"
  .assign attr_union = registered_domain + "_CLASS_U"
  .assign attr_task_list = registered_domain + "_task_numbers"
  .assign attr_task_numbers = registered_domain + "_TASK_NUMBERS"
  .assign attr_max = registered_domain + "_MAX_CLASS_NUMBERS"
  .assign attr_max_models = registered_domain + "_STATE_MODELS"
.end function
.//
.//============================================================================
.// Return the constant name to be used for the class information set.
.//============================================================================
.function GetDomainClassInfoName
  .param string registered_domain
  .assign attr_result = registered_domain + "_CLASS_INFO_INIT"
  .assign attr_array_name = registered_domain + "_class_info"
.end function
.//
