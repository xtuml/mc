.// TODO - compare referential attribute values
.// TODO - _exactly_ one subtype
.//
.// Iterate over the given class.
.function t_class_instance_iteration .// string
  .param string key_letters
  .param string inner_body
select many $l{key_letters}s from instances of ${key_letters};
for each $l{key_letters} in $l{key_letters}s
${inner_body}
end for;
.end function
.//
.// Ensure no duplicate instance identifiers.
.function t_duplication .// string
  .param string key_letters
  .param string where_clause
  .param integer Numb
  select many duplicate_$l{key_letters}s from instances of ${key_letters} where ( ${where_clause} );
  if ( cardinality duplicate_$l{key_letters}s != 1 )
    LOG::LogInfo( message: "uniqueness violation in ${key_letters} for identifier $t{Numb}" );
    break;
  end if;
.end function
.//
.// Select across link to required instance.
.function t_participation .// string
  .param string left_side
  .param string right_side
  .param integer Numb
  .param string multiplicity
  .param string phrase
  .param string attribute_comparison
  .if ( "" != phrase )
  select ${multiplicity} $l{right_side} related by $l{left_side}->${right_side}[R$t{Numb}.'${phrase}'];
  .else
  select ${multiplicity} $l{right_side} related by $l{left_side}->${right_side}[R$t{Numb}];
  .end if
  if ( empty $l{right_side} )
  .if ( "" != phrase )
    LOG::LogInfo( message: "instance not found ${left_side}->${right_side}[R$t{Numb}.'${phrase}']" );
  .else
    LOG::LogInfo( message: "instance not found ${left_side}->${right_side}[R$t{Numb}]" );
  .end if
    break;
  .if ( "" != attribute_comparison )
  else
    if ( not ( ${attribute_comparison} ) )
      LOG::LogInfo( message: "referentials do not match identifiers between ${left_side} and ${right_side}" );
      break;
    end if;
  .end if
  end if;
.end function
.//
.// Loop through looking for a subtype.
.function t_supertype_loop .// string
  .param string super
  .param integer Numb
  .param string Loop_Body
${Loop_Body}
  LOG::LogInfo( message: "subtype not found from ${super} across R$t{Numb}" );
  break;
.end function
.//
.// Be sure supertype is present.
.function t_sub_to_super .// string
  .param string sub
  .param string super
  .param integer Numb
  select one $l{super} related by $l{sub}->${super}[R$t{Numb}];
  if ( empty $l{super} )
    LOG::LogInfo( message: "supertype not found across ${sub}->${super}[R$t{Numb}]" );
    break;
  end if;
.end function
.//
.// Look for a particular subtype.
.function t_super_to_sub .// string
  .param string super
  .param string sub
  .param integer Numb
  select one $l{sub} related by $l{super}->${sub}[R$t{Numb}];
  if ( not_empty $l{sub} )
    continue;
  end if;
.end function
.//
.function instance_uniqueness .// string
  .param inst_ref o_id
  .select one o_obj related by o_id->O_OBJ[R104]
  .assign where_clause = ""
  .assign prefix = ""
  .select many o_oidas related by o_id->O_OIDA[R105]
  .for each o_oida in o_oidas
    .assign clause = "selected." + o_oida.localAttributeName + " == " + $l{o_obj.Key_Lett} + "." + o_oida.localAttributeName
    .assign where_clause = where_clause + prefix + clause
    .assign prefix = " and "
  .end for
  .invoke r = t_duplication( o_obj.Key_Lett, where_clause, o_id.Oid_ID + 1 )
${r.body}
.end function
.//
.function compare_referentials_to_identifiers
  .param string rto_name
  .param string rgo_name
  .param inst_ref r_rto
  .param inst_ref r_rgo
  .//
  .assign where_clause = ""
  .assign conjunction = ""
  .select many o_oidas related by r_rto->O_ID[R109]->O_OIDA[R105]
  .for each o_oida in o_oidas
    .// Get the identifying attribute corresponding to this <o_oida> instance.
    .select any o_attr related by o_oida->O_ATTR[R105] where (selected.Attr_ID == o_oida.Attr_ID)
    .select any o_rtida related by r_rto->O_RTIDA[R110] where ((selected.Attr_ID == o_oida.Attr_ID) and ((selected.Obj_ID == o_oida.Obj_ID) and (selected.Oid_ID == o_oida.Oid_ID)))
    .// There can be more than one valid O_REF here, so get _any_ one.
    .// Note:  If MANY <o_rtida>, we need to rip through the (possible) combined referentials,
    .// unlinking any non-constrained elements.
    .select any o_ref related by o_rtida->O_REF[R111] where ( (selected.Obj_ID == r_rgo.Obj_ID) and (selected.OIR_ID == r_rgo.OIR_ID) )
    .// Get the referential attribute corresponding to the current <o_attr>.
    .select one ref_o_attr related by o_ref->O_RATTR[R108]->O_ATTR[R106]
    .select one o_dbattr related by o_attr->O_BATTR[R106]->O_DBATTR[R107]
    .// template here
    .assign clause = rto_name + "." + o_attr.Name + " == " + rgo_name + "." + ref_o_attr.Name
    .assign where_clause = where_clause + conjunction + clause
    .assign conjunction = " and "
  .end for
