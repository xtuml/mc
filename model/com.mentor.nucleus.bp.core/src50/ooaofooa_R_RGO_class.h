/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_RGO_class.h
 *
 * Class:       Referring Class In Assoc  (R_RGO)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_R_RGO_CLASS_H
#define OOAOFOOA_R_RGO_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Referring Class In Assoc  (R_RGO)
 */
struct ooaofooa_R_RGO {

  /* application analysis class attributes */
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t Rel_ID;  
  Escher_UniqueID_t OIR_ID;  

  /* relationship storage */
  Escher_ObjectSet_s O_REF_R111;
  ooaofooa_R_OIR * R_OIR_R203;
  void * R205_subtype;
  Escher_ClassNumber_t R205_object_id;
};
void ooaofooa_R_RGO_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_R_RGO_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_R_RGO_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_R_RGO * ooaofooa_R_RGO_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t, Escher_UniqueID_t );

#define ooaofooa_O_REF_R111_From_R_RGO( R_RGO ) ( &((R_RGO)->O_REF_R111) )
void ooaofooa_R_RGO_R203_Link( ooaofooa_R_OIR *, ooaofooa_R_RGO * );
void ooaofooa_R_RGO_R203_Unlink( ooaofooa_R_OIR *, ooaofooa_R_RGO * );

/* Accessors to R_RGO[R205] subtypes */
#define ooaofooa_R_SUB_R205_From_R_RGO( R_RGO ) \
   ( (((R_RGO)->R205_object_id) == ooaofooa_R_SUB_CLASS_NUMBER) ? \
     ((ooaofooa_R_SUB *)((R_RGO)->R205_subtype)) : (0) )
#define ooaofooa_R_FORM_R205_From_R_RGO( R_RGO ) \
   ( (((R_RGO)->R205_object_id) == ooaofooa_R_FORM_CLASS_NUMBER) ? \
     ((ooaofooa_R_FORM *)((R_RGO)->R205_subtype)) : (0) )
#define ooaofooa_R_ASSR_R205_From_R_RGO( R_RGO ) \
   ( (((R_RGO)->R205_object_id) == ooaofooa_R_ASSR_CLASS_NUMBER) ? \
     ((ooaofooa_R_ASSR *)((R_RGO)->R205_subtype)) : (0) )



#define ooaofooa_R_RGO_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_R_RGO_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_R_RGO_CLASS_H */


