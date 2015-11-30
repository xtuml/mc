/*----------------------------------------------------------------------------
 * File:  ooaofooa_CSME_CIS_class.h
 *
 * Class:       Class In State  (CSME_CIS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CSME_CIS_CLASS_H
#define OOAOFOOA_CSME_CIS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Class In State  (CSME_CIS)
 */
struct ooaofooa_CSME_CIS {

  /* application analysis class attributes */
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMstt_ID;  
  Escher_UniqueID_t Trans_ID;  
  Escher_UniqueID_t CIE_ID;  

  /* relationship storage */
  ooaofooa_CSME_CIE * CSME_CIE_R2932;
  ooaofooa_SM_STATE * SM_STATE_R2932;
  ooaofooa_SM_TXN * SM_TXN_R2952_entered_state_via;
};
void ooaofooa_CSME_CIS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CSME_CIS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CSME_CIS_batch_relate( Escher_iHandle_t );

void ooaofooa_CSME_CIS_R2932_Link( ooaofooa_CSME_CIE *, ooaofooa_SM_STATE *, ooaofooa_CSME_CIS * );
void ooaofooa_CSME_CIS_R2932_Unlink( ooaofooa_CSME_CIE *, ooaofooa_SM_STATE *, ooaofooa_CSME_CIS * );
void ooaofooa_CSME_CIS_R2952_Link( ooaofooa_SM_TXN *, ooaofooa_CSME_CIS * );
void ooaofooa_CSME_CIS_R2952_Unlink( ooaofooa_SM_TXN *, ooaofooa_CSME_CIS * );


#define ooaofooa_CSME_CIS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CSME_CIS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CSME_CIS_CLASS_H */


