/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_VAL_class.h
 *
 * Class:       Value  (V_VAL)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_VAL_CLASS_H
#define OOAOFOOA_V_VAL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Value  (V_VAL)
 */
struct ooaofooa_V_VAL {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  
  bool isLValue;  
  bool isImplicit;  
  i_t LineNumber;  
  i_t StartPosition;  
  i_t EndPosition;  
  i_t firstParameterLabelLineNumber;  
  i_t firstParameterLabelColumn;  
  i_t currentLaterParameterLabelLineNumber;  
  i_t currentLaterParameterLabelColumn;  
  Escher_UniqueID_t DT_ID;  
  Escher_UniqueID_t Block_ID;  
  c_t Text[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_ACT_AI * ACT_AI_R609;
  ooaofooa_ACT_FIW * ACT_FIW_R610;
  ooaofooa_ACT_SRW * ACT_SRW_R611;
  ooaofooa_ACT_SEL * ACT_SEL_R613;
  ooaofooa_ACT_IF * ACT_IF_R625;
  ooaofooa_ACT_WHL * ACT_WHL_R626;
  Escher_ObjectSet_s ACT_IOP_R629_is_target_of;
  Escher_ObjectSet_s ACT_SGN_R630_is_target_of;
  ooaofooa_ACT_EL * ACT_EL_R659;
  ooaofooa_ACT_RET * ACT_RET_R668_returned_by;
  ooaofooa_ACT_AI * ACT_AI_R689;
  ooaofooa_E_GPR * E_GPR_R714_holds_event_to_be_generated_by;
  ooaofooa_V_PAR * V_PAR_R800_is_value_of;
  void * R801_subtype;
  Escher_ClassNumber_t R801_object_id;
  ooaofooa_V_BIN * V_BIN_R802_is_left_operand_to;
  ooaofooa_V_BIN * V_BIN_R803_is_right_operand_to;
  ooaofooa_V_UNY * V_UNY_R804_is_operand_to;
  ooaofooa_V_AVL * V_AVL_R807_is_root_for;
  ooaofooa_S_DT * S_DT_R820_has_type;
  ooaofooa_ACT_BLK * ACT_BLK_R826_has_scope;
  ooaofooa_V_MVL * V_MVL_R837_is_root_for;
  ooaofooa_V_AER * V_AER_R838_is_root_for;
  ooaofooa_V_AER * V_AER_R839_provides_index_of;
  ooaofooa_V_ALV * V_ALV_R840_has_length_returned_by;
  Escher_ObjectSet_s V_MSV_R851_is_target_of;
  ooaofooa_TE_VAL * TE_VAL_R2040;
  Escher_ObjectSet_s I_VSF_R2978;
};
void ooaofooa_V_VAL_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_VAL_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_VAL_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_V_VAL * ooaofooa_V_VAL_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_ACT_IOP_R629_From_V_VAL_is_target_of( V_VAL ) ( &((V_VAL)->ACT_IOP_R629_is_target_of) )
/* Note:  V_VAL->ACT_IOP[R629] not navigated */
#define ooaofooa_ACT_SGN_R630_From_V_VAL_is_target_of( V_VAL ) ( &((V_VAL)->ACT_SGN_R630_is_target_of) )
/* Note:  V_VAL->ACT_SGN[R630] not navigated */

/* Accessors to V_VAL[R801] subtypes */
#define ooaofooa_V_FNV_R801_From_V_VAL( V_VAL ) \
   ( (((V_VAL)->R801_object_id) == ooaofooa_V_FNV_CLASS_NUMBER) ? \
     ((ooaofooa_V_FNV *)((V_VAL)->R801_subtype)) : (0) )
#define ooaofooa_V_PVL_R801_From_V_VAL( V_VAL ) \
   ( (((V_VAL)->R801_object_id) == ooaofooa_V_PVL_CLASS_NUMBER) ? \
     ((ooaofooa_V_PVL *)((V_VAL)->R801_subtype)) : (0) )
#define ooaofooa_V_SLR_R801_From_V_VAL( V_VAL ) \
   ( (((V_VAL)->R801_object_id) == ooaofooa_V_SLR_CLASS_NUMBER) ? \
     ((ooaofooa_V_SLR *)((V_VAL)->R801_subtype)) : (0) )
#define ooaofooa_V_BRV_R801_From_V_VAL( V_VAL ) \
   ( (((V_VAL)->R801_object_id) == ooaofooa_V_BRV_CLASS_NUMBER) ? \
     ((ooaofooa_V_BRV *)((V_VAL)->R801_subtype)) : (0) )
#define ooaofooa_V_IRF_R801_From_V_VAL( V_VAL ) \
   ( (((V_VAL)->R801_object_id) == ooaofooa_V_IRF_CLASS_NUMBER) ? \
     ((ooaofooa_V_IRF *)((V_VAL)->R801_subtype)) : (0) )
#define ooaofooa_V_AVL_R801_From_V_VAL( V_VAL ) \
   ( (((V_VAL)->R801_object_id) == ooaofooa_V_AVL_CLASS_NUMBER) ? \
     ((ooaofooa_V_AVL *)((V_VAL)->R801_subtype)) : (0) )
#define ooaofooa_V_LIN_R801_From_V_VAL( V_VAL ) \
   ( (((V_VAL)->R801_object_id) == ooaofooa_V_LIN_CLASS_NUMBER) ? \
     ((ooaofooa_V_LIN *)((V_VAL)->R801_subtype)) : (0) )
#define ooaofooa_V_LST_R801_From_V_VAL( V_VAL ) \
   ( (((V_VAL)->R801_object_id) == ooaofooa_V_LST_CLASS_NUMBER) ? \
     ((ooaofooa_V_LST *)((V_VAL)->R801_subtype)) : (0) )
#define ooaofooa_V_UNY_R801_From_V_VAL( V_VAL ) \
   ( (((V_VAL)->R801_object_id) == ooaofooa_V_UNY_CLASS_NUMBER) ? \
     ((ooaofooa_V_UNY *)((V_VAL)->R801_subtype)) : (0) )
#define ooaofooa_V_TRV_R801_From_V_VAL( V_VAL ) \
   ( (((V_VAL)->R801_object_id) == ooaofooa_V_TRV_CLASS_NUMBER) ? \
     ((ooaofooa_V_TRV *)((V_VAL)->R801_subtype)) : (0) )
#define ooaofooa_V_ISR_R801_From_V_VAL( V_VAL ) \
   ( (((V_VAL)->R801_object_id) == ooaofooa_V_ISR_CLASS_NUMBER) ? \
     ((ooaofooa_V_ISR *)((V_VAL)->R801_subtype)) : (0) )
#define ooaofooa_V_EDV_R801_From_V_VAL( V_VAL ) \
   ( (((V_VAL)->R801_object_id) == ooaofooa_V_EDV_CLASS_NUMBER) ? \
     ((ooaofooa_V_EDV *)((V_VAL)->R801_subtype)) : (0) )
#define ooaofooa_V_TVL_R801_From_V_VAL( V_VAL ) \
   ( (((V_VAL)->R801_object_id) == ooaofooa_V_TVL_CLASS_NUMBER) ? \
     ((ooaofooa_V_TVL *)((V_VAL)->R801_subtype)) : (0) )
#define ooaofooa_V_LRL_R801_From_V_VAL( V_VAL ) \
   ( (((V_VAL)->R801_object_id) == ooaofooa_V_LRL_CLASS_NUMBER) ? \
     ((ooaofooa_V_LRL *)((V_VAL)->R801_subtype)) : (0) )
#define ooaofooa_V_LBO_R801_From_V_VAL( V_VAL ) \
   ( (((V_VAL)->R801_object_id) == ooaofooa_V_LBO_CLASS_NUMBER) ? \
     ((ooaofooa_V_LBO *)((V_VAL)->R801_subtype)) : (0) )
#define ooaofooa_V_BIN_R801_From_V_VAL( V_VAL ) \
   ( (((V_VAL)->R801_object_id) == ooaofooa_V_BIN_CLASS_NUMBER) ? \
     ((ooaofooa_V_BIN *)((V_VAL)->R801_subtype)) : (0) )
#define ooaofooa_V_LEN_R801_From_V_VAL( V_VAL ) \
   ( (((V_VAL)->R801_object_id) == ooaofooa_V_LEN_CLASS_NUMBER) ? \
     ((ooaofooa_V_LEN *)((V_VAL)->R801_subtype)) : (0) )
#define ooaofooa_V_MVL_R801_From_V_VAL( V_VAL ) \
   ( (((V_VAL)->R801_object_id) == ooaofooa_V_MVL_CLASS_NUMBER) ? \
     ((ooaofooa_V_MVL *)((V_VAL)->R801_subtype)) : (0) )
#define ooaofooa_V_AER_R801_From_V_VAL( V_VAL ) \
   ( (((V_VAL)->R801_object_id) == ooaofooa_V_AER_CLASS_NUMBER) ? \
     ((ooaofooa_V_AER *)((V_VAL)->R801_subtype)) : (0) )
#define ooaofooa_V_ALV_R801_From_V_VAL( V_VAL ) \
   ( (((V_VAL)->R801_object_id) == ooaofooa_V_ALV_CLASS_NUMBER) ? \
     ((ooaofooa_V_ALV *)((V_VAL)->R801_subtype)) : (0) )
#define ooaofooa_V_MSV_R801_From_V_VAL( V_VAL ) \
   ( (((V_VAL)->R801_object_id) == ooaofooa_V_MSV_CLASS_NUMBER) ? \
     ((ooaofooa_V_MSV *)((V_VAL)->R801_subtype)) : (0) )
#define ooaofooa_V_SCV_R801_From_V_VAL( V_VAL ) \
   ( (((V_VAL)->R801_object_id) == ooaofooa_V_SCV_CLASS_NUMBER) ? \
     ((ooaofooa_V_SCV *)((V_VAL)->R801_subtype)) : (0) )

void ooaofooa_V_VAL_R820_Link_is_type_of( ooaofooa_S_DT *, ooaofooa_V_VAL * );
void ooaofooa_V_VAL_R820_Unlink_is_type_of( ooaofooa_S_DT *, ooaofooa_V_VAL * );
void ooaofooa_V_VAL_R826_Link_defines_scope_of( ooaofooa_ACT_BLK *, ooaofooa_V_VAL * );
void ooaofooa_V_VAL_R826_Unlink_defines_scope_of( ooaofooa_ACT_BLK *, ooaofooa_V_VAL * );
#define ooaofooa_V_MSV_R851_From_V_VAL_is_target_of( V_VAL ) ( &((V_VAL)->V_MSV_R851_is_target_of) )
/* Note:  V_VAL->V_MSV[R851] not navigated */
#define ooaofooa_I_VSF_R2978_From_V_VAL( V_VAL ) ( &((V_VAL)->I_VSF_R2978) )
/* Note:  V_VAL->I_VSF[R2978] not navigated */


#define ooaofooa_V_VAL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_VAL_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_VAL_CLASS_H */


