/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_PVL_class.h
 *
 * Class:       Parameter Value  (V_PVL)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_PVL_CLASS_H
#define OOAOFOOA_V_PVL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Parameter Value  (V_PVL)
 */
struct ooaofooa_V_PVL {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t BParm_ID;  
  Escher_UniqueID_t SParm_ID;  
  Escher_UniqueID_t TParm_ID;  
  Escher_UniqueID_t PP_Id;  

  /* relationship storage */
  ooaofooa_V_VAL * V_VAL_R801;
  ooaofooa_S_BPARM * S_BPARM_R831_is_a_value_of;
  ooaofooa_S_SPARM * S_SPARM_R832_is_a_value_of;
  ooaofooa_O_TPARM * O_TPARM_R833_is_a_value_of;
  ooaofooa_C_PP * C_PP_R843_is_a_value_of;
};
void ooaofooa_V_PVL_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_PVL_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_PVL_batch_relate( Escher_iHandle_t );

void ooaofooa_V_PVL_R801_Link( ooaofooa_V_VAL *, ooaofooa_V_PVL * );
void ooaofooa_V_PVL_R801_Unlink( ooaofooa_V_VAL *, ooaofooa_V_PVL * );
void ooaofooa_V_PVL_R831_Link( ooaofooa_S_BPARM *, ooaofooa_V_PVL * );
void ooaofooa_V_PVL_R831_Unlink( ooaofooa_S_BPARM *, ooaofooa_V_PVL * );
void ooaofooa_V_PVL_R832_Link( ooaofooa_S_SPARM *, ooaofooa_V_PVL * );
void ooaofooa_V_PVL_R832_Unlink( ooaofooa_S_SPARM *, ooaofooa_V_PVL * );
void ooaofooa_V_PVL_R833_Link( ooaofooa_O_TPARM *, ooaofooa_V_PVL * );
void ooaofooa_V_PVL_R833_Unlink( ooaofooa_O_TPARM *, ooaofooa_V_PVL * );
void ooaofooa_V_PVL_R843_Link( ooaofooa_C_PP *, ooaofooa_V_PVL * );
void ooaofooa_V_PVL_R843_Unlink( ooaofooa_C_PP *, ooaofooa_V_PVL * );


#define ooaofooa_V_PVL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_PVL_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_PVL_CLASS_H */


