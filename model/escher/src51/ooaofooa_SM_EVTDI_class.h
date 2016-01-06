/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_EVTDI_class.h
 *
 * Class:       State Machine Event Data Item  (SM_EVTDI)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_EVTDI_CLASS_H
#define OOAOFOOA_SM_EVTDI_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   State Machine Event Data Item  (SM_EVTDI)
 */
struct ooaofooa_SM_EVTDI {

  /* application analysis class attributes */
  Escher_UniqueID_t SMedi_ID;  
  Escher_UniqueID_t SM_ID;  
  c_t * Name;  
  c_t * Descrip;  
  Escher_UniqueID_t DT_ID;  
  c_t * Dimensions;  
  Escher_UniqueID_t SMevt_ID;  
  Escher_UniqueID_t Previous_SMedi_ID;  

  /* relationship storage */
  ooaofooa_SM_SM * SM_SM_R516_is_carried_on_events_into;
  Escher_ObjectSet_s SM_SDI_R522;
  ooaofooa_S_DT * S_DT_R524_is_defined_by;
  Escher_ObjectSet_s S_DIM_R531_may_have;
  ooaofooa_SM_EVT * SM_EVT_R532_carried_by;
  ooaofooa_SM_EVTDI * SM_EVTDI_R533_succeeds;
  ooaofooa_SM_EVTDI * SM_EVTDI_R533_precedes;
  Escher_ObjectSet_s V_EPR_R846;
  Escher_ObjectSet_s MSG_EA_R1017_represents;
  ooaofooa_TE_PARM * TE_PARM_R2031;
  Escher_ObjectSet_s I_DIV_R2934;
};
void ooaofooa_SM_EVTDI_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_EVTDI_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_EVTDI_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SM_EVTDI * ooaofooa_SM_EVTDI_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t );

void ooaofooa_SM_EVTDI_R516_Link_can_asynchronously_communicate_via( ooaofooa_SM_SM *, ooaofooa_SM_EVTDI * );
void ooaofooa_SM_EVTDI_R516_Unlink_can_asynchronously_communicate_via( ooaofooa_SM_SM *, ooaofooa_SM_EVTDI * );
#define ooaofooa_SM_SDI_R522_From_SM_EVTDI( SM_EVTDI ) ( &((SM_EVTDI)->SM_SDI_R522) )
void ooaofooa_SM_EVTDI_R524_Link_defines_the_type_of( ooaofooa_S_DT *, ooaofooa_SM_EVTDI * );
void ooaofooa_SM_EVTDI_R524_Unlink_defines_the_type_of( ooaofooa_S_DT *, ooaofooa_SM_EVTDI * );
#define ooaofooa_S_DIM_R531_From_SM_EVTDI_may_have( SM_EVTDI ) ( &((SM_EVTDI)->S_DIM_R531_may_have) )
void ooaofooa_SM_EVTDI_R532_Link_carries( ooaofooa_SM_EVT *, ooaofooa_SM_EVTDI * );
void ooaofooa_SM_EVTDI_R532_Unlink_carries( ooaofooa_SM_EVT *, ooaofooa_SM_EVTDI * );
      
/*
 * R533 is Simple Reflexive:  0..1:0..1
 *  Formalizing SM_EVTDI succeeds participant
 *  Participant SM_EVTDI precedes formalizer
 */
/* Navigation phrase:  R533.'succeeds' */
void ooaofooa_SM_EVTDI_R533_Link_succeeds( ooaofooa_SM_EVTDI *, ooaofooa_SM_EVTDI * );
void ooaofooa_SM_EVTDI_R533_Unlink_succeeds( ooaofooa_SM_EVTDI *, ooaofooa_SM_EVTDI * );
/* Navigation phrase:  R533.'precedes' */
void ooaofooa_SM_EVTDI_R533_Link_precedes( ooaofooa_SM_EVTDI *, ooaofooa_SM_EVTDI * );
void ooaofooa_SM_EVTDI_R533_Unlink_precedes( ooaofooa_SM_EVTDI *, ooaofooa_SM_EVTDI * );
#define ooaofooa_V_EPR_R846_From_SM_EVTDI( SM_EVTDI ) ( &((SM_EVTDI)->V_EPR_R846) )
#define ooaofooa_MSG_EA_R1017_From_SM_EVTDI_represents( SM_EVTDI ) ( &((SM_EVTDI)->MSG_EA_R1017_represents) )
/* Note:  SM_EVTDI->MSG_EA[R1017] not navigated */
#define ooaofooa_I_DIV_R2934_From_SM_EVTDI( SM_EVTDI ) ( &((SM_EVTDI)->I_DIV_R2934) )
/* Note:  SM_EVTDI->I_DIV[R2934] not navigated */


#define ooaofooa_SM_EVTDI_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_EVTDI_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_EVTDI_CLASS_H */


