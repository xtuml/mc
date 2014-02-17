/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_DPIP_class.h
 *
 * Class:       Data Type Package in Package  (S_DPIP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_DPIP_CLASS_H
#define OOAOFOOA_S_DPIP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Data Type Package in Package  (S_DPIP)
 */
struct ooaofooa_S_DPIP {

  /* application analysis class attributes */
  Escher_UniqueID_t Package_ID;  

  /* relationship storage */
  ooaofooa_S_DPK * S_DPK_R37_contains_children_of;
  Escher_ObjectSet_s S_DPK_R38_contains;
};
void ooaofooa_S_DPIP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_DPIP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_DPIP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_DPIP * ooaofooa_S_DPIP_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_S_DPIP_R37_Link_is_parent_to_other_packages_via( ooaofooa_S_DPK *, ooaofooa_S_DPIP * );
void ooaofooa_S_DPIP_R37_Unlink_is_parent_to_other_packages_via( ooaofooa_S_DPK *, ooaofooa_S_DPIP * );
#define ooaofooa_S_DPK_R38_From_S_DPIP_contains( S_DPIP ) ( &((S_DPIP)->S_DPK_R38_contains) )
/* Note:  S_DPIP->S_DPK[R38] not navigated */


#define ooaofooa_S_DPIP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_DPIP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_DPIP_CLASS_H */


