/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_SDI_class.h
 *
 * Class:       Supplemental Data Items  (SM_SDI)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_SDI_CLASS_H
#define OOAOFOOA_SM_SDI_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Supplemental Data Items  (SM_SDI)
 */
struct ooaofooa_SM_SDI {

  /* application analysis class attributes */
  Escher_UniqueID_t SMedi_ID;  
  Escher_UniqueID_t SMspd_ID;  
  Escher_UniqueID_t SM_ID;  

  /* relationship storage */
  ooaofooa_SM_SUPDT * SM_SUPDT_R522_makes_up;
  ooaofooa_SM_EVTDI * SM_EVTDI_R522_is_made_up_of;
};
void ooaofooa_SM_SDI_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_SDI_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_SDI_batch_relate( Escher_iHandle_t );

void ooaofooa_SM_SDI_R522_Link( ooaofooa_SM_SUPDT *, ooaofooa_SM_EVTDI *, ooaofooa_SM_SDI * );
void ooaofooa_SM_SDI_R522_Unlink( ooaofooa_SM_SUPDT *, ooaofooa_SM_EVTDI *, ooaofooa_SM_SDI * );


#define ooaofooa_SM_SDI_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_SDI_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_SDI_CLASS_H */


