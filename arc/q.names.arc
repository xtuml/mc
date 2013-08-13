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
.function GetFixedSizeClassExtentInfo .// string
  .param inst_ref te_class
  .assign attr_result = ( "pG_" + te_class.GeneratedName ) + "_extent"
.end function
.//
.//============================================================================
.function GetNavigateLinkMethodName .// string
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
.function GetAssociativeLinkMethodName .// string
  .param inst_ref left_o_obj
  .param inst_ref right_o_obj
  .param inst_ref assoc_o_obj
  .param inst_ref r_rel
  .param string   rel_phrase
  .//
  .assign result = ""
  .select one te_class related by assoc_o_obj->TE_CLASS[R2019]
  .if ( not_empty te_class )
    .select one aone related by r_rel->R_ASSOC[R206]->R_AONE[R209]
    .select one aoth related by r_rel->R_ASSOC[R206]->R_AOTH[R210]
    .//
    .assign name = te_class.GeneratedName + "_R${r_rel.Numb}_Link"
    .assign result = ( te_class.GeneratedName + "::" ) + name
    .//
    .invoke r = GetRelationshipSuffix( assoc_o_obj, r_rel, rel_phrase )
    .assign suffix = r.result
    .if ( "" != suffix )
      .assign name = ( name + "_" ) + suffix
      .assign result = ( result + "_" ) + suffix
    .end if
    .select any te_target from instances of TE_TARGET
    .if ( "C" == te_target.language )
      .assign result = name
    .end if
  .end if
  .assign attr_result = result
.end function
.//
.//============================================================================
.function GetAssociativeUnlinkMethodName .// string
  .param inst_ref left_o_obj
  .param inst_ref right_o_obj
  .param inst_ref assoc_o_obj
  .param inst_ref r_rel
  .param string   rel_phrase
  .//
  .assign result = ""
  .select one te_class related by assoc_o_obj->TE_CLASS[R2019]
  .if ( not_empty te_class )
    .select one aone related by r_rel->R_ASSOC[R206]->R_AONE[R209]
    .select one aoth related by r_rel->R_ASSOC[R206]->R_AOTH[R210]
    .//
    .assign name = te_class.GeneratedName + "_R${r_rel.Numb}_Unlink"
    .assign result = ( te_class.GeneratedName + "::" ) + name
    .//
    .invoke r = GetRelationshipSuffix( assoc_o_obj, r_rel, rel_phrase )
    .assign suffix = r.result
    .if ( "" != suffix )
      .assign name = ( name + "_" ) + suffix
      .assign result = ( result + "_" ) + suffix
    .end if
    .select any te_target from instances of TE_TARGET
    .if ( "C" == te_target.language )
      .assign result = name
    .end if
  .end if
  .assign attr_result = result
.end function
.//
.//============================================================================
.function GetRelateToName
  .param inst_ref o_obj
  .param inst_ref r_rel
  .param string   rel_phrase
  .assign result = ""
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .if ( not_empty te_class )
    .assign name = te_class.GeneratedName + "_R${r_rel.Numb}_Link"
    .assign result = ( te_class.GeneratedName + "::" ) + name
    .invoke r = GetRelationshipSuffix( o_obj, r_rel, rel_phrase )
    .assign suffix = r.result
    .if ( "" != suffix )
      .assign name = ( name + "_" ) + suffix
      .assign result = ( result + "_" ) + suffix
    .end if
    .select any te_target from instances of TE_TARGET
    .if ( "C" == te_target.language )
      .assign result = name
    .end if
  .end if
  .assign attr_result = result
.end function
.//
.//============================================================================
.function GetUnrelateFromName
  .param inst_ref o_obj
  .param inst_ref r_rel
  .param string   rel_phrase
  .assign result = ""
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .if ( not_empty te_class )
    .assign name = te_class.GeneratedName + "_R${r_rel.Numb}_Unlink"
    .assign result = ( te_class.GeneratedName + "::" ) + name
    .invoke r = GetRelationshipSuffix( o_obj, r_rel, rel_phrase )
    .assign suffix = r.result
    .if ( "" != suffix )
      .assign name = ( name + "_" ) + suffix
      .assign result = ( result + "_" ) + suffix
    .end if
    .select any te_target from instances of TE_TARGET
    .if ( "C" == te_target.language )
      .assign result = name
    .end if
  .end if
  .assign attr_result = result
.end function
.//
.//============================================================================
.// Return the name of the object relationship container array.
.// This array of containoids is used to optimize relationships when
.// there are preexisting instances.
.//============================================================================
.function PEIGetRelationshipSetContainerName .// string
  .param inst_ref te_class
  .assign attr_result = te_class.GeneratedName + "_rel_set_lists"
.end function
.//
.//============================================================================
.// Return the name and type of the domain dispatcher.
.//============================================================================
.function GetDomainDispatcherTableName .// string
  .param string registered_name
  .assign attr_result = registered_name + "_EventDispatcher"
  .assign attr_element_type = "EventTaker_t"
.end function
.//
.//============================================================================
.function GetSuperTypePolymorphicEventMethodName .// string
  .param inst_ref te_class
  .param inst_ref r_rel
  .assign attr_result = te_class.GeneratedName + "_R${r_rel.Numb}PolymorphicEvent"
.end function
.//
.//============================================================================
.function GetDomainTypeIDFromString .// string
  .param string dom_name
  .assign attr_result = "$r{dom_name}" + "_DOMAIN_ID"
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
