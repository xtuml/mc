/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_ASSR_class.h
 *
 * Class:       Class As Link  (R_ASSR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_R_ASSR_CLASS_H
#define OOAOFOOA_R_ASSR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Class As Link  (R_ASSR)
 */
struct ooaofooa_R_ASSR {

  /* application analysis class attributes */
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t Rel_ID;  
  Escher_UniqueID_t OIR_ID;  
  i_t Mult;  

  /* relationship storage */
  ooaofooa_R_RGO * R_RGO_R205;
  ooaofooa_R_ASSOC * R_ASSOC_R211_formalizes_association_between_associated_classes;
};
void ooaofooa_R_ASSR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_R_ASSR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_R_ASSR_batch_relate( Escher_iHandle_t );

void ooaofooa_R_ASSR_R205_Link( ooaofooa_R_RGO *, ooaofooa_R_ASSR * );
void ooaofooa_R_ASSR_R205_Unlink( ooaofooa_R_RGO *, ooaofooa_R_ASSR * );
void ooaofooa_R_ASSR_R211_Link_uses_a_formalizer( ooaofooa_R_ASSOC *, ooaofooa_R_ASSR * );
void ooaofooa_R_ASSR_R211_Unlink_uses_a_formalizer( ooaofooa_R_ASSOC *, ooaofooa_R_ASSR * );


#define ooaofooa_R_ASSR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_R_ASSR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_R_ASSR_CLASS_H */


