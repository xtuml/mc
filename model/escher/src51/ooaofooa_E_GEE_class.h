/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_GEE_class.h
 *
 * Class:       Generate to External Entity  (E_GEE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_E_GEE_CLASS_H
#define OOAOFOOA_E_GEE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Generate to External Entity  (E_GEE)
 */
struct ooaofooa_E_GEE {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t EE_ID;  
  Escher_UniqueID_t EEevt_ID;  

  /* relationship storage */
  ooaofooa_E_GES * E_GES_R703;
  ooaofooa_S_EEEVT * S_EEEVT_R709_generates;
};
void ooaofooa_E_GEE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_E_GEE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_E_GEE_batch_relate( Escher_iHandle_t );

void ooaofooa_E_GEE_R703_Link( ooaofooa_E_GES *, ooaofooa_E_GEE * );
void ooaofooa_E_GEE_R703_Unlink( ooaofooa_E_GES *, ooaofooa_E_GEE * );
void ooaofooa_E_GEE_R709_Link( ooaofooa_S_EEEVT *, ooaofooa_E_GEE * );
void ooaofooa_E_GEE_R709_Unlink( ooaofooa_S_EEEVT *, ooaofooa_E_GEE * );


#define ooaofooa_E_GEE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_E_GEE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_E_GEE_CLASS_H */


