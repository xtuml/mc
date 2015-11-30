/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_BRG_class.h
 *
 * Class:       Bridge  (S_BRG)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_BRG_CLASS_H
#define OOAOFOOA_S_BRG_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Bridge  (S_BRG)
 */
struct ooaofooa_S_BRG {

  /* application analysis class attributes */
  Escher_UniqueID_t Brg_ID;  
  Escher_UniqueID_t EE_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  i_t Brg_Typ;  
  Escher_UniqueID_t DT_ID;  
  c_t Action_Semantics[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Action_Semantics_internal;  
  sys_ParseStatus_t Suc_Pars;  
  c_t Return_Dimensions[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_S_EE * S_EE_R19_provides_access_to;
  ooaofooa_S_DT * S_DT_R20_return_value_defined_by;
  Escher_ObjectSet_s S_BPARM_R21_is_part_of;
  Escher_ObjectSet_s S_DIM_R50_return_value_may_have;
  Escher_ObjectSet_s ACT_BRG_R674;
  ooaofooa_ACT_BRB * ACT_BRB_R697;
  Escher_ObjectSet_s V_BRV_R828;
  Escher_ObjectSet_s MSG_B_R1012_is_invoked_by;
  ooaofooa_TE_BRG * TE_BRG_R2025;
  ooaofooa_S_AW * S_AW_R3200_is_executed_through;
};
void ooaofooa_S_BRG_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_BRG_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_BRG_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_BRG * ooaofooa_S_BRG_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_S_BRG_R19_Link_uses( ooaofooa_S_EE *, ooaofooa_S_BRG * );
void ooaofooa_S_BRG_R19_Unlink_uses( ooaofooa_S_EE *, ooaofooa_S_BRG * );
void ooaofooa_S_BRG_R20_Link_defines_the_return_value( ooaofooa_S_DT *, ooaofooa_S_BRG * );
void ooaofooa_S_BRG_R20_Unlink_defines_the_return_value( ooaofooa_S_DT *, ooaofooa_S_BRG * );
#define ooaofooa_S_BPARM_R21_From_S_BRG_is_part_of( S_BRG ) ( &((S_BRG)->S_BPARM_R21_is_part_of) )
#define ooaofooa_S_DIM_R50_From_S_BRG_return_value_may_have( S_BRG ) ( &((S_BRG)->S_DIM_R50_return_value_may_have) )
/* Note:  S_BRG->S_DIM[R50] not navigated */
#define ooaofooa_ACT_BRG_R674_From_S_BRG( S_BRG ) ( &((S_BRG)->ACT_BRG_R674) )
#define ooaofooa_V_BRV_R828_From_S_BRG( S_BRG ) ( &((S_BRG)->V_BRV_R828) )
#define ooaofooa_MSG_B_R1012_From_S_BRG_is_invoked_by( S_BRG ) ( &((S_BRG)->MSG_B_R1012_is_invoked_by) )


#define ooaofooa_S_BRG_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_BRG_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_BRG_CLASS_H */


