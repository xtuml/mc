.//============================================================================
.// $RCSfile: q.names.arc,v $
.//
.// Description:
.// This archetype file contains utility functions for implementation namings
.// that span multiple archetype files.
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
  .assign result = ""
  .select one te_c related by to_o_obj->TE_CLASS[R2019]->TE_C[R2064]
  .if ( not_empty te_c )
    .assign result = "${te_c.Name}_${to_o_obj.Key_Lett}_R${r_rel.Numb}_From_${from_o_obj.Key_Lett}"
    .//
    .invoke r = GetRelationshipSuffix( to_o_obj, r_rel, rel_phrase )
    .assign suffix = r.result
    .if ( "" != suffix )
      .assign result = ( result + "_" ) + suffix
    .end if
  .end if
  .assign attr_result = result
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
  .assign attr_left_obj_is_aone = false
  .assign attr_reflexive = false
  .assign attr_name = ""
  .assign attr_result = ""
  .//
  .select one te_class related by assoc_o_obj->TE_CLASS[R2019]
  .if ( not_empty te_class )
    .select one aone related by r_rel->R_ASSOC[R206]->R_AONE[R209]
    .select one aoth related by r_rel->R_ASSOC[R206]->R_AOTH[R210]
    .if ( left_o_obj.Obj_Id == aone.Obj_ID )
      .assign attr_left_obj_is_aone = true
    .end if
    .//
    .assign associative_reflexive = false
    .if ( aone.Obj_Id == aoth.Obj_Id )
      .assign attr_reflexive = true
    .end if
    .//
    .assign attr_name = te_class.GeneratedName + "_R${r_rel.Numb}_Link"
    .assign attr_result = ( te_class.GeneratedName + "::" ) + attr_name
    .//
    .invoke r = GetRelationshipSuffix( right_o_obj, r_rel, rel_phrase )
    .assign suffix = r.result
    .if ( "" != suffix )
      .assign attr_name = ( attr_name + "_" ) + suffix
      .assign attr_result = ( attr_result + "_" ) + suffix
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
  .assign attr_left_obj_is_aone = false
  .assign attr_reflexive = false
  .assign attr_name = ""
  .assign attr_result = ""
  .//
  .select one te_class related by assoc_o_obj->TE_CLASS[R2019]
  .if ( not_empty te_class )
    .select one aone related by r_rel->R_ASSOC[R206]->R_AONE[R209]
    .select one aoth related by r_rel->R_ASSOC[R206]->R_AOTH[R210]
    .if ( left_o_obj.Obj_Id == aone.Obj_ID )
      .assign attr_left_obj_is_aone = true
    .end if
    .//
    .assign associative_reflexive = false
    .if ( aone.Obj_Id == aoth.Obj_Id )
      .assign attr_reflexive = true
    .end if
    .//
    .assign attr_name = te_class.GeneratedName + "_R${r_rel.Numb}_Unlink"
    .assign attr_result = ( te_class.GeneratedName + "::" ) + attr_name
    .//
    .invoke r = GetRelationshipSuffix( right_o_obj, r_rel, rel_phrase )
    .assign suffix = r.result
    .if ( "" != suffix )
      .assign attr_name = ( attr_name + "_" ) + suffix
      .assign attr_result = ( attr_result + "_" ) + suffix
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
  .invoke r = GetRelationshipSuffix( o_obj, r_rel, rel_phrase )
  .assign suffix = r.result
  .if ( "" != suffix )
    .assign attr_name = ( attr_name + "_" ) + suffix
    .assign attr_result = ( attr_result + "_" ) + suffix
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
  .invoke r = GetRelationshipSuffix( o_obj, r_rel, rel_phrase )
  .assign suffix = r.result
  .if ( "" != suffix )
    .assign attr_name = ( attr_name + "_" ) + suffix
    .assign attr_result = ( attr_result + "_" ) + suffix
  .end if
  .select any te_target from instances of TE_TARGET
  .if ( "C" == te_target.language )
    .assign attr_result = attr_name
  .end if
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
  .assign name = ""
  .assign result = ""
  .assign formalizing_o_obj = left_o_obj
  .assign participant_o_obj = right_o_obj
  .//
  .invoke r = TE_REL_IsLeftFormalizer( left_o_obj, right_o_obj, r_rel, rel_phrase )
  .assign left_is_formalizer = r.result
  .if ( not left_is_formalizer )
    .assign formalizing_o_obj = right_o_obj
    .assign participant_o_obj = left_o_obj
  .end if
  .//
  .select one te_class related by formalizing_o_obj->TE_CLASS[R2019]
  .if ( not_empty te_class )
    .assign name = te_class.GeneratedName + "_R${r_rel.Numb}_Link"
    .assign result = ( te_class.GeneratedName + "::" ) + name
  .end if
  .//
  .invoke r = GetRelationshipSuffix( formalizing_o_obj, r_rel, rel_phrase )
  .assign suffix = r.result
  .if ( "" != suffix )
    .assign name = ( name + "_" ) + suffix
    .assign result = ( result + "_" ) + suffix
  .end if
  .assign attr_result = result
  .select any te_target from instances of TE_TARGET
  .if ( "C" == te_target.language )
    .assign attr_result = name
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
  .assign name = ""
  .assign result = ""
  .assign formalizing_o_obj = left_o_obj
  .assign participant_o_obj = right_o_obj
  .//
  .invoke r = TE_REL_IsLeftFormalizer( left_o_obj, right_o_obj, r_rel, rel_phrase )
  .assign left_is_formalizer = r.result
  .if ( not left_is_formalizer )
    .assign formalizing_o_obj = right_o_obj
    .assign participant_o_obj = left_o_obj
  .end if
  .//
  .select one te_class related by formalizing_o_obj->TE_CLASS[R2019]
  .if ( not_empty te_class )
    .assign name = te_class.GeneratedName + "_R${r_rel.Numb}_Unlink"
    .assign result = ( te_class.GeneratedName + "::" ) + name
  .end if
  .//
  .invoke r = GetRelationshipSuffix( formalizing_o_obj, r_rel, rel_phrase )
  .assign suffix = r.result
  .if ( "" != suffix )
    .assign name = ( name + "_" ) + suffix
    .assign result = ( result + "_" ) + suffix
  .end if
  .assign attr_result = result
  .select any te_target from instances of TE_TARGET
  .if ( "C" == te_target.language )
    .assign attr_result = name
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
