/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_EEPIP_class.h
 *
 * Class:       EE Package in Package  (S_EEPIP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_EEPIP_CLASS_H
#define OOAOFOOA_S_EEPIP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   EE Package in Package  (S_EEPIP)
 */
struct ooaofooa_S_EEPIP {

  /* application analysis class attributes */
  Escher_UniqueID_t EEPack_ID;  

  /* relationship storage */
  ooaofooa_S_EEPK * S_EEPK_R34_contains_children_of;
  Escher_ObjectSet_s S_EEPK_R35_contains;
};
void ooaofooa_S_EEPIP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_EEPIP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_EEPIP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_EEPIP * ooaofooa_S_EEPIP_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_S_EEPIP_R34_Link_is_parent_to_other_packages_via( ooaofooa_S_EEPK *, ooaofooa_S_EEPIP * );
void ooaofooa_S_EEPIP_R34_Unlink_is_parent_to_other_packages_via( ooaofooa_S_EEPK *, ooaofooa_S_EEPIP * );
#define ooaofooa_S_EEPK_R35_From_S_EEPIP_contains( S_EEPIP ) ( &((S_EEPIP)->S_EEPK_R35_contains) )
/* Note:  S_EEPIP->S_EEPK[R35] not navigated */


#define ooaofooa_S_EEPIP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_EEPIP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_EEPIP_CLASS_H */


