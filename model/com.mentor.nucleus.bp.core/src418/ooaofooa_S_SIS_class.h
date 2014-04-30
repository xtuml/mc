/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_SIS_class.h
 *
 * Class:       Subsystem in Subsystem  (S_SIS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_SIS_CLASS_H
#define OOAOFOOA_S_SIS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Subsystem in Subsystem  (S_SIS)
 */
struct ooaofooa_S_SIS {

  /* application analysis class attributes */
  Escher_UniqueID_t Parent_SS_ID;  
  Escher_UniqueID_t Child_SS_ID;  

  /* relationship storage */
  ooaofooa_S_SS * S_SS_R41_contains_children_of;
  ooaofooa_S_SS * S_SS_R42_contains;
};
void ooaofooa_S_SIS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_SIS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_SIS_batch_relate( Escher_iHandle_t );

void ooaofooa_S_SIS_R41_Link_is_parent_to_other_packages_via( ooaofooa_S_SS *, ooaofooa_S_SIS * );
void ooaofooa_S_SIS_R41_Unlink_is_parent_to_other_packages_via( ooaofooa_S_SS *, ooaofooa_S_SIS * );
void ooaofooa_S_SIS_R42_Link_is_child_via( ooaofooa_S_SS *, ooaofooa_S_SIS * );
void ooaofooa_S_SIS_R42_Unlink_is_child_via( ooaofooa_S_SS *, ooaofooa_S_SIS * );


#define ooaofooa_S_SIS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_SIS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_SIS_CLASS_H */


