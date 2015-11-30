/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_RCH_class.h
 *
 * Class:       Runtime Channel  (I_RCH)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_I_RCH_CLASS_H
#define OOAOFOOA_I_RCH_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Runtime Channel  (I_RCH)
 */
struct ooaofooa_I_RCH {

  /* application analysis class attributes */
  Escher_UniqueID_t Channel_Id;  
  Escher_UniqueID_t Execution_Engine_ID;  
  Escher_UniqueID_t other_Execution_Engine_ID;  
  Escher_UniqueID_t Satisfaction_Id;  
  Escher_UniqueID_t Delegation_Id;  
  Escher_UniqueID_t Next_provider_Channel_Id;  

  /* relationship storage */
  ooaofooa_I_EXE * I_EXE_R2968_is_interface_provider_to;
  ooaofooa_I_EXE * I_EXE_R2968_is_interface_requirer_of;
  ooaofooa_C_SF * C_SF_R2969_implements;
  ooaofooa_C_DG * C_DG_R2972_implements;
  ooaofooa_I_RCH * I_RCH_R2973_requirer;
  ooaofooa_I_RCH * I_RCH_R2973_provider;
};
void ooaofooa_I_RCH_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_I_RCH_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_I_RCH_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_I_RCH * ooaofooa_I_RCH_AnyWhere1( Escher_UniqueID_t );

/*

 * R2968 is Associative Reflexive:  1-(*:*)
 *
 *  Referential attribute Runtime Channel.Execution_Engine_ID
 *    refers across R2968 in the direction of is interface provider to (R_AONE)
 *
 *  Referential attribute Runtime Channel.other_Execution_Engine_ID
 *    refers across R2968 in the direction of is interface requirer of (R_AOTH)
 */
/* Navigation phrase:  R2968.'is interface provider to' */
void ooaofooa_I_RCH_R2968_Link_is_interface_provider_to( ooaofooa_I_EXE *, ooaofooa_I_EXE *, ooaofooa_I_RCH * );
void ooaofooa_I_RCH_R2968_Unlink_is_interface_provider_to( ooaofooa_I_EXE *, ooaofooa_I_EXE *, ooaofooa_I_RCH * );
/* Navigation phrase:  R2968.'is interface requirer of' */
void ooaofooa_I_RCH_R2968_Link_is_interface_requirer_of( ooaofooa_I_EXE *, ooaofooa_I_EXE *, ooaofooa_I_RCH * );
void ooaofooa_I_RCH_R2968_Unlink_is_interface_requirer_of( ooaofooa_I_EXE *, ooaofooa_I_EXE *, ooaofooa_I_RCH * );
void ooaofooa_I_RCH_R2969_Link_is_implemented_at_runtime_by( ooaofooa_C_SF *, ooaofooa_I_RCH * );
void ooaofooa_I_RCH_R2969_Unlink_is_implemented_at_runtime_by( ooaofooa_C_SF *, ooaofooa_I_RCH * );
void ooaofooa_I_RCH_R2972_Link_is_implemented_at_runtime_by( ooaofooa_C_DG *, ooaofooa_I_RCH * );
void ooaofooa_I_RCH_R2972_Unlink_is_implemented_at_runtime_by( ooaofooa_C_DG *, ooaofooa_I_RCH * );
      
/*
 * R2973 is Simple Reflexive:  0..1:0..1
 *  Formalizing I_RCH requirer participant
 *  Participant I_RCH provider formalizer
 */
/* Navigation phrase:  R2973.'requirer' */
void ooaofooa_I_RCH_R2973_Link_requirer( ooaofooa_I_RCH *, ooaofooa_I_RCH * );
void ooaofooa_I_RCH_R2973_Unlink_requirer( ooaofooa_I_RCH *, ooaofooa_I_RCH * );
/* Navigation phrase:  R2973.'provider' */
void ooaofooa_I_RCH_R2973_Link_provider( ooaofooa_I_RCH *, ooaofooa_I_RCH * );
void ooaofooa_I_RCH_R2973_Unlink_provider( ooaofooa_I_RCH *, ooaofooa_I_RCH * );


#define ooaofooa_I_RCH_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_I_RCH_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_I_RCH_CLASS_H */


