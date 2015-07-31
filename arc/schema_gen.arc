.//============================================================================
.// This archetype produces an SQL schema from a BridgePoint Model.
.// The schema is suitable for use with BridgePoint gen_import.
.//============================================================================
.//
.// To fix up the schema by hand after generating
.//   1.  RESOLVED - Order attributes are added for schema_gen and for the MCs sake.
.//   2.  RESOLVED - "," at the end is because sometimes there is an attribute in the ooa that 
.//       is not meant for the schema.  schema_gen is not skilled enough to put the 
.//       ");" instead of the comma.
.//   3.  Delete the Document subsystem.
.//   4.  RESOLVED - Add Descrip onto S_DPK, because Sony uses it to mark data type packages.
.//       Hopefully, this will resolve over time.
.//   5.  E_GEE... somebody re-formalized an association and switched the order 
.//       (at some point).  But, E_GEE is not supported by the tool, so leave this
.//       one alone.
.//   6.  I_AVL and I_DIV.  These changes are from deleting the Runtime Value SS. 
.//       When we do that the formalizing attribute RuntimeValue_ID goes away in 
.//       Instance SS classes. So we need to put the attribute back in, because the 
.//       data could be present in the exported model data.
.//   7.  RESOLVED - I_TIM expiration.  We cannot have Inst<mapping>, change to INTEGER.
.//   8.  O_RAVR gets deleted. It has no attributes and generator can't handle this.
.//   9.  Places where C (conditionality) has been added is because we have gotten 
.//       MC errors that we should not.  In some cases, it's possible the ooaofoaa 
.//       is wrong but have not resolved.
.//   10.  ROP TE_SWC to O_OBJ.  Cort forgets exactly why we make this change, but 
.//        there is a reason.
.//   11. Omit CSME_* entries if they are in the output.  Perhaps automate this later.
.//   12. All Specialized Package stuff is omitted from the MC schema now.
.//
.//============================================================================
.// NOTE:
.// MC-Java's schema_gen reads the environment vars and populates a local
.// variable named external_use.  But the MC schema gen ignores the 
.// TRANSLATE_FOR_EXTERNAL_USE flag in the model by hardcoding the value to 
.// false in places where it is used.
.//============================================================================
.// Return <result> the full directory path to which the generated file
.// should be emitted.
.//============================================================================
.function GetSchemaDirectory
  .assign attr_result = ""
  .assign env_var_name = "ROX_OUTPUT_SRC_DIR"
  .invoke env_frag = GET_ENV_VAR( env_var_name )
  .assign attr_result = env_frag.result
  .if ( "${attr_result}" == "" )
    .print "ERROR:  Environment variable ${env_var_name} not set."
    .exit 100
  .end if
.end function
.//
.//============================================================================
.// Return <result> the name of the generated file to be emitted.
.//============================================================================
.function GetSchemaFileName
  .assign attr_result = "xtumlmc_schema.sql"
.end function
.//
.//============================================================================
.// AddSpecialAttrs
.//   Adds special-case attribute to some classes for the model compiler or
.//   customer use.  These additions used to be done by hand.  This function 
.//   does them automatically.
.//
.// Inputs:
.// <obj_key_lett>   : string
.//============================================================================
.function AddSpecialAttrs
  .param string obj_key_lett
  .//
  .assign addOrder = false
  .assign addDescrip = false
  .//
  .if ( obj_key_lett == "R_REL" )
    .assign addOrder = true
  .elif ( obj_key_lett == "C_EP" )
    .assign addOrder = true
  .elif ( obj_key_lett == "O_OBJ" )
    .assign addOrder = true
  .elif ( obj_key_lett == "V_PAR" )
    .assign addOrder = true
  .elif ( obj_key_lett == "EP_PKG" )
    .assign addOrder = true
  .end if
  .if ( addOrder )
,
	Order	INTEGER\
  .end if
  .if ( addDescrip )
,
	Descrip	STRING\
  .end if
.end function
.//
.//============================================================================
.// CreateObjectSQLTableEntry
.//   Create an SQL table <body> for the given object instance reference <obj>.
.// The general form of the table is as follows:
.//
.// CREATE TABLE <key_lett> ( <attr_n> <type_n>, ... );
.//
.// Where:
.// <key_lett> is the key letters of the object.
.// <attr_n> is the name of an attribute.
.// <type_n> is the data type of the attribute
.// 
.// Notes:
.// 1) The order of the attributes is specified by R103. We need to navigate
.//    this to assure attributes are emitted in the same order in which they
.//    appear on the OIM. You can't trust a simple "for each" loop for this,
.//    since the order of the set would be the same as that in which the
.//    O_ATTR inserts appear in the models SQL.
.//============================================================================
.function CreateObjectSQLTableEntry
  .param inst_ref obj
  .param string translate_for_ext
  .//
  .assign external_use = "FALSE"
  .assign objTranslate = "${obj.descrip:TRANSLATE}"
  .assign trans_obj = true
  .if ( (obj.Key_Lett == "KEY") or (objTranslate == "FALSE") )
    .assign trans_obj = false
  .end if
  .if ((external_use == "TRUE") and (translate_for_ext == "FALSE"))
    .assign trans_obj = false
  .end if
  .assign translate_for_ext = "${obj.descrip:TRANSLATE_FOR_EXTERNAL_USE}"
