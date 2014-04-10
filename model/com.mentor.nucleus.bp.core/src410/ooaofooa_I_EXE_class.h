/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_EXE_class.h
 *
 * Class:       Component Instance  (I_EXE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_I_EXE_CLASS_H
#define OOAOFOOA_I_EXE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Component Instance  (I_EXE)
 */
struct ooaofooa_I_EXE {

  /* application analysis class attributes */
  bool Running;  
  Escher_UniqueID_t Execution_Engine_ID;  
  Escher_UniqueID_t Dom_ID;  
  Escher_UniqueID_t Component_Id;  
  Escher_UniqueID_t Package_ID;  
  i_t Next_Unique_ID;  
  i_t Next_Instance_ID;  
  Escher_UniqueID_t ImportedComponent_Id;  
  c_t Label[ESCHER_SYS_MAX_STRING_LEN];  
  i_t EQE_Lock;  
  i_t SQE_Lock;  
  Escher_UniqueID_t Container_ID;  
  i_t RealizedBy;  

  /* relationship storage */
  ooaofooa_I_STACK * I_STACK_R2930_controls;
  Escher_ObjectSet_s I_EQE_R2944;
  Escher_ObjectSet_s I_SQE_R2946;
  ooaofooa_S_DOM * S_DOM_R2948_is_verifying;
  Escher_ObjectSet_s I_MON_R2949;
  Escher_ObjectSet_s CSME_CLM_R2950;
  ooaofooa_C_C * C_C_R2955_is_verifying_instance_of;
  Escher_ObjectSet_s I_INS_R2957_creates;
  Escher_ObjectSet_s CSME_CIE_R2960_executes;
  ooaofooa_CL_IC * CL_IC_R2963_is_verifying_instance_of;
  Escher_ObjectSet_s I_EVI_R2964_houses;
  Escher_ObjectSet_s I_RCH_R2968_is_interface_provider_to;
  Escher_ObjectSet_s I_RCH_R2968_is_interface_requirer_of;
  ooaofooa_EP_PKG * EP_PKG_R2970_is_verifying;
  ooaofooa_I_CIN * I_CIN_R2974;
  ooaofooa_I_CIN * I_CIN_R2975;
  Escher_ObjectSet_s I_EVI_R2976_sends;
  Escher_ObjectSet_s I_ICQE_R2977;
};
void ooaofooa_I_EXE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_I_EXE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_I_EXE_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_I_EXE * ooaofooa_I_EXE_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_I_EQE_R2944_From_I_EXE( I_EXE ) ( &((I_EXE)->I_EQE_R2944) )
#define ooaofooa_I_SQE_R2946_From_I_EXE( I_EXE ) ( &((I_EXE)->I_SQE_R2946) )
void ooaofooa_I_EXE_R2948_Link_is_being_verified_by( ooaofooa_S_DOM *, ooaofooa_I_EXE * );
void ooaofooa_I_EXE_R2948_Unlink_is_being_verified_by( ooaofooa_S_DOM *, ooaofooa_I_EXE * );
#define ooaofooa_I_MON_R2949_From_I_EXE( I_EXE ) ( &((I_EXE)->I_MON_R2949) )
#define ooaofooa_CSME_CLM_R2950_From_I_EXE( I_EXE ) ( &((I_EXE)->CSME_CLM_R2950) )
void ooaofooa_I_EXE_R2955_Link_instance_being_verified_by( ooaofooa_C_C *, ooaofooa_I_EXE * );
void ooaofooa_I_EXE_R2955_Unlink_instance_being_verified_by( ooaofooa_C_C *, ooaofooa_I_EXE * );
#define ooaofooa_I_INS_R2957_From_I_EXE_creates( I_EXE ) ( &((I_EXE)->I_INS_R2957_creates) )
/* Note:  I_EXE->I_INS[R2957] not navigated */
#define ooaofooa_CSME_CIE_R2960_From_I_EXE_executes( I_EXE ) ( &((I_EXE)->CSME_CIE_R2960_executes) )
/* Note:  I_EXE->CSME_CIE[R2960] not navigated */
void ooaofooa_I_EXE_R2963_Link_instance_being_verified_by( ooaofooa_CL_IC *, ooaofooa_I_EXE * );
void ooaofooa_I_EXE_R2963_Unlink_instance_being_verified_by( ooaofooa_CL_IC *, ooaofooa_I_EXE * );
#define ooaofooa_I_EVI_R2964_From_I_EXE_houses( I_EXE ) ( &((I_EXE)->I_EVI_R2964_houses) )
/* Note:  I_EXE->I_EVI[R2964] not navigated */
#define ooaofooa_I_RCH_R2968_From_I_EXE_is_interface_provider_to( I_EXE ) ( &((I_EXE)->I_RCH_R2968_is_interface_provider_to) )
#define ooaofooa_I_RCH_R2968_From_I_EXE_is_interface_requirer_of( I_EXE ) ( &((I_EXE)->I_RCH_R2968_is_interface_requirer_of) )
void ooaofooa_I_EXE_R2970_Link_is_being_verified_by( ooaofooa_EP_PKG *, ooaofooa_I_EXE * );
void ooaofooa_I_EXE_R2970_Unlink_is_being_verified_by( ooaofooa_EP_PKG *, ooaofooa_I_EXE * );
void ooaofooa_I_EXE_R2975_Link( ooaofooa_I_CIN *, ooaofooa_I_EXE * );
void ooaofooa_I_EXE_R2975_Unlink( ooaofooa_I_CIN *, ooaofooa_I_EXE * );
#define ooaofooa_I_EVI_R2976_From_I_EXE_sends( I_EXE ) ( &((I_EXE)->I_EVI_R2976_sends) )
/* Note:  I_EXE->I_EVI[R2976] not navigated */
#define ooaofooa_I_ICQE_R2977_From_I_EXE( I_EXE ) ( &((I_EXE)->I_ICQE_R2977) )
/* Note:  I_EXE->I_ICQE[R2977] not navigated */


#define ooaofooa_I_EXE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_I_EXE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_I_EXE_CLASS_H */


