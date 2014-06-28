.//============================================================================
.//
.function fx_has_auto_inc_id
.param inst_ref o_obj
  .//
  .assign attr_result = false
  .assign attr_datasize = 0
  .assign attr_llimit = ""
  .assign attr_hlimit = ""
  .assign attr_direction = ""
  .assign attr_undef = ""
.//  .select any id_attr related by o_obj->O_ID[R104]->O_OIDA[R105]->O_ATTR[R105] where ( selected.IsAutoInc )
  .select any id_attr from instances of TE_ATTR where ( ( selected.Obj_ID == o_obj.Obj_ID ) and ( selected.isAutoInc ) )
  .assign attr_ref = id_attr
  .if ( not_empty id_attr )
    .assign attr_result = true
    .assign attr_datasize = id_attr.AutoIncDataSize
    .assign attr_llimit = id_attr.AutoIncLowLimit
    .assign attr_hlimit = id_attr.AutoIncHighLimit
    .assign attr_direction = id_attr.AutoIncDirection
    .assign attr_undef = id_attr.AutoIncUndefValue
  .end if
  
  .//
.end function
.//
.//============================================================================
.// fx_generate_auto_inc_id_definition
.//    AUTO_INC指定された識別子属性の値を管理する為のStaticな変数を定義する
.//
.function fx_generate_auto_inc_id_definition
  .param inst_ref o_obj
  .param boolean p_gen_decl
  .//
  .assign attr_result = false
  .invoke is_auto = fx_has_auto_inc_id(o_obj)
  .if ( is_auto.result )
/* This class has auto inclement unique_id */
/* define mechanism for auto inc id */
    .assign attr_result = true
    .invoke llimit_macro_name = fx_get_auto_inc_get_llimit_value_macro_name(o_obj)
    .invoke hlimit_macro_name = fx_get_auto_inc_get_hlimit_value_macro_name(o_obj)
    .invoke get_macro_name = fx_get_auto_inc_get_new_value_macro_name(o_obj)
    .if ( p_gen_decl )
/* auto incliemental id's Lower Limit */
#define ${llimit_macro_name.result} ${is_auto.llimit}
/* auto incliemental id's Higher Limit */
#define ${hlimit_macro_name.result} ${is_auto.hlimit}
/* auto incliemental value getter */
#define ${get_macro_name.result}(x) \
      .if ( is_auto.direction == "UP" )
((x)=((++(x)-${llimit_macro_name.result})%(${hlimit_macro_name.result}-${llimit_macro_name.result}+1)+${llimit_macro_name.result}))
      .else
((x)=((${hlimit_macro_name.result}-(--(x)))%(${hlimit_macro_name.result}-${llimit_macro_name.result}+1)+${hlimit_macro_name.result}))
      .end if
    .else
/* auto incliemental value for unique_id */
      .invoke var_name = fx_get_auto_inc_id_mgmt_variable_name(o_obj)
static int ${var_name.result} = \
      .if ( is_auto.direction == "UP" )
${llimit_macro_name.result} - 1\
      .else
${hlimit_macro_name.result} + 1\
      .end if
;
    .end if
  .end if
  .//
.end function
.//
.//============================================================================
.//
.function fx_generate_auto_inc_id_execution
  .param inst_ref o_obj
  .param string p_self_name
  .//
  .assign attr_result = false
  .invoke is_auto = fx_has_auto_inc_id(o_obj)
  .if ( is_auto.result )
    .assign attr_result = true
    .assign attr = is_auto.ref
.//-- 011: 20140221 Modified Start (nomura) 
    .//.invoke member_name = GetObjAttrDataMemberName( attr )
    .assign member_name = attr.GeneratedName
.//-- 011: 20140221 Modified End (nomura) 
    .invoke get_macro_name = fx_get_auto_inc_get_new_value_macro_name(o_obj)
    .invoke var_name = fx_get_auto_inc_id_mgmt_variable_name(o_obj)
    /* FX Extention : AUTOINC Coloring */
    /* setup value of ${attr.Name} */
    ${p_self_name}->${member_name} = ${get_macro_name.result}(${var_name.result});
  .end if
  .//
.end function
.//
.//----------------------------------------------------------------------------
.//
.function fx_get_object_extent_size .// boolean
  .param inst_ref te_class
  .assign attr_result = false
  .assign attr_max_size_value = ""
  .assign attr_include_file = ""
  .if ( "$r{te_class.InstanceMaxNo}" != "" )
      .assign attr_max_size_value = "$r{te_class.InstanceMaxNo}"
      .assign attr_include_file = "$r{te_class.InstanceMaxNoDefIncludeFile}"
      .assign attr_result = true
  .end if
.end function
.//