.//  
  .if ((external_use == "TRUE") and (translate_for_ext == "FALSE"))
    .assign trans_obj = false
  .end if
  .if( trans_obj )
    .// 
-- Class:  ${obj.Numb}.  ${obj.Name}
    .select many attr_set related by obj->O_ATTR[R102]  
    .if ( not_empty attr_set )
      .// Get an empty current attribute. 
      .select any current_attr related by obj->O_ATTR[R102] where (selected.Name == "")
      .//
      .// Set the current attribute to the first attribute.
      .for each attr in attr_set
        .select one previous_attr related by attr->O_ATTR[R103.'precedes']
        .if ( empty previous_attr )
          .assign current_attr = attr
          .break for
        .end if
      .end for
      .//
      .assign first_attr = true
CREATE TABLE ${obj.Key_Lett} (
      .while ( not_empty current_attr )
        .select one next_attr related by current_attr->O_ATTR[R103.'succeeds']
        .assign trans_attr = true
        .assign translate_for_ext = "${current_attr.descrip:TRANSLATE_FOR_EXTERNAL_USE}"
        .assign persistent = "${current_attr.descrip:Persistent}"     
        .if (((external_use == "TRUE") and (translate_for_ext == "FALSE")) or (persistent == "false"))
          .assign trans_attr = false
        .end if
        .assign visible = "${current_attr.descrip:User_Visible}"     
        .if (visible == "false")
          .// This one affects Action_Semantics_internal as well as others.
          .//.assign trans_attr = false
        .end if
        .if ( trans_attr )
          .if ( not first_attr )
,
          .end if
          .assign first_attr = false
          .invoke sql_data_type = GetAttributeSQLDataType( current_attr )
          .if ( current_attr.Name == "Action_Semantics_internal" )
	Action_Semantics	${sql_data_type.result}\
          .else
	${current_attr.Name}	${sql_data_type.result}\
          .end if
        .end if
        .if ( empty next_attr )
          .invoke special_attrs = AddSpecialAttrs( obj.Key_Lett )
${special_attrs.body} );
        .end if
        .assign current_attr = next_attr
      .end while
    .else
      .assign error_msg = "ERROR:  Class ${obj.Name} (${obj.Key_Lett}) has no attributes."
      .print "${error_msg}"
-- ${error_msg}
    .end if
  .end if
.end function
.//
.//
.//============================================================================
.// CreateROP_REF_ID
.//   Create a Related Object Pair (ROP) Referential ID statement in <body>.
.// The general form of the ROP REF_ID is as follows:
.//
.// CREATE  ROP  REF_ID  R<rel_num>  FROM  <mult-cond> <obj> (<ref_attr>, ...)
.//                                    [ PHRASE '<from-rel-phrase>' ]
.//                                  TO  <mult-cond> <obj> (<id_attr>, ...)
.//                                    [ PHRASE '<to-rel-phrase>' ];
.//
.// Inputs:
.// <rel_num>         - Relationship number.
.// <from_mc>         - Multiplicity/Conditionality on the FROM side.
.// <from_obj_kl>     - Key letters of the object on the FROM side.
.// <ref_attrs>       - Referential attribute(s) in the referring object.
.// <from_rel_phrase> - Relationship phrase on the FROM side.
.// <to_mc>           - Multiplicity/Conditionality on the TO side.
.// <to_obj_kl>       - Key letters of the object on the TO side.
.// <id_attrs>        - Identifying attribute(s) in the referred to object.
.// <to_rel_phrase>   - Relationship phrase on the TO side.
.//
.// Notes:
.// 1) The FROM component reflects the Referring Object In Relationship (R_RGO).
.//    e.g. object whose referential attribute(s) formalize the relationship.
.// 2) The TO component reflects the Referred To Object In Relationship (R_RTO).
.//    e.g. object contain the identifying attribute(s) which are referred
.//    to in the relationship.
.// 3) The PHRASE components reflects are required for refexive relationships,
.//    and are simply the relationship phrases
.//============================================================================
.function CreateROP_REF_ID
  .param integer rel_num
  .param string  from_mc
  .param string  from_obj_kl
  .param string  ref_attrs
  .param string  from_rel_phrase
  .param string  to_mc
  .param string  to_obj_kl
  .param string  id_attrs
  .param string  to_rel_phrase
  .//
CREATE ROP REF_ID R${rel_num}	FROM ${from_mc} $ru{from_obj_kl}	(${ref_attrs}\
  .//
  .if ( "${to_rel_phrase}" != "" )
) PHRASE '${to_rel_phrase}'
  .else
)
  .end if
  .//
			  TO ${to_mc} $ru{to_obj_kl}	(${id_attrs}\
  .if ( "${from_rel_phrase}" != "" )
) PHRASE '${from_rel_phrase}';\
  .else
);\
  .end if
  .//
.end function
.//
.//============================================================================
.//   Create <body> the SQL object tables for all objects in the subsystem <ss>.
.//============================================================================
.function CreateSQLObjectTablesForSubsystem
  .param inst_ref ep_pkg
  .//
  .assign translate = "TRUE"
  .assign translate = "${ep_pkg.descrip:TRANSLATE}"
  .if ( translate != "FALSE" )
  .assign translate_for_ext = "${ep_pkg.descrip:TRANSLATE_FOR_EXTERNAL_USE}"
  .select many obj_set related by ep_pkg->PE_PE[R8000]->O_OBJ[R8001]
  .if ( not_empty obj_set )
