/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_CRTXN_class.h
 *
 * Class:       Creation Transition  (SM_CRTXN)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_CRTXN_CLASS_H
#define OOAOFOOA_SM_CRTXN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Creation Transition  (SM_CRTXN)
 */
struct ooaofooa_SM_CRTXN {

  /* application analysis class attributes */
  Escher_UniqueID_t Trans_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMevt_ID;  
  Escher_UniqueID_t SMspd_ID;  

  /* relationship storage */
  ooaofooa_SM_TXN * SM_TXN_R507;
  ooaofooa_SM_LEVT * SM_LEVT_R509_is_assigned_to;
};
void ooaofooa_SM_CRTXN_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_CRTXN_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_CRTXN_batch_relate( Escher_iHandle_t );

void ooaofooa_SM_CRTXN_R507_Link( ooaofooa_SM_TXN *, ooaofooa_SM_CRTXN * );
void ooaofooa_SM_CRTXN_R507_Unlink( ooaofooa_SM_TXN *, ooaofooa_SM_CRTXN * );
void ooaofooa_SM_CRTXN_R509_Link_has_assigned_to_it( ooaofooa_SM_LEVT *, ooaofooa_SM_CRTXN * );
void ooaofooa_SM_CRTXN_R509_Unlink_has_assigned_to_it( ooaofooa_SM_LEVT *, ooaofooa_SM_CRTXN * );


#define ooaofooa_SM_CRTXN_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_CRTXN_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_CRTXN_CLASS_H */


