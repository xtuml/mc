/*----------------------------------------------------------------------------
 * File:  ooaofooa_PL_EEPID_class.h
 *
 * Class:       External Entity Package in Domain  (PL_EEPID)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_PL_EEPID_CLASS_H
#define OOAOFOOA_PL_EEPID_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   External Entity Package in Domain  (PL_EEPID)
 */
struct ooaofooa_PL_EEPID {

  /* application analysis class attributes */
  Escher_UniqueID_t Dom_ID;  
  Escher_UniqueID_t EEPack_ID;  

  /* relationship storage */
  ooaofooa_S_DOM * S_DOM_R300_is_container;
  ooaofooa_S_EEPK * S_EEPK_R300_contains;
};
void ooaofooa_PL_EEPID_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_PL_EEPID_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_PL_EEPID_batch_relate( Escher_iHandle_t );

void ooaofooa_PL_EEPID_R300_Link( ooaofooa_S_DOM *, ooaofooa_S_EEPK *, ooaofooa_PL_EEPID * );
void ooaofooa_PL_EEPID_R300_Unlink( ooaofooa_S_DOM *, ooaofooa_S_EEPK *, ooaofooa_PL_EEPID * );


#define ooaofooa_PL_EEPID_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_PL_EEPID_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_PL_EEPID_CLASS_H */


