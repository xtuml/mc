/*----------------------------------------------------------------------------
 * File:  masl2xtuml.c
 *
 * UML Component Port Messages
 * Component/Module Name:  masl2xtuml
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "maslin_sys_types.h"
#include "masl2xtuml.h"
#include "masl2xtuml_IDLINK_bridge.h"
#include "LOG_bridge.h"
#include "STRING_bridge.h"
#include "TRACE_bridge.h"
#include "masl2xtuml_classes.h"

/*
 * Interface:  serial
 * Provided Port:  in
 * To Provider Message:  end
 */
void
masl2xtuml_in_end()
{
  masl2xtuml_formalization * form=0;masl2xtuml_ooaelement * element=0;Escher_ObjectSet_s forms_space={0}; Escher_ObjectSet_s * forms = &forms_space;masl2xtuml_ooapopulation * ooapopulation=0;Escher_ObjectSet_s elements_space={0}; Escher_ObjectSet_s * elements = &elements_space;
  /* SELECT many elements FROM INSTANCES OF ooaelement */
  Escher_CopySet( elements, &pG_masl2xtuml_ooaelement_extent.active );
  /* FOR EACH element IN elements */
  { Escher_Iterator_s iterelement;
  masl2xtuml_ooaelement * iielement;
  Escher_IteratorReset( &iterelement, elements );
  while ( (iielement = (masl2xtuml_ooaelement *)Escher_IteratorNext( &iterelement )) != 0 ) {
    element = iielement; {
    /* element.destruct() */
    masl2xtuml_ooaelement_op_destruct( element );
  }}}
  /* SELECT any ooapopulation FROM INSTANCES OF ooapopulation */
  ooapopulation = (masl2xtuml_ooapopulation *) Escher_SetGetAny( &pG_masl2xtuml_ooapopulation_extent.active );
  /* IF ( not_empty ooapopulation ) */
  if ( ( 0 != ooapopulation ) ) {
    /* ooapopulation.batchFormalize() */
    masl2xtuml_ooapopulation_op_batchFormalize( ooapopulation );
  }
  /* SELECT many forms FROM INSTANCES OF formalization */
  Escher_CopySet( forms, &pG_masl2xtuml_formalization_extent.active );
  /* FOR EACH form IN forms */
  { Escher_Iterator_s iterform;
  masl2xtuml_formalization * iiform;
  Escher_IteratorReset( &iterform, forms );
  while ( (iiform = (masl2xtuml_formalization *)Escher_IteratorNext( &iterform )) != 0 ) {
    form = iiform; {
    /* form.dispose() */
    masl2xtuml_formalization_op_dispose( form );
  }}}
  /* IF ( ( not_empty ooapopulation and ooapopulation.processingProject ) ) */
  if ( ( ( 0 != ooapopulation ) && ooapopulation->processingProject ) ) {
    masl2xtuml_S_DT * s_dt=0;masl2xtuml_C_I * c_i=0;masl2xtuml_EP_PKG * lib_pkg;Escher_ObjectSet_s c_is_space={0}; Escher_ObjectSet_s * c_is = &c_is_space;Escher_ObjectSet_s s_dts_space={0}; Escher_ObjectSet_s * s_dts = &s_dts_space;masl2xtuml_EP_PKG * types_pkg=0;
    /* SELECT many c_is FROM INSTANCES OF C_I */
    Escher_CopySet( c_is, &pG_masl2xtuml_C_I_extent.active );
    /* FOR EACH c_i IN c_is */
    { Escher_Iterator_s iterc_i;
    masl2xtuml_C_I * iic_i;
    Escher_IteratorReset( &iterc_i, c_is );
    while ( (iic_i = (masl2xtuml_C_I *)Escher_IteratorNext( &iterc_i )) != 0 ) {
      c_i = iic_i; {
      masl2xtuml_C_EP * c_ep=0;Escher_ObjectSet_s c_eps_space={0}; Escher_ObjectSet_s * c_eps = &c_eps_space;
      /* SELECT many c_eps RELATED BY c_i->C_EP[R4003] */
      Escher_ClearSet( c_eps );
      if ( 0 != c_i ) {
        Escher_CopySet( c_eps, &c_i->C_EP_R4003_is_defined_by );
      }
      /* FOR EACH c_ep IN c_eps */
      { Escher_Iterator_s iterc_ep;
      masl2xtuml_C_EP * iic_ep;
      Escher_IteratorReset( &iterc_ep, c_eps );
      while ( (iic_ep = (masl2xtuml_C_EP *)Escher_IteratorNext( &iterc_ep )) != 0 ) {
        c_ep = iic_ep; {
        /* ooapopulation.ExecutableProperty_dispose( c_ep:c_ep ) */
        masl2xtuml_ooapopulation_op_ExecutableProperty_dispose( ooapopulation,  c_ep );
      }}}
      /* DELETE OBJECT INSTANCE c_i */
      if ( 0 == c_i ) {
        XTUML_EMPTY_HANDLE_TRACE( "C_I", "Escher_DeleteInstance" );
      }
      Escher_DeleteInstance( (Escher_iHandle_t) c_i, masl2xtuml_DOMAIN_ID, masl2xtuml_C_I_CLASS_NUMBER );
      Escher_ClearSet( c_eps ); 
    }}}
    /* ASSIGN lib_pkg = ooapopulation.lib_pkg */
    lib_pkg = ooapopulation->lib_pkg;
    /* SELECT any types_pkg RELATED BY lib_pkg->PE_PE[R8000]->EP_PKG[R8001] WHERE ( ( SELECTED.Name == Shared ) ) */
    types_pkg = 0;
    {    if ( 0 != lib_pkg ) {
    masl2xtuml_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &lib_pkg->PE_PE_R8000_contains );
    while ( ( 0 == types_pkg ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_EP_PKG_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    {masl2xtuml_EP_PKG * selected = (masl2xtuml_EP_PKG *) PE_PE_R8000_contains->R8001_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "Shared" ) == 0 ) ) {
      types_pkg = selected;
    }}
}}}
    /* SELECT many s_dts RELATED BY types_pkg->PE_PE[R8000]->S_DT[R8001] WHERE ( ( SELECTED.Descrip == <definition>tmp</definition> ) ) */
    Escher_ClearSet( s_dts );
    {    if ( 0 != types_pkg ) {
    masl2xtuml_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &types_pkg->PE_PE_R8000_contains );
    while ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    {masl2xtuml_S_DT * selected = PE_PE_R8000_contains->R8001_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->Descrip, "<definition>tmp</definition>" ) == 0 ) ) {
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) s_dts, selected ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) s_dts, selected );
    }}}
}}}
    /* FOR EACH s_dt IN s_dts */
    { Escher_Iterator_s iters_dt;
    masl2xtuml_S_DT * iis_dt;
    Escher_IteratorReset( &iters_dt, s_dts );
    while ( (iis_dt = (masl2xtuml_S_DT *)Escher_IteratorNext( &iters_dt )) != 0 ) {
      s_dt = iis_dt; {
      masl2xtuml_EP_PKG * ep_pkg=0;masl2xtuml_PE_PE * pe_pe=0;masl2xtuml_S_UDT * s_udt=0;
      /* SELECT one s_udt RELATED BY s_dt->S_UDT[R17] */
      s_udt = 0;
      if ( ( 0 != s_dt ) && ( masl2xtuml_S_UDT_CLASS_NUMBER == s_dt->R17_object_id ) )      s_udt = ( 0 != s_dt ) ? (masl2xtuml_S_UDT *) s_dt->R17_subtype : 0;
      /* UNRELATE s_dt FROM s_udt ACROSS R17 */
      masl2xtuml_S_UDT_R17_Unlink( s_dt, s_udt );
      /* DELETE OBJECT INSTANCE s_udt */
      if ( 0 == s_udt ) {
        XTUML_EMPTY_HANDLE_TRACE( "S_UDT", "Escher_DeleteInstance" );
      }
      Escher_DeleteInstance( (Escher_iHandle_t) s_udt, masl2xtuml_DOMAIN_ID, masl2xtuml_S_UDT_CLASS_NUMBER );
      /* SELECT one pe_pe RELATED BY s_dt->PE_PE[R8001] */
      pe_pe = ( 0 != s_dt ) ? s_dt->PE_PE_R8001 : 0;
      /* SELECT one ep_pkg RELATED BY pe_pe->EP_PKG[R8000] */
      ep_pkg = ( 0 != pe_pe ) ? pe_pe->EP_PKG_R8000_contained_by : 0;
      /* UNRELATE pe_pe FROM ep_pkg ACROSS R8000 */
      masl2xtuml_PE_PE_R8000_Unlink_contains( ep_pkg, pe_pe );
      /* UNRELATE s_dt FROM pe_pe ACROSS R8001 */
      masl2xtuml_S_DT_R8001_Unlink( pe_pe, s_dt );
      /* DELETE OBJECT INSTANCE pe_pe */
      if ( 0 == pe_pe ) {
        XTUML_EMPTY_HANDLE_TRACE( "PE_PE", "Escher_DeleteInstance" );
      }
      Escher_DeleteInstance( (Escher_iHandle_t) pe_pe, masl2xtuml_DOMAIN_ID, masl2xtuml_PE_PE_CLASS_NUMBER );
      /* DELETE OBJECT INSTANCE s_dt */
      if ( 0 == s_dt ) {
        XTUML_EMPTY_HANDLE_TRACE( "S_DT", "Escher_DeleteInstance" );
      }
      Escher_DeleteInstance( (Escher_iHandle_t) s_dt, masl2xtuml_DOMAIN_ID, masl2xtuml_S_DT_CLASS_NUMBER );
    }}}
    Escher_ClearSet( c_is );Escher_ClearSet( s_dts ); 
  }
  Escher_ClearSet( forms );Escher_ClearSet( elements );
}