-- ============================================================================
-- Classes In Package:  ${ep_pkg.Name}  
-- ============================================================================

    .invoke SortAscendingByNumbAttr( obj_set )
    .assign item_count = cardinality obj_set
    .assign item_number = 0
    .//
    .while ( item_number < item_count )
      .for each obj in obj_set
        .if ( obj.Order == item_number )
          .invoke obj_sql_table = CreateObjectSQLTableEntry( obj, translate_for_ext )
${obj_sql_table.body}
          .break for
        .end if
      .end for
      .assign item_number = item_number + 1
    .end while
  .end if 
  .end if 
.end function
.//
.//============================================================================
.//   Create <body> the Related Object Pair (ROP) statements for all
.// relationships in the subsystem <ss>.
.//============================================================================
.function CreateSQLRelationshipsForSubsystem
  .param inst_ref ep_pkg
  .//
  .assign translate = "TRUE"
  .assign translate = "${ep_pkg.descrip:TRANSLATE}"
  .if ( translate != "FALSE" )
    .select many relationship_set related by ep_pkg->PE_PE[R8000]->R_REL[R8001]
    .if ( not_empty relationship_set )
-- ============================================================================
-- Relationships In Package:  ${ep_pkg.Name}  
-- ============================================================================
  
      .invoke SortAscendingByNumbAttr( relationship_set )
      .assign item_count = cardinality relationship_set
      .assign item_number = 0
      .//
      .while ( item_number < item_count )
        .//
        .for each rel in relationship_set
          .if ( rel.Order == item_number )
            .assign trans_rel = true
            .assign external_use = "FALSE"
            .select many part_objects related by rel->R_OIR[R201]->O_OBJ[R201]
            .for each part_object in part_objects
              .assign objTranslate = "${part_object.descrip:TRANSLATE}"
              .if (objTranslate == "FALSE")
                .assign trans_rel = false
              .end if
              .assign translate_for_ext = "${part_object.descrip:TRANSLATE_FOR_EXTERNAL_USE}"
              .if ((external_use == "TRUE") and (translate_for_ext == "FALSE"))
                .assign trans_rel = false
              .end if
            .end for
            .if ( trans_rel )
            .select one simple_rel related by rel->R_SIMP[R206]
            .select one subsup_rel related by rel->R_SUBSUP[R206]
            .select one assoc_rel related by rel->R_ASSOC[R206]
            .select one comp_rel related by rel->R_COMP[R206]
            .//
            .if ( not_empty simple_rel )
            .invoke relationship = CreateSimpleRelationshipROP( rel )
${relationship.body}
            .elif ( not_empty subsup_rel )
              .invoke relationship = CreateSubSuperTypeRelationshipROP( rel )
${relationship.body}
            .elif ( not_empty assoc_rel )
              .invoke relationship = CreateAssociativeRelationshipROP( rel )
${relationship.body}
            .elif ( not_empty comp_rel )
              .invoke relationship = CreateCompositionRelationshipROP( rel )
${relationship.body}
            .end if
            .//
            .end if
            .break for
          .end if
        .end for
        .assign item_number = item_number + 1
      .end while
    .end if
  .end if
.end function
.//
.//============================================================================
.//   Create <body> the Related Object Pair (ROP) statement for the simple
.// relationship instance <rel>.
.//============================================================================
.function CreateSimpleRelationshipROP
  .param inst_ref rel
  .//
  .assign error_msg = ""
  .//
  .select one obj_as_formalizer related by rel->R_SIMP[R206]->R_FORM[R208]
  .if ( not_empty obj_as_formalizer )
    .select one referring_obj related by obj_as_formalizer->R_RGO[R205]
    .select any formalizer_obj related by referring_obj->R_OIR[R203]->O_OBJ[R201] where (selected.Obj_ID == obj_as_formalizer.Obj_ID)
    .invoke form_mc = GetMultCondPhrase( obj_as_formalizer.Mult, obj_as_formalizer.Cond )
    .//
    .select one obj_as_participant related by rel->R_SIMP[R206]->R_PART[R207]
    .if ( not_empty obj_as_participant )
      .select one referred_to_obj related by obj_as_participant->R_RTO[R204]
      .select any participant_obj related by referred_to_obj->R_OIR[R203]->O_OBJ[R201] where (selected.Obj_ID == obj_as_participant.Obj_ID)
      .invoke part_mc = GetMultCondPhrase( obj_as_participant.Mult, obj_as_participant.Cond )
      .//
      .assign from_phrase = ""
      .assign to_phrase   = ""
      .if ( formalizer_obj.Obj_ID == participant_obj.Obj_ID )
        .// Reflexive relationship - include the phrasing.
        .assign from_phrase = obj_as_formalizer.Txt_Phrs
        .assign to_phrase   = obj_as_participant.Txt_Phrs
      .end if
      .//
      .assign ref_attrs = ""
      .assign id_attrs  = ""
      .select one obj_identifier related by referred_to_obj->O_ID[R109]
      .if ( not_empty obj_identifier )
         .invoke rop_attrs = GetRelatedAttributes( referring_obj, referred_to_obj )
         .assign ref_attrs = rop_attrs.ref_attr_list
         .assign id_attrs  = rop_attrs.id_attr_list
      .end if
      .//
      .invoke rop = CreateROP_REF_ID( rel.Numb, form_mc.result, formalizer_obj.Key_Lett, ref_attrs, from_phrase, part_mc.result, participant_obj.Key_Lett, id_attrs, to_phrase)
