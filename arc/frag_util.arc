.//============================================================================
.// $RCSfile: frag_util.arc,v $
.//
.// Description:
.// This archetype file provides general purpose functions used during 
.// action language translation. They are not specific to any particular
.// fragment generator entry points.
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
.//============================================================================
.// Initialize the attributes of type unique_id that are identifiers
.// and therefore need to be automatically set up at create time.
.//============================================================================
.function AutoInitializeUniqueIDs .// string
  .param inst_ref te_class
  .param string instance
  .//
  .select any te_file from instances of TE_FILE
  .select any te_instance from instances of TE_INSTANCE
  .select any te_string from instances of TE_STRING
  .select any te_sys from instances of TE_SYS
  .// Be sure we have the first attribute in the class.
  .select any first_te_attr related by te_class->TE_ATTR[R2061]
  .while ( not_empty first_te_attr )
    .select one prev_te_attr related by first_te_attr->TE_ATTR[R2087.'precedes']
    .if ( empty prev_te_attr )
      .break while
    .end if
    .assign first_te_attr = prev_te_attr
  .end while
  .assign te_attr = first_te_attr
  .while ( not_empty te_attr )
    .select one o_attr related by te_attr->O_ATTR[R2033]
    .if ( te_attr.translate )
      .invoke r = GetAttributeCodeGenType( o_attr )
      .assign te_dt = r.result
      .assign not_empty_o_oida = false
      .if ( not_empty te_dt )
        .if ( 5 == te_dt.Core_Typ )
          .select any o_oida related by o_attr->O_OIDA[R105]
          .if ( not_empty o_oida )
            .assign not_empty_o_oida = true
          .end if
        .end if
.//-- 011: 20140217 Add Start (saitou) 
        .select one o_obj related by te_class->O_OBJ[R2019]
        .assign isAutoIncEnable = false
        .if ( te_attr.isAutoInc ) 
          .// AutoIncはqnique_id(=5)と数値(int=2/real=3)の時に行うようにする
          .// or を三つ並べることができないようなので、かっこで二つずつ比較するようにする。。。
          .if ( ( ( 5 == te_dt.Core_Typ ) or ( 2 == te_dt.Core_Typ ) ) or ( 3 == te_dt.Core_Typ ) )
            .assign isAutoIncEnable = true
          .end if
        .end if
.//-- 011: 20140217 Add End (saitou) 
        .include "${te_file.arc_path}/t.class.attribute.init.c"
      .end if
    .end if
    .//
    .// Advance to the next object attribute, if any.
    .select one te_attr related by te_attr->TE_ATTR[R2087.'succeeds']
  .end while
.end function
.//
.//============================================================================
.//-- 011: 20140217 Add Start (saitou) 
.function GetDomainObjectNamespace
  .param inst_ref o_obj
  .//
  .assign attr_result = ""
  .select one te_c related by o_obj->TE_CLASS[R2019]->TE_C[R2064]
  .if ( not_empty te_c )
    .assign attr_result = "${te_c.Name}_${o_obj.Key_Lett}"
  .else
    .assign attr_result = "${o_obj.Key_Lett}"
  .end if
  .//
.end function
.//============================================================================
.function FXHO_get_auto_inc_get_llimit_value_macro_name
  .param inst_ref o_obj
  .//
  .invoke namespace = GetDomainObjectNamespace( o_obj )
  .assign attr_result = "${namespace.result}_AUTOINC_LOWER_LIMIT"
  .//
.end function
.//
.//============================================================================
.// 
.function FXHO_get_auto_inc_get_hlimit_value_macro_name
  .param inst_ref o_obj
  .//
  .invoke namespace = GetDomainObjectNamespace( o_obj )
  .assign attr_result = "${namespace.result}_AUTOINC_HIGER_LIMIT"
  .//
.end function
.//
.//============================================================================
.// 新たに生成したインスタンスのAUTOINC識別子属性に値を入れる際に
.// 次の値を供給してくれる関数マクロ名
.function FXHO_get_auto_inc_get_new_value_macro_name
  .param inst_ref o_obj
  .//
  .invoke namespace = GetDomainObjectNamespace( o_obj )
  .assign attr_result = "${namespace.result}_AUTOINC_GetNewValue"
  .//
.end function
.//
.//============================================================================
.// 自動更新する際のIDの値を格納するStaticな変数の名前
.function FXHO_get_auto_inc_id_mgmt_variable_name
  .param inst_ref o_obj
  .//
  .invoke namespace = GetDomainObjectNamespace( o_obj )
  .assign attr_result = "${namespace.result}_AUTOINC_currentId"
  .//
