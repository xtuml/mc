/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_OBJ_class.h
 *
 * Class:       Model Class  (O_OBJ)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_O_OBJ_CLASS_H
#define OOAOFOOA_O_OBJ_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Model Class  (O_OBJ)
 */
struct ooaofooa_O_OBJ {

  /* application analysis class attributes */
  Escher_UniqueID_t Obj_ID;  
  c_t * Name;  
  i_t Numb;  
  c_t * Key_Lett;  
  c_t * Descrip;  
  Escher_UniqueID_t SS_ID;  

  /* relationship storage */
  ooaofooa_S_SS * S_SS_R2_is_contained_in;
  Escher_ObjectSet_s O_IOBJ_R101_has_presence_in_other_subsystems;
  Escher_ObjectSet_s O_ATTR_R102_has_characteristics_abstracted_by;
  Escher_ObjectSet_s O_ID_R104_is_identified_by;
  Escher_ObjectSet_s O_TFR_R115_may_contain;
  Escher_ObjectSet_s S_IRDT_R123_is_available_as_a_reference_by;
  Escher_ObjectSet_s R_OIR_R201;
  Escher_ObjectSet_s CA_SMOA_R417_has_data_access_represented_by;
  ooaofooa_SM_ISM * SM_ISM_R518;
  ooaofooa_SM_ASM * SM_ASM_R519;
  Escher_ObjectSet_s ACT_FOR_R670;
  Escher_ObjectSet_s ACT_CR_R671;
  Escher_ObjectSet_s ACT_CNV_R672;
  Escher_ObjectSet_s ACT_FIW_R676;
  Escher_ObjectSet_s ACT_FIO_R677;
  Escher_ObjectSet_s ACT_LNK_R678;
  Escher_ObjectSet_s V_INT_R818;
  Escher_ObjectSet_s V_INS_R819;
  Escher_ObjectSet_s SQ_CIP_R934_represents_participant_of;
  Escher_ObjectSet_s SQ_CP_R939_represents_participant_of;
  ooaofooa_TE_CLASS * TE_CLASS_R2019;
  Escher_ObjectSet_s CSME_CIE_R2961_is_represented_in_engine_by;
  ooaofooa_PE_PE * PE_PE_R8001;
};
void ooaofooa_O_OBJ_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_O_OBJ_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_O_OBJ_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_O_OBJ * ooaofooa_O_OBJ_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_O_OBJ_R2_Link_is_decomposed_into( ooaofooa_S_SS *, ooaofooa_O_OBJ * );
void ooaofooa_O_OBJ_R2_Unlink_is_decomposed_into( ooaofooa_S_SS *, ooaofooa_O_OBJ * );
#define ooaofooa_O_IOBJ_R101_From_O_OBJ_has_presence_in_other_subsystems( O_OBJ ) ( &((O_OBJ)->O_IOBJ_R101_has_presence_in_other_subsystems) )
/* Note:  O_OBJ->O_IOBJ[R101] not navigated */
#define ooaofooa_O_ATTR_R102_From_O_OBJ_has_characteristics_abstracted_by( O_OBJ ) ( &((O_OBJ)->O_ATTR_R102_has_characteristics_abstracted_by) )
#define ooaofooa_O_ID_R104_From_O_OBJ_is_identified_by( O_OBJ ) ( &((O_OBJ)->O_ID_R104_is_identified_by) )
#define ooaofooa_O_TFR_R115_From_O_OBJ_may_contain( O_OBJ ) ( &((O_OBJ)->O_TFR_R115_may_contain) )
#define ooaofooa_S_IRDT_R123_From_O_OBJ_is_available_as_a_reference_by( O_OBJ ) ( &((O_OBJ)->S_IRDT_R123_is_available_as_a_reference_by) )
#define ooaofooa_R_OIR_R201_From_O_OBJ( O_OBJ ) ( &((O_OBJ)->R_OIR_R201) )
#define ooaofooa_CA_SMOA_R417_From_O_OBJ_has_data_access_represented_by( O_OBJ ) ( &((O_OBJ)->CA_SMOA_R417_has_data_access_represented_by) )
/* Note:  O_OBJ->CA_SMOA[R417] not navigated */
#define ooaofooa_ACT_FOR_R670_From_O_OBJ( O_OBJ ) ( &((O_OBJ)->ACT_FOR_R670) )
#define ooaofooa_ACT_CR_R671_From_O_OBJ( O_OBJ ) ( &((O_OBJ)->ACT_CR_R671) )
#define ooaofooa_ACT_CNV_R672_From_O_OBJ( O_OBJ ) ( &((O_OBJ)->ACT_CNV_R672) )
#define ooaofooa_ACT_FIW_R676_From_O_OBJ( O_OBJ ) ( &((O_OBJ)->ACT_FIW_R676) )
#define ooaofooa_ACT_FIO_R677_From_O_OBJ( O_OBJ ) ( &((O_OBJ)->ACT_FIO_R677) )
#define ooaofooa_ACT_LNK_R678_From_O_OBJ( O_OBJ ) ( &((O_OBJ)->ACT_LNK_R678) )
#define ooaofooa_V_INT_R818_From_O_OBJ( O_OBJ ) ( &((O_OBJ)->V_INT_R818) )
#define ooaofooa_V_INS_R819_From_O_OBJ( O_OBJ ) ( &((O_OBJ)->V_INS_R819) )
#define ooaofooa_SQ_CIP_R934_From_O_OBJ_represents_participant_of( O_OBJ ) ( &((O_OBJ)->SQ_CIP_R934_represents_participant_of) )
/* Note:  O_OBJ->SQ_CIP[R934] not navigated */
#define ooaofooa_SQ_CP_R939_From_O_OBJ_represents_participant_of( O_OBJ ) ( &((O_OBJ)->SQ_CP_R939_represents_participant_of) )
#define ooaofooa_CSME_CIE_R2961_From_O_OBJ_is_represented_in_engine_by( O_OBJ ) ( &((O_OBJ)->CSME_CIE_R2961_is_represented_in_engine_by) )
/* Note:  O_OBJ->CSME_CIE[R2961] not navigated */
void ooaofooa_O_OBJ_R8001_Link( ooaofooa_PE_PE *, ooaofooa_O_OBJ * );
void ooaofooa_O_OBJ_R8001_Unlink( ooaofooa_PE_PE *, ooaofooa_O_OBJ * );


#define ooaofooa_O_OBJ_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_O_OBJ_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_O_OBJ_CLASS_H */