${rop.body}
    .else
      .assign error_msg = "Note:  R${rel.Numb} is unformalized (no participant:  R_PART)"
      .print "${error_msg}"
-- ${error_msg}
    .end if
  .else
    .assign error_msg = "Note:  R${rel.Numb} is unformalized (no formalizer:  R_FORM)"
    .print "${error_msg}"
-- ${error_msg}
  .end if
.end function
.//
.//============================================================================
.// CreateAssociativeRelationshipROP
.//   Create <body> the Related Object Pair (ROP) statements for the 
.// associative relationship instance <rel>.
.//
.// Notes:
.// 1) The Object As Associator (R_ASSR) is always the referring object in the
.// relationship (e.g. FROM).
.// 2) Note that the seemingly "reversed" multiplicity/conditionality on the
.// FROM side is actually correct.
.//============================================================================
.function CreateAssociativeRelationshipROP
  .param inst_ref rel
  .//
  .assign error_msg = ""
  .//
  .select one obj_as_associator related by rel->R_ASSOC[R206]->R_ASSR[R211]
  .if ( not_empty obj_as_associator )
    .select one referring_obj related by obj_as_associator->R_RGO[R205]
    .//
    .select any associator_obj related by referring_obj->R_OIR[R203]->O_OBJ[R201] where (selected.Obj_ID == obj_as_associator.Obj_ID)
    .// NOTE:  The multiplicity-conditionality on the associative object must always
    .// be 1-unconditional for the schema.
    .//
    .invoke assoc_mc = GetMultCondPhrase( 0, 0 )
    .//
    .select one obj_as_one_side related by rel->R_ASSOC[R206]->R_AONE[R209]
    .select any one_side_obj related by obj_as_one_side->R_RTO[R204]->R_OIR[R203]->O_OBJ[R201] where (selected.Obj_ID == obj_as_one_side.Obj_ID)
    .invoke one_mc = GetMultCondPhrase( obj_as_one_side.Mult, obj_as_one_side.Cond )
    .//
    .select one obj_as_other_side related by rel->R_ASSOC[R206]->R_AOTH[R210]
    .select any other_side_obj related by obj_as_other_side->R_RTO[R204]->R_OIR[R203]->O_OBJ[R201] where (selected.Obj_ID == obj_as_other_side.Obj_ID)
    .invoke other_mc = GetMultCondPhrase( obj_as_other_side.Mult, obj_as_other_side.Cond )
    .//
    .assign from_phrase = ""
    .assign to_phrase   = ""
    .if ( obj_as_one_side.Obj_ID == obj_as_other_side.Obj_ID )
      .// !!! NOTE:  I may have the relationship phrases reversed here.
      .// Can't convince myself either way...
      .assign from_phrase = obj_as_one_side.Txt_Phrs
      .assign to_phrase   = obj_as_other_side.Txt_Phrs
    .end if
    .//
    .select one one_referred_obj related by obj_as_one_side->R_RTO[R204]
    .select one other_referred_obj related by obj_as_other_side->R_RTO[R204]
    .//
    .assign ref_attrs = ""
    .assign id_attrs  = ""
    .select one obj_identifier related by one_referred_obj->O_ID[R109]
    .if ( not_empty obj_identifier )
      .invoke rop_attrs = GetRelatedAttributes( referring_obj, one_referred_obj )
      .assign ref_attrs = rop_attrs.ref_attr_list
      .assign id_attrs  = rop_attrs.id_attr_list
      .// Handle the "Object As Associated One Side" (R_AONE)
      .invoke rop = CreateROP_REF_ID( rel.Numb, other_mc.result, associator_obj.Key_Lett, ref_attrs, from_phrase, assoc_mc.result, one_side_obj.Key_Lett, id_attrs, to_phrase)
${rop.body}
    .else
      .assign error_msg = "Note:  R${rel.Numb} is unformalized from associative ${associator_obj.Key_Lett} to ${one_side_obj.Key_Lett}"
      .print "${error_msg}"
-- ${error_msg}
    .end if

    .assign ref_attrs = ""
    .assign id_attrs  = ""
    .select one obj_identifier related by other_referred_obj->O_ID[R109]
    .if ( not_empty obj_identifier )
      .invoke rop_attrs = GetRelatedAttributes( referring_obj, other_referred_obj )
      .assign ref_attrs = rop_attrs.ref_attr_list
      .assign id_attrs  = rop_attrs.id_attr_list
      .// Handle the "Object As Associated Other Side" (R_AOTH)
      .invoke rop = CreateROP_REF_ID( rel.Numb, one_mc.result, associator_obj.Key_Lett, ref_attrs, from_phrase, assoc_mc.result, other_side_obj.Key_Lett, id_attrs, to_phrase)
${rop.body}
    .else
      .assign error_msg = "Note:  R${rel.Numb} is unformalized from associative ${associator_obj.Key_Lett} to ${other_side_obj.Key_Lett}"
      .print "${error_msg}"
