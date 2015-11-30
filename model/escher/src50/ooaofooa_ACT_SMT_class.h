/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_SMT_class.h
 *
 * Class:       Statement  (ACT_SMT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_SMT_CLASS_H
#define OOAOFOOA_ACT_SMT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Statement  (ACT_SMT)
 */
struct ooaofooa_ACT_SMT {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Block_ID;  
  Escher_UniqueID_t Previous_Statement_ID;  
  i_t LineNumber;  
  i_t StartPosition;  
  c_t * Label;  

  /* relationship storage */
  ooaofooa_ACT_BLK * ACT_BLK_R602_contains;
  void * R603_subtype;
  Escher_ClassNumber_t R603_object_id;
  ooaofooa_ACT_SMT * ACT_SMT_R661_succeeds;
  ooaofooa_ACT_SMT * ACT_SMT_R661_precedes;
  ooaofooa_TE_SMT * TE_SMT_R2038;
  Escher_ObjectSet_s I_BSF_R2941_is_visited_within_scope_of;
  ooaofooa_BP_OAL * BP_OAL_R3101;
};
void ooaofooa_ACT_SMT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_SMT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_SMT_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_ACT_SMT * ooaofooa_ACT_SMT_AnyWhere2( Escher_UniqueID_t, Escher_UniqueID_t );
ooaofooa_ACT_SMT * ooaofooa_ACT_SMT_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_ACT_SMT_R602_Link_contained_by( ooaofooa_ACT_BLK *, ooaofooa_ACT_SMT * );
void ooaofooa_ACT_SMT_R602_Unlink_contained_by( ooaofooa_ACT_BLK *, ooaofooa_ACT_SMT * );

/* Accessors to ACT_SMT[R603] subtypes */
#define ooaofooa_ACT_FOR_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_FOR_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_FOR *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_WHL_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_WHL_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_WHL *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_IF_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_IF_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_IF *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_EL_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_EL_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_EL *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_E_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_E_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_E *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_BRG_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_BRG_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_BRG *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_FNC_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_FNC_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_FNC *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_RET_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_RET_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_RET *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_TFM_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_TFM_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_TFM *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_AI_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_AI_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_AI *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_DEL_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_DEL_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_DEL *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_CNV_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_CNV_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_CNV *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_CR_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_CR_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_CR *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_SEL_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_SEL_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_SEL *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_FIO_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_FIO_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_FIO *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_FIW_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_FIW_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_FIW *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_URU_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_URU_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_URU *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_UNR_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_UNR_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_UNR *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_RU_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_RU_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_RU *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_REL_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_REL_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_REL *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_CTL_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_CTL_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_CTL *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_BRK_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_BRK_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_BRK *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_CON_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_CON_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_CON *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_E_ESS_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_E_ESS_CLASS_NUMBER) ? \
     ((ooaofooa_E_ESS *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_E_GPR_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_E_GPR_CLASS_NUMBER) ? \
     ((ooaofooa_E_GPR *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_IOP_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_IOP_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_IOP *)((ACT_SMT)->R603_subtype)) : (0) )
#define ooaofooa_ACT_SGN_R603_From_ACT_SMT( ACT_SMT ) \
   ( (((ACT_SMT)->R603_object_id) == ooaofooa_ACT_SGN_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_SGN *)((ACT_SMT)->R603_subtype)) : (0) )

      
/*
 * R661 is Simple Reflexive:  0..1:0..1
 *  Formalizing ACT_SMT succeeds participant
 *  Participant ACT_SMT precedes formalizer
 */
/* Navigation phrase:  R661.'succeeds' */
void ooaofooa_ACT_SMT_R661_Link_succeeds( ooaofooa_ACT_SMT *, ooaofooa_ACT_SMT * );
void ooaofooa_ACT_SMT_R661_Unlink_succeeds( ooaofooa_ACT_SMT *, ooaofooa_ACT_SMT * );
/* Navigation phrase:  R661.'precedes' */
void ooaofooa_ACT_SMT_R661_Link_precedes( ooaofooa_ACT_SMT *, ooaofooa_ACT_SMT * );
void ooaofooa_ACT_SMT_R661_Unlink_precedes( ooaofooa_ACT_SMT *, ooaofooa_ACT_SMT * );
#define ooaofooa_I_BSF_R2941_From_ACT_SMT_is_visited_within_scope_of( ACT_SMT ) ( &((ACT_SMT)->I_BSF_R2941_is_visited_within_scope_of) )
/* Note:  ACT_SMT->I_BSF[R2941] not navigated */


#define ooaofooa_ACT_SMT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_SMT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_SMT_CLASS_H */


