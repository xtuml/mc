/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_EEEDT_class.h
 *
 * Class:       External Entity Event Data  (S_EEEDT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_EEEDT_CLASS_H
#define OOAOFOOA_S_EEEDT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   External Entity Event Data  (S_EEEDT)
 */
struct ooaofooa_S_EEEDT {

  /* application analysis class attributes */
  Escher_UniqueID_t EE_ID;  
  Escher_UniqueID_t EEevt_ID;  
  Escher_UniqueID_t EEedi_ID;  

  /* relationship storage */
  ooaofooa_S_EEEDI * S_EEEDI_R13_may_carry;
  ooaofooa_S_EEEVT * S_EEEVT_R13_is_carried_via;
};
void ooaofooa_S_EEEDT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_EEEDT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_EEEDT_batch_relate( Escher_iHandle_t );

void ooaofooa_S_EEEDT_R13_Link( ooaofooa_S_EEEDI *, ooaofooa_S_EEEVT *, ooaofooa_S_EEEDT * );
void ooaofooa_S_EEEDT_R13_Unlink( ooaofooa_S_EEEDI *, ooaofooa_S_EEEVT *, ooaofooa_S_EEEDT * );


#define ooaofooa_S_EEEDT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_EEEDT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_EEEDT_CLASS_H */