/*
 * Interface:  serial
 * Provided Port:  in
 * To Provider Message:  populate
 */
void
masl2xtuml_in_populate( c_t * p_element, c_t p_value[8][ESCHER_SYS_MAX_STRING_LEN] )
{
	/* ooapopulation::populate( element:PARAM.element, value:PARAM.value ) */
	masl2xtuml_ooapopulation_op_populate( p_element, p_value );
}
extern void mark_pass( c_t * );
#define T_T(x) ( 0 == x ) ? s : strcat(s,x)
/*
 * UML Domain Functions (Synchronous Services)
 */

Escher_idf masl2xtuml_instance_dumpers[ masl2xtuml_MAX_CLASS_NUMBERS ] = {
  masl2xtuml_MSG_M_instancedumper,
  masl2xtuml_MSG_A_instancedumper,
  masl2xtuml_MSG_O_instancedumper,
  masl2xtuml_MSG_B_instancedumper,
  masl2xtuml_MSG_E_instancedumper,
  masl2xtuml_MSG_F_instancedumper,
  masl2xtuml_MSG_BA_instancedumper,
  masl2xtuml_MSG_OA_instancedumper,
  masl2xtuml_MSG_FA_instancedumper,
  masl2xtuml_MSG_EA_instancedumper,
  masl2xtuml_MSG_R_instancedumper,
  masl2xtuml_MSG_SM_instancedumper,
  masl2xtuml_MSG_AM_instancedumper,
  masl2xtuml_MSG_ISM_instancedumper,
  masl2xtuml_MSG_IAM_instancedumper,
  masl2xtuml_MSG_IA_instancedumper,
  masl2xtuml_MSG_SIG_instancedumper,
  masl2xtuml_MSG_IOP_instancedumper,
  masl2xtuml_MSG_EPA_instancedumper,
  masl2xtuml_O_OBJ_instancedumper,
  masl2xtuml_O_IOBJ_instancedumper,
  masl2xtuml_O_ATTR_instancedumper,
  masl2xtuml_O_ID_instancedumper,
  masl2xtuml_O_OIDA_instancedumper,
  masl2xtuml_O_BATTR_instancedumper,
  masl2xtuml_O_DBATTR_instancedumper,
  masl2xtuml_O_NBATTR_instancedumper,
  masl2xtuml_O_RATTR_instancedumper,
  masl2xtuml_S_CDT_instancedumper,
  masl2xtuml_A_N_instancedumper,
  masl2xtuml_A_E_instancedumper,
  masl2xtuml_A_ACT_instancedumper,
  masl2xtuml_A_OBJ_instancedumper,
  masl2xtuml_A_CTL_instancedumper,
  masl2xtuml_A_INI_instancedumper,
  masl2xtuml_A_AF_instancedumper,
  masl2xtuml_A_FF_instancedumper,
  masl2xtuml_A_DM_instancedumper,
  masl2xtuml_O_REF_instancedumper,
  masl2xtuml_A_FJ_instancedumper,
  masl2xtuml_A_GA_instancedumper,
  masl2xtuml_A_AE_instancedumper,
  masl2xtuml_A_SS_instancedumper,
  masl2xtuml_O_RTIDA_instancedumper,
  masl2xtuml_COMM_LNK_instancedumper,
  masl2xtuml_O_TFR_instancedumper,
  masl2xtuml_O_TPARM_instancedumper,
  masl2xtuml_S_UDT_instancedumper,
  masl2xtuml_UC_UCA_instancedumper,
  masl2xtuml_UC_BA_instancedumper,
  masl2xtuml_UC_G_instancedumper,
  masl2xtuml_UC_I_instancedumper,
  masl2xtuml_UC_E_instancedumper,
  masl2xtuml_S_BRG_instancedumper,
  masl2xtuml_A_AP_instancedumper,
  masl2xtuml_A_ATE_instancedumper,
  masl2xtuml_A_AEA_instancedumper,
  masl2xtuml_S_BPARM_instancedumper,
  masl2xtuml_EP_PKG_instancedumper,
  masl2xtuml_S_EDT_instancedumper,
  masl2xtuml_CNST_CSP_instancedumper,
  masl2xtuml_CNST_SYC_instancedumper,
  masl2xtuml_CNST_LFSC_instancedumper,
  masl2xtuml_CNST_LSC_instancedumper,
  masl2xtuml_S_ENUM_instancedumper,
  masl2xtuml_S_SYNC_instancedumper,
  masl2xtuml_S_SPARM_instancedumper,
  masl2xtuml_S_SYS_instancedumper,
  masl2xtuml_G_EIS_instancedumper,
  masl2xtuml_R_REL_instancedumper,
  masl2xtuml_R_OIR_instancedumper,
  masl2xtuml_R_RTO_instancedumper,
  masl2xtuml_R_RGO_instancedumper,
  masl2xtuml_R_SIMP_instancedumper,
  masl2xtuml_R_PART_instancedumper,
  masl2xtuml_R_FORM_instancedumper,
  masl2xtuml_R_ASSOC_instancedumper,
  masl2xtuml_R_AONE_instancedumper,
  masl2xtuml_R_AOTH_instancedumper,
  masl2xtuml_R_ASSR_instancedumper,
  masl2xtuml_R_SUBSUP_instancedumper,
  masl2xtuml_R_SUPER_instancedumper,
  masl2xtuml_R_SUB_instancedumper,
  masl2xtuml_R_COMP_instancedumper,
  masl2xtuml_R_CONE_instancedumper,
  masl2xtuml_R_COTH_instancedumper,
  masl2xtuml_I_LNK_instancedumper,
  masl2xtuml_I_EVI_instancedumper,
  masl2xtuml_I_AVL_instancedumper,
  masl2xtuml_I_INS_instancedumper,
  masl2xtuml_I_EXE_instancedumper,
  masl2xtuml_I_STF_instancedumper,
  masl2xtuml_I_BSF_instancedumper,
  masl2xtuml_I_STACK_instancedumper,
  masl2xtuml_I_DIV_instancedumper,
  masl2xtuml_I_TIM_instancedumper,
  masl2xtuml_I_EQE_instancedumper,
  masl2xtuml_I_SQE_instancedumper,
  masl2xtuml_I_MON_instancedumper,
  masl2xtuml_I_VSF_instancedumper,
  masl2xtuml_I_LIP_instancedumper,
  masl2xtuml_I_RCH_instancedumper,
  masl2xtuml_I_CIN_instancedumper,
  masl2xtuml_I_ICQE_instancedumper,
  masl2xtuml_S_AW_instancedumper,
  masl2xtuml_S_IRDT_instancedumper,
  masl2xtuml_S_SDT_instancedumper,
  masl2xtuml_S_MBR_instancedumper,
  masl2xtuml_S_DIM_instancedumper,
  masl2xtuml_S_EXP_instancedumper,
  masl2xtuml_ooapopulation_instancedumper,
  masl2xtuml_ooaparticipation_instancedumper,
  masl2xtuml_ooaelement_instancedumper,
  masl2xtuml_referentialAttribute_instancedumper,
  masl2xtuml_ooapragma_list_instancedumper,
  masl2xtuml_ooapragma_instancedumper,
  masl2xtuml_ooapragma_item_instancedumper,
  masl2xtuml_ooamarkable_instancedumper,
  masl2xtuml_ooaunmarkable_instancedumper,
  masl2xtuml_formalization_instancedumper,
  masl2xtuml_simpleFormalization_instancedumper,
  masl2xtuml_subsuperFormalization_instancedumper,
  masl2xtuml_assocFormalization_instancedumper,
  masl2xtuml_S_EE_instancedumper,
  masl2xtuml_C_C_instancedumper,
  masl2xtuml_C_I_instancedumper,
  masl2xtuml_C_P_instancedumper,
  masl2xtuml_C_R_instancedumper,
  masl2xtuml_C_EP_instancedumper,
  masl2xtuml_C_AS_instancedumper,
  masl2xtuml_C_IO_instancedumper,
  masl2xtuml_C_SF_instancedumper,
  masl2xtuml_C_PP_instancedumper,
  masl2xtuml_C_IR_instancedumper,
  masl2xtuml_C_DG_instancedumper,
  masl2xtuml_C_PO_instancedumper,
  masl2xtuml_C_RID_instancedumper,
  masl2xtuml_SPR_REP_instancedumper,
  masl2xtuml_SPR_PEP_instancedumper,
  masl2xtuml_SPR_RO_instancedumper,
  masl2xtuml_SPR_RS_instancedumper,
  masl2xtuml_SPR_PO_instancedumper,
  masl2xtuml_SPR_PS_instancedumper,
  masl2xtuml_CL_IPINS_instancedumper,
  masl2xtuml_CL_IP_instancedumper,
  masl2xtuml_CL_IR_instancedumper,
  masl2xtuml_CL_IIR_instancedumper,
  masl2xtuml_CL_IC_instancedumper,
  masl2xtuml_CL_POR_instancedumper,
  masl2xtuml_S_EEM_instancedumper,
  masl2xtuml_SM_SM_instancedumper,
  masl2xtuml_SM_STATE_instancedumper,
  masl2xtuml_SM_EVT_instancedumper,
  masl2xtuml_SM_SEME_instancedumper,
  masl2xtuml_SM_NSTXN_instancedumper,
  masl2xtuml_SM_EIGN_instancedumper,
  masl2xtuml_SM_CH_instancedumper,
  masl2xtuml_SM_TXN_instancedumper,
  masl2xtuml_SM_NETXN_instancedumper,
  masl2xtuml_SM_CRTXN_instancedumper,
  masl2xtuml_SM_MOORE_instancedumper,
  masl2xtuml_SM_MEALY_instancedumper,
  masl2xtuml_SM_MOAH_instancedumper,
  masl2xtuml_SM_MEAH_instancedumper,
  masl2xtuml_SM_AH_instancedumper,
  masl2xtuml_SM_ACT_instancedumper,
  masl2xtuml_SM_EVTDI_instancedumper,
  masl2xtuml_SM_ISM_instancedumper,
  masl2xtuml_SM_ASM_instancedumper,
  masl2xtuml_SM_PEVT_instancedumper,
  masl2xtuml_SM_SEVT_instancedumper,
  masl2xtuml_SM_NLEVT_instancedumper,
  masl2xtuml_SM_LEVT_instancedumper,
  masl2xtuml_SM_SGEVT_instancedumper,
  masl2xtuml_SM_TAH_instancedumper,
  masl2xtuml_ACT_BLK_instancedumper,
  masl2xtuml_ACT_ACT_instancedumper,
  masl2xtuml_ACT_SMT_instancedumper,
  masl2xtuml_ACT_AI_instancedumper,
  masl2xtuml_ACT_SRW_instancedumper,
  masl2xtuml_ACT_SEL_instancedumper,
  masl2xtuml_ACT_FOR_instancedumper,
  masl2xtuml_ACT_CNV_instancedumper,
  masl2xtuml_ACT_REL_instancedumper,
  masl2xtuml_ACT_UNR_instancedumper,
  masl2xtuml_ACT_E_instancedumper,
  masl2xtuml_ACT_FIW_instancedumper,
  masl2xtuml_ACT_FIO_instancedumper,
  masl2xtuml_ACT_CR_instancedumper,
  masl2xtuml_ACT_DEL_instancedumper,
  masl2xtuml_ACT_RU_instancedumper,
  masl2xtuml_ACT_URU_instancedumper,
  masl2xtuml_ACT_IF_instancedumper,
  masl2xtuml_ACT_TFM_instancedumper,
  masl2xtuml_ACT_WHL_instancedumper,
  masl2xtuml_ACT_BRG_instancedumper,
  masl2xtuml_ACT_EL_instancedumper,
  masl2xtuml_ACT_SR_instancedumper,
  masl2xtuml_ACT_RET_instancedumper,
  masl2xtuml_ACT_FNC_instancedumper,
  masl2xtuml_ACT_IOP_instancedumper,
  masl2xtuml_ACT_LNK_instancedumper,
  masl2xtuml_ACT_SGN_instancedumper,
  masl2xtuml_ACT_CTL_instancedumper,
  masl2xtuml_ACT_BRK_instancedumper,
  masl2xtuml_ACT_CON_instancedumper,
  masl2xtuml_ACT_SAB_instancedumper,
  masl2xtuml_ACT_DAB_instancedumper,
  masl2xtuml_ACT_FNB_instancedumper,
  masl2xtuml_ACT_OPB_instancedumper,
  masl2xtuml_ACT_BRB_instancedumper,
  masl2xtuml_ACT_POB_instancedumper,
  masl2xtuml_ACT_PSB_instancedumper,
  masl2xtuml_ACT_ROB_instancedumper,
  masl2xtuml_ACT_RSB_instancedumper,
  masl2xtuml_ACT_BIC_instancedumper,
  masl2xtuml_ACT_TAB_instancedumper,
  masl2xtuml_ACT_BIE_instancedumper,
  masl2xtuml_E_CEI_instancedumper,
  masl2xtuml_E_GEN_instancedumper,
  masl2xtuml_E_GPR_instancedumper,
  masl2xtuml_E_CEA_instancedumper,
  masl2xtuml_E_GAR_instancedumper,
  masl2xtuml_E_GEC_instancedumper,
  masl2xtuml_E_CEC_instancedumper,
  masl2xtuml_E_ESS_instancedumper,
  masl2xtuml_E_CES_instancedumper,
  masl2xtuml_E_GES_instancedumper,
  masl2xtuml_E_CSME_instancedumper,
  masl2xtuml_E_GSME_instancedumper,
  masl2xtuml_PE_PE_instancedumper,
  masl2xtuml_PE_VIS_instancedumper,
  masl2xtuml_PE_CVS_instancedumper,
  masl2xtuml_PE_SRS_instancedumper,
  masl2xtuml_PE_CRS_instancedumper,
  masl2xtuml_V_VAL_instancedumper,
  masl2xtuml_V_PAR_instancedumper,
  masl2xtuml_V_BIN_instancedumper,
  masl2xtuml_V_LBO_instancedumper,
  masl2xtuml_V_LRL_instancedumper,
  masl2xtuml_V_TVL_instancedumper,
  masl2xtuml_V_EDV_instancedumper,
  masl2xtuml_V_ISR_instancedumper,
  masl2xtuml_V_TRV_instancedumper,
  masl2xtuml_V_UNY_instancedumper,
  masl2xtuml_V_LST_instancedumper,
  masl2xtuml_V_LIN_instancedumper,
  masl2xtuml_V_AVL_instancedumper,
  masl2xtuml_V_IRF_instancedumper,
  masl2xtuml_V_BRV_instancedumper,
  masl2xtuml_V_VAR_instancedumper,
  masl2xtuml_V_INT_instancedumper,
  masl2xtuml_V_INS_instancedumper,
  masl2xtuml_V_TRN_instancedumper,
  masl2xtuml_V_SLR_instancedumper,
  masl2xtuml_V_PVL_instancedumper,
  masl2xtuml_V_FNV_instancedumper,
  masl2xtuml_V_LEN_instancedumper,
  masl2xtuml_V_LOC_instancedumper,
  masl2xtuml_V_MVL_instancedumper,
  masl2xtuml_V_AER_instancedumper,
  masl2xtuml_V_ALV_instancedumper,
  masl2xtuml_V_MSV_instancedumper,
  masl2xtuml_V_EPR_instancedumper,
  masl2xtuml_V_SCV_instancedumper,
  masl2xtuml_PA_SIC_instancedumper,
  masl2xtuml_PA_DIC_instancedumper,
  masl2xtuml_SQ_LS_instancedumper,
  masl2xtuml_SQ_CIP_instancedumper,
  masl2xtuml_SQ_COP_instancedumper,
  masl2xtuml_SQ_TM_instancedumper,
  masl2xtuml_SQ_TS_instancedumper,
  masl2xtuml_SQ_CP_instancedumper,
  masl2xtuml_SQ_P_instancedumper,
  masl2xtuml_SQ_EEP_instancedumper,
  masl2xtuml_SQ_CPA_instancedumper,
  masl2xtuml_SQ_AV_instancedumper,
  masl2xtuml_SQ_AP_instancedumper,
  masl2xtuml_SQ_IA_instancedumper,
  masl2xtuml_SQ_FA_instancedumper,
  masl2xtuml_SQ_FAV_instancedumper,
  masl2xtuml_SQ_IAV_instancedumper,
  masl2xtuml_IA_UCP_instancedumper,
  masl2xtuml_SQ_PP_instancedumper,
  masl2xtuml_S_DT_instancedumper
};
/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const masl2xtuml_class_info[ masl2xtuml_MAX_CLASS_NUMBERS ] = {
  &pG_masl2xtuml_MSG_M_extent,
  &pG_masl2xtuml_MSG_A_extent,
  &pG_masl2xtuml_MSG_O_extent,
  &pG_masl2xtuml_MSG_B_extent,
  &pG_masl2xtuml_MSG_E_extent,
  &pG_masl2xtuml_MSG_F_extent,
  &pG_masl2xtuml_MSG_BA_extent,
  &pG_masl2xtuml_MSG_OA_extent,
  &pG_masl2xtuml_MSG_FA_extent,
  &pG_masl2xtuml_MSG_EA_extent,
  &pG_masl2xtuml_MSG_R_extent,
  &pG_masl2xtuml_MSG_SM_extent,
  &pG_masl2xtuml_MSG_AM_extent,
  &pG_masl2xtuml_MSG_ISM_extent,
  &pG_masl2xtuml_MSG_IAM_extent,
  &pG_masl2xtuml_MSG_IA_extent,
  &pG_masl2xtuml_MSG_SIG_extent,
  &pG_masl2xtuml_MSG_IOP_extent,
  &pG_masl2xtuml_MSG_EPA_extent,
  &pG_masl2xtuml_O_OBJ_extent,
  &pG_masl2xtuml_O_IOBJ_extent,
  &pG_masl2xtuml_O_ATTR_extent,
  &pG_masl2xtuml_O_ID_extent,
  &pG_masl2xtuml_O_OIDA_extent,
  &pG_masl2xtuml_O_BATTR_extent,
  &pG_masl2xtuml_O_DBATTR_extent,
  &pG_masl2xtuml_O_NBATTR_extent,
  &pG_masl2xtuml_O_RATTR_extent,
  &pG_masl2xtuml_S_CDT_extent,
  &pG_masl2xtuml_A_N_extent,
  &pG_masl2xtuml_A_E_extent,
  &pG_masl2xtuml_A_ACT_extent,
  &pG_masl2xtuml_A_OBJ_extent,
  &pG_masl2xtuml_A_CTL_extent,
  &pG_masl2xtuml_A_INI_extent,
  &pG_masl2xtuml_A_AF_extent,
  &pG_masl2xtuml_A_FF_extent,
  &pG_masl2xtuml_A_DM_extent,
  &pG_masl2xtuml_O_REF_extent,
  &pG_masl2xtuml_A_FJ_extent,
  &pG_masl2xtuml_A_GA_extent,
  &pG_masl2xtuml_A_AE_extent,
  &pG_masl2xtuml_A_SS_extent,
  &pG_masl2xtuml_O_RTIDA_extent,
  &pG_masl2xtuml_COMM_LNK_extent,
  &pG_masl2xtuml_O_TFR_extent,
  &pG_masl2xtuml_O_TPARM_extent,
  &pG_masl2xtuml_S_UDT_extent,
  &pG_masl2xtuml_UC_UCA_extent,
  &pG_masl2xtuml_UC_BA_extent,
  &pG_masl2xtuml_UC_G_extent,
  &pG_masl2xtuml_UC_I_extent,
  &pG_masl2xtuml_UC_E_extent,
  &pG_masl2xtuml_S_BRG_extent,
  &pG_masl2xtuml_A_AP_extent,
  &pG_masl2xtuml_A_ATE_extent,
  &pG_masl2xtuml_A_AEA_extent,
  &pG_masl2xtuml_S_BPARM_extent,
  &pG_masl2xtuml_EP_PKG_extent,
  &pG_masl2xtuml_S_EDT_extent,
  &pG_masl2xtuml_CNST_CSP_extent,
  &pG_masl2xtuml_CNST_SYC_extent,
  &pG_masl2xtuml_CNST_LFSC_extent,
  &pG_masl2xtuml_CNST_LSC_extent,
  &pG_masl2xtuml_S_ENUM_extent,
  &pG_masl2xtuml_S_SYNC_extent,
  &pG_masl2xtuml_S_SPARM_extent,
  &pG_masl2xtuml_S_SYS_extent,
  &pG_masl2xtuml_G_EIS_extent,
  &pG_masl2xtuml_R_REL_extent,
  &pG_masl2xtuml_R_OIR_extent,
  &pG_masl2xtuml_R_RTO_extent,
  &pG_masl2xtuml_R_RGO_extent,
  &pG_masl2xtuml_R_SIMP_extent,
  &pG_masl2xtuml_R_PART_extent,
  &pG_masl2xtuml_R_FORM_extent,
  &pG_masl2xtuml_R_ASSOC_extent,
  &pG_masl2xtuml_R_AONE_extent,
  &pG_masl2xtuml_R_AOTH_extent,
  &pG_masl2xtuml_R_ASSR_extent,
  &pG_masl2xtuml_R_SUBSUP_extent,
  &pG_masl2xtuml_R_SUPER_extent,
  &pG_masl2xtuml_R_SUB_extent,
  &pG_masl2xtuml_R_COMP_extent,
  &pG_masl2xtuml_R_CONE_extent,
  &pG_masl2xtuml_R_COTH_extent,
  &pG_masl2xtuml_I_LNK_extent,
  &pG_masl2xtuml_I_EVI_extent,
  &pG_masl2xtuml_I_AVL_extent,
  &pG_masl2xtuml_I_INS_extent,
  &pG_masl2xtuml_I_EXE_extent,
  &pG_masl2xtuml_I_STF_extent,
  &pG_masl2xtuml_I_BSF_extent,
  &pG_masl2xtuml_I_STACK_extent,
  &pG_masl2xtuml_I_DIV_extent,
  &pG_masl2xtuml_I_TIM_extent,
  &pG_masl2xtuml_I_EQE_extent,
  &pG_masl2xtuml_I_SQE_extent,
  &pG_masl2xtuml_I_MON_extent,
  &pG_masl2xtuml_I_VSF_extent,
  &pG_masl2xtuml_I_LIP_extent,
  &pG_masl2xtuml_I_RCH_extent,
  &pG_masl2xtuml_I_CIN_extent,
  &pG_masl2xtuml_I_ICQE_extent,
  &pG_masl2xtuml_S_AW_extent,
  &pG_masl2xtuml_S_IRDT_extent,
  &pG_masl2xtuml_S_SDT_extent,
  &pG_masl2xtuml_S_MBR_extent,
  &pG_masl2xtuml_S_DIM_extent,
  &pG_masl2xtuml_S_EXP_extent,
  &pG_masl2xtuml_ooapopulation_extent,
  &pG_masl2xtuml_ooaparticipation_extent,
  &pG_masl2xtuml_ooaelement_extent,
  &pG_masl2xtuml_referentialAttribute_extent,
  &pG_masl2xtuml_ooapragma_list_extent,
  &pG_masl2xtuml_ooapragma_extent,
  &pG_masl2xtuml_ooapragma_item_extent,
  &pG_masl2xtuml_ooamarkable_extent,
  &pG_masl2xtuml_ooaunmarkable_extent,
  &pG_masl2xtuml_formalization_extent,
  &pG_masl2xtuml_simpleFormalization_extent,
  &pG_masl2xtuml_subsuperFormalization_extent,
  &pG_masl2xtuml_assocFormalization_extent,
  &pG_masl2xtuml_S_EE_extent,
  &pG_masl2xtuml_C_C_extent,
  &pG_masl2xtuml_C_I_extent,
  &pG_masl2xtuml_C_P_extent,
  &pG_masl2xtuml_C_R_extent,
  &pG_masl2xtuml_C_EP_extent,
  &pG_masl2xtuml_C_AS_extent,
  &pG_masl2xtuml_C_IO_extent,
  &pG_masl2xtuml_C_SF_extent,
  &pG_masl2xtuml_C_PP_extent,
  &pG_masl2xtuml_C_IR_extent,
  &pG_masl2xtuml_C_DG_extent,
  &pG_masl2xtuml_C_PO_extent,
  &pG_masl2xtuml_C_RID_extent,
  &pG_masl2xtuml_SPR_REP_extent,
  &pG_masl2xtuml_SPR_PEP_extent,
  &pG_masl2xtuml_SPR_RO_extent,
  &pG_masl2xtuml_SPR_RS_extent,
  &pG_masl2xtuml_SPR_PO_extent,
  &pG_masl2xtuml_SPR_PS_extent,
  &pG_masl2xtuml_CL_IPINS_extent,
  &pG_masl2xtuml_CL_IP_extent,
  &pG_masl2xtuml_CL_IR_extent,
  &pG_masl2xtuml_CL_IIR_extent,
  &pG_masl2xtuml_CL_IC_extent,
  &pG_masl2xtuml_CL_POR_extent,
  &pG_masl2xtuml_S_EEM_extent,
  &pG_masl2xtuml_SM_SM_extent,
  &pG_masl2xtuml_SM_STATE_extent,
  &pG_masl2xtuml_SM_EVT_extent,
  &pG_masl2xtuml_SM_SEME_extent,
  &pG_masl2xtuml_SM_NSTXN_extent,
  &pG_masl2xtuml_SM_EIGN_extent,
  &pG_masl2xtuml_SM_CH_extent,
  &pG_masl2xtuml_SM_TXN_extent,
  &pG_masl2xtuml_SM_NETXN_extent,
  &pG_masl2xtuml_SM_CRTXN_extent,
  &pG_masl2xtuml_SM_MOORE_extent,
  &pG_masl2xtuml_SM_MEALY_extent,
  &pG_masl2xtuml_SM_MOAH_extent,
  &pG_masl2xtuml_SM_MEAH_extent,
  &pG_masl2xtuml_SM_AH_extent,
  &pG_masl2xtuml_SM_ACT_extent,
  &pG_masl2xtuml_SM_EVTDI_extent,
  &pG_masl2xtuml_SM_ISM_extent,
  &pG_masl2xtuml_SM_ASM_extent,
  &pG_masl2xtuml_SM_PEVT_extent,
  &pG_masl2xtuml_SM_SEVT_extent,
  &pG_masl2xtuml_SM_NLEVT_extent,
  &pG_masl2xtuml_SM_LEVT_extent,
  &pG_masl2xtuml_SM_SGEVT_extent,
  &pG_masl2xtuml_SM_TAH_extent,
  &pG_masl2xtuml_ACT_BLK_extent,
  &pG_masl2xtuml_ACT_ACT_extent,
  &pG_masl2xtuml_ACT_SMT_extent,
  &pG_masl2xtuml_ACT_AI_extent,
  &pG_masl2xtuml_ACT_SRW_extent,
  &pG_masl2xtuml_ACT_SEL_extent,
  &pG_masl2xtuml_ACT_FOR_extent,
  &pG_masl2xtuml_ACT_CNV_extent,
  &pG_masl2xtuml_ACT_REL_extent,
  &pG_masl2xtuml_ACT_UNR_extent,
  &pG_masl2xtuml_ACT_E_extent,
  &pG_masl2xtuml_ACT_FIW_extent,
  &pG_masl2xtuml_ACT_FIO_extent,
  &pG_masl2xtuml_ACT_CR_extent,
  &pG_masl2xtuml_ACT_DEL_extent,
  &pG_masl2xtuml_ACT_RU_extent,
  &pG_masl2xtuml_ACT_URU_extent,
  &pG_masl2xtuml_ACT_IF_extent,
  &pG_masl2xtuml_ACT_TFM_extent,
  &pG_masl2xtuml_ACT_WHL_extent,
  &pG_masl2xtuml_ACT_BRG_extent,
  &pG_masl2xtuml_ACT_EL_extent,
  &pG_masl2xtuml_ACT_SR_extent,
  &pG_masl2xtuml_ACT_RET_extent,
  &pG_masl2xtuml_ACT_FNC_extent,
  &pG_masl2xtuml_ACT_IOP_extent,
  &pG_masl2xtuml_ACT_LNK_extent,
  &pG_masl2xtuml_ACT_SGN_extent,
  &pG_masl2xtuml_ACT_CTL_extent,
  &pG_masl2xtuml_ACT_BRK_extent,
  &pG_masl2xtuml_ACT_CON_extent,
  &pG_masl2xtuml_ACT_SAB_extent,
  &pG_masl2xtuml_ACT_DAB_extent,
  &pG_masl2xtuml_ACT_FNB_extent,
  &pG_masl2xtuml_ACT_OPB_extent,
  &pG_masl2xtuml_ACT_BRB_extent,
  &pG_masl2xtuml_ACT_POB_extent,
  &pG_masl2xtuml_ACT_PSB_extent,
  &pG_masl2xtuml_ACT_ROB_extent,
  &pG_masl2xtuml_ACT_RSB_extent,
  &pG_masl2xtuml_ACT_BIC_extent,
  &pG_masl2xtuml_ACT_TAB_extent,
  &pG_masl2xtuml_ACT_BIE_extent,
  &pG_masl2xtuml_E_CEI_extent,
  &pG_masl2xtuml_E_GEN_extent,
  &pG_masl2xtuml_E_GPR_extent,
  &pG_masl2xtuml_E_CEA_extent,
  &pG_masl2xtuml_E_GAR_extent,
  &pG_masl2xtuml_E_GEC_extent,
  &pG_masl2xtuml_E_CEC_extent,
  &pG_masl2xtuml_E_ESS_extent,
  &pG_masl2xtuml_E_CES_extent,
  &pG_masl2xtuml_E_GES_extent,
  &pG_masl2xtuml_E_CSME_extent,
  &pG_masl2xtuml_E_GSME_extent,
  &pG_masl2xtuml_PE_PE_extent,
  &pG_masl2xtuml_PE_VIS_extent,
  &pG_masl2xtuml_PE_CVS_extent,
  &pG_masl2xtuml_PE_SRS_extent,
  &pG_masl2xtuml_PE_CRS_extent,
  &pG_masl2xtuml_V_VAL_extent,
  &pG_masl2xtuml_V_PAR_extent,
  &pG_masl2xtuml_V_BIN_extent,
  &pG_masl2xtuml_V_LBO_extent,
  &pG_masl2xtuml_V_LRL_extent,
  &pG_masl2xtuml_V_TVL_extent,
  &pG_masl2xtuml_V_EDV_extent,
  &pG_masl2xtuml_V_ISR_extent,
  &pG_masl2xtuml_V_TRV_extent,
  &pG_masl2xtuml_V_UNY_extent,
  &pG_masl2xtuml_V_LST_extent,
  &pG_masl2xtuml_V_LIN_extent,
  &pG_masl2xtuml_V_AVL_extent,
  &pG_masl2xtuml_V_IRF_extent,
  &pG_masl2xtuml_V_BRV_extent,
  &pG_masl2xtuml_V_VAR_extent,
  &pG_masl2xtuml_V_INT_extent,
  &pG_masl2xtuml_V_INS_extent,
  &pG_masl2xtuml_V_TRN_extent,
  &pG_masl2xtuml_V_SLR_extent,
  &pG_masl2xtuml_V_PVL_extent,
  &pG_masl2xtuml_V_FNV_extent,
  &pG_masl2xtuml_V_LEN_extent,
  &pG_masl2xtuml_V_LOC_extent,
  &pG_masl2xtuml_V_MVL_extent,
  &pG_masl2xtuml_V_AER_extent,
  &pG_masl2xtuml_V_ALV_extent,
  &pG_masl2xtuml_V_MSV_extent,
  &pG_masl2xtuml_V_EPR_extent,
  &pG_masl2xtuml_V_SCV_extent,
  &pG_masl2xtuml_PA_SIC_extent,
  &pG_masl2xtuml_PA_DIC_extent,
  &pG_masl2xtuml_SQ_LS_extent,
  &pG_masl2xtuml_SQ_CIP_extent,
  &pG_masl2xtuml_SQ_COP_extent,
  &pG_masl2xtuml_SQ_TM_extent,
  &pG_masl2xtuml_SQ_TS_extent,
  &pG_masl2xtuml_SQ_CP_extent,
  &pG_masl2xtuml_SQ_P_extent,
  &pG_masl2xtuml_SQ_EEP_extent,
  &pG_masl2xtuml_SQ_CPA_extent,
  &pG_masl2xtuml_SQ_AV_extent,
  &pG_masl2xtuml_SQ_AP_extent,
  &pG_masl2xtuml_SQ_IA_extent,
  &pG_masl2xtuml_SQ_FA_extent,
  &pG_masl2xtuml_SQ_FAV_extent,
  &pG_masl2xtuml_SQ_IAV_extent,
  &pG_masl2xtuml_IA_UCP_extent,
  &pG_masl2xtuml_SQ_PP_extent,
  &pG_masl2xtuml_S_DT_extent
};


void masl2xtuml_execute_initialization()
{
}