${where_clause}\
.end function
.//
.function participant_participation .// string
  .param inst_ref o_obj
  .select many r_parts related by o_obj->R_OIR[R201]->R_RTO[R203]->R_PART[R204]
  .for each r_part in r_parts
    .select one r_simp related by r_part->R_SIMP[R207]
    .select one r_rel related by r_simp->R_REL[R206]
    .select one ep_pkg related by r_rel->PE_PE[R8001]->EP_PKG[R8000]
    .invoke r = in_ep_pkg( ep_pkg, "ooaofooa" )
    .if ( r.result )
      .select one r_form related by r_simp->R_FORM[R208]
      .if ( not_empty r_form )
        .if ( not r_form.Cond )
          .select one r_rgo related by r_form->R_RGO[R205]
          .select one target_o_obj related by r_rgo->R_OIR[R203]->O_OBJ[R201]
          .assign card = "one"
          .if ( r_form.Mult )
            .assign card = "any"
          .end if
          .assign phrase = ""
          .if ( r_part.Obj_ID == r_form.Obj_ID )
            .assign phrase = r_form.Txt_Phrs
          .end if
          .select one r_rto related by r_part->R_RTO[R204]
          .invoke r = compare_referentials_to_identifiers( $l{o_obj.Key_Lett}, $l{target_o_obj.Key_Lett}, r_rto, r_rgo )
          .assign comparison = r.body
          .invoke r = t_participation( o_obj.Key_Lett, target_o_obj.Key_Lett, r_rel.Numb, card, phrase, comparison )
  // participant participation R$t{r_rel.Numb}:  ${o_obj.Name}(${o_obj.Key_Lett}) -> ${target_o_obj.Name}(${target_o_obj.Key_Lett})
${r.body}
        .end if
      .else
  // unformalized association R$t{r_rel.Numb}
      .end if
    .end if
  .end for
.end function
.//
.function formalizer_participation .// string
  .param inst_ref o_obj
  .select many r_forms related by o_obj->R_OIR[R201]->R_RGO[R203]->R_FORM[R205]
  .for each r_form in r_forms
    .select one r_simp related by r_form->R_SIMP[R208]
    .select one r_rel related by r_simp->R_REL[R206]
    .select one ep_pkg related by r_rel->PE_PE[R8001]->EP_PKG[R8000]
    .invoke r = in_ep_pkg( ep_pkg, "ooaofooa" )
    .if ( r.result )
      .select one r_part related by r_simp->R_PART[R207]
      .if ( not r_part.Cond )
        .select one target_o_obj related by r_part->R_RTO[R204]->R_OIR[R203]->O_OBJ[R201]
        .assign card = "one"
        .if ( r_part.Mult )
          .assign card = "any"
        .end if
        .assign phrase = ""
        .if ( r_part.Obj_ID == r_form.Obj_ID )
          .assign phrase = r_part.Txt_Phrs
        .end if
        .invoke r = t_participation( o_obj.Key_Lett, target_o_obj.Key_Lett, r_rel.Numb, card, phrase, "" )
  // formalizer participation R$t{r_rel.Numb}:  ${o_obj.Name}(${o_obj.Key_Lett}) -> ${target_o_obj.Name}(${target_o_obj.Key_Lett})
${r.body}
      .end if
    .end if
  .end for
.end function
.//
.function associator_participation .// string
  .param inst_ref o_obj
  .select many r_assrs related by o_obj->R_OIR[R201]->R_RGO[R203]->R_ASSR[R205]
  .for each r_assr in r_assrs
    .select one r_assoc related by r_assr->R_ASSOC[R211]
    .select one r_rel related by r_assoc->R_REL[R206]
    .select one ep_pkg related by r_rel->PE_PE[R8001]->EP_PKG[R8000]
    .invoke r = in_ep_pkg( ep_pkg, "ooaofooa" )
    .if ( r.result )
      .select one r_aone related by r_assoc->R_AONE[R209]
      .select one r_aoth related by r_assoc->R_AOTH[R210]
      .select one aone_o_obj related by r_aone->R_RTO[R204]->R_OIR[R203]->O_OBJ[R201]
      .select one aoth_o_obj related by r_aoth->R_RTO[R204]->R_OIR[R203]->O_OBJ[R201]
      .assign phrase = ""
      .if ( r_aone.Obj_ID == r_aoth.Obj_ID )
        .assign phrase = r_aone.Txt_Phrs
      .end if
      .invoke r = t_participation( o_obj.Key_Lett, aone_o_obj.Key_Lett, r_rel.Numb, "one", phrase, "" )
  // associator one participation R$t{r_rel.Numb}:  ${o_obj.Name}(${o_obj.Key_Lett}) -> ${aone_o_obj.Name}(${aone_o_obj.Key_Lett})
