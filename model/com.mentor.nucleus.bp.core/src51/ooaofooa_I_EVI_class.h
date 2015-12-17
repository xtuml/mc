/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_EVI_class.h
 *
 * Class:       Pending Event  (I_EVI)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_I_EVI_CLASS_H
#define OOAOFOOA_I_EVI_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Pending Event  (I_EVI)
 */
struct ooaofooa_I_EVI {

  /* application analysis class attributes */
  Escher_UniqueID_t Event_ID;  
  bool isExecuting;  
  bool isCreation;  
  Escher_UniqueID_t SMevt_ID;  
  Escher_UniqueID_t Target_Inst_ID;  
  Escher_UniqueID_t nextEvent_ID;  
  Escher_UniqueID_t Sent_By_Inst_ID;  
  Escher_UniqueID_t next_self_Event_ID;  
  Escher_UniqueID_t Sent_By_CIE_ID;  
  Escher_UniqueID_t CIE_ID;  
  Escher_UniqueID_t Execution_Engine_ID;  
  Escher_UniqueID_t Originating_Execution_Engine_ID;  
  c_t * Label;  

  /* relationship storage */
  ooaofooa_SM_EVT * SM_EVT_R2906_is_instance_of;
  ooaofooa_I_INS * I_INS_R2907_is_pending_for;
  ooaofooa_I_EVI * I_EVI_R2908_will_be_processed_after;
  ooaofooa_I_EVI * I_EVI_R2908_will_be_processed_before;
  ooaofooa_CSME_CIE * CSME_CIE_R2931_has_target;
  Escher_ObjectSet_s I_DIV_R2933;
  ooaofooa_I_INS * I_INS_R2935_targets;
  ooaofooa_I_INS * I_INS_R2937_was_sent_from;
  ooaofooa_CSME_CIE * CSME_CIE_R2938_was_sent_from;
  ooaofooa_I_EVI * I_EVI_R2939_will_be_processed_before;
  ooaofooa_I_EVI * I_EVI_R2939_will_be_processed_after;
  ooaofooa_I_TIM * I_TIM_R2940_delivered_by;
  ooaofooa_I_EQE * I_EQE_R2944;
  ooaofooa_I_SQE * I_SQE_R2946;
  ooaofooa_I_EXE * I_EXE_R2964_is_pending_in;
  ooaofooa_I_EXE * I_EXE_R2976_originates_from;
};
void ooaofooa_I_EVI_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_I_EVI_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_I_EVI_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_I_EVI * ooaofooa_I_EVI_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_I_EVI_R2906_Link_has_instances( ooaofooa_SM_EVT *, ooaofooa_I_EVI * );
void ooaofooa_I_EVI_R2906_Unlink_has_instances( ooaofooa_SM_EVT *, ooaofooa_I_EVI * );
void ooaofooa_I_EVI_R2907_Link_has_waiting( ooaofooa_I_INS *, ooaofooa_I_EVI * );
void ooaofooa_I_EVI_R2907_Unlink_has_waiting( ooaofooa_I_INS *, ooaofooa_I_EVI * );
      
/*
 * R2908 is Simple Reflexive:  0..1:0..1
 *  Formalizing I_EVI will be processed after participant
 *  Participant I_EVI will be processed before formalizer
 */
/* Navigation phrase:  R2908.'will be processed after' */
void ooaofooa_I_EVI_R2908_Link_will_be_processed_after( ooaofooa_I_EVI *, ooaofooa_I_EVI * );
void ooaofooa_I_EVI_R2908_Unlink_will_be_processed_after( ooaofooa_I_EVI *, ooaofooa_I_EVI * );
/* Navigation phrase:  R2908.'will be processed before' */
void ooaofooa_I_EVI_R2908_Link_will_be_processed_before( ooaofooa_I_EVI *, ooaofooa_I_EVI * );
void ooaofooa_I_EVI_R2908_Unlink_will_be_processed_before( ooaofooa_I_EVI *, ooaofooa_I_EVI * );
void ooaofooa_I_EVI_R2931_Link_has_waiting( ooaofooa_CSME_CIE *, ooaofooa_I_EVI * );
void ooaofooa_I_EVI_R2931_Unlink_has_waiting( ooaofooa_CSME_CIE *, ooaofooa_I_EVI * );
#define ooaofooa_I_DIV_R2933_From_I_EVI( I_EVI ) ( &((I_EVI)->I_DIV_R2933) )
/* Note:  I_EVI->I_DIV[R2933] not navigated */
void ooaofooa_I_EVI_R2935_Link_is_target_of( ooaofooa_I_INS *, ooaofooa_I_EVI * );
void ooaofooa_I_EVI_R2935_Unlink_is_target_of( ooaofooa_I_INS *, ooaofooa_I_EVI * );
void ooaofooa_I_EVI_R2937_Link_sends( ooaofooa_I_INS *, ooaofooa_I_EVI * );
void ooaofooa_I_EVI_R2937_Unlink_sends( ooaofooa_I_INS *, ooaofooa_I_EVI * );
void ooaofooa_I_EVI_R2938_Link_sends( ooaofooa_CSME_CIE *, ooaofooa_I_EVI * );
void ooaofooa_I_EVI_R2938_Unlink_sends( ooaofooa_CSME_CIE *, ooaofooa_I_EVI * );
      
/*
 * R2939 is Simple Reflexive:  0..1:0..1
 *  Formalizing I_EVI will be processed before participant
 *  Participant I_EVI will be processed after formalizer
 */
/* Navigation phrase:  R2939.'will be processed before' */
void ooaofooa_I_EVI_R2939_Link_will_be_processed_before( ooaofooa_I_EVI *, ooaofooa_I_EVI * );
void ooaofooa_I_EVI_R2939_Unlink_will_be_processed_before( ooaofooa_I_EVI *, ooaofooa_I_EVI * );
/* Navigation phrase:  R2939.'will be processed after' */
void ooaofooa_I_EVI_R2939_Link_will_be_processed_after( ooaofooa_I_EVI *, ooaofooa_I_EVI * );
void ooaofooa_I_EVI_R2939_Unlink_will_be_processed_after( ooaofooa_I_EVI *, ooaofooa_I_EVI * );
void ooaofooa_I_EVI_R2964_Link_houses( ooaofooa_I_EXE *, ooaofooa_I_EVI * );
void ooaofooa_I_EVI_R2964_Unlink_houses( ooaofooa_I_EXE *, ooaofooa_I_EVI * );
void ooaofooa_I_EVI_R2976_Link_sends( ooaofooa_I_EXE *, ooaofooa_I_EVI * );
void ooaofooa_I_EVI_R2976_Unlink_sends( ooaofooa_I_EXE *, ooaofooa_I_EVI * );


#define ooaofooa_I_EVI_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_I_EVI_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_I_EVI_CLASS_H */


