/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_FPIP_class.h
 *
 * Class:       Function Package in Package  (S_FPIP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_FPIP_CLASS_H
#define OOAOFOOA_S_FPIP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Function Package in Package  (S_FPIP)
 */
struct ooaofooa_S_FPIP {

  /* application analysis class attributes */
  Escher_UniqueID_t FunPack_ID;  

  /* relationship storage */
  ooaofooa_S_FPK * S_FPK_R30_contains_children_of;
  Escher_ObjectSet_s S_FPK_R32_contains;
};
void ooaofooa_S_FPIP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_FPIP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_FPIP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_FPIP * ooaofooa_S_FPIP_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_S_FPIP_R30_Link_is_parent_to_other_packages_via( ooaofooa_S_FPK *, ooaofooa_S_FPIP * );
void ooaofooa_S_FPIP_R30_Unlink_is_parent_to_other_packages_via( ooaofooa_S_FPK *, ooaofooa_S_FPIP * );
#define ooaofooa_S_FPK_R32_From_S_FPIP_contains( S_FPIP ) ( &((S_FPIP)->S_FPK_R32_contains) )
/* Note:  S_FPIP->S_FPK[R32] not navigated */


#define ooaofooa_S_FPIP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_FPIP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_FPIP_CLASS_H */


