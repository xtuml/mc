/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_DOM_class.h
 *
 * Class:       Domain  (S_DOM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_DOM_CLASS_H
#define OOAOFOOA_S_DOM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Domain  (S_DOM)
 */
struct ooaofooa_S_DOM {

  /* application analysis class attributes */
  Escher_UniqueID_t Dom_ID;  
  c_t * Name;  
  c_t * Descrip;  
  i_t Full_Der;  
  Escher_UniqueID_t Config_ID;  
  Escher_UniqueID_t Sys_ID;  
  bool IsBeingVerified;  

  /* relationship storage */
  Escher_ObjectSet_s S_SS_R1_is_partitioned_into;
  Escher_ObjectSet_s S_EE_R8_interacts_with;
  Escher_ObjectSet_s S_DT_R14_contains_defined;
  Escher_ObjectSet_s S_SYNC_R23_defines;
  ooaofooa_S_SYS * S_SYS_R28;
  Escher_ObjectSet_s S_FPK_R29_contains;
  Escher_ObjectSet_s S_EEPK_R36_contains;
  Escher_ObjectSet_s S_DPK_R40_contains;
  Escher_ObjectSet_s S_SID_R43;
  Escher_ObjectSet_s S_DIS_R47;
  Escher_ObjectSet_s PL_EEPID_R300;
  Escher_ObjectSet_s PL_FPID_R301;
  Escher_ObjectSet_s SQ_S_R913_can_show;
  Escher_ObjectSet_s A_A_R1100_contains;
  Escher_ObjectSet_s COMM_COMM_R1132_can_display;
  Escher_ObjectSet_s UC_UCC_R1201_can_display;
  ooaofooa_I_EXE * I_EXE_R2948_is_being_verified_by;
  ooaofooa_CN_DC * CN_DC_R4204;
};
void ooaofooa_S_DOM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_DOM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_DOM_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_DOM * ooaofooa_S_DOM_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_S_SS_R1_From_S_DOM_is_partitioned_into( S_DOM ) ( &((S_DOM)->S_SS_R1_is_partitioned_into) )
#define ooaofooa_S_EE_R8_From_S_DOM_interacts_with( S_DOM ) ( &((S_DOM)->S_EE_R8_interacts_with) )
/* Note:  S_DOM->S_EE[R8] not navigated */
#define ooaofooa_S_DT_R14_From_S_DOM_contains_defined( S_DOM ) ( &((S_DOM)->S_DT_R14_contains_defined) )
/* Note:  S_DOM->S_DT[R14] not navigated */
#define ooaofooa_S_SYNC_R23_From_S_DOM_defines( S_DOM ) ( &((S_DOM)->S_SYNC_R23_defines) )
/* Note:  S_DOM->S_SYNC[R23] not navigated */
void ooaofooa_S_DOM_R28_Link( ooaofooa_S_SYS *, ooaofooa_S_DOM * );
void ooaofooa_S_DOM_R28_Unlink( ooaofooa_S_SYS *, ooaofooa_S_DOM * );
#define ooaofooa_S_FPK_R29_From_S_DOM_contains( S_DOM ) ( &((S_DOM)->S_FPK_R29_contains) )
/* Note:  S_DOM->S_FPK[R29] not navigated */
#define ooaofooa_S_EEPK_R36_From_S_DOM_contains( S_DOM ) ( &((S_DOM)->S_EEPK_R36_contains) )
/* Note:  S_DOM->S_EEPK[R36] not navigated */
#define ooaofooa_S_DPK_R40_From_S_DOM_contains( S_DOM ) ( &((S_DOM)->S_DPK_R40_contains) )
/* Note:  S_DOM->S_DPK[R40] not navigated */
#define ooaofooa_S_SID_R43_From_S_DOM( S_DOM ) ( &((S_DOM)->S_SID_R43) )
#define ooaofooa_S_DIS_R47_From_S_DOM( S_DOM ) ( &((S_DOM)->S_DIS_R47) )
#define ooaofooa_PL_EEPID_R300_From_S_DOM( S_DOM ) ( &((S_DOM)->PL_EEPID_R300) )
#define ooaofooa_PL_FPID_R301_From_S_DOM( S_DOM ) ( &((S_DOM)->PL_FPID_R301) )
#define ooaofooa_SQ_S_R913_From_S_DOM_can_show( S_DOM ) ( &((S_DOM)->SQ_S_R913_can_show) )
/* Note:  S_DOM->SQ_S[R913] not navigated */
#define ooaofooa_A_A_R1100_From_S_DOM_contains( S_DOM ) ( &((S_DOM)->A_A_R1100_contains) )
/* Note:  S_DOM->A_A[R1100] not navigated */
#define ooaofooa_COMM_COMM_R1132_From_S_DOM_can_display( S_DOM ) ( &((S_DOM)->COMM_COMM_R1132_can_display) )
/* Note:  S_DOM->COMM_COMM[R1132] not navigated */
#define ooaofooa_UC_UCC_R1201_From_S_DOM_can_display( S_DOM ) ( &((S_DOM)->UC_UCC_R1201_can_display) )
/* Note:  S_DOM->UC_UCC[R1201] not navigated */


#define ooaofooa_S_DOM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_DOM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_DOM_CLASS_H */