-- ${error_msg}
    .end if
  .else
    .assign error_msg = "ERROR:  R${rel.Numb} has no object as associator (R_ASSR)"
    .print "${error_msg}"
-- ${error_msg}
  .end if
.end function
.//
.//============================================================================
.// CreateSubSuperTypeRelationshipROP
.//   Create <body> the Related Object Pair (ROP) statements for the 
.// subtype/supertype relationship instance <rel>.
.//============================================================================
.function CreateSubSuperTypeRelationshipROP
  .param inst_ref rel
  .//
  .assign error_msg = ""
  .//
  .select one supertype related by rel->R_SUBSUP[R206]->R_SUPER[R212]
  .select one referred_to_obj related by supertype->R_RTO[R204]
  .//
  .select any supertype_obj related by supertype->R_RTO[R204]->R_OIR[R203]->O_OBJ[R201] where (selected.Obj_ID == supertype.Obj_ID)
  .//
  .select many subtype_set related by rel->R_SUBSUP[R206]->R_SUB[R213]
  .if ( not_empty subtype_set )
    .for each subtype in subtype_set
      .select one referring_obj related by subtype->R_RGO[R205]
      .select any subtype_obj from instances of O_OBJ where (selected.Obj_ID == subtype.Obj_ID)
      .//
      .assign ref_attrs = ""
      .assign id_attrs  = ""
      .select one obj_identifier related by referred_to_obj->O_ID[R109]
      .if ( not_empty obj_identifier )
         .invoke rop_attrs = GetRelatedAttributes( referring_obj, referred_to_obj )
         .assign ref_attrs = rop_attrs.ref_attr_list
         .assign id_attrs  = rop_attrs.id_attr_list
         .if ( (rel.Numb >= 2000) and (rel.Numb < 3000) )
           .// Allow 'floating subtypes' in translation extentions subsystem.
         .invoke rop = CreateROP_REF_ID( rel.Numb, "1C", subtype_obj.Key_Lett, ref_attrs, "", "1C", supertype_obj.Key_Lett, id_attrs, "")
${rop.body}
         .else
         .invoke rop = CreateROP_REF_ID( rel.Numb, "1C", subtype_obj.Key_Lett, ref_attrs, "", "1 ", supertype_obj.Key_Lett, id_attrs, "")
${rop.body}
         .end if
      .else
        .assign error_msg = "Note:  R${rel.Numb} is unformalized from subtype ${subtype_obj.Key_Lett} to supertype ${supertype_obj.Key_Lett}"
        .print "${error_msg}"
-- ${error_msg}
      .end if
      .//
      .// Leave a bank line between ROPs.
      .if ( not_last subtype_set )

      .end if
    .end for
  .else
    .assign error_msg = "ERROR:  R${rel.Numb} supertype ${supertype_obj.Key_Lett} has no subtypes"
    .print "${error_msg}"
-- ${error_msg}
  .end if
.end function
.//
.//============================================================================
.// CreateCompositionRelationshipROP
.//   Create <body> the Related Object Pair (ROP) statement for the 
.// composition relationship instance <rel>.
.// Notes:
.// 1) NOT IMPLEMENTED
.//============================================================================
.function CreateCompositionRelationshipROP
  .param inst_ref rel
  .//
  .select one comp related by rel->R_COMP[R206]
  .//
  .select one one_side related by comp->R_CONE[R214]
  .select one one_side_oir related by one_side->R_OIR[R203]
  .invoke one_mc = GetMultCondPhrase( one_side.Mult, one_side.Cond )
  .select any one_obj from instances of O_OBJ where (selected.Obj_ID == one_side_oir.Obj_ID)
  .//
  .select one other_side related by comp->R_COTH[R215]
  .select one other_side_oir related by other_side->R_OIR[R203]
  .invoke other_mc = GetMultCondPhrase( other_side.Mult, other_side.Cond )
  .select any other_obj from instances of O_OBJ where (selected.Obj_ID == other_side_oir.Obj_ID)
  .//
  .assign error_msg = "WARNING:  R${rel.Numb} is COMPOSITION:  NOT SUPPORTED"
  .assign info_msg  = "R${rel.Numb} = ${comp.Rel_Chn} is $r{one_mc.result}:$r{other_mc.result} from (${one_obj.Key_Lett}) to (${other_obj.Key_Lett})"
  .//
  .print "${error_msg}"
  .print "${info_msg}"
