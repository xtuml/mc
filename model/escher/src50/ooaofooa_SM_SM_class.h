/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_SM_class.h
 *
 * Class:       State Machine  (SM_SM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_SM_CLASS_H
#define OOAOFOOA_SM_SM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   State Machine  (SM_SM)
 */
struct ooaofooa_SM_SM {

  /* application analysis class attributes */
  Escher_UniqueID_t SM_ID;  
  c_t * Descrip;  
  i_t Config_ID;  

  /* relationship storage */
  Escher_ObjectSet_s CA_EESMC_R403_has_received_event_communication_represented_by;
  Escher_ObjectSet_s CA_SMSMC_R406_originates;
  Escher_ObjectSet_s CA_SMSMC_R407_represents_the_destination_SM_for;
  Escher_ObjectSet_s CA_SMEEC_R410_originates;
  Escher_ObjectSet_s CA_ACC_R416_originates;
  Escher_ObjectSet_s SM_STATE_R501_is_decomposed_into;
  Escher_ObjectSet_s SM_EVT_R502_can_be_communicated_to_via;
  Escher_ObjectSet_s SM_TXN_R505_contains;
  void * R510_subtype;
  Escher_ClassNumber_t R510_object_id;
  Escher_ObjectSet_s SM_ACT_R515_contains;
  Escher_ObjectSet_s SM_EVTDI_R516_can_asynchronously_communicate_via;
  void * R517_subtype;
  Escher_ClassNumber_t R517_object_id;
  Escher_ObjectSet_s SM_SUPDT_R523_contains;
  ooaofooa_TE_SM * TE_SM_R2043;
};
void ooaofooa_SM_SM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_SM_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_SM_SM_batch_relate 0

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SM_SM * ooaofooa_SM_SM_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_CA_EESMC_R403_From_SM_SM_has_received_event_communication_represented_by( SM_SM ) ( &((SM_SM)->CA_EESMC_R403_has_received_event_communication_represented_by) )
/* Note:  SM_SM->CA_EESMC[R403] not navigated */
#define ooaofooa_CA_SMSMC_R406_From_SM_SM_originates( SM_SM ) ( &((SM_SM)->CA_SMSMC_R406_originates) )
/* Note:  SM_SM->CA_SMSMC[R406] not navigated */
#define ooaofooa_CA_SMSMC_R407_From_SM_SM_represents_the_destination_SM_for( SM_SM ) ( &((SM_SM)->CA_SMSMC_R407_represents_the_destination_SM_for) )
/* Note:  SM_SM->CA_SMSMC[R407] not navigated */
#define ooaofooa_CA_SMEEC_R410_From_SM_SM_originates( SM_SM ) ( &((SM_SM)->CA_SMEEC_R410_originates) )
/* Note:  SM_SM->CA_SMEEC[R410] not navigated */
#define ooaofooa_CA_ACC_R416_From_SM_SM_originates( SM_SM ) ( &((SM_SM)->CA_ACC_R416_originates) )
/* Note:  SM_SM->CA_ACC[R416] not navigated */
#define ooaofooa_SM_STATE_R501_From_SM_SM_is_decomposed_into( SM_SM ) ( &((SM_SM)->SM_STATE_R501_is_decomposed_into) )
#define ooaofooa_SM_EVT_R502_From_SM_SM_can_be_communicated_to_via( SM_SM ) ( &((SM_SM)->SM_EVT_R502_can_be_communicated_to_via) )
#define ooaofooa_SM_TXN_R505_From_SM_SM_contains( SM_SM ) ( &((SM_SM)->SM_TXN_R505_contains) )

/* Accessors to SM_SM[R510] subtypes */
#define ooaofooa_SM_MEALY_R510_From_SM_SM( SM_SM ) \
   ( (((SM_SM)->R510_object_id) == ooaofooa_SM_MEALY_CLASS_NUMBER) ? \
     ((ooaofooa_SM_MEALY *)((SM_SM)->R510_subtype)) : (0) )
/* Note:  SM_SM->SM_MEALY[R510] not navigated */
#define ooaofooa_SM_MOORE_R510_From_SM_SM( SM_SM ) \
   ( (((SM_SM)->R510_object_id) == ooaofooa_SM_MOORE_CLASS_NUMBER) ? \
     ((ooaofooa_SM_MOORE *)((SM_SM)->R510_subtype)) : (0) )
/* Note:  SM_SM->SM_MOORE[R510] not navigated */

#define ooaofooa_SM_ACT_R515_From_SM_SM_contains( SM_SM ) ( &((SM_SM)->SM_ACT_R515_contains) )
#define ooaofooa_SM_EVTDI_R516_From_SM_SM_can_asynchronously_communicate_via( SM_SM ) ( &((SM_SM)->SM_EVTDI_R516_can_asynchronously_communicate_via) )
/* Note:  SM_SM->SM_EVTDI[R516] not navigated */

/* Accessors to SM_SM[R517] subtypes */
#define ooaofooa_SM_ISM_R517_From_SM_SM( SM_SM ) \
   ( (((SM_SM)->R517_object_id) == ooaofooa_SM_ISM_CLASS_NUMBER) ? \
     ((ooaofooa_SM_ISM *)((SM_SM)->R517_subtype)) : (0) )
#define ooaofooa_SM_ASM_R517_From_SM_SM( SM_SM ) \
   ( (((SM_SM)->R517_object_id) == ooaofooa_SM_ASM_CLASS_NUMBER) ? \
     ((ooaofooa_SM_ASM *)((SM_SM)->R517_subtype)) : (0) )

#define ooaofooa_SM_SUPDT_R523_From_SM_SM_contains( SM_SM ) ( &((SM_SM)->SM_SUPDT_R523_contains) )
/* Note:  SM_SM->SM_SUPDT[R523] not navigated */


#define ooaofooa_SM_SM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_SM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_SM_CLASS_H */


