/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_ATTR_class.h
 *
 * Class:       Attribute  (O_ATTR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_O_ATTR_CLASS_H
#define OOAOFOOA_O_ATTR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Attribute  (O_ATTR)
 */
struct ooaofooa_O_ATTR {

  /* application analysis class attributes */
  Escher_UniqueID_t Attr_ID;  
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t PAttr_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  c_t Prefix[ESCHER_SYS_MAX_STRING_LEN];  
  c_t Root_Nam[ESCHER_SYS_MAX_STRING_LEN];  
  i_t Pfx_Mode;  
  Escher_UniqueID_t DT_ID;  
  c_t Dimensions[ESCHER_SYS_MAX_STRING_LEN];  
  c_t DefaultValue[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_O_OBJ * O_OBJ_R102_abstracts_characteristics_of;
  ooaofooa_O_ATTR * O_ATTR_R103_succeeds;
  ooaofooa_O_ATTR * O_ATTR_R103_precedes;
  Escher_ObjectSet_s O_OIDA_R105;
  void * R106_subtype;
  Escher_ClassNumber_t R106_object_id;
  ooaofooa_S_DT * S_DT_R114_defines_type_of;
  Escher_ObjectSet_s S_DIM_R120_may_have;
  Escher_ObjectSet_s CA_SMOAA_R419_is_accessed_by;
  Escher_ObjectSet_s V_AVL_R806;
  Escher_ObjectSet_s V_SLR_R812;
  Escher_ObjectSet_s SQ_AV_R938_defines;
  ooaofooa_TE_ATTR * TE_ATTR_R2033;
  Escher_ObjectSet_s I_AVL_R2910_has_instances;
};
void ooaofooa_O_ATTR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_O_ATTR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_O_ATTR_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_O_ATTR * ooaofooa_O_ATTR_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t );

void ooaofooa_O_ATTR_R102_Link_has_characteristics_abstracted_by( ooaofooa_O_OBJ *, ooaofooa_O_ATTR * );
void ooaofooa_O_ATTR_R102_Unlink_has_characteristics_abstracted_by( ooaofooa_O_OBJ *, ooaofooa_O_ATTR * );
      
/*
 * R103 is Simple Reflexive:  0..1:0..1
 *  Formalizing O_ATTR succeeds participant
 *  Participant O_ATTR precedes formalizer
 */
/* Navigation phrase:  R103.'succeeds' */
void ooaofooa_O_ATTR_R103_Link_succeeds( ooaofooa_O_ATTR *, ooaofooa_O_ATTR * );
void ooaofooa_O_ATTR_R103_Unlink_succeeds( ooaofooa_O_ATTR *, ooaofooa_O_ATTR * );
/* Navigation phrase:  R103.'precedes' */
void ooaofooa_O_ATTR_R103_Link_precedes( ooaofooa_O_ATTR *, ooaofooa_O_ATTR * );
void ooaofooa_O_ATTR_R103_Unlink_precedes( ooaofooa_O_ATTR *, ooaofooa_O_ATTR * );
#define ooaofooa_O_OIDA_R105_From_O_ATTR( O_ATTR ) ( &((O_ATTR)->O_OIDA_R105) )

/* Accessors to O_ATTR[R106] subtypes */
#define ooaofooa_O_BATTR_R106_From_O_ATTR( O_ATTR ) \
   ( (((O_ATTR)->R106_object_id) == ooaofooa_O_BATTR_CLASS_NUMBER) ? \
     ((ooaofooa_O_BATTR *)((O_ATTR)->R106_subtype)) : (0) )
#define ooaofooa_O_RATTR_R106_From_O_ATTR( O_ATTR ) \
   ( (((O_ATTR)->R106_object_id) == ooaofooa_O_RATTR_CLASS_NUMBER) ? \
     ((ooaofooa_O_RATTR *)((O_ATTR)->R106_subtype)) : (0) )

void ooaofooa_O_ATTR_R114_Link_is_defined_by( ooaofooa_S_DT *, ooaofooa_O_ATTR * );
void ooaofooa_O_ATTR_R114_Unlink_is_defined_by( ooaofooa_S_DT *, ooaofooa_O_ATTR * );
#define ooaofooa_S_DIM_R120_From_O_ATTR_may_have( O_ATTR ) ( &((O_ATTR)->S_DIM_R120_may_have) )
#define ooaofooa_CA_SMOAA_R419_From_O_ATTR_is_accessed_by( O_ATTR ) ( &((O_ATTR)->CA_SMOAA_R419_is_accessed_by) )
/* Note:  O_ATTR->CA_SMOAA[R419] not navigated */
#define ooaofooa_V_AVL_R806_From_O_ATTR( O_ATTR ) ( &((O_ATTR)->V_AVL_R806) )
#define ooaofooa_V_SLR_R812_From_O_ATTR( O_ATTR ) ( &((O_ATTR)->V_SLR_R812) )
#define ooaofooa_SQ_AV_R938_From_O_ATTR_defines( O_ATTR ) ( &((O_ATTR)->SQ_AV_R938_defines) )
/* Note:  O_ATTR->SQ_AV[R938] not navigated */
#define ooaofooa_I_AVL_R2910_From_O_ATTR_has_instances( O_ATTR ) ( &((O_ATTR)->I_AVL_R2910_has_instances) )
/* Note:  O_ATTR->I_AVL[R2910] not navigated */


#define ooaofooa_O_ATTR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_O_ATTR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_O_ATTR_CLASS_H */


