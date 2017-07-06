.// Get rid of 'side'
.// Get rid of double 'r_form'
.//
.function constraint_tmpl .// string
  .param string key_letters
  .param string Where_Clause
  .param integer Numb
select many $l{key_letters}s from instances of ${key_letters};
for each $l{key_letters} in $l{key_letters}s
    select many duplicate_$l{key_letters}s from instances of ${key_letters} where (${Where_Clause});
    if (cardinality duplicate_$l{key_letters}s) != 1
        LOG::LogInfo(message: "Uniqueness violation in ${key_letters} I$t{Numb}");
    end if;
end for;
.end function
.//
.function subtype_tmpl .// string
  .param string From
  .param string To
  .param integer Numb
  .param string Cardinality
select many $l{From}s from instances of ${From};
for each ${From}_Instance in $l{From}s
    select ${Cardinality} ${Cardinality}_${To}_Instance related by ${From}_Instance->${To}[R$t{Numb}];
    if empty ${Cardinality}_${To}_Instance
        LOG::LogInfo(message: "Integrity violation in ${From}->${To}[R$t{Numb}]");
        return False;
    end if;
end for;
.end function
.//
.function atleast_one_tmpl .// string
  .param string From
  .param string To
  .param integer Numb
  .param string Cardinality
  .param string Phrase
select many $l{From}s from instances of ${From};
for each ${From}_Instance in $l{From}s
.if ( ( "" != Phrase ) and ( ${From} == ${To} ) )
    select ${Cardinality} ${Cardinality}_${To}_Instance related by ${From}_Instance->${To}[R$t{Numb}.'${Phrase}'];
.else
    select ${Cardinality} ${Cardinality}_${To}_Instance related by ${From}_Instance->${To}[R$t{Numb}];
.end if
    if empty ${Cardinality}_${To}_Instance
        LOG::LogInfo(message: "Integrity violation in ${From}->${To}[R$t{Numb}.'${Phrase}']");
        return False;
    end if;
end for;
.end function
.//
.function supertype_loop_tmpl .// string
  .param string From
  .param integer Numb
  .param string Loop_Body
select many $l{From}s from instances of ${From};
for each ${From}_Instance in $l{From}s
    ${Loop_Body}
    LOG::LogInfo(message: "Integrity violation in R$t{Numb}");
    return False;
end for;
.end function
.//
.function supertype_body_tmpl .// string
  .param string From
  .param string To
  .param integer Numb
    select one one_${To}_Instance related by ${From}_Instance->${To}[R$t{Numb}];
    if not_empty one_${To}_Instance
        continue;
    end if;
.end function
.//
.function mk_simple_association_check .// string
  .param inst_ref r_simp
  .assign text = ""
  .assign cardinality = ""
  .select one r_rel related by r_simp->R_REL[R206]
  .select one r_part related by r_simp->R_PART[R207]
  .select one r_rto related by r_part->R_RTO[R204]
  .select one target_o_obj related by r_rto->R_OIR[R203]->O_OBJ[R201]
  .assign source_o_obj = target_o_obj
  .select one r_form related by r_simp->R_FORM[R208]
  .if ( not_empty r_form )
    .// formalized
    .select one r_rgo related by r_form->R_RGO[R205]
    .select one source_o_obj related by r_rgo->R_OIR[R203]->O_OBJ[R201]
  .else
    .// not formalized
    .select one r_form related by r_simp->R_PART[R207] where ( selected != r_part )
    .select one r_rto related by r_form->R_RTO[R204]
    .select one source_o_obj related by r_rto->R_OIR[R203]->O_OBJ[R201]
  .end if 
  .if ( not r_part.Cond )
    .if ( 0 == r_part.Mult )
      .assign cardinality = "one"
    .else
      .assign cardinality = "many"
    .end if
    .invoke r = atleast_one_tmpl(source_o_obj.Key_Lett, target_o_obj.Key_Lett, r_rel.Numb, cardinality, r_part.Txt_Phrs)
    .assign text = text + r.body
  .end if
  .if ( not r_form.Cond )
    .if ( 0 == r_form.Mult )
      .assign cardinality = "one"
    .else
      .assign cardinality = "many"
    .end if
    .invoke r = atleast_one_tmpl(target_o_obj.Key_Lett, source_o_obj.Key_Lett, r_rel.Numb, cardinality, r_form.Txt_Phrs)
    .assign text = text + r.body
  .end if