${r.body}
      .assign phrase = ""
      .if ( r_aone.Obj_ID == r_aoth.Obj_ID )
        .assign phrase = r_aoth.Txt_Phrs
      .end if
      .invoke r = t_participation( o_obj.Key_Lett, aoth_o_obj.Key_Lett, r_rel.Numb, "one", phrase, "" )
  // associator other participation R$t{r_rel.Numb}:  ${o_obj.Name}(${o_obj.Key_Lett}) -> ${aoth_o_obj.Name}(${aoth_o_obj.Key_Lett})
${r.body}
    .end if
  .end for
.end function
.//
.function aone_participation .// string
  .param inst_ref o_obj
  .select many r_aones related by o_obj->R_OIR[R201]->R_RTO[R203]->R_AONE[R204]
  .for each r_aone in r_aones
    .select one r_assoc related by r_aone->R_ASSOC[R209]
    .select one r_rel related by r_assoc->R_REL[R206]
    .select one ep_pkg related by r_rel->PE_PE[R8001]->EP_PKG[R8000]
    .invoke r = in_ep_pkg( ep_pkg, "ooaofooa" )
    .if ( r.result )
      .select one r_aoth related by r_assoc->R_AOTH[R210]
      .if ( not r_aoth.Cond )
        .select one target_o_obj related by r_assoc->R_ASSR[R211]->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201]
        .assign phrase = ""
        .if ( r_aone.Obj_ID == r_aoth.Obj_ID )
          .assign phrase = r_aoth.Txt_Phrs
        .end if
        .assign card = "one"
        .if ( r_aoth.Mult )
          .assign card = "any"
        .end if
        .invoke r = t_participation( o_obj.Key_Lett, target_o_obj.Key_Lett, r_rel.Numb, card, phrase, "" )
  // aone participation R$t{r_rel.Numb}:  ${o_obj.Name}(${o_obj.Key_Lett}) -> ${target_o_obj.Name}(${target_o_obj.Key_Lett})
${r.body}
      .end if
    .end if
  .end for
.end function
.//
.function aoth_participation .// string
  .param inst_ref o_obj
  .select many r_aoths related by o_obj->R_OIR[R201]->R_RTO[R203]->R_AOTH[R204]
  .for each r_aoth in r_aoths
    .select one r_assoc related by r_aoth->R_ASSOC[R210]
    .select one r_rel related by r_assoc->R_REL[R206]
    .select one ep_pkg related by r_rel->PE_PE[R8001]->EP_PKG[R8000]
    .invoke r = in_ep_pkg( ep_pkg, "ooaofooa" )
    .if ( r.result )
      .select one r_aone related by r_assoc->R_AONE[R209]
      .if ( not r_aone.Cond )
        .select one target_o_obj related by r_assoc->R_ASSR[R211]->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201]
        .assign phrase = ""
        .if ( r_aone.Obj_ID == r_aoth.Obj_ID )
          .assign phrase = r_aone.Txt_Phrs
        .end if
        .assign card = "one"
        .if ( r_aone.Mult )
          .assign card = "any"
        .end if
        .invoke r = t_participation( o_obj.Key_Lett, target_o_obj.Key_Lett, r_rel.Numb, card, phrase, "" )
  // aoth participation R$t{r_rel.Numb}:  ${o_obj.Name}(${o_obj.Key_Lett}) -> ${target_o_obj.Name}(${target_o_obj.Key_Lett})
${r.body}
      .end if
    .end if
  .end for
