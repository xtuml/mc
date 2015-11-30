/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_EEPK_class.h
 *
 * Class:       External Entity Package  (S_EEPK)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_EEPK_CLASS_H
#define OOAOFOOA_S_EEPK_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   External Entity Package  (S_EEPK)
 */
struct ooaofooa_S_EEPK {

  /* application analysis class attributes */
  Escher_UniqueID_t EEPack_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t Dom_ID;  
  Escher_UniqueID_t Parent_EEPack_ID;  

  /* relationship storage */
  Escher_ObjectSet_s S_EEIP_R33;
  ooaofooa_S_EEPIP * S_EEPIP_R34_is_parent_to_other_packages_via;
  ooaofooa_S_EEPIP * S_EEPIP_R35_is_child_via;
  ooaofooa_S_DOM * S_DOM_R36_is_contained_in;
  ooaofooa_PL_EEPID * PL_EEPID_R300;
};
void ooaofooa_S_EEPK_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_EEPK_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_EEPK_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_EEPK * ooaofooa_S_EEPK_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_S_EEIP_R33_From_S_EEPK( S_EEPK ) ( &((S_EEPK)->S_EEIP_R33) )
void ooaofooa_S_EEPK_R35_Link_contains( ooaofooa_S_EEPIP *, ooaofooa_S_EEPK * );
void ooaofooa_S_EEPK_R35_Unlink_contains( ooaofooa_S_EEPIP *, ooaofooa_S_EEPK * );
void ooaofooa_S_EEPK_R36_Link_contains( ooaofooa_S_DOM *, ooaofooa_S_EEPK * );
void ooaofooa_S_EEPK_R36_Unlink_contains( ooaofooa_S_DOM *, ooaofooa_S_EEPK * );


#define ooaofooa_S_EEPK_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_EEPK_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_EEPK_CLASS_H */


