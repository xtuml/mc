.//----------------------------------------------------------------------------
.//
.function fx_get_base_arch_prefix_name .// string
  .assign attr_result = "MC3020"
.end function
.//
.//----------------------------------------------------------------------------
.//
.function fx_get_default_arch_prefix_name .// string
  .assign attr_result = "Escher"
.end function
.//
.//----------------------------------------------------------------------------
.//
.function fx_get_domain_facade_file_name .// string
  .param inst_ref te_c
  .assign attr_result = te_c.Name + "_domainfacade"
.end function
.//
.//----------------------------------------------------------------------------
.//
.function fx_get_copyright_notice .// string
  .assign attr_result = "COPYRIGHT"
.end function
.//
.//----------------------------------------------------------------------------
.//
.function fx_get_domain_dispatcher_name .// string
  .param inst_ref te_c
  .assign attr_result = te_c.Name + "_DomainDispatcher"
.end function
.//
.//----------------------------------------------------------------------------
.//
.function fx_get_domain_mech_file_name .// string
  .param inst_ref te_c
  .assign attr_result = te_c.Name + "_mechs"
.end function
.//
.//----------------------------------------------------------------------------
.//
.function fx_get_domain_init_file_name .// string
  .param inst_ref te_c
  .assign attr_result = te_c.Name + "_dom_init"
.end function
.//
.//----------------------------------------------------------------------------
.//
.function fx_get_domain_classes_file_name .// string
  .param inst_ref te_c
  .assign attr_result = te_c.Name + "_classes"
.end function
.//
.//----------------------------------------------------------------------------
.//
.function fx_get_domain_enums_file_name .// string
  .param inst_ref te_c
  .assign attr_result = te_c.Name + "_enums"
.end function
.//
.//----------------------------------------------------------------------------
.//
.function fx_get_sys_mech_file_name .// string
  .assign attr_result = "sys_mechs"
.end function
.//
.//----------------------------------------------------------------------------
.//
.function fx_get_sys_types_file_name .// string
  .assign attr_result = "sys_types"
.end function
.//
.//----------------------------------------------------------------------------
.//
.// O_OBJに関連づいている最初のO_ATTRを取得する。
.function fx_get_first_attribute_in_object_model .// o_attr
  .param inst_ref te_class
  .select any obj from instances of O_OBJ where (selected.Obj_ID == te_class.Obj_ID)
  .// .select one o_obj related by te_class->O_OBJ[R2019]
  .//.if (empty obj)
  .//.print "++++ O_OBJ not found. ${te_class.Name}"
  .//.else
  .//.print "++++ O_OBJ found!. ${te_class.Name}"
  .//.end if
  .select any o_attr related by obj->O_ATTR[R102] where (selected.PAttr_ID == 0)
  .select many obj_attr_set related by obj->O_ATTR[R102]
  .for each obj_attr in obj_attr_set
    .select one previous_attr related by obj_attr->O_ATTR[R103.'precedes']
    .if ( empty previous_attr )
      .assign o_attr = obj_attr
      .break for
    .end if
  .end for
  .assign attr_result = o_attr
.end function
.//
.//----------------------------------------------------------------------------
.//
.// code生成するattributeかどうかを判定する。
.// これで良いか自信なし…
.function fx_generate_code_for_object_attribute .// boolean
  .param inst_ref o_attr
  .assign result = true
  .select one te_dt related by o_attr->S_DT[R114]->TE_DT[R2021]
  .select one te_attr related by o_attr->TE_ATTR[R2033]
  .//
  .// "current_state" attribute.
  .if (te_dt.Core_Typ == 6)
    .assign result = false
  .else
    .if (te_attr.translate == false)
      .assign result = false
    .end if
  .end if
  .assign attr_result = result
.end function
.//
.//----------------------------------------------------------------------------
.//
.function fx_get_auto_inc_get_llimit_value_macro_name .// string
  .param inst_ref o_obj
  .invoke r = GetDomainObjectNamespace(o_obj)
  .assign namespace = r.result
  .assign attr_result = namespace + "_AUTOINC_LOWER_LIMIT"
.end function
.//
.//----------------------------------------------------------------------------
.//
.function fx_get_auto_inc_get_hlimit_value_macro_name .// string
  .param inst_ref o_obj
  .invoke r = GetDomainObjectNamespace(o_obj)
  .assign namespace = r.result
  .assign attr_result = namespace + "_AUTOINC_HIGHER_LIMIT"