-- ${error_msg}
-- ${info_msg}
.end function
.//
.//============================================================================
.// Inputs:
.// <rgo> - Instance reference to Referring Object In Rel (R_RGO).
.// <rto> - Instance reference to Referred To Object In Rel (R_RTO).
.//
.// Returns:
.// <ref_attr_list> - String. A comma seperated list of the referential
.// attributes in the object which formalizes the relationship.
.// <id_attr_list>  - String. A comma seperated list of the identifying
.// attributes in the object which is referred to in the relationship.
.//
.// Notes:
.// 1) There is a local boolean "paranoid" which determines if the cardinality
.// of various relationships in the SQL are correct. This paranoia is a hold
.// over from bugs known in models created using BP 3.2.0.x with associative
.// reflexive relationships. The sanity checks are off by default, but are
.// left in for re-enabling during during model compiler upgrades. This
.// _really_ slows things down, so only enable it when truely "paranoid".
.//============================================================================
.function GetRelatedAttributes
  .param inst_ref rgo
  .param inst_ref rto
  .//
  .assign attr_ref_attr_list = ""
  .assign attr_id_attr_list  = ""
  .assign error_msg = ""
  .assign paranoid = TRUE
  .//
  .select one oid related by rto->O_ID[R109]
  .if ( not_empty oid )
    .select many oida_set related by oid->O_OIDA[R105]
    .for each oida in oida_set
      .//
      .// Get the Referred To Identifier Attribute (O_RTIDA) instance reference
      .if ( paranoid == TRUE )
        .// There should only be *one* of these, so we check the cardinality first.
        .select many rtida_set related by rto->O_RTIDA[R110] where ((selected.Attr_ID == oida.Attr_ID) and (selected.Oid_ID == oida.Oid_ID))
        .if ( (cardinality rtida_set) != 1 )
          .select any referring_obj from instances of O_OBJ where (selected.Obj_ID == rgo.Obj_ID)
          .select any referred_to_obj from instances of O_OBJ where (selected.Obj_ID == rto.Obj_ID)
          .select any rel from instances of R_REL where (selected.Rel_ID == rgo.Rel_ID)
          .assign card = cardinality rtida_set
          .print "ERROR:  Cardinality of O_RTIDA is ${card}, should be one!"
          .print "        Referring Object (R_RTO):  ${referring_obj.Name} (${referring_obj.Key_Lett})"
          .print "        Referred to Object (R_RGO):  ${referred_to_obj.Name} (${referred_to_obj.Key_Lett})"
          .print "        Relationship:  R${rel.Numb}"
          .//.exit 100
        .end if
      .end if
      .//
      .select any rtida related by rto->O_RTIDA[R110] where ((selected.Attr_ID == oida.Attr_ID) and (selected.Oid_ID == oida.Oid_ID))
      .//
      .// Get the Attribute Reference In Object (O_REF) instance reference
      .if ( paranoid == TRUE )
        .// There should only be *one* of these, so we check the cardinality first.
        .select many ref_set related by rtida->O_REF[R111] where ((selected.Obj_ID == rgo.Obj_ID) and (selected.OIR_ID == rgo.OIR_ID))
        .if ( (cardinality ref_set) != 1 )
          .select any referring_obj from instances of O_OBJ where (selected.Obj_ID == rgo.Obj_ID)
          .select any referred_to_obj from instances of O_OBJ where (selected.Obj_ID == rto.Obj_ID)
          .select any rel from instances of R_REL where (selected.Rel_ID == rgo.Rel_ID)
          .assign card = cardinality ref_set
          .print "ERROR:  Cardinality of O_REF is ${card}, should be one!"
          .print "        Referring Object (R_RTO):  ${referring_obj.Name} (${referring_obj.Key_Lett})"
          .print "        Referred to Object (R_RGO):  ${referred_to_obj.Name} (${referred_to_obj.Key_Lett})"
          .print "        Relationship:  R${rel.Numb}"
          .//.exit 101
        .end if
      .end if 
      .//
      .select any ref related by rtida->O_REF[R111] where ((selected.Obj_ID == rgo.Obj_ID) and (selected.OIR_ID == rgo.OIR_ID))
      .if ( empty ref )
        .print "ERROR:  Cardinality of O_REF is 0, should be one!"
      .end if
      .select one ref_attr related by ref->O_RATTR[R108]->O_ATTR[R106]
      .if ( empty ref_attr )
        .print "ERROR:  Cardinality of O_RATTR is 0, should be one!"
      .end if
      .//
      .// Get the identifying attribute in the referred to object that
      .// corresponds to the referential attribute just found.
      .if ( paranoid == TRUE )
        .// There should only be *one* of these, so we check the cardinality first.
        .select many id_attr_set related by oida->O_ATTR[R105] where ((selected.Attr_ID == oida.Attr_ID) and (selected.Obj_ID == oida.Obj_ID))
        .if ( (cardinality id_attr_set) != 1 )
          .assign card = cardinality id_attr_set
          .select any referring_obj from instances of O_OBJ where (selected.Obj_ID == rgo.Obj_ID)
          .select any referred_to_obj from instances of O_OBJ where (selected.Obj_ID == rto.Obj_ID)
          .select any rel from instances of R_REL where (selected.Rel_ID == rgo.Rel_ID)
          .assign card = cardinality ref_set
          .print "ERROR:  Cardinality of O_ATTR is ${card}, should be one!"
          .print "        Referring Object (R_RTO):  ${referring_obj.Name} (${referring_obj.Key_Lett})"
          .print "        Referred to Object (R_RGO):  ${referred_to_obj.Name} (${referred_to_obj.Key_Lett})"
          .print "        Relationship:  R${rel.Numb}"
          .exit 102
        .end if
      .end if 
      .//
      .select any id_attr related by oida->O_ATTR[R105] where ((selected.Attr_ID == oida.Attr_ID) and (selected.Obj_ID == oida.Obj_ID))
      .//
      .// Add the attributes to the comparison lists.
      .assign attr_ref_attr_list = attr_ref_attr_list + "${ref_attr.Name}"\
      .assign attr_id_attr_list  = attr_id_attr_list + "${id_attr.Name}"\
      .if ( not_last oida_set )
        .assign attr_ref_attr_list = attr_ref_attr_list + ", " \
        .assign attr_id_attr_list  = attr_id_attr_list + ", " \
      .end if
      .//
    .end for
  .else
    .select any rel from instances of R_REL where (selected.Rel_ID == rgo.Rel_ID)
    .assign error_msg = "ERROR:  R${rel.Numb} is unformalized (no object identifier:  O_ID)"
    .print "${error_msg}"
