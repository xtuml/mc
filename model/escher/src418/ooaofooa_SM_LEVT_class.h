/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_LEVT_class.h
 *
 * Class:       Local Event  (SM_LEVT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_LEVT_CLASS_H
#define OOAOFOOA_SM_LEVT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Local Event  (SM_LEVT)
 */
struct ooaofooa_SM_LEVT {

  /* application analysis class attributes */
  Escher_UniqueID_t SMevt_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMspd_ID;  

  /* relationship storage */
  ooaofooa_SM_CRTXN * SM_CRTXN_R509_has_assigned_to_it;
  ooaofooa_SM_SEVT * SM_SEVT_R526;
};
void ooaofooa_SM_LEVT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_LEVT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_LEVT_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SM_LEVT * ooaofooa_SM_LEVT_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t );

void ooaofooa_SM_LEVT_R526_Link( ooaofooa_SM_SEVT *, ooaofooa_SM_LEVT * );
void ooaofooa_SM_LEVT_R526_Unlink( ooaofooa_SM_SEVT *, ooaofooa_SM_LEVT * );


#define ooaofooa_SM_LEVT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_LEVT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_LEVT_CLASS_H */


