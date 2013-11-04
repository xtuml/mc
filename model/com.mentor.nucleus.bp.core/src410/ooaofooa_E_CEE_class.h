/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_CEE_class.h
 *
 * Class:       Create Event to External Entity  (E_CEE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_E_CEE_CLASS_H
#define OOAOFOOA_E_CEE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Create Event to External Entity  (E_CEE)
 */
struct ooaofooa_E_CEE {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t EE_ID;  
  Escher_UniqueID_t EEevt_ID;  

  /* relationship storage */
  ooaofooa_E_CES * E_CES_R702;
  ooaofooa_S_EEEVT * S_EEEVT_R708_creates;
};
void ooaofooa_E_CEE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_E_CEE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_E_CEE_batch_relate( Escher_iHandle_t );

void ooaofooa_E_CEE_R702_Link( ooaofooa_E_CES *, ooaofooa_E_CEE * );
void ooaofooa_E_CEE_R702_Unlink( ooaofooa_E_CES *, ooaofooa_E_CEE * );
void ooaofooa_E_CEE_R708_Link( ooaofooa_S_EEEVT *, ooaofooa_E_CEE * );
void ooaofooa_E_CEE_R708_Unlink( ooaofooa_S_EEEVT *, ooaofooa_E_CEE * );


#define ooaofooa_E_CEE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_E_CEE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_E_CEE_CLASS_H */


