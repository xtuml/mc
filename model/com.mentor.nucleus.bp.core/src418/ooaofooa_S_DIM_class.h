/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_DIM_class.h
 *
 * Class:       Dimensions  (S_DIM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_DIM_CLASS_H
#define OOAOFOOA_S_DIM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Dimensions  (S_DIM)
 */
struct ooaofooa_S_DIM {

  /* application analysis class attributes */
  i_t elementCount;  
  i_t dimensionCount;  
  Escher_UniqueID_t Sync_ID;  
  Escher_UniqueID_t SParm_ID;  
  Escher_UniqueID_t BParm_ID;  
  Escher_UniqueID_t Brg_ID;  
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t Attr_ID;  
  Escher_UniqueID_t TParm_ID;  
  Escher_UniqueID_t Tfr_ID;  
  Escher_UniqueID_t Member_ID;  
  Escher_UniqueID_t DT_ID;  
  Escher_UniqueID_t PP_Id;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMedi_ID;  
  Escher_UniqueID_t DIM_ID;  
  Escher_UniqueID_t Var_ID;  

  /* relationship storage */
  ooaofooa_S_BPARM * S_BPARM_R49_specifies_occurrences_of;
  ooaofooa_S_BRG * S_BRG_R50_defines_return_value_dimensions_for;
  ooaofooa_S_SYNC * S_SYNC_R51_defines_return_value_dimensions_for;
  ooaofooa_S_SPARM * S_SPARM_R52_specifies_occurrences_of;
  ooaofooa_S_MBR * S_MBR_R53_specifies_occurrences_of;
  ooaofooa_O_ATTR * O_ATTR_R120_specifies_occurrences_of;
  ooaofooa_O_TPARM * O_TPARM_R121_specifies_occurrences_of;
  ooaofooa_O_TFR * O_TFR_R122_defines_return_value_dimensions_for;
  ooaofooa_SM_EVTDI * SM_EVTDI_R531_specifies_occurrences_of;
  ooaofooa_V_TRN * V_TRN_R844_specifies_occurrences_of;
  ooaofooa_V_VAR * V_VAR_R849_specifies_occurrences_of;
  ooaofooa_C_PP * C_PP_R4017_specifies_occurrences_of;
  ooaofooa_C_IO * C_IO_R4018_defines_return_value_dimensions_for_;
};
void ooaofooa_S_DIM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_DIM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_DIM_batch_relate( Escher_iHandle_t );

void ooaofooa_S_DIM_R49_Link_may_have( ooaofooa_S_BPARM *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R49_Unlink_may_have( ooaofooa_S_BPARM *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R50_Link_return_value_may_have( ooaofooa_S_BRG *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R50_Unlink_return_value_may_have( ooaofooa_S_BRG *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R51_Link_return_value_may_have( ooaofooa_S_SYNC *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R51_Unlink_return_value_may_have( ooaofooa_S_SYNC *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R52_Link_may_have( ooaofooa_S_SPARM *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R52_Unlink_may_have( ooaofooa_S_SPARM *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R53_Link_may_have( ooaofooa_S_MBR *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R53_Unlink_may_have( ooaofooa_S_MBR *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R120_Link_may_have( ooaofooa_O_ATTR *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R120_Unlink_may_have( ooaofooa_O_ATTR *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R121_Link_may_have( ooaofooa_O_TPARM *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R121_Unlink_may_have( ooaofooa_O_TPARM *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R122_Link_return_value_may_have( ooaofooa_O_TFR *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R122_Unlink_return_value_may_have( ooaofooa_O_TFR *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R531_Link_may_have( ooaofooa_SM_EVTDI *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R531_Unlink_may_have( ooaofooa_SM_EVTDI *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R844_Link_may_have( ooaofooa_V_TRN *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R844_Unlink_may_have( ooaofooa_V_TRN *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R849_Link_may_have( ooaofooa_V_VAR *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R849_Unlink_may_have( ooaofooa_V_VAR *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R4017_Link_may_have( ooaofooa_C_PP *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R4017_Unlink_may_have( ooaofooa_C_PP *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R4018_Link_return_value_may_have( ooaofooa_C_IO *, ooaofooa_S_DIM * );
void ooaofooa_S_DIM_R4018_Unlink_return_value_may_have( ooaofooa_C_IO *, ooaofooa_S_DIM * );


#define ooaofooa_S_DIM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_DIM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_DIM_CLASS_H */