.end function
.//
.//============================================================================
.//
.function FXHO_has_auto_inc_id
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
.// FXHO_generate_auto_inc_id_definition
.//    AUTO_INC指定された識別子属性の値を管理する為のStaticな変数を定義する
.//
.function FXHO_generate_auto_inc_id_definition
  .param inst_ref o_obj
  .param boolean p_gen_decl
  .//
  .assign attr_result = false
  .invoke is_auto = FXHO_has_auto_inc_id(o_obj)
  .if ( is_auto.result )
/* This class has auto inclement unique_id */
/* define mechanism for auto inc id */
    .assign attr_result = true
    .invoke llimit_macro_name = FXHO_get_auto_inc_get_llimit_value_macro_name(o_obj)
    .invoke hlimit_macro_name = FXHO_get_auto_inc_get_hlimit_value_macro_name(o_obj)
    .invoke get_macro_name = FXHO_get_auto_inc_get_new_value_macro_name(o_obj)
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
      .invoke var_name = FXHO_get_auto_inc_id_mgmt_variable_name(o_obj)
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
.function FXHO_generate_auto_inc_id_execution
  .param inst_ref o_obj
  .param string p_self_name
  .//
  .assign attr_result = false
  .invoke is_auto = FXHO_has_auto_inc_id(o_obj)
  .if ( is_auto.result )
    .assign attr_result = true
    .assign attr = is_auto.ref
.//-- 011: 20140221 Modified Start (nomura) 
    .//.invoke member_name = GetObjAttrDataMemberName( attr )
    .assign member_name = attr.GeneratedName
.//-- 011: 20140221 Modified End (nomura) 
    .invoke get_macro_name = FXHO_get_auto_inc_get_new_value_macro_name(o_obj)
    .invoke var_name = FXHO_get_auto_inc_id_mgmt_variable_name(o_obj)
    /* FX Extention : AUTOINC Coloring */
    /* setup value of ${attr.Name} */
    ${p_self_name}->${member_name} = ${get_macro_name.result}(${var_name.result});
  .end if
  .//
.end function
.//
.//-- 011: 20140217 Add End (saitou) 
.//============================================================================
.function ExpandNonOptimizedSpecialWhereComparison .// string
  .param inst_ref o_obj
  .param boolean special
  .param string selected_var_name
  .//
  .assign compare_stmt = ""
  .if ( special )
    .select any te_instance from instances of TE_INSTANCE
    .select any te_string from instances of TE_STRING
    .assign compare_stmt = ""
    .assign cmp_element = ""
    .select one te_class related by o_obj->TE_CLASS[R2019]
    .// Be sure we have the first attribute in the class.
    .select any first_te_attr related by te_class->TE_ATTR[R2061]
    .while ( not_empty first_te_attr )
      .select one prev_te_attr related by first_te_attr->TE_ATTR[R2087.'precedes']
      .if ( empty prev_te_attr )
        .break while
      .end if
      .assign first_te_attr = prev_te_attr
    .end while
    .assign te_attr = first_te_attr
    .while ( not_empty te_attr )
      .//.if ( 4 == te_attr.Core_Typ )
      .if ( 4 == 4 )
        .assign cmp_element = "!${te_instance.module}${te_string.strcmp}(${selected_var_name}->${te_attr.GeneratedName}, ${te_attr.ParamBuffer})"
      .else
        .assign cmp_element = "${selected_var_name}->${te_attr.GeneratedName} == ${te_attr.ParamBuffer}"
      .end if
      .assign compare_stmt = compare_stmt + cmp_element
      .// Advance to the next object attribute, if any.
      .select one te_attr related by te_attr->TE_ATTR[R2087.'succeeds']
      .if ( not_empty te_attr )
        .assign compare_stmt = compare_stmt + " && "
      .end if
    .end while
  .end if
  .assign attr_result = compare_stmt
.end function
.//
.//============================================================================
.function CreateSpecialWhereComparisonArguments .// string
  .param inst_ref te_class
  .param inst_ref o_id
  .//
  .select many o_attrs related by o_id->O_OIDA[R105]->O_ATTR[R105]
  .assign num_ident_attr = cardinality o_attrs
  .//
  .assign param_list = ""
  .assign oida_count = 0
  .//
  .// Be sure we have the first attribute in the class.
  .select any first_te_attr related by te_class->TE_ATTR[R2061]
  .while ( not_empty first_te_attr )
    .select one prev_te_attr related by first_te_attr->TE_ATTR[R2087.'precedes']
    .if ( empty prev_te_attr )
      .break while
    .end if
    .assign first_te_attr = prev_te_attr
  .end while
  .assign te_attr = first_te_attr
  .while ( not_empty te_attr )
    .if ( te_attr.Included )
      .assign oida_count = oida_count + 1
      .assign param_list = param_list + te_attr.ParamBuffer
      .if ( oida_count < num_ident_attr )
        .assign param_list = param_list + ", "
      .end if
    .end if
    .select one te_attr related by te_attr->TE_ATTR[R2087.'succeeds']
  .end while
  .//
  .assign attr_result = param_list
.end function
.//
