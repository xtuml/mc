/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_SMEEE_class.h
 *
 * Class:       SM to EE Event Comm  (CA_SMEEE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CA_SMEEE_CLASS_H
#define OOAOFOOA_CA_SMEEE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   SM to EE Event Comm  (CA_SMEEE)
 */
struct ooaofooa_CA_SMEEE {

  /* application analysis class attributes */
  Escher_UniqueID_t CPath_ID;  
  Escher_UniqueID_t EE_ID;  
  Escher_UniqueID_t EEevt_ID;  

  /* relationship storage */
  ooaofooa_CA_SMEEC * CA_SMEEC_R412_is_carried_by;
  ooaofooa_S_EEEVT * S_EEEVT_R413_represents_communication_of;
};
void ooaofooa_CA_SMEEE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CA_SMEEE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CA_SMEEE_batch_relate( Escher_iHandle_t );

void ooaofooa_CA_SMEEE_R412_Link_carries( ooaofooa_CA_SMEEC *, ooaofooa_CA_SMEEE * );
void ooaofooa_CA_SMEEE_R412_Unlink_carries( ooaofooa_CA_SMEEC *, ooaofooa_CA_SMEEE * );
void ooaofooa_CA_SMEEE_R413_Link_is_carried_to_EE_via( ooaofooa_S_EEEVT *, ooaofooa_CA_SMEEE * );
void ooaofooa_CA_SMEEE_R413_Unlink_is_carried_to_EE_via( ooaofooa_S_EEEVT *, ooaofooa_CA_SMEEE * );


#define ooaofooa_CA_SMEEE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CA_SMEEE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CA_SMEEE_CLASS_H */


