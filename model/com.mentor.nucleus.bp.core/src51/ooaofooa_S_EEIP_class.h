/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_EEIP_class.h
 *
 * Class:       External Entity in Package  (S_EEIP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_EEIP_CLASS_H
#define OOAOFOOA_S_EEIP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   External Entity in Package  (S_EEIP)
 */
struct ooaofooa_S_EEIP {

  /* application analysis class attributes */
  Escher_UniqueID_t EEPack_ID;  
  Escher_UniqueID_t EE_ID;  

  /* relationship storage */
  ooaofooa_S_EEPK * S_EEPK_R33_is_contained_in;
  ooaofooa_S_EE * S_EE_R33_contains;
};
void ooaofooa_S_EEIP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_EEIP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_EEIP_batch_relate( Escher_iHandle_t );

void ooaofooa_S_EEIP_R33_Link( ooaofooa_S_EEPK *, ooaofooa_S_EE *, ooaofooa_S_EEIP * );
void ooaofooa_S_EEIP_R33_Unlink( ooaofooa_S_EEPK *, ooaofooa_S_EE *, ooaofooa_S_EEIP * );


#define ooaofooa_S_EEIP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_EEIP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_EEIP_CLASS_H */


