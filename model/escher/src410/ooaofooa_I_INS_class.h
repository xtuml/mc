/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_INS_class.h
 *
 * Class:       Instance  (I_INS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_I_INS_CLASS_H
#define OOAOFOOA_I_INS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Instance  (I_INS)
 */
struct ooaofooa_I_INS {

  /* application analysis class attributes */
  Escher_UniqueID_t Inst_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMstt_ID;  
  Escher_UniqueID_t Execution_Engine_ID;  
  Escher_UniqueID_t Trans_ID;  
  Escher_UniqueID_t CIE_ID;  
  c_t Label[ESCHER_SYS_MAX_STRING_LEN];  
  c_t Default_Name[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  Escher_ObjectSet_s I_EVI_R2907_has_waiting;
  Escher_ObjectSet_s I_AVL_R2909_has_characteristic_abstracted_by;
  ooaofooa_SM_STATE * SM_STATE_R2915_occupies;
  Escher_ObjectSet_s I_EVI_R2935_is_target_of;
  Escher_ObjectSet_s I_EVI_R2937_sends;
  ooaofooa_I_MON * I_MON_R2949;
  ooaofooa_SM_TXN * SM_TXN_R2953_entered_last_state_via;
  Escher_ObjectSet_s I_STF_R2954_provides_context_for;
  ooaofooa_I_EXE * I_EXE_R2957_created_by;
  Escher_ObjectSet_s I_LIP_R2958;
  ooaofooa_CSME_CIE * CSME_CIE_R2962_instance_of;
};
void ooaofooa_I_INS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_I_INS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_I_INS_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_I_INS * ooaofooa_I_INS_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_I_EVI_R2907_From_I_INS_has_waiting( I_INS ) ( &((I_INS)->I_EVI_R2907_has_waiting) )
/* Note:  I_INS->I_EVI[R2907] not navigated */
#define ooaofooa_I_AVL_R2909_From_I_INS_has_characteristic_abstracted_by( I_INS ) ( &((I_INS)->I_AVL_R2909_has_characteristic_abstracted_by) )
/* Note:  I_INS->I_AVL[R2909] not navigated */
void ooaofooa_I_INS_R2915_Link_defines_state_of( ooaofooa_SM_STATE *, ooaofooa_I_INS * );
void ooaofooa_I_INS_R2915_Unlink_defines_state_of( ooaofooa_SM_STATE *, ooaofooa_I_INS * );
#define ooaofooa_I_EVI_R2935_From_I_INS_is_target_of( I_INS ) ( &((I_INS)->I_EVI_R2935_is_target_of) )
/* Note:  I_INS->I_EVI[R2935] not navigated */
#define ooaofooa_I_EVI_R2937_From_I_INS_sends( I_INS ) ( &((I_INS)->I_EVI_R2937_sends) )
/* Note:  I_INS->I_EVI[R2937] not navigated */
void ooaofooa_I_INS_R2953_Link_caused_last_state_change_to( ooaofooa_SM_TXN *, ooaofooa_I_INS * );
void ooaofooa_I_INS_R2953_Unlink_caused_last_state_change_to( ooaofooa_SM_TXN *, ooaofooa_I_INS * );
#define ooaofooa_I_STF_R2954_From_I_INS_provides_context_for( I_INS ) ( &((I_INS)->I_STF_R2954_provides_context_for) )
/* Note:  I_INS->I_STF[R2954] not navigated */
void ooaofooa_I_INS_R2957_Link_creates( ooaofooa_I_EXE *, ooaofooa_I_INS * );
void ooaofooa_I_INS_R2957_Unlink_creates( ooaofooa_I_EXE *, ooaofooa_I_INS * );
#define ooaofooa_I_LIP_R2958_From_I_INS( I_INS ) ( &((I_INS)->I_LIP_R2958) )
/* Note:  I_INS->I_LIP[R2958] not navigated */
void ooaofooa_I_INS_R2962_Link_is_static_definition( ooaofooa_CSME_CIE *, ooaofooa_I_INS * );
void ooaofooa_I_INS_R2962_Unlink_is_static_definition( ooaofooa_CSME_CIE *, ooaofooa_I_INS * );


#define ooaofooa_I_INS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_I_INS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_I_INS_CLASS_H */