.end function
.//
.//----------------------------------------------------------------------------
.//
.function fx_get_auto_inc_get_new_value_macro_name .// string
  .param inst_ref o_obj
  .invoke r = GetDomainObjectNamespace(o_obj)
  .assign namespace = r.result
  .assign attr_result = namespace + "_AUTOINC_GetNewValue"
.end function
.//
.//----------------------------------------------------------------------------
.//
.function fx_get_auto_inc_id_mgmt_variable_name .// string
  .param inst_ref o_obj
  .invoke r = GetDomainObjectNamespace(o_obj)
  .assign namespace = r.result
  .assign attr_result = namespace + "_AUTOINC_currentId"
.end function
.//
.//----------------------------------------------------------------------------
.//
.function fx_get_bridge_extend_name_prefix .// string
  .param inst_ref te_ee
  .select one te_c related by te_ee->TE_C[R2085]
  .assign attr_result = ( te_c.Name + "_BridgeExtend_" ) + te_ee.Key_Lett
.end function
.//
.//----------------------------------------------------------------------------
.//
.function fx_is_exist_real_func .// boolean
  .param inst_ref te_ee
  .assign result = false
  .select any te_brg related by te_ee->S_EE[R2020]->S_BRG[R19]->TE_BRG[R2025] where ( selected.IsRealFunc == true )
  .if (not_empty te_brg)
    .assign result = true
  .end if
  .assign attr_result = result
.end function
.//
.//----------------------------------------------------------------------------
.//
.function fx_setup_subsystem_init
  .select many objs from instances of O_OBJ
  .// フラグの初期化など
.//  .for each obj in objs
.//    .assign obj.IsExcludeFromGen = false
.//  .end for
.//    .select many ep_pkgs from instances of EP_PKG
.//    .for each ep_pkg in ep_pkgs
.//      .select many objs related by ep_pkg->PE_PE[R8000]->O_OBJ[R8001]
.//      .for each obj in objs
.//          .// フラグの初期化など
.//	  .assign obj.IsExcludeFromGen = false
.//
.//          .// Initialize Objectかどうかを判断し、フラグをセットする。
.//	  .if ( "${obj.Name}" == "${ep_pkg.Name} init" )
.//	    .assign obj.IsInitObject = true
.//	  .else
.//	    .assign obj.IsInitObject = false
.//	  .end if
.//      .end for
.//    .end for
.end function
.//
.//----------------------------------------------------------------------------
.// Initialize Objectのsetを取得する
.//.function fx_get_initialize_object_set
.//  .select many attr_obj_set from instances of O_OBJ where (selected.IsInitObject == true)
.//.end function
.//
.//
.//============================================================================
.// 以下はmarkファイルで指定されるfunction
.//----------------------------------------------------------------------------
.// 仮にここに実装。場所はあとで考える。
.function SetDomainEventMaxNumber
  .param string domainName
  .param integer maxInternalEventNo
  .param integer maxExternalEventNo
  .select any te_c from instances of TE_C where (selected.Name == domainName)
  .assign msg = ""
  .if (not_empty te_c)
      .assign te_c.MaxInternalEvents = maxInternalEventNo
      .assign te_c.MaxExternalEvents = maxExternalEventNo 
      .assign msg = "set maxEventNo to $t{maxInternalEventNo} + $t{maxExternalEventNo} "
  .else
      .assign msg = "ERROR: Component ${domainName} not found.\n => SetDomainEventMaxNumber()"
  .end if
  .print "${msg}"
.end function
.//
.//-----------------------------------------------------------------------------
.//
.function SetDomainRelationExtentMaxNumber
  .param string domainName
  .param integer maxRelationExtents
  .select any te_c from instances of TE_C where (selected.Name == domainName)
  .if (not_empty te_c)
      .assign te_c.MaxRelationExtents = maxRelationExtents
      .print "set maxRelationExtens to $t{maxRelationExtents}"
  .else
      .print "ERROR: Component ${domainName} not found.\n => SetDomainRelationExtentMaxNumber()"
  .end if
.end function
.//
.//-----------------------------------------------------------------------------
.//
.function SetDomainSelectionNodeMaxNumber
  .param string domainName
  .param integer maxSelectionNode
  .select any te_c from instances of TE_C where (selected.Name == domainName)
  .if (not_empty te_c)
      .assign te_c.MaxSelectionNodeExtents = maxSelectionNode
  .else
      .print "ERROR: Component ${domainName} not found.\n => SetDomainSelectionNodeMaxNumber()"
  .end if
