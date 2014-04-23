/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_REL_class.h
 *
 * Class:       Association  (R_REL)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_R_REL_CLASS_H
#define OOAOFOOA_R_REL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Association  (R_REL)
 */
struct ooaofooa_R_REL {

  /* application analysis class attributes */
  Escher_UniqueID_t Rel_ID;  
  i_t Numb;  
  c_t * Descrip;  
  Escher_UniqueID_t SS_ID;  

  /* relationship storage */
  ooaofooa_S_SS * S_SS_R4_abstracts_associations_between_classes_in;
  Escher_ObjectSet_s R_OIR_R201;
  void * R206_subtype;
  Escher_ClassNumber_t R206_object_id;
  Escher_ObjectSet_s ACT_REL_R653;
  Escher_ObjectSet_s ACT_RU_R654;
  Escher_ObjectSet_s ACT_UNR_R655;
  Escher_ObjectSet_s ACT_URU_R656;
  Escher_ObjectSet_s ACT_LNK_R681;
  Escher_ObjectSet_s COMM_LNK_R1128_represents_formal_instance;
  ooaofooa_TE_REL * TE_REL_R2034;
  Escher_ObjectSet_s I_LNK_R2904_has_instances;
  Escher_ObjectSet_s I_LIP_R2959;
  ooaofooa_PE_PE * PE_PE_R8001;
};
void ooaofooa_R_REL_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_R_REL_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_R_REL_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_R_REL * ooaofooa_R_REL_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_R_REL_R4_Link_contains( ooaofooa_S_SS *, ooaofooa_R_REL * );
void ooaofooa_R_REL_R4_Unlink_contains( ooaofooa_S_SS *, ooaofooa_R_REL * );
#define ooaofooa_R_OIR_R201_From_R_REL( R_REL ) ( &((R_REL)->R_OIR_R201) )

/* Accessors to R_REL[R206] subtypes */
#define ooaofooa_R_SIMP_R206_From_R_REL( R_REL ) \
   ( (((R_REL)->R206_object_id) == ooaofooa_R_SIMP_CLASS_NUMBER) ? \
     ((ooaofooa_R_SIMP *)((R_REL)->R206_subtype)) : (0) )
#define ooaofooa_R_COMP_R206_From_R_REL( R_REL ) \
   ( (((R_REL)->R206_object_id) == ooaofooa_R_COMP_CLASS_NUMBER) ? \
     ((ooaofooa_R_COMP *)((R_REL)->R206_subtype)) : (0) )
#define ooaofooa_R_ASSOC_R206_From_R_REL( R_REL ) \
   ( (((R_REL)->R206_object_id) == ooaofooa_R_ASSOC_CLASS_NUMBER) ? \
     ((ooaofooa_R_ASSOC *)((R_REL)->R206_subtype)) : (0) )
#define ooaofooa_R_SUBSUP_R206_From_R_REL( R_REL ) \
   ( (((R_REL)->R206_object_id) == ooaofooa_R_SUBSUP_CLASS_NUMBER) ? \
     ((ooaofooa_R_SUBSUP *)((R_REL)->R206_subtype)) : (0) )

#define ooaofooa_ACT_REL_R653_From_R_REL( R_REL ) ( &((R_REL)->ACT_REL_R653) )
#define ooaofooa_ACT_RU_R654_From_R_REL( R_REL ) ( &((R_REL)->ACT_RU_R654) )
#define ooaofooa_ACT_UNR_R655_From_R_REL( R_REL ) ( &((R_REL)->ACT_UNR_R655) )
#define ooaofooa_ACT_URU_R656_From_R_REL( R_REL ) ( &((R_REL)->ACT_URU_R656) )
#define ooaofooa_ACT_LNK_R681_From_R_REL( R_REL ) ( &((R_REL)->ACT_LNK_R681) )
#define ooaofooa_COMM_LNK_R1128_From_R_REL_represents_formal_instance( R_REL ) ( &((R_REL)->COMM_LNK_R1128_represents_formal_instance) )
/* Note:  R_REL->COMM_LNK[R1128] not navigated */
#define ooaofooa_I_LNK_R2904_From_R_REL_has_instances( R_REL ) ( &((R_REL)->I_LNK_R2904_has_instances) )
/* Note:  R_REL->I_LNK[R2904] not navigated */
#define ooaofooa_I_LIP_R2959_From_R_REL( R_REL ) ( &((R_REL)->I_LIP_R2959) )
/* Note:  R_REL->I_LIP[R2959] not navigated */
void ooaofooa_R_REL_R8001_Link( ooaofooa_PE_PE *, ooaofooa_R_REL * );
void ooaofooa_R_REL_R8001_Unlink( ooaofooa_PE_PE *, ooaofooa_R_REL * );


#define ooaofooa_R_REL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_R_REL_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_R_REL_CLASS_H */


