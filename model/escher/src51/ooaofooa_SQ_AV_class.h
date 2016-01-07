/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_AV_class.h
 *
 * Class:       Instance Attribute Value  (SQ_AV)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQ_AV_CLASS_H
#define OOAOFOOA_SQ_AV_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Instance Attribute Value  (SQ_AV)
 */
struct ooaofooa_SQ_AV {

  /* application analysis class attributes */
  Escher_UniqueID_t Av_ID;  
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t Attr_ID;  
  c_t * Label;  
  c_t * Value;  
  c_t * InformalName;  
  Escher_UniqueID_t Informal_Part_ID;  
  Escher_UniqueID_t Formal_Part_ID;  
  c_t * Descrip;  
  bool isFormal;  

  /* relationship storage */
  ooaofooa_SQ_CIP * SQ_CIP_R936_owns_informal;
  ooaofooa_SQ_CIP * SQ_CIP_R937_owns_formal;
  ooaofooa_O_ATTR * O_ATTR_R938_references;
  void * R948_subtype;
  Escher_ClassNumber_t R948_object_id;
};
void ooaofooa_SQ_AV_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQ_AV_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQ_AV_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SQ_AV * ooaofooa_SQ_AV_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_SQ_AV_R936_Link_contains_informal( ooaofooa_SQ_CIP *, ooaofooa_SQ_AV * );
void ooaofooa_SQ_AV_R936_Unlink_contains_informal( ooaofooa_SQ_CIP *, ooaofooa_SQ_AV * );
void ooaofooa_SQ_AV_R937_Link_contains_formal( ooaofooa_SQ_CIP *, ooaofooa_SQ_AV * );
void ooaofooa_SQ_AV_R937_Unlink_contains_formal( ooaofooa_SQ_CIP *, ooaofooa_SQ_AV * );
void ooaofooa_SQ_AV_R938_Link_defines( ooaofooa_O_ATTR *, ooaofooa_SQ_AV * );
void ooaofooa_SQ_AV_R938_Unlink_defines( ooaofooa_O_ATTR *, ooaofooa_SQ_AV * );

/* Accessors to SQ_AV[R948] subtypes */
#define ooaofooa_SQ_IAV_R948_From_SQ_AV( SQ_AV ) \
   ( (((SQ_AV)->R948_object_id) == ooaofooa_SQ_IAV_CLASS_NUMBER) ? \
     ((ooaofooa_SQ_IAV *)((SQ_AV)->R948_subtype)) : (0) )
/* Note:  SQ_AV->SQ_IAV[R948] not navigated */
#define ooaofooa_SQ_FAV_R948_From_SQ_AV( SQ_AV ) \
   ( (((SQ_AV)->R948_object_id) == ooaofooa_SQ_FAV_CLASS_NUMBER) ? \
     ((ooaofooa_SQ_FAV *)((SQ_AV)->R948_subtype)) : (0) )
/* Note:  SQ_AV->SQ_FAV[R948] not navigated */



#define ooaofooa_SQ_AV_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQ_AV_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQ_AV_CLASS_H */


