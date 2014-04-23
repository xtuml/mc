.function GenerateRealFuncDefinition
  .param inst_ref te_brg
  .param boolean realfunc
  .//
  .select any s_brg related by te_brg->S_BRG[R2025]
  .//.select one ret_dt realated by s_brg->S_DT[R20]
  .select any s_bprm related by s_brg->S_BPARM[R21]
  .select any s_bprm_prev related by s_bprm->S_BPARM[R55.'precedes']
  .while ( not_empty s_bprm_prev )
    .assign  s_bprm = s_bprm_prev
    .select any s_bprm_prev related by s_bprm->S_BPARM[R55.'precedes']
  .end while
  .assign first_s_bprm = s_bprm
  .//
  .assign isFirst = TRUE
  .while ( not_empty s_bprm )
    .if ( isFirst )
      .assign  isFirst = FALSE
    .else
,\
    .end if
    .if (realfunc)
( \
    .end if
${s_bprm.Name}\
    .if (realfunc)
 )\
    .end if
    .select any s_bprm_next related by s_bprm->S_BPARM[R55.'succeeds']
    .assign s_bprm = s_bprm_next
  .end while
.end function
.//
.//
.function CreateBridgeDeclarationsSkelton
  .param inst_ref te_ee
  .param inst_ref_set te_brgs
  .//
  .select any te_c related by te_ee->TE_C[R2085]
  .invoke bridgeExtendPrefix = fx_get_bridge_extend_name_prefix(te_ee)
  .for each bridge in te_brgs
    .if ( bridge.IsRealFunc )
/******************************************************************************
 * Bridge: ${bridge.Name}     realized function as '${bridge.GeneratedName}'
 *****************************************************************************/
      .invoke args_macro = GenerateRealFuncDefinition(bridge, false)
      .invoke args_func = GenerateRealFuncDefinition(bridge, true)
#define ${bridgeExtendPrefix.result}_${bridge.Name}(${args_macro.body}) ${bridge.RealFuncName}(${args_func.body})

    .end if
  .end for
.end function
