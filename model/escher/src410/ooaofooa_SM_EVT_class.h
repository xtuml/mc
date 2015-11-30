/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_EVT_class.h
 *
 * Class:       State Machine Event  (SM_EVT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_EVT_CLASS_H
#define OOAOFOOA_SM_EVT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   State Machine Event  (SM_EVT)
 */
struct ooaofooa_SM_EVT {

  /* application analysis class attributes */
  Escher_UniqueID_t SMevt_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMspd_ID;  
  i_t Numb;  
  c_t Mning[ESCHER_SYS_MAX_STRING_LEN];  
  i_t Is_Lbl_U;  
  c_t Unq_Lbl[ESCHER_SYS_MAX_STRING_LEN];  
  c_t Drv_Lbl[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  

  /* relationship storage */
  Escher_ObjectSet_s CA_EESME_R405_is_carried_to_other_SMs_via;
  Escher_ObjectSet_s CA_SMSME_R409_is_carried_to_other_SMs_via;
  ooaofooa_SM_SM * SM_SM_R502;
  ooaofooa_SM_SUPDT * SM_SUPDT_R520_carries;
  void * R525_subtype;
  Escher_ClassNumber_t R525_object_id;
  Escher_ObjectSet_s SM_EVTDI_R532_carries;
  Escher_ObjectSet_s E_CSME_R706;
  Escher_ObjectSet_s E_GSME_R707;
  Escher_ObjectSet_s MSG_E_R1009_is_generated_by;
  ooaofooa_TE_EVT * TE_EVT_R2036;
  Escher_ObjectSet_s I_EVI_R2906_has_instances;
  ooaofooa_BP_EV * BP_EV_R3103_has_set;
};
void ooaofooa_SM_EVT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_EVT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_EVT_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SM_EVT * ooaofooa_SM_EVT_AnyWhere1( Escher_UniqueID_t );
ooaofooa_SM_EVT * ooaofooa_SM_EVT_AnyWhere2( Escher_UniqueID_t, Escher_UniqueID_t, Escher_UniqueID_t );

#define ooaofooa_CA_EESME_R405_From_SM_EVT_is_carried_to_other_SMs_via( SM_EVT ) ( &((SM_EVT)->CA_EESME_R405_is_carried_to_other_SMs_via) )
/* Note:  SM_EVT->CA_EESME[R405] not navigated */
#define ooaofooa_CA_SMSME_R409_From_SM_EVT_is_carried_to_other_SMs_via( SM_EVT ) ( &((SM_EVT)->CA_SMSME_R409_is_carried_to_other_SMs_via) )
/* Note:  SM_EVT->CA_SMSME[R409] not navigated */
void ooaofooa_SM_EVT_R502_Link_can_be_communicated_to_via( ooaofooa_SM_SM *, ooaofooa_SM_EVT * );
void ooaofooa_SM_EVT_R502_Unlink_can_be_communicated_to_via( ooaofooa_SM_SM *, ooaofooa_SM_EVT * );
void ooaofooa_SM_EVT_R520_Link_defines_signature_of( ooaofooa_SM_SUPDT *, ooaofooa_SM_EVT * );
void ooaofooa_SM_EVT_R520_Unlink_defines_signature_of( ooaofooa_SM_SUPDT *, ooaofooa_SM_EVT * );

/* Accessors to SM_EVT[R525] subtypes */
#define ooaofooa_SM_SEVT_R525_From_SM_EVT( SM_EVT ) \
   ( (((SM_EVT)->R525_object_id) == ooaofooa_SM_SEVT_CLASS_NUMBER) ? \
     ((ooaofooa_SM_SEVT *)((SM_EVT)->R525_subtype)) : (0) )
#define ooaofooa_SM_PEVT_R525_From_SM_EVT( SM_EVT ) \
   ( (((SM_EVT)->R525_object_id) == ooaofooa_SM_PEVT_CLASS_NUMBER) ? \
     ((ooaofooa_SM_PEVT *)((SM_EVT)->R525_subtype)) : (0) )

#define ooaofooa_SM_EVTDI_R532_From_SM_EVT_carries( SM_EVT ) ( &((SM_EVT)->SM_EVTDI_R532_carries) )
#define ooaofooa_E_CSME_R706_From_SM_EVT( SM_EVT ) ( &((SM_EVT)->E_CSME_R706) )
#define ooaofooa_E_GSME_R707_From_SM_EVT( SM_EVT ) ( &((SM_EVT)->E_GSME_R707) )
#define ooaofooa_MSG_E_R1009_From_SM_EVT_is_generated_by( SM_EVT ) ( &((SM_EVT)->MSG_E_R1009_is_generated_by) )
#define ooaofooa_I_EVI_R2906_From_SM_EVT_has_instances( SM_EVT ) ( &((SM_EVT)->I_EVI_R2906_has_instances) )
/* Note:  SM_EVT->I_EVI[R2906] not navigated */


#define ooaofooa_SM_EVT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_EVT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_EVT_CLASS_H */


