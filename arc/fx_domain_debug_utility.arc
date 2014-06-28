.//============================================================================
.// 
.// Domain Debug Utility Implementation
.//   Old style(.c、.hのtemplateを使わずにこのファイルで生成する)
.//
.//============================================================================
.function fx_generate_domain_debug_utility_file_prologue
.param inst_ref te_c
.param boolean p_gen_decl
    .assign file_name = te_c.Name + "_dbg_utility_full"
    .select any te_file from instances of TE_FILE
    .select any te_sys from instances of TE_SYS
/******************************************************************************
    .if (p_gen_decl) .// header file
 * File: ${file_name}.${te_file.hdr_file_ext}
    .else
 * File: ${file_name}.${te_file.src_file_ext}
    .end if
 *
 * Domain: ${te_c.Name}
 * Project: ${te_sys.Name}
 *
    .invoke copyright = fx_get_copyright_notice()
 *
 *****************************************************************************/

    .if (p_gen_decl )
#ifndef _$ur{file_name}_${te_file.hdr_file_ext}_
#define _$ur{file_name}_${te_file.hdr_file_ext}_

#ifdef __cplusplus
extern "C" {
#endif
    .end if
    .//
.end function
.//
.//
.function fx_generate_domain_debug_utility__file_epilogue
.param inst_ref te_c
.param boolean p_gen_decl
    .//
    .if (p_gen_decl )
    .assign file_name = te_c.Name + "_dbg_utility_full"
    .select any te_file from instances of TE_FILE;
#ifdef __cplusplus
}
#endif

#endif /* _$ur{file_name}_${te_file.hdr_file_ext}_ */
    .end if
    .//
.end function
.//
.//
.//--033:20140609 Add Start (saitou) 
.//============================================================================
.function fx_get_dbgshow_func_name .// string
.param inst_ref te_c
.param inst_ref te_class
  .//
  .assign attr_result = ( te_c.Name + "_dbgShow_" ) + te_class.Key_Lett
.end function
.//========================================
.function fx_generate_dbgshow_func
.param inst_ref te_c
.param inst_ref te_class
  .//
  .assign if_params = ""
  .assign func_params = ""
  .assign show_params = ""
  .//
  .select any id1 related by te_class->O_OBJ[R2019]->O_ID[R104] where ( selected.Oid_ID == 0 )
  .if( not_empty id1 )
    .//
    .// make function's arguments and "if" params from identity attrs
    .//
    .select many id1_te_attrs related by id1->O_OIDA[R105]->O_ATTR[R105]->TE_ATTR[R2033]
    .for each id1_te_attr in id1_te_attrs
      .if( "${func_params}" != "" )
        .assign func_params = func_params + ", "
      .end if
      .assign func_params = func_params + ( id1_te_attr.GeneratedType + ( " arg_" + id1_te_attr.GeneratedName ) )
      .//
      .if( "${if_params}" != "" )
        .assign if_params = if_params + " && "
      .end if
      .assign if_params = if_params + (((( "( arg_" + id1_te_attr.GeneratedName ) + " == ptr->" ) + id1_te_attr.GeneratedName ) + ")" )
      .//
    .end for
    .//
    .// make show attrs
    .//
    .select many te_attrs related by te_class->TE_ATTR[R2061]
    .for each te_attr in te_attrs
      .assign show_param = ""
      .select one o_ratter related by te_attr->O_ATTR[R2033]->O_RATTR[R106]
      .if( empty o_ratter )