${text}
.end function
.//
.function check_link
  .param inst_ref side
  .param inst_ref r_rel
  .param inst_ref source_o_obj
  .select one r_rto related by side->R_RTO[R204]
  .select one target_o_obj related by r_rto->R_OIR[R203]->O_OBJ[R201]
  .assign text = ""
  .assign cardinality = ""
  .if ( 0 == side.Mult )
    .assign cardinality = "one"
  .else
    .assign cardinality = "many"
  .end if
  .invoke r = atleast_one_tmpl(target_o_obj.Key_Lett, source_o_obj.Key_Lett, r_rel.Numb, cardinality, side.Txt_Phrs)
  .assign text = r.body
  .if ( not side.Cond )
    .if ( 0 == side.Mult )
      .assign cardinality = "many"
    .else
      .assign cardinality = "one"
    .end if
    .invoke r = atleast_one_tmpl(source_o_obj.Key_Lett, target_o_obj.Key_Lett, r_rel.Numb, cardinality, side.Txt_Phrs)
    .assign text = text + r.body
  .end if
${text}
.end function
.//
.function mk_linked_association_check .// string
  .param inst_ref r_assoc
  .select one r_rel related by r_assoc->R_REL[R206]
  .select one r_rgo related by r_assoc->R_ASSR[R211]->R_RGO[R205]
  .select one source_o_obj related by r_rgo->R_OIR[R203]->O_OBJ[R201]
  .select one r_aone related by r_assoc->R_AONE[R209]
  .select one r_aoth related by r_assoc->R_AOTH[R210]
  .invoke r1 = check_link( r_aone, r_rel, source_o_obj )
  .invoke r2 = check_link( r_aoth, r_rel, source_o_obj )
${r1.body}${r2.body}
.end function
.//
.function mk_subsuper_association_check .// string
  .param inst_ref r_subsup
  .select one r_rel related by r_subsup->R_REL[R206]
  .select one r_rto related by r_subsup->R_SUPER[R212]->R_RTO[R204]
  .select one target_o_obj related by r_rto->R_OIR[R203]->O_OBJ[R201]
  .assign text = ""
  .assign loop_body = ""
  .select many r_subs related by r_subsup->R_SUB[R213]
  .for each r_sub in r_subs
    .select one r_rgo related by r_sub->R_RGO[R205]
    .select one source_o_obj related by r_rgo->R_OIR[R203]->O_OBJ[R201]
    .invoke r = subtype_tmpl(source_o_obj.Key_Lett, target_o_obj.Key_Lett, r_rel.Numb, "one")
    .assign text = text + r.body
    .invoke r = supertype_body_tmpl(target_o_obj.Key_Lett, source_o_obj.Key_Lett, r_rel.Numb)
    .assign loop_body = loop_body + r.body
  .end for
  .invoke r = supertype_loop_tmpl(target_o_obj.Key_Lett, r_rel.Numb, loop_body)
  .assign text = text + r.body
${text}
.end function
.//
.function mk_derived_association_check .// string
  .param inst_ref r_comp

.end function
.//
.function mk_unique_constraint_check .// string
  .param inst_ref o_id
  .select one o_obj related by o_id->O_OBJ[R104]
  .assign where_clause = ""
  .assign prefix = ""
  .select many o_oidas related by o_id->O_OIDA[R105]
  .for each o_oida in o_oidas
.//     clause = '(%s.%s == %s_Instance.%s)' % ('selected',
.//                                             o_oida.localAttributeName,
.//                                             o_obj.Key_Lett,
.//                                             o_oida.localAttributeName)
.//     where_clause += (prefix + clause)
.//     prefix = ' and '
.// 
.// if not where_clause:
.//     return ""
  .end for
  .invoke r = constraint_tmpl(o_obj.Key_Lett, where_clause, o_id.Oid_ID + 1)
${r.body}
.end function
.//
.function generate_actions .// string
  .assign text = ""
  .select many r_rels from instances of R_REL
  .for each r_rel in r_rels
    .select one r_simp related by r_rel->R_SIMP[R206]
    .if ( not_empty r_simp )
      .invoke r = mk_simple_association_check( r_simp )
      .assign text = text + r.body
    .else
      .select one r_assoc related by r_rel->R_ASSOC[R206]
      .if ( not_empty r_assoc )
        .invoke r = mk_linked_association_check( r_assoc )
        .assign text = text + r.body
      .else
        .select one r_subsup related by r_rel->R_SUBSUP[R206]
        .if ( not_empty r_subsup )
          .invoke r = mk_subsuper_association_check( r_subsup )
          .assign text = text + r.body
        .end if
      .end if
    .end if
  .end for
  .//
  .select many o_objs from instances of O_OBJ
  .select many o_ids related by o_objs->O_ID[R104]
  .for each o_id in o_ids
    .invoke r = mk_unique_constraint_check(o_id)
    .assign text = text + r.body
  .end for
  .//
  .assign text = ( text + "\n" ) + "return true;"
${text}
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