-- ${error_msg}
  .end if
.end function
.//
.//============================================================================
.// GetMultCondPhrase
.//   Return <result> the multiplicity/conditionality string to be used in a
.// ROP statement.
.//
.// Inputs:
.// <multiplicity>   : 0 = one, 1 = many
.// <conditionality> : 0 = unconditional, 1 = conditional
.//============================================================================
.function GetMultCondPhrase
  .param integer multiplicity
  .param integer conditionality
  .//
  .assign attr_result = "??"
  .if ( multiplicity == 0 )
    .if ( conditionality == 0 )
      .assign attr_result = "1 "
    .elif ( conditionality == 1 )
      .assign attr_result = "1C"
    .end if 
  .elif ( multiplicity == 1 )
    .if ( conditionality == 0 )
      .assign attr_result = "M "
    .elif ( conditionality == 1 )
      .assign attr_result = "MC"
    .end if 
  .end if
.end function
.//
.//============================================================================
.//   Return <result> the SQL data type associated with the given attribute
.// instance reference <attr>. If the data type is not implemented, the
.// actual name of the core type (e.g. inst_ref<Object>) will be returned.
.// This should cause an error which will indicate that the given core data
.// type needs to be implemented.
.//
.// BP gen_import only supports BOOLEAN, INTEGER, REAL, STRING, or UNIQUE_ID.
.//============================================================================
.function GetAttributeSQLDataType
  .param inst_ref attr
  .//
  .assign attr_result = ""
  .invoke data_type = GetAttributeCoreDataType( attr )
  .assign cdt = data_type.result
  .//
  .if ( cdt.Core_Typ == 0 )
    .assign attr_result = "VOID"
  .elif ( cdt.Core_Typ == 1 )
    .assign attr_result = "BOOLEAN"
  .elif ( cdt.Core_Typ == 2 )
    .assign attr_result = "INTEGER"
  .elif ( cdt.Core_Typ == 3 )
    .assign attr_result = "REAL"    
  .elif ( cdt.Core_Typ == 4 )
    .assign attr_result = "STRING"        
  .elif ( cdt.Core_Typ == 5 )
    .assign attr_result = "UNIQUE_ID"           
  .elif ( cdt.Core_Typ == 6 )
    .// current_state
    .assign attr_result = "INTEGER"
  .elif ( cdt.Core_Typ == 7 )
    .assign attr_result = "same_as<Base_Attribute>"
  .elif ( cdt.Core_Typ == 8 )
    .assign attr_result = "inst_ref<Object>"
  .elif ( cdt.Core_Typ == 9 )
    .assign attr_result = "inst_ref_set<Object>"
  .elif ( cdt.Core_Typ == 10 )
    .assign attr_result = "inst<Event>"
  .elif ( cdt.Core_Typ == 11 )
    .// inst<Mapping>
    .assign attr_result = "INTEGER"
  .elif ( cdt.Core_Typ == 12 )
    .// inst_ref<Mapping>
    .assign attr_result = "INTEGER"
  .else
    .assign attr_result = "Undefined: ${cdt.Core_Typ}"
  .end if
.end function
.//
.//============================================================================
.//   Return <result> the core data type (an instance of S_CDT) of the given 
.// attribute instance reference <attr>.
.//============================================================================
.function GetAttributeCoreDataType
  .param inst_ref attr
  .//
  .select one dt related by attr->S_DT[R114]
  .if ( empty dt )
    .exit 102
  .end if
  .select one cdt related by dt->S_CDT[R17]
  .if ( empty cdt )
    .select one cdt related by dt->S_UDT[R17]->S_DT[R18]->S_CDT[R17]
  .end if
  .if ( empty cdt )
    .select one edt related by dt->S_EDT[R17]
    .if ( not_empty edt )
      .// Enumeration Data Type (S_EDT) - give it a core type of integer.
      .select any cdt from instances of S_CDT where ( selected.Core_Typ == 2 )
    .else
      .print "Unable to find core data type for ${dt.Name}."
      .exit 103
    .end if
  .end if
  .// If the data type is "same_as<Base_Attribute>" (7), recursively call
  .// this function to get to the base attribute type.
  .if ( cdt.Core_Typ == 7 )
    .select one base_attribute related by attr->O_RATTR[R106]->O_BATTR[R113]->O_ATTR[R106]
    .if ( empty base_attribute )
      .print "Name of erroneous attribute is ${attr.Name}"
      .print "Name of erroneous dt is ${dt.Name}"
      .select one obj related by attr->O_OBJ[R102]
      .print "Name of erroneous class is ${obj.Name}"
      .select any cdt from instances of S_CDT where ( selected.Core_Typ == 5 )
    .else
      .invoke base_data_type = GetAttributeCoreDataType( base_attribute )
      .assign cdt = base_data_type.result
    .end if
  .end if
  .assign attr_result = cdt
