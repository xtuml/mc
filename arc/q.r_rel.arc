.//============================================================================
.// $RCSfile: q.names.rels.arc,v $
.//
.// Description:
.// This archetype file contains utility functions for relationship namings
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
.// This function returns the name of the object member data to be used
.// for (optimized) storage of a link to a related object.
.//============================================================================
.function GetRelationshipDataMemberName
  .param inst_ref o_obj
  .param inst_ref r_rel
  .param string   rel_phrase
  .assign attr_result = ( o_obj.Key_Lett + "_R" ) + "${r_rel.Numb}"
  .assign attr_obj_id = ""
  .invoke r = GetRelationshipSuffix( o_obj, r_rel, rel_phrase )
  .assign suffix = r.result
  .assign attr_Mult = r.Mult
  .assign attr_assoc_type = r.assoc_type
  .if ( "" != suffix )
    .assign attr_result = attr_result + ( "_" + suffix )
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
