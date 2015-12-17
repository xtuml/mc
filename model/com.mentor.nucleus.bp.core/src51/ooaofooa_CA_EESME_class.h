/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_EESME_class.h
 *
 * Class:       EE to SM Event Comm  (CA_EESME)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CA_EESME_CLASS_H
#define OOAOFOOA_CA_EESME_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   EE to SM Event Comm  (CA_EESME)
 */
struct ooaofooa_CA_EESME {

  /* application analysis class attributes */
  Escher_UniqueID_t CPath_ID;  
  Escher_UniqueID_t SMevt_ID;  

  /* relationship storage */
  ooaofooa_CA_EESMC * CA_EESMC_R404_is_carried_by;
  ooaofooa_SM_EVT * SM_EVT_R405_represents_communication_of;
};
void ooaofooa_CA_EESME_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CA_EESME_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CA_EESME_batch_relate( Escher_iHandle_t );

void ooaofooa_CA_EESME_R404_Link_carries( ooaofooa_CA_EESMC *, ooaofooa_CA_EESME * );
void ooaofooa_CA_EESME_R404_Unlink_carries( ooaofooa_CA_EESMC *, ooaofooa_CA_EESME * );
void ooaofooa_CA_EESME_R405_Link_is_carried_to_other_SMs_via( ooaofooa_SM_EVT *, ooaofooa_CA_EESME * );
void ooaofooa_CA_EESME_R405_Unlink_is_carried_to_other_SMs_via( ooaofooa_SM_EVT *, ooaofooa_CA_EESME * );


#define ooaofooa_CA_EESME_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CA_EESME_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CA_EESME_CLASS_H */


