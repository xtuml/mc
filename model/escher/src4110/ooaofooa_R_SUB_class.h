/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_SUB_class.h
 *
 * Class:       Class As Subtype  (R_SUB)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_R_SUB_CLASS_H
#define OOAOFOOA_R_SUB_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Class As Subtype  (R_SUB)
 */
struct ooaofooa_R_SUB {

  /* application analysis class attributes */
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t Rel_ID;  
  Escher_UniqueID_t OIR_ID;  

  /* relationship storage */
  ooaofooa_R_RGO * R_RGO_R205;
  ooaofooa_R_SUBSUP * R_SUBSUP_R213_is_related_to_supertype_via;
};
void ooaofooa_R_SUB_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_R_SUB_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_R_SUB_batch_relate( Escher_iHandle_t );

void ooaofooa_R_SUB_R205_Link( ooaofooa_R_RGO *, ooaofooa_R_SUB * );
void ooaofooa_R_SUB_R205_Unlink( ooaofooa_R_RGO *, ooaofooa_R_SUB * );
void ooaofooa_R_SUB_R213_Link_relates( ooaofooa_R_SUBSUP *, ooaofooa_R_SUB * );
void ooaofooa_R_SUB_R213_Unlink_relates( ooaofooa_R_SUBSUP *, ooaofooa_R_SUB * );


#define ooaofooa_R_SUB_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_R_SUB_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_R_SUB_CLASS_H */


