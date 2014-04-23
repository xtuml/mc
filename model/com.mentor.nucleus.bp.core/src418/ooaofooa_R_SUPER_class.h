/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_SUPER_class.h
 *
 * Class:       Class As Supertype  (R_SUPER)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_R_SUPER_CLASS_H
#define OOAOFOOA_R_SUPER_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Class As Supertype  (R_SUPER)
 */
struct ooaofooa_R_SUPER {

  /* application analysis class attributes */
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t Rel_ID;  
  Escher_UniqueID_t OIR_ID;  

  /* relationship storage */
  ooaofooa_R_RTO * R_RTO_R204;
  ooaofooa_R_SUBSUP * R_SUBSUP_R212_is_related_to_subtypes_via;
};
void ooaofooa_R_SUPER_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_R_SUPER_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_R_SUPER_batch_relate( Escher_iHandle_t );

void ooaofooa_R_SUPER_R204_Link( ooaofooa_R_RTO *, ooaofooa_R_SUPER * );
void ooaofooa_R_SUPER_R204_Unlink( ooaofooa_R_RTO *, ooaofooa_R_SUPER * );
void ooaofooa_R_SUPER_R212_Link_relates( ooaofooa_R_SUBSUP *, ooaofooa_R_SUPER * );
void ooaofooa_R_SUPER_R212_Unlink_relates( ooaofooa_R_SUBSUP *, ooaofooa_R_SUPER * );


#define ooaofooa_R_SUPER_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_R_SUPER_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_R_SUPER_CLASS_H */


