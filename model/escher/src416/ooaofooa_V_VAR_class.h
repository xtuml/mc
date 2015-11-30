/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_VAR_class.h
 *
 * Class:       Variable  (V_VAR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_VAR_CLASS_H
#define OOAOFOOA_V_VAR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Variable  (V_VAR)
 */
struct ooaofooa_V_VAR {

  /* application analysis class attributes */
  Escher_UniqueID_t Var_ID;  
  Escher_UniqueID_t Block_ID;  
  c_t * Name;  
  bool Declared;  
  Escher_UniqueID_t DT_ID;  

  /* relationship storage */
  Escher_ObjectSet_s ACT_FOR_R614_is_loop_variable;
  Escher_ObjectSet_s ACT_REL_R615_is_one_variable;
  Escher_ObjectSet_s ACT_REL_R616_is_other_variable;
  Escher_ObjectSet_s ACT_RU_R617_is_one_variable;
  Escher_ObjectSet_s ACT_RU_R618_is_other_variable;
  Escher_ObjectSet_s ACT_RU_R619_is_using_variable;
  Escher_ObjectSet_s ACT_UNR_R620_is_one_variable;
  Escher_ObjectSet_s ACT_UNR_R621_is_other_variable;
  Escher_ObjectSet_s ACT_URU_R622_is_one_variable;
  Escher_ObjectSet_s ACT_URU_R623_is_other_variable;
  Escher_ObjectSet_s ACT_URU_R624_is_using_variable;
  Escher_ObjectSet_s ACT_CR_R633;
  Escher_ObjectSet_s ACT_DEL_R634;
  Escher_ObjectSet_s ACT_SEL_R638;
  Escher_ObjectSet_s ACT_FIO_R639;
  Escher_ObjectSet_s ACT_FOR_R652_is_set_variable;
  Escher_ObjectSet_s ACT_FIW_R665;
  Escher_ObjectSet_s ACT_TFM_R667_is_target_of;
  Escher_ObjectSet_s E_CES_R710;
  Escher_ObjectSet_s E_CEI_R711;
  Escher_ObjectSet_s E_GEN_R712;
  Escher_ObjectSet_s V_TVL_R805;
  Escher_ObjectSet_s V_IRF_R808;
  Escher_ObjectSet_s V_ISR_R809;
  void * R814_subtype;
  Escher_ClassNumber_t R814_object_id;
  ooaofooa_ACT_BLK * ACT_BLK_R823;
  Escher_ObjectSet_s V_TRV_R830_variable;
  Escher_ObjectSet_s V_LOC_R835;
  ooaofooa_S_DT * S_DT_R848_has;
  Escher_ObjectSet_s S_DIM_R849_may_have;
  ooaofooa_TE_VAR * TE_VAR_R2039;
};
void ooaofooa_V_VAR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_VAR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_VAR_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_V_VAR * ooaofooa_V_VAR_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_ACT_FOR_R614_From_V_VAR_is_loop_variable( V_VAR ) ( &((V_VAR)->ACT_FOR_R614_is_loop_variable) )
#define ooaofooa_ACT_REL_R615_From_V_VAR_is_one_variable( V_VAR ) ( &((V_VAR)->ACT_REL_R615_is_one_variable) )
#define ooaofooa_ACT_REL_R616_From_V_VAR_is_other_variable( V_VAR ) ( &((V_VAR)->ACT_REL_R616_is_other_variable) )
#define ooaofooa_ACT_RU_R617_From_V_VAR_is_one_variable( V_VAR ) ( &((V_VAR)->ACT_RU_R617_is_one_variable) )
#define ooaofooa_ACT_RU_R618_From_V_VAR_is_other_variable( V_VAR ) ( &((V_VAR)->ACT_RU_R618_is_other_variable) )
#define ooaofooa_ACT_RU_R619_From_V_VAR_is_using_variable( V_VAR ) ( &((V_VAR)->ACT_RU_R619_is_using_variable) )
#define ooaofooa_ACT_UNR_R620_From_V_VAR_is_one_variable( V_VAR ) ( &((V_VAR)->ACT_UNR_R620_is_one_variable) )
#define ooaofooa_ACT_UNR_R621_From_V_VAR_is_other_variable( V_VAR ) ( &((V_VAR)->ACT_UNR_R621_is_other_variable) )
#define ooaofooa_ACT_URU_R622_From_V_VAR_is_one_variable( V_VAR ) ( &((V_VAR)->ACT_URU_R622_is_one_variable) )
#define ooaofooa_ACT_URU_R623_From_V_VAR_is_other_variable( V_VAR ) ( &((V_VAR)->ACT_URU_R623_is_other_variable) )
#define ooaofooa_ACT_URU_R624_From_V_VAR_is_using_variable( V_VAR ) ( &((V_VAR)->ACT_URU_R624_is_using_variable) )
#define ooaofooa_ACT_CR_R633_From_V_VAR( V_VAR ) ( &((V_VAR)->ACT_CR_R633) )
#define ooaofooa_ACT_DEL_R634_From_V_VAR( V_VAR ) ( &((V_VAR)->ACT_DEL_R634) )
#define ooaofooa_ACT_SEL_R638_From_V_VAR( V_VAR ) ( &((V_VAR)->ACT_SEL_R638) )
#define ooaofooa_ACT_FIO_R639_From_V_VAR( V_VAR ) ( &((V_VAR)->ACT_FIO_R639) )
#define ooaofooa_ACT_FOR_R652_From_V_VAR_is_set_variable( V_VAR ) ( &((V_VAR)->ACT_FOR_R652_is_set_variable) )
#define ooaofooa_ACT_FIW_R665_From_V_VAR( V_VAR ) ( &((V_VAR)->ACT_FIW_R665) )
#define ooaofooa_ACT_TFM_R667_From_V_VAR_is_target_of( V_VAR ) ( &((V_VAR)->ACT_TFM_R667_is_target_of) )
#define ooaofooa_E_CES_R710_From_V_VAR( V_VAR ) ( &((V_VAR)->E_CES_R710) )
#define ooaofooa_E_CEI_R711_From_V_VAR( V_VAR ) ( &((V_VAR)->E_CEI_R711) )
#define ooaofooa_E_GEN_R712_From_V_VAR( V_VAR ) ( &((V_VAR)->E_GEN_R712) )
#define ooaofooa_V_TVL_R805_From_V_VAR( V_VAR ) ( &((V_VAR)->V_TVL_R805) )
#define ooaofooa_V_IRF_R808_From_V_VAR( V_VAR ) ( &((V_VAR)->V_IRF_R808) )
#define ooaofooa_V_ISR_R809_From_V_VAR( V_VAR ) ( &((V_VAR)->V_ISR_R809) )

/* Accessors to V_VAR[R814] subtypes */
#define ooaofooa_V_INT_R814_From_V_VAR( V_VAR ) \
   ( (((V_VAR)->R814_object_id) == ooaofooa_V_INT_CLASS_NUMBER) ? \
     ((ooaofooa_V_INT *)((V_VAR)->R814_subtype)) : (0) )
#define ooaofooa_V_INS_R814_From_V_VAR( V_VAR ) \
   ( (((V_VAR)->R814_object_id) == ooaofooa_V_INS_CLASS_NUMBER) ? \
     ((ooaofooa_V_INS *)((V_VAR)->R814_subtype)) : (0) )
#define ooaofooa_V_TRN_R814_From_V_VAR( V_VAR ) \
   ( (((V_VAR)->R814_object_id) == ooaofooa_V_TRN_CLASS_NUMBER) ? \
     ((ooaofooa_V_TRN *)((V_VAR)->R814_subtype)) : (0) )
/* Note:  V_VAR->V_TRN[R814] not navigated */

void ooaofooa_V_VAR_R823_Link_is_scope_for( ooaofooa_ACT_BLK *, ooaofooa_V_VAR * );
void ooaofooa_V_VAR_R823_Unlink_is_scope_for( ooaofooa_ACT_BLK *, ooaofooa_V_VAR * );
#define ooaofooa_V_TRV_R830_From_V_VAR_variable( V_VAR ) ( &((V_VAR)->V_TRV_R830_variable) )
#define ooaofooa_V_LOC_R835_From_V_VAR( V_VAR ) ( &((V_VAR)->V_LOC_R835) )
/* Note:  V_VAR->V_LOC[R835] not navigated */
void ooaofooa_V_VAR_R848_Link_is_type_of( ooaofooa_S_DT *, ooaofooa_V_VAR * );
void ooaofooa_V_VAR_R848_Unlink_is_type_of( ooaofooa_S_DT *, ooaofooa_V_VAR * );
#define ooaofooa_S_DIM_R849_From_V_VAR_may_have( V_VAR ) ( &((V_VAR)->S_DIM_R849_may_have) )


#define ooaofooa_V_VAR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_VAR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_VAR_CLASS_H */


