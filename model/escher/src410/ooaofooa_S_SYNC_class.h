/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_SYNC_class.h
 *
 * Class:       Function  (S_SYNC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_SYNC_CLASS_H
#define OOAOFOOA_S_SYNC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Function  (S_SYNC)
 */
struct ooaofooa_S_SYNC {

  /* application analysis class attributes */
  Escher_UniqueID_t Sync_ID;  
  Escher_UniqueID_t Dom_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  c_t Action_Semantics[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Action_Semantics_internal;  
  Escher_UniqueID_t DT_ID;  
  sys_ParseStatus_t Suc_Pars;  
  c_t Return_Dimensions[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_S_DOM * S_DOM_R23_is_defined_in_;
  Escher_ObjectSet_s S_SPARM_R24_defines;
  ooaofooa_S_DT * S_DT_R25_has_return_type_of;
  ooaofooa_S_FIP * S_FIP_R31;
  Escher_ObjectSet_s S_DIM_R51_return_value_may_have;
  Escher_ObjectSet_s ACT_FNC_R675;
  ooaofooa_ACT_FNB * ACT_FNB_R695;
  Escher_ObjectSet_s V_FNV_R827;
  Escher_ObjectSet_s MSG_F_R1010_is_invoked_by;
  ooaofooa_TE_SYNC * TE_SYNC_R2023;
  Escher_ObjectSet_s S_AW_R3201_provides_execution_for;
  ooaofooa_PE_PE * PE_PE_R8001;
};
void ooaofooa_S_SYNC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_SYNC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_SYNC_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_SYNC * ooaofooa_S_SYNC_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_S_SYNC_R23_Link_defines( ooaofooa_S_DOM *, ooaofooa_S_SYNC * );
void ooaofooa_S_SYNC_R23_Unlink_defines( ooaofooa_S_DOM *, ooaofooa_S_SYNC * );
#define ooaofooa_S_SPARM_R24_From_S_SYNC_defines( S_SYNC ) ( &((S_SYNC)->S_SPARM_R24_defines) )
void ooaofooa_S_SYNC_R25_Link_defines_return_type( ooaofooa_S_DT *, ooaofooa_S_SYNC * );
void ooaofooa_S_SYNC_R25_Unlink_defines_return_type( ooaofooa_S_DT *, ooaofooa_S_SYNC * );
#define ooaofooa_S_DIM_R51_From_S_SYNC_return_value_may_have( S_SYNC ) ( &((S_SYNC)->S_DIM_R51_return_value_may_have) )
/* Note:  S_SYNC->S_DIM[R51] not navigated */
#define ooaofooa_ACT_FNC_R675_From_S_SYNC( S_SYNC ) ( &((S_SYNC)->ACT_FNC_R675) )
#define ooaofooa_V_FNV_R827_From_S_SYNC( S_SYNC ) ( &((S_SYNC)->V_FNV_R827) )
#define ooaofooa_MSG_F_R1010_From_S_SYNC_is_invoked_by( S_SYNC ) ( &((S_SYNC)->MSG_F_R1010_is_invoked_by) )
#define ooaofooa_S_AW_R3201_From_S_SYNC_provides_execution_for( S_SYNC ) ( &((S_SYNC)->S_AW_R3201_provides_execution_for) )
/* Note:  S_SYNC->S_AW[R3201] not navigated */
void ooaofooa_S_SYNC_R8001_Link( ooaofooa_PE_PE *, ooaofooa_S_SYNC * );
void ooaofooa_S_SYNC_R8001_Unlink( ooaofooa_PE_PE *, ooaofooa_S_SYNC * );


#define ooaofooa_S_SYNC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_SYNC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_SYNC_CLASS_H */


