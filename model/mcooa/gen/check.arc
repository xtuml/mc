.// Select R_OIRs instead of R_RELs and figure out how to avoid repeatedly selecting classes?
.// Get rid of double 'r_form'
.// Be sure supertype does not allow more than one.
.// Be sure we are checking atleastone on Sub/Super.
.//
.function class_instance_iteration1 .// string
  .param string key_letters
  .param string inner_body
select many $l{key_letters}s from instances of ${key_letters};
for each $l{key_letters} in $l{key_letters}s
${inner_body}\
.end function
.//
.function class_instance_iteration2 .// string
end for;
.end function
.//
.function constraint_tmpl .// string
  .param string key_letters
  .param string Where_Clause
  .param integer Numb
  select many duplicate_$l{key_letters}s from instances of ${key_letters} where (${Where_Clause});
  if ( cardinality duplicate_$l{key_letters}s != 1 )
    LOG::LogInfo(message: "uniqueness violation in ${key_letters} for identifier $t{Numb}");
    break;
  end if;
.end function
.//
.function sub_to_super .// string
  .param string sub
  .param string super
  .param integer Numb
  select one super_$l{super} related by $l{sub}->${super}[R$t{Numb}];
  if ( empty super_$l{super} )
    LOG::LogInfo(message: "supertype not found across ${sub}->${super}[R$t{Numb}]");
    break;
  end if;
.end function
.//
.function atleast_one_tmpl .// string
  .param string From
  .param string To
  .param integer Numb
  .param string multiplicity
  .param string phrase
select many $l{From}s from instances of ${From};
for each $l{From} in $l{From}s
.if ( "" != phrase )
  select ${multiplicity} ${multiplicity}_$l{To} related by $l{From}->${To}[R$t{Numb}.'${phrase}'];
.else
  select ${multiplicity} ${multiplicity}_$l{To} related by $l{From}->${To}[R$t{Numb}];
.end if
  if ( empty ${multiplicity}_$l{To} )
    LOG::LogInfo(message: "Integrity violation in ${From}->${To}[R$t{Numb}.'${phrase}']");
    break;
  end if;
end for;
.end function
.//
.function supertype_loop_tmpl .// string
  .param string From
  .param integer Numb
  .param string Loop_Body
${Loop_Body}
  LOG::LogInfo(message: "subtype not found from ${From} across R$t{Numb}");
  break;
.end function
.//
.function super_to_sub .// string
  .param string From
  .param string To
  .param integer Numb
  select one $l{To} related by $l{From}->${To}[R$t{Numb}];
  if ( not_empty $l{To} )
    continue;
  end if;
.end function
.//
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
    .select one source_o_obj related by r_form->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201]
  .else
    .// not formalized
    .select one r_form related by r_simp->R_PART[R207] where ( selected != r_part )
    .select one r_rto related by r_form->R_RTO[R204]
    .select one source_o_obj related by r_rto->R_OIR[R203]->O_OBJ[R201]
  .end if 
  .if ( not r_part.Cond )
    .if ( r_part.Mult )
      .assign cardinality = "many"
    .else
      .assign cardinality = "one"
    .end if
    .assign phrase = ""
    .if ( r_part.Obj_ID == r_form.Obj_ID )
      .assign phrase = r_part.Txt_Phrs
    .end if
    .invoke r = atleast_one_tmpl(source_o_obj.Key_Lett, target_o_obj.Key_Lett, r_rel.Numb, cardinality, phrase)
    .assign text = text + r.body
  .end if
  .if ( not r_form.Cond )
    .if ( r_form.Mult )
      .assign cardinality = "many"
    .else
      .assign cardinality = "one"
    .end if
    .assign phrase = ""
    .if ( r_part.Obj_ID == r_form.Obj_ID )
      .assign phrase = r_form.Txt_Phrs
    .end if
    .invoke r = atleast_one_tmpl(target_o_obj.Key_Lett, source_o_obj.Key_Lett, r_rel.Numb, cardinality, phrase)
    .assign text = text + r.body
  .end if
// simple association ${source_o_obj.Name}(${source_o_obj.Key_Lett}) --- R$t{r_rel.Numb} --- ${target_o_obj.Name}(${target_o_obj.Key_Lett})
${text}
.end function
.//
.function check_link
  .param inst_ref r_rto
  .param inst_ref r_rel
  .param inst_ref source_o_obj
  .param integer Cond
  .param integer Mult
  .param string phrase
  .select one target_o_obj related by r_rto->R_OIR[R203]->O_OBJ[R201]
  .assign text = ""
  .assign cardinality = ""
  .if ( Mult )
    .assign cardinality = "one"
  .else
    .assign cardinality = "one"
  .end if
  .invoke r = atleast_one_tmpl(source_o_obj.Key_Lett, target_o_obj.Key_Lett, r_rel.Numb, cardinality, phrase)
  .assign text = r.body
  .if ( not Cond )
    .if ( Mult )
      .assign cardinality = "many"
    .else
      .assign cardinality = "one"
    .end if
    .invoke r = atleast_one_tmpl(target_o_obj.Key_Lett, source_o_obj.Key_Lett, r_rel.Numb, cardinality, phrase)
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
  .assign phrase = ""
  .if ( r_aone.Obj_ID == r_aoth.Obj_ID )
    .// reflexive
    .assign phrase = r_aoth.Txt_Phrs
  .end if
  .select one r_rto related by r_aone->R_RTO[R204]
  .invoke r1 = check_link( r_rto, r_rel, source_o_obj, r_aoth.Cond, r_aoth.Mult, phrase )
  .assign phrase = ""
  .if ( r_aoth.Obj_ID == r_aone.Obj_ID )
    .// reflexive
    .assign phrase = r_aone.Txt_Phrs
  .end if
  .select one r_rto related by r_aoth->R_RTO[R204]
  .invoke r2 = check_link( r_rto, r_rel, source_o_obj, r_aone.Cond, r_aone.Mult, phrase )
