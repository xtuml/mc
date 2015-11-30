/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_SMSME_class.h
 *
 * Class:       SM to SM Event Comm  (CA_SMSME)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CA_SMSME_CLASS_H
#define OOAOFOOA_CA_SMSME_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   SM to SM Event Comm  (CA_SMSME)
 */
struct ooaofooa_CA_SMSME {

  /* application analysis class attributes */
  Escher_UniqueID_t CPath_ID;  
  Escher_UniqueID_t SMevt_ID;  

  /* relationship storage */
  ooaofooa_CA_SMSMC * CA_SMSMC_R408_is_carried_by;
  ooaofooa_SM_EVT * SM_EVT_R409_represents_communication_of;
};
void ooaofooa_CA_SMSME_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CA_SMSME_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CA_SMSME_batch_relate( Escher_iHandle_t );

void ooaofooa_CA_SMSME_R408_Link_carries( ooaofooa_CA_SMSMC *, ooaofooa_CA_SMSME * );
void ooaofooa_CA_SMSME_R408_Unlink_carries( ooaofooa_CA_SMSMC *, ooaofooa_CA_SMSME * );
void ooaofooa_CA_SMSME_R409_Link_is_carried_to_other_SMs_via( ooaofooa_SM_EVT *, ooaofooa_CA_SMSME * );
void ooaofooa_CA_SMSME_R409_Unlink_is_carried_to_other_SMs_via( ooaofooa_SM_EVT *, ooaofooa_CA_SMSME * );


#define ooaofooa_CA_SMSME_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CA_SMSME_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CA_SMSME_CLASS_H */