.end function
.//
.function supertype_participation .// string
  .param inst_ref o_obj
  .assign loop_body = ""
  .select many r_supers related by o_obj->R_OIR[R201]->R_RTO[R203]->R_SUPER[R204]
  .for each r_super in r_supers
    .select one r_subsup related by r_super->R_SUBSUP[R212]
    .select one r_rel related by r_subsup->R_REL[R206]
    .select one ep_pkg related by r_rel->PE_PE[R8001]->EP_PKG[R8000]
    .invoke r = in_ep_pkg( ep_pkg, "ooaofooa" )
    .if ( r.result )
      .select many r_subs related by r_subsup->R_SUB[R213]
      .for each r_sub in r_subs
        .select one source_o_obj related by r_sub->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201]
        .invoke r = t_super_to_sub( o_obj.Key_Lett, source_o_obj.Key_Lett, r_rel.Numb )
        .assign loop_body = loop_body + r.body
      .end for
      .invoke r = t_supertype_loop( o_obj.Key_Lett, r_rel.Numb, loop_body )
  // super to sub participation R$t{r_rel.Numb}:  supertype ${o_obj.Name}(${o_obj.Key_Lett})
${r.body}
    .end if
  .end for
.end function
.//
.function subtype_participation .// string
  .param inst_ref o_obj
  .select many r_subs related by o_obj->R_OIR[R201]->R_RGO[R203]->R_SUB[R205]
  .for each r_sub in r_subs
    .select one r_subsup related by r_sub->R_SUBSUP[R213]
    .select one r_rel related by r_subsup->R_REL[R206]
    .select one ep_pkg related by r_rel->PE_PE[R8001]->EP_PKG[R8000]
    .invoke r = in_ep_pkg( ep_pkg, "ooaofooa" )
    .if ( r.result )
      .select one target_o_obj related by r_subsup->R_SUPER[R212]->R_RTO[R204]->R_OIR[R203]->O_OBJ[R201]
      .invoke r = t_sub_to_super( o_obj.Key_Lett, target_o_obj.Key_Lett, r_rel.Numb )
  // sub to super participation R$t{r_rel.Numb}:  ${o_obj.Name}(${o_obj.Key_Lett}) -> ${target_o_obj.Name}(${target_o_obj.Key_Lett})
${r.body}
    .end if
  .end for
.end function
.//
.// Return true if the element exists (nested) in the given package name.
.function in_ep_pkg .// boolean
  .param inst_ref ep_pkg
  .param string ep_pkg_Name
  .assign inpkg = false
  .if ( not_empty ep_pkg )
    .if ( ep_pkg_Name == ep_pkg.Name )
      .assign inpkg = true
    .else
      .select one ep_pkg related by ep_pkg->PE_PE[R8001]->EP_PKG[R8000]
      .invoke r = in_ep_pkg( ep_pkg, ep_pkg_Name )
      .assign inpkg = r.result
    .end if
  .end if
  .assign attr_result = inpkg
.end function
.//
.function generate_actions .// string
// For each class in the model do the following:
//   Search for duplicate identifiers in the instance extent.
//   Find unconditional formalizer from a participant in a simple association.
//   Find unconditional participant from a formalizer in a simple association.
//   For an associator in a linked association ensure both ends have an instance.
//   For the one end of an associative, find the unconditional associator.
//   For the other end of an associative, find the unconditional associator.
//   For a subtype, be sure a supertype is present.
//   For a supertype, be sure exactly one subtype is present.
// Show only the first violation of any particular rule in each extent.
  .select many o_objs from instances of O_OBJ
  .for each o_obj in o_objs
    .select one ep_pkg related by o_obj->PE_PE[R8001]->EP_PKG[R8000]
    .invoke r = in_ep_pkg( ep_pkg, "ooaofooa" )
    .if ( r.result )
      .assign text = ""
      .select many o_ids related by o_obj->O_ID[R104]
      .for each o_id in o_ids
        .select one o_oida related by o_id->O_OIDA[R105]
        .if ( not_empty o_oida )
          .invoke r = instance_uniqueness( o_id )
          .assign text = text + r.body
        .end if
      .end for
      .// participant
      .invoke r = participant_participation( o_obj )
      .assign text = text + r.body
      .// formalizer
      .invoke r = formalizer_participation( o_obj )
      .assign text = text + r.body
      .// associator
      .invoke r = associator_participation( o_obj )
      .assign text = text + r.body
      .// aone
      .invoke r = aone_participation( o_obj )
      .assign text = text + r.body
      .// aoth
      .invoke r = aoth_participation( o_obj )
      .assign text = text + r.body
      .// subtype
      .invoke r = subtype_participation( o_obj )
      .assign text = text + r.body
      .// supertype
      .invoke r = supertype_participation( o_obj )
      .assign text = text + r.body
      .// iterate
      .invoke r = t_class_instance_iteration( o_obj.Key_Lett, text )
${r.body}
    .end if
  .end for
  .//
.end function
.//
.function ooaofooa_check_referential_integrity .// string
  .invoke r = generate_actions()
${r.body}
.end function
.//
.invoke r = ooaofooa_check_referential_integrity()
${r.body}
.emit to file "../ooa.txt"