// associative relationship R$t{r_rel.Numb}:  ${source_o_obj.Name}(${source_o_obj.Key_Lett})
${r1.body}${r2.body}
.end function
.//
.//
.function supertype_participation .// string
  .param inst_ref o_obj
  .assign loop_body = ""
  .select many r_supers related by o_obj->R_OIR[R201]->R_RTO[R203]->R_SUPER[R204]
  .for each r_super in r_supers
    .select one r_subsup related by r_super->R_SUBSUP[R212]
    .select one r_rel related by r_subsup->R_REL[R206]
    .select one ep_pkg related by o_obj->PE_PE[R8001]->EP_PKG[R8000]
    .invoke r = in_ep_pkg( ep_pkg, "ooaofooa" )
    .if ( r.result )
      .select many r_subs related by r_subsup->R_SUB[R213]
      .for each r_sub in r_subs
        .select one source_o_obj related by r_sub->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201]
        .invoke r = super_to_sub( o_obj.Key_Lett, source_o_obj.Key_Lett, r_rel.Numb )
        .assign loop_body = loop_body + r.body
      .end for
      .invoke r = supertype_loop_tmpl( o_obj.Key_Lett, r_rel.Numb, loop_body )
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
    .select one ep_pkg related by o_obj->PE_PE[R8001]->EP_PKG[R8000]
    .invoke r = in_ep_pkg( ep_pkg, "ooaofooa" )
    .if ( r.result )
      .select one target_o_obj related by r_subsup->R_SUPER[R212]->R_RTO[R204]->R_OIR[R203]->O_OBJ[R201]
      .invoke r = sub_to_super( o_obj.Key_Lett, target_o_obj.Key_Lett, r_rel.Numb )
  // sub to super participation R$t{r_rel.Numb}:  ${o_obj.Name}(${o_obj.Key_Lett}) -> ${target_o_obj.Name}(${target_o_obj.Key_Lett})
${r.body}
    .end if
  .end for
.end function
.//
.function mk_unique_constraint_check .// string
  .param inst_ref o_id
  .select one o_obj related by o_id->O_OBJ[R104]
  .assign where_clause = ""
  .assign prefix = ""
  .select many o_oidas related by o_id->O_OIDA[R105]
  .for each o_oida in o_oidas
    .assign clause = "(selected." + o_oida.localAttributeName + " == " + $l{o_obj.Key_Lett} + "." + o_oida.localAttributeName + ")"
    .assign where_clause = where_clause + prefix + clause
    .assign prefix = " and "
  .end for
  .invoke r = constraint_tmpl(o_obj.Key_Lett, where_clause, o_id.Oid_ID + 1)
${r.body}
.end function
.//
.function generate_actions .// string
  .assign text = ""
  .select many r_rels from instances of R_REL
  .for each r_rel in r_rels
    .select one ep_pkg related by r_rel->PE_PE[R8001]->EP_PKG[R8000]
    .invoke r = in_ep_pkg( ep_pkg, "ooaofooa" )
    .if ( r.result )
      .select one r_simp related by r_rel->R_SIMP[R206]
      .if ( not_empty r_simp )
        .invoke r = mk_simple_association_check( r_simp )
        .assign text = text + r.body
      .else
        .select one r_assoc related by r_rel->R_ASSOC[R206]
        .if ( not_empty r_assoc )
          .invoke r = mk_linked_association_check( r_assoc )
          .assign text = text + r.body
        .end if
      .end if
    .end if
  .end for
  .//
  .assign text = ( text + "\n" ) + "// instance uniqueness queries\n"
  .select many o_objs from instances of O_OBJ
  .for each o_obj in o_objs
    .select one ep_pkg related by o_obj->PE_PE[R8001]->EP_PKG[R8000]
    .invoke r = in_ep_pkg( ep_pkg, "ooaofooa" )
    .if ( r.result )
      .invoke r = class_instance_iteration1( o_obj.Key_Lett, "" )
      .assign text = text + r.body
      .assign text = text + "  // instance uniqueness query\n"
      .select many o_ids related by o_obj->O_ID[R104]
      .for each o_id in o_ids
        .select one o_oida related by o_id->O_OIDA[R105]
        .if ( not_empty o_oida )
          .invoke r = mk_unique_constraint_check(o_id)
          .assign text = text + r.body
        .end if
      .end for
      .// subtype
      .invoke r = subtype_participation( o_obj )
      .assign text = text + r.body
      .// supertype
      .invoke r = supertype_participation( o_obj )
      .assign text = text + r.body
      .invoke r = class_instance_iteration2()
      .assign text = text + r.body
    .end if
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