.end function
.//
.//============================================================================
.//   Sort the instances in the instance set <item_set> in ascending numeric
.// order, based on the value of the "Numb" (integer) attribute value of
.// each instance. The "Order" (integer) attribute value of each instance will
.// be set to contain a value relative to "Numb", indicating the position
.// the instance has in the ordered set.
.//   This function is definately *slow*, but will work with any objects
.// which contain integer attributes <Numb> and <Order>.
.//============================================================================
.function SortAscendingByNumbAttr
  .param inst_ref_set item_set
  .//
  .for each item in item_set
    .assign item.Order = 0
  .end for
  .//
  .assign item_set2 = item_set
  .for each item1 in item_set
    .for each item2 in item_set2
      .if ( item1.Numb != item2.Numb )
        .if ( item2.Numb > item1.Numb )
          .assign item2.Order = item2.Order + 1
        .end if 
      .end if
    .end for
  .end for
.end function
.//
.//============================================================================
.//   Sort the subsystems instance set <ep_pkgs> in ascending numeric
.// order, based on the value of the object number range of the subsystems.
.// The "Order" (integer) attribute value of each subsystem instance will
.// be set to contain a value relative to "Num_Rng", indicating the position
.// the subsystem instance has in the ordered set.
.//============================================================================
.function SortSubsystemByObjNumber
  .param inst_ref_set ep_pkgs
  .//
  .for each ep_pkg in ep_pkgs
    .assign ep_pkg.Order = 0
  .end for
  .//
  .assign copy_ep_pkgs = ep_pkgs
  .for each ep_pkg in ep_pkgs
    .for each copy_ep_pkg in copy_ep_pkgs
      .if ( ss.Num_Rng != copy_ep_pkg.Num_Rng )
        .if ( copy_ep_pkg.Num_Rng > ep_pkg.Num_Rng )
          .assign copy_ep_pkg.Order = copy_ep_pkg.Order + 1
        .end if 
      .end if
    .end for
  .end for
.end function
.//
.//
.//
.//============================================================================
.// Given a set of instances, sets the attribute Order to
.// a value corresponding to the alphabetical order its Name attribute
.// is in the set
.//
.// <item_set> - from instances of anything with Name and Order attributes
.//============================================================================
.function SortSetAlphabeticallyByNameAttrib
  .param inst_ref_set item_set
  .//
  .// Clear the 'Order' attribute of all set members.
  .for each item in item_set
    .assign item.Order = 0
  .end for
  .//
  .assign item_set_copy = item_set
  .for each item in item_set
    .for each item_copy in item_set_copy
      .if ( item.Name != item_copy.Name )
        .if ( item_copy.Name > item.Name )
          .assign item_copy.Order = item_copy.Order + 1
        .end if
      .end if
    .end for
  .end for
.end function
.//============================================================================
.// CreateFileHeader
.//   Create the file header for the schema in <body>.
.//============================================================================
.function CreateFileHeader
  .//
.invoke schema_file = GetSchemaFileName()
-- ============================================================================
-- $$RCSfile: schema_gen.arc,v $$
--
-- Description:
-- This file provides an SQL schema suitable for use with the
-- BridgePoint Model Compilers.
--
-- Model Data:  ooaofooa
--
--              !!! THIS IS AN AUTO-GENERATED FILE. !!!
--   Any extensions added via hand editing of this file will need to be
-- manually carried forward across subsequent releases of the Model Compiler.
-- ============================================================================
.end function
.//
.//============================================================================
.// Main body
.//============================================================================
.//
.invoke schema_file = GetSchemaFileName()
.invoke schema_path = GetSchemaDirectory()
.//
.invoke header = CreateFileHeader()
${header.body}
.//
.select any ep_pkg from instances of EP_PKG where ( selected.Name == "ooaofooa" )
.assign translate = "TRUE"
.assign translate = "${ep_pkg.Descrip:TRANSLATE}"
.if ( translate != "FALSE" )
  .//
  .// Sort the subsystems into assending order
  .//.select many ep_pkgs related by ep_pkg->PE_PE[R8000]->EP_PKG[R8001] where ( selected.Name != "Translation Extensions" ) and ( selected.Name != "Translation Marking" ) and ( selected.Name != "Translation OAL" )
  .//
  .select many ep_pkgs related by ep_pkg->PE_PE[R8000]->EP_PKG[R8001]
    .select many nested_ep_pkgs related by ep_pkgs->PE_PE[R8000]->EP_PKG[R8001]
    .assign ep_pkgs = ep_pkgs | nested_ep_pkgs
  .invoke SortSetAlphabeticallyByNameAttrib( ep_pkgs )
  .assign count  = cardinality ep_pkgs
  .assign number = 0
  .//
  .while ( number < count )
    .for each ep_pkg in ep_pkgs
      .if ( ep_pkg.Order == number )
        .invoke obj_table = CreateSQLObjectTablesForSubsystem( ep_pkg )
${obj_table.body}
        .break for
      .end if
    .end for
    .assign number = number + 1
  .end while
  .//
  .// *** Relationships
  .assign number = 0
  .//
  .while ( number < count )
    .for each ep_pkg in ep_pkgs
      .if ( ep_pkg.Order == number )
        .invoke obj_table = CreateSQLRelationshipsForSubsystem( ep_pkg )
${obj_table.body}
        .break for
      .end if
    .end for
    .assign number = number + 1
  .end while
.end if
.//
.emit to file "${schema_path.result}/${schema_file.result}"
.//
.//============================================================================
.//============================================================================
