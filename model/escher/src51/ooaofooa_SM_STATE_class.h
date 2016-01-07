/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_STATE_class.h
 *
 * Class:       State Machine State  (SM_STATE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_STATE_CLASS_H
#define OOAOFOOA_SM_STATE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   State Machine State  (SM_STATE)
 */
struct ooaofooa_SM_STATE {

  /* application analysis class attributes */
  Escher_UniqueID_t SMstt_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMspd_ID;  
  c_t * Name;  
  i_t Numb;  
  i_t Final;  

  /* relationship storage */
  ooaofooa_SM_SM * SM_SM_R501;
  Escher_ObjectSet_s SM_SEME_R503;
  Escher_ObjectSet_s SM_TXN_R506_is_destination_of;
  Escher_ObjectSet_s SM_NETXN_R508_is_origination_of;
  ooaofooa_SM_MOAH * SM_MOAH_R511;
  ooaofooa_SM_SUPDT * SM_SUPDT_R521_receives_asynchronous_data_via;
  ooaofooa_TE_STATE * TE_STATE_R2037;
  Escher_ObjectSet_s I_INS_R2915_defines_state_of;
  ooaofooa_CSME_CIS * CSME_CIS_R2932;
  ooaofooa_BP_ST * BP_ST_R3104_has_set;
};
void ooaofooa_SM_STATE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_STATE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_STATE_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SM_STATE * ooaofooa_SM_STATE_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t );
ooaofooa_SM_STATE * ooaofooa_SM_STATE_AnyWhere2( Escher_UniqueID_t, Escher_UniqueID_t, Escher_UniqueID_t );

void ooaofooa_SM_STATE_R501_Link_is_decomposed_into( ooaofooa_SM_SM *, ooaofooa_SM_STATE * );
void ooaofooa_SM_STATE_R501_Unlink_is_decomposed_into( ooaofooa_SM_SM *, ooaofooa_SM_STATE * );
#define ooaofooa_SM_SEME_R503_From_SM_STATE( SM_STATE ) ( &((SM_STATE)->SM_SEME_R503) )
#define ooaofooa_SM_TXN_R506_From_SM_STATE_is_destination_of( SM_STATE ) ( &((SM_STATE)->SM_TXN_R506_is_destination_of) )
#define ooaofooa_SM_NETXN_R508_From_SM_STATE_is_origination_of( SM_STATE ) ( &((SM_STATE)->SM_NETXN_R508_is_origination_of) )
/* Note:  SM_STATE->SM_NETXN[R508] not navigated */
void ooaofooa_SM_STATE_R521_Link_is_delivered_by_received_event_to( ooaofooa_SM_SUPDT *, ooaofooa_SM_STATE * );
void ooaofooa_SM_STATE_R521_Unlink_is_delivered_by_received_event_to( ooaofooa_SM_SUPDT *, ooaofooa_SM_STATE * );
#define ooaofooa_I_INS_R2915_From_SM_STATE_defines_state_of( SM_STATE ) ( &((SM_STATE)->I_INS_R2915_defines_state_of) )
/* Note:  SM_STATE->I_INS[R2915] not navigated */


#define ooaofooa_SM_STATE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_STATE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_STATE_CLASS_H */