.//      .assign show_params = show_params + "printf(""${te_attr.GeneratedName}: normal = %d\\n"", ptr->${te_attr.GeneratedName} );"
        .assign show_params = show_params + ((( "    printf(""${te_attr.GeneratedName}: normal = %d" ) + "\" ) + "n"", ptr->${te_attr.GeneratedName} );\n" )
        .// "
      .else
        .assign prn_rels = ""
        .select many r_rels related by o_ratter->O_REF[R108]->R_RGO[R111]->R_OIR[R203]->R_REL[R201]
        .for each r_rel in r_rels
          .if ( "${prn_rels}" != "" )
            .assign prn_rels = prn_rels + ", "
          .end if
          .assign prn_rels = prn_rels + "R${r_rel.Numb}"
        .end for
        .assign prn_rels = "{" + ( prn_rels + "}" )
.//        .assign show_params = show_params + "  printf(""${te_attr.GeneratedName}: ${prn_rels} = %d\\n"", ptr->${te_attr.GeneratedName} );\n"
        .assign show_params = show_params + (((((((( "    printf(""" + te_attr.GeneratedName ) + ": " ) + prn_rels ) + " = %d" ) + "\" ) + "n"", ptr->" ) + te_attr.GeneratedName ) + ");\n" )
        .// "
      .end  if
    .end for
    .//
    .// make show state detail
    .//
    .assign show_state = ""
    .select any te_state related by te_class->TE_SM[R2072]->SM_SM[R2043]->SM_STATE[R501]->TE_STATE[R2037]
    .if( not_empty te_state )
      .invoke state_tbl_name = fx_get_state_detail_table_name(te_c, te_class)
      .invoke state_tbl_type = fx_get_state_detail_type( te_c )
      .//
      .assign show_state = show_state + "    {\n"
      .assign show_state = show_state + (((( "      const " + state_tbl_type.result ) + "* pStateDetail = getStateDetail( " ) + state_tbl_name.result ) + ", ptr->current_state );\n" )
      .assign show_state = show_state + "      if( pStateDetail ){\n"
      .assign show_state = show_state + ((("        printf(""CurrentState : %s = %d" ) + "\" ) + "n"", pStateDetail->stName, pStateDetail->stNum);\n" )
      .// "
      .assign show_state = show_state + "      }\n"
      .assign show_state = show_state + "    }\n"
    .end if
    .//
    .//
    .select any te_set from instances of TE_SET
    .invoke class_ext = GetFixedSizeClassExtentInfo(te_class)
    .invoke func_name = fx_get_dbgshow_func_name(te_c, te_class)
    .//

void ${func_name.result}(${func_params})
{
  ${te_class.GeneratedName}* ptr = 0;
  ${te_set.iterator_class_name} ite;

  ${te_set.iterator_reset}(&ite,&${class_ext.result}.active);
  while ( (ptr=(${te_class.GeneratedName}*)(${te_set.iterator_next}(&ite))) != 0 ){
  .if ("${if_params}" != "" )
    if ( (${if_params}) ){
      break;
    }
  .else
    // identity attr none.
    break;
  .end if
  }
  if ( ptr == 0 ){
    printf("None!\n");
  } else {
    /* show information */
${show_params}
${show_state}
  }
}
  .else
    .// no identity. not create.
    .print "[myDbg] [${te_class.Key_Lett}] no identity. not create."
  .end if
  .//
.end function
.//========================================
.function fx_get_showinst_func_name .// string
.param inst_ref te_c
.param inst_ref te_class
  .//
  .assign attr_result = ( te_c.Name + "_dbgFullShowInst_" ) + te_class.Key_Lett
.end function
.//========================================
.function fx_generate_showinst_func
.param inst_ref te_c
.param inst_ref te_class
  .//
  .assign prn_ids = ""
  .assign prn_literal = ""
  .assign prn_params = ""
  .select any id1 related by te_class->O_OBJ[R2019]->O_ID[R104] where ( selected.Oid_ID == 0 )
  .if( not_empty id1 )
    .select many o_attrs related by id1->O_OIDA[R105]->O_ATTR[R105]
    .for each o_attr in o_attrs
      .if( "${prn_literal}" != "" )
        .assign prn_literal = prn_literal + ", "
      .end if
      .assign prn_literal = prn_literal + ( o_attr.Name + ":%d" )
      .assign prn_params = prn_params + ( ", " + ( "ptr->" + o_attr.Name ) )
      .//
      .//.assign prn_ids = ((( "printf("" " + prn_literal ) + "\\n """ ) + prn_params ) + " );"
      .assign prn_ids = (((( "printf("" " + prn_literal ) + "\" ) + "n""" ) + prn_params ) + " );"
      .// "
    .end for
  .end if
  .//
  .select any te_instance from instances of TE_INSTANCE
  .select any te_set from instances of TE_SET
  .invoke class_ext = GetFixedSizeClassExtentInfo(te_class)
  .invoke func_name = fx_get_showinst_func_name(te_c, te_class)

void ${func_name.result}(void)
{
  ${te_class.GeneratedName}* ptr = 0;
  ${te_set.iterator_class_name} ite;
  int instNo = ${te_set.element_count}(&${class_ext.result}.active);
  
  printf("Class [${te_class.Name}] Total Instance Num = %d\n",instNo);
  ${te_set.iterator_reset}(&ite,&${class_ext.result}.active);
  while ( (ptr=(${te_class.GeneratedName}*)(${te_set.iterator_next}(&ite))) != 0 ){
    printf("[Addr] %p\n", ptr);
.//    printf(" ${prn_literal}\n"${prn_params});
  .if( "${prn_ids}" != "" )
    ${prn_ids}
  .end if
  }
}
  .//
.end function
.//========================================
.function fx_generate_show_debug_funcs
.param inst_ref te_c
  .//
  .select many te_classes related by te_c->TE_CLASS[R2064] where ( not selected.ExcludeFromGen )
  .for each te_class in te_classes
    .invoke r = fx_generate_showinst_func(te_c, te_class)
${r.body}
    .invoke r = fx_generate_dbgshow_func(te_c, te_class)
${r.body}
  .end for
  .//
.end function
.//============================================================================
.//--033:20140609 Add End (saitou) 
.//--028:20140415 Add Start (saitou) 
.//============================================================================
.// 状態詳細テーブル生成
.//   { 状態ID(配列index), 状態番号, 状態名 }
.//============================================================================
.function fx_get_state_detail_type .// string
.param inst_ref te_c
  .//
  .assign attr_result = te_c.Name + "_StateDetail_t"
.end function
.//========================================
.function fx_get_state_detail_table_name .// string
.param inst_ref te_c
.param inst_ref te_class
  .//
  .assign table_name = ""
  .select many te_states related by te_class->TE_SM[R2072]->SM_SM[R2043]->SM_STATE[R501]->TE_STATE[R2037]
  .if( not_empty te_states )
    .assign table_name = ( te_c.Name + "_" ) + ( te_class.Key_Lett + "_StateDetail" )
  .end if
  .assign attr_result = table_name
.end function
.//========================================
.function fx_generate_state_detail_type
.param inst_ref te_c
  .//
  .invoke stDetailTblType = fx_get_state_detail_type( te_c )
  .//
typedef struct {
    int   defNum;
    int   stNum;
    const char* stName;
} ${stDetailTblType.result};
  .//
.end function
.//========================================
.function fx_generate_state_detail_table
.param inst_ref te_c
.param inst_ref te_class
  .//
  .invoke type = fx_get_state_detail_type( te_c )
  .invoke tableName = fx_get_state_detail_table_name( te_c, te_class )
  .//
  .select many te_states related by te_class->TE_SM[R2072]->SM_SM[R2043]->SM_STATE[R501]->TE_STATE[R2037]
  .if( not_empty te_states )
/*****************************************************************************
 * detail info of ${te_class.Key_Lett} state
 *****************************************************************************/
static const ${type.result} ${tableName.result}[] = {
    .assign tmpCount = 0
    .for each te_state in te_states
      .// 2回目以降はカンマを付ける
      .if ( tmpCount > 0 )
    , \
      .else
      \
      .end if
{ ${te_state.enumerator}, ${te_state.Numb}, "${te_state.Name}" }
      .assign tmpCount = tmpCount + 1
    .end for
    , { 0, 0, NULL } // 番兵
};
  .end if
.end function
.//========================================
.function fx_generate_state_detail
.param inst_ref te_c
  .//
  .invoke r = fx_generate_state_detail_type( te_c )
${r.body}
  .//
  .select many te_classes related by te_c->TE_CLASS[R2064] where ( not selected.ExcludeFromGen )
  .for each te_class in te_classes
    .//
    .invoke r = fx_generate_state_detail_table( te_c, te_class )
${r.body}
    .//
  .end for
.end function
.//============================================================================
.// イベント詳細テーブル生成
.//   { イベントID(配列index), イベント略称, イベント名 }
.//============================================================================
.function fx_get_event_detail_type .// string
.param inst_ref te_c
  .//
  .assign attr_result = te_c.Name + "_EventDetail_t"
.end function
.//========================================
.function fx_get_event_detail_table_name .// string
.param inst_ref te_c
.param inst_ref te_class
  .//
  .assign table_name = ""
  .select many te_evts related by te_class->TE_SM[R2072]->TE_EVT[R2071] where ( selected.Used )
  .if( not_empty te_evts )
    .assign table_name = ( te_c.Name + "_" ) + ( te_class.Key_Lett + "_EventDetail" )
  .end if
  .assign attr_result = table_name
.end function
.//========================================
.function fx_generate_event_detail_type
.param inst_ref te_c
  .//
  .invoke eventDetailTblType = fx_get_event_detail_type( te_c )
  .//
typedef struct {
    int   defNum;
    const char* evtName;
    const char* evtMeaning;
} ${eventDetailTblType.result};
  .//
.end function
.//========================================
.function fx_generate_event_detail_table
.param inst_ref te_c
.param inst_ref te_class
  .//
  .invoke type = fx_get_event_detail_type( te_c )
  .invoke tableName = fx_get_event_detail_table_name( te_c, te_class )
  .//
  .select many te_evts related by te_class->TE_SM[R2072]->TE_EVT[R2071] where ( selected.Used )
  .if( not_empty te_evts )
/*****************************************************************************
 * detail info of ${te_class.Key_Lett} event
 *****************************************************************************/
static const ${type.result} ${tableName.result}[] = {
    .assign tmpCount = 0
    .for each te_evt in te_evts
      .// 2回目以降はカンマを付ける
      .if ( tmpCount > 0 )
    , \
      .else
      \
      .end if
      .select one sm_evt related by te_evt->SM_EVT[R2036]
{ ${te_evt.Enumerator}, "${sm_evt.Drv_Lbl}", "${sm_evt.Mning}" }
      .assign tmpCount = tmpCount + 1
    .end for
    , { 0, NULL, NULL } // 番兵
};
  .end if
.end function
.//========================================
.function fx_generate_event_detail
.param inst_ref te_c
  .//
  .invoke r = fx_generate_event_detail_type( te_c )
${r.body}
  .//
  .select many te_classes related by te_c->TE_CLASS[R2064] where ( not selected.ExcludeFromGen )
  .for each te_class in te_classes
    .//
    .invoke r = fx_generate_event_detail_table( te_c, te_class )
${r.body}
    .//
  .end for
.end function
.//
.//============================================================================
.// クラスと、状態・イベントの詳細テーブルを紐付けるテーブルを作成
.//   { クラスID, クラス名, 状態詳細テーブル, イベント詳細テーブル }
.//============================================================================
.//============================================================================
.function fx_get_SEM_detail_type .// string
.param inst_ref te_c
  .//
  .assign attr_result = te_c.Name + "_SEM_Detail_t"
.end function
.//========================================
.function fx_get_SEM_detail_table_name .// string
.param inst_ref te_c
  .//
  .assign attr_result = te_c.Name + "_SEM_DetailTable"
.end function
.//========================================
.function fx_generate_SEM_detail_type
.param inst_ref te_c
  .//
  .invoke stateDetailType = fx_get_state_detail_type( te_c )
  .invoke eventDetailType = fx_get_event_detail_type( te_c )
  .invoke SEMDetailType = fx_get_SEM_detail_type( te_c )
  .//
typedef struct {
    const char* className;
    const int classID;
    const ${stateDetailType.result}* stDetailTblAdr;
    const ${eventDetailType.result}* evtDetailTblAdr;
} ${SEMDetailType.result};
  .//
.end function
.//========================================
.function fx_generate_SEM_detail_table
.param inst_ref te_c
  .//
  .invoke type = fx_get_SEM_detail_type( te_c )
  .invoke tableName = fx_get_SEM_detail_table_name( te_c )
  .//
  .select one te_dci related by te_c->TE_DCI[R2090]
  .//
static const ${type.result}
${tableName.result}[ ${te_dci.max} ] = 
{
  .assign tmpCount = 0
  .select many te_classes related by te_c->TE_CLASS[R2064] where ( not selected.ExcludeFromGen )
  .for each te_class in te_classes
    .invoke stateTableName = fx_get_state_detail_table_name( te_c, te_class )
    .assign stTblName = stateTableName.result
    .if( "" == "${stTblName}" )
      .assign stTblName = "NULL"
    .end if
    .invoke eventTableName = fx_get_event_detail_table_name( te_c, te_class )
    .assign evtTblName = eventTableName.result
    .if( "" == "${evtTblName}" )
      .assign evtTblName = "NULL"
    .end if
    .//
    .// 2回目以降はカンマを付ける
    .if ( tmpCount > 0 )
    , \
    .else
      \
    .end if
{ "${te_class.Key_Lett}", ${te_class.system_class_number}, ${stTblName}, ${evtTblName} }
      .assign tmpCount = tmpCount + 1
  .end for
};
.end function
.//========================================
.function fx_generate_SEM_detail
.param inst_ref te_c
  .//
  .invoke r = fx_generate_SEM_detail_type( te_c )
${r.body}
  .//
  .invoke r = fx_generate_SEM_detail_table( te_c )
${r.body}
  .//
.end function
.//
.//============================================================================
.// イベント垂れ流し関数生成
.//============================================================================
.function fx_generate_func_getStateDetail
.param inst_ref te_c
  .//
  .invoke type = fx_get_state_detail_type( te_c )
  .//
static const ${type.result}* getStateDetail( const ${type.result}* detailTbl, const int defStateNo )
{
    const ${type.result}* ret= NULL;
    if( detailTbl )
    {
        int i=0;
        for( i=0; ((detailTbl[i].defNum!=0)||(detailTbl[i].stNum!=0)||(detailTbl[i].stName!=NULL)); i++)
        {
            const ${type.result}* pStateDetail = &( detailTbl[i] );
            if( pStateDetail->defNum == defStateNo )
            {
                ret = pStateDetail;
                break;
            }
        }
    }
    return ret;
}
  .//
.end function
.//========================================
.function fx_generate_func_getEventDetail
.param inst_ref te_c
  .//
  .invoke type = fx_get_event_detail_type( te_c )
  .//
static const ${type.result}* getEventDetail( const ${type.result}* detailTbl, const int defEventNo )
{
    const ${type.result}* ret= NULL;
    if( detailTbl )
    {
        int i=0;
        for( i=0; ((detailTbl[i].defNum!=0)||(detailTbl[i].evtName!=NULL)||(detailTbl[i].evtMeaning!=NULL)); i++)
        {
            const ${type.result}* pEventDetail = &( detailTbl[i] );
            if( pEventDetail->defNum == defEventNo )
            {
                ret = pEventDetail;
                break;
            }
        }
    }
    return ret;
}
  .//
.end function
.//========================================
.function fx_generate_func_getSEMDetail
.param inst_ref te_c
  .//
  .invoke type      = fx_get_SEM_detail_type( te_c )
  .invoke tableName = fx_get_SEM_detail_table_name( te_c )
  .//
static const ${type.result}* getSEMDetail( int classID )
{
    const ${type.result}* ret = NULL;
    
    int i=0;
    for( i=0; i<(sizeof(${tableName.result})/sizeof(${tableName.result}[0])); i++)
    {
        if( ${tableName.result}[i].classID == classID )
        {
            ret = &( ${tableName.result}[i] );
            break;
        }
    }
    return ret;
}
  .//
.end function
.//========================================
.function fx_generate_func_ShowEventInfo
.param inst_ref te_c
  .//
  .invoke sem_type = fx_get_SEM_detail_type( te_c )
  .invoke sem_tbl  = fx_get_SEM_detail_table_name( te_c )
  .invoke state_detail_type = fx_get_state_detail_type( te_c )
  .invoke event_detail_type = fx_get_event_detail_type( te_c )
  .//
typedef int (*RedirFuncP)(const char*, ... );
static RedirFuncP gpRedirFunc = printf; // 初期値としてとりあえずprintfを登録しておく

// イベント垂れ流しの出力先を登録。戻り値で現在登録されている関数のアドレスを返す
void* ${te_c.Name}_dbg_SetRedirFunc( void* pNewRedirFunc )
{
    void* oldFunc = gpRedirFunc;
    gpRedirFunc = pNewRedirFunc;
    
    return oldFunc;
}
static const ${state_detail_type.result} dummyStateDetail = { 0, 0, "(null)" };
static const ${event_detail_type.result} dummyEventDetail = { 0, "(null)", "(null)" };
void ${te_c.Name}_ShowEventInfo( const Escher_xtUMLEvent_t * evt )
{
    char tmpStr[255];
    memset( tmpStr, 0, sizeof(tmpStr) );

    const ${sem_type.result}* pDetail = getSEMDetail( GetEventDestObjectNumber( evt ) );
    const Escher_iHandle_t pInstance = GetEventTargetInstance( evt );
    if( pDetail )
    {
        const ${event_detail_type.result}* pEventDetail = getEventDetail( pDetail->evtDetailTblAdr, GetOoaEventNumber( evt ) );
        if( !pEventDetail )
        {
            pEventDetail = &dummyEventDetail;
        }
        if( pInstance )
        {
            const ${state_detail_type.result}* pStateDetail = getStateDetail( pDetail->stDetailTblAdr, pInstance->current_state );
            if( !pStateDetail )
            {
                pStateDetail = &dummyStateDetail;
            }
            
            // イベント受信先がすでにいる場合
            sprintf( tmpStr, "%s[${te_c.Name}_Evt][Rcv %s(%p)(s %d:%s)] %s:%s \n", tmpStr
                            , pDetail->className, pInstance
                            , pStateDetail->stNum, pStateDetail->stName
                            , pEventDetail->evtName, pEventDetail->evtMeaning
                );
            
        }else{
            // イベント受信先がいない場合( creatorイベント )
            sprintf( tmpStr, "%s[${te_c.Name}_Evt][creator Event] %s:%s \n", tmpStr
                            , pEventDetail->evtName, pEventDetail->evtMeaning
                );
        }
    }
    
    (*gpRedirFunc)( tmpStr );
}
  .//
.end function
.//========================================
.function fx_generate_printEventFunc
.param inst_ref te_c
  .//
  .invoke r = fx_generate_func_getStateDetail( te_c )
${r.body}
  .invoke r = fx_generate_func_getEventDetail( te_c )
${r.body}
  .invoke r = fx_generate_func_getSEMDetail( te_c )
${r.body}
  .invoke r = fx_generate_func_ShowEventInfo( te_c )
${r.body}
  .//
.end function
.//--028:20140415 Add End (saitou) 
.//
.// main
.// 全component(domain)についてdebugコードを生成する。
.// ふつうは1つしかないはず…
.select many te_c_set from instances of TE_C;
.for each te_c in te_c_set
  .if (te_c.Name == "") then
      .print "unnamed component te_c ID:${te_c.ID}"
  .else 
    .assign file_name = te_c.Name + "_dbg_utility_full"
    .//
    .// source file
    .invoke prologue = fx_generate_domain_debug_file_prologue(te_c, false)
    .invoke epilogue = fx_generate_domain_debug_file_epilogue(te_c, false)
    .invoke state_detail = fx_generate_state_detail( te_c )
    .invoke event_detail = fx_generate_event_detail( te_c )
    .invoke sem_detail = fx_generate_SEM_detail( te_c )
    .invoke prnEvtFunc = fx_generate_printEventFunc( te_c )
.//--033:20140609 Add Start (saitou) 
    .invoke show_debug_funcs = fx_generate_show_debug_funcs( te_c )
.//--033:20140609 Add End (saitou) 
    .//
${prologue.body}
    .// include file
#include "sys_mech_debug.h"
#include "${te_c.Name}_mechs.h"
#include "${te_c.Name}_classes.h"
    .select many te_classes related by te_c->TE_CLASS[R2064] where ( not selected.ExcludeFromGen )
    .for each te_class in te_classes
#include "${te_c.Name}_${te_class.Key_Lett}_class.${te_file.hdr_file_ext}"
    .end for
    .//
${state_detail.body}
${event_detail.body}
${sem_detail.body}
${prnEvtFunc.body}
.//--033:20140609 Add Start (saitou) 
${show_debug_funcs.body}
.//--033:20140609 Add End (saitou) 
    .//
    .emit to file "${te_file.domain_source_path}/${file_name}.${te_file.src_file_ext}"
    .//
${epilogue.body}
  .end if
.end for
.//
.//--028:20140415 Add End (saitou) 