.end function
.//
.//-----------------------------------------------------------------------------
.//
.function TagUseFacadeMaxDef
  .param string domainName
  .select any te_c from instances of TE_C where (selected.Name == domainName)
  .if (not_empty te_c)
      .assign te_c.isUseFacadeMaxDef = true
  .else
      .print "ERROR: Component ${domainName} not found.\n => SetDomainRelationExtentMaxNumber()"
  .end if
.end function
.//
.//-----------------------------------------------------------------------------
.//
.function SetDomainFacadeMutexLockUse
  .param string domainName
  .select any te_c from instances of TE_C where (selected.Name == domainName)
  .if (not_empty te_c)
      .assign te_c.isUseMutexLock = true
  .else
      .print "ERROR: Component ${domainName} not found.\n => SetDomainFacadeMutexLockUse()"
  .end if
.end function
.//
.//-----------------------------------------------------------------------------
.//
.function mark_obj_as_fixed_inst_no_extend
  .param string domainName
  .param string className
  .param string instanceMaxStr
  .param string includeFile
  .select any te_c from instances of TE_C where (selected.Name == domainName)
  .if (not_empty te_c)
    .select any te_class related by te_c->TE_CLASS[R2064] where (selected.Key_Lett == className)
    .if (not_empty te_class)
      .assign te_class.InstanceMaxNo = instanceMaxStr
      .assign te_class.InstanceMaxNoDefIncludeFile = includeFile
    .else
      .print "ERROR: Class ${className} not found.\n => mark_obj_as_fixed_inst_no_extend()"
    .end if
  .else
      .print "ERROR: Component ${domainName} not found.\n => mark_obj_as_fixed_inst_no_extend()"
  .end if
.end function
.//
.function GetDomainObjectNamespace .// string
  .param inst_ref o_obj
  .//
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .assign attr_result = te_class.GeneratedName
  .//
.end function
.//
.//-- 032:20140605 Add Start (nomura)
.//-----------------------------------------------------------------------------
.// TE_CLASSのsetをKeyLetterでソートし、先頭のTE_CLASSを返す。
.function class_sort_by_keylet .// te_class
  .param inst_ref_set te_classs
  .// Declare an empty instance reference.
  .select any head_te_class related by te_classs->TE_CLASS[R2092.'succeeds'] where ( false )
  .for each te_class in te_classs
    .assign te_class.nextID = 00
  .end for
  .for each te_class in te_classs
    .invoke r = class_insert_by_keylet( head_te_class, te_class )
    .assign head_te_class = r.result
  .end for
  .assign attr_result = head_te_class
.end function
.function class_insert_by_keylet .// te_class
  .param inst_ref head_te_class
  .param inst_ref te_class
  .assign result = te_class
.//  .print "head_te_class:${head_te_class.Key_Lett} te_class:${te_class.Key_Lett}"
  .if ( empty head_te_class )
    .// Just starting.  Return te_class as head.
  .else
  .assign lkey = te_class.Key_Lett
  .assign rkey = head_te_class.Key_Lett
  .if ( lkey <= rkey )
    .// insert before
    .// relate te_class to head_te_class across R2092.'precedes';
    .assign te_class.nextID = head_te_class.ID
    .// end relate
  .else
    .// find bigger
    .assign result = head_te_class
    .assign prev_te_class = head_te_class
    .select one cursor_te_class related by head_te_class->TE_CLASS[R2092.'succeeds']
    .while ( not_empty cursor_te_class )
      .assign rkey = cursor_te_class.Key_Lett
      .//.assign rkey = "$t{cursor_te_class.Numb}" + cursor_te_class.GeneratedName
      .if ( lkey <= rkey )
        .break while
      .else
        .assign prev_te_class = cursor_te_class
        .select one cursor_te_class related by cursor_te_class->TE_CLASS[R2092.'succeeds']
      .end if
    .end while
    .// relate prev_te_class to te_class across R2092.'precedes';
    .assign prev_te_class.nextID = te_class.ID
    .// end relate
    .if ( not_empty cursor_te_class )
      .// relate te_class to cursor_te_class across R2092.'precedes';
      .assign te_class.nextID = cursor_te_class.ID
      .// end relate
    .end if
  .end if
  .end if
  .assign attr_result = result
.end function
.//
.//-- 032:20140605 Add Start (nomura)
