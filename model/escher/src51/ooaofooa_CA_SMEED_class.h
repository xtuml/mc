/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_SMEED_class.h
 *
 * Class:       SM to EE Data Item Access  (CA_SMEED)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CA_SMEED_CLASS_H
#define OOAOFOOA_CA_SMEED_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   SM to EE Data Item Access  (CA_SMEED)
 */
struct ooaofooa_CA_SMEED {

  /* application analysis class attributes */
  Escher_UniqueID_t APath_ID;  
  Escher_UniqueID_t EEdi_ID;  
  Escher_UniqueID_t EE_ID;  

  /* relationship storage */
  ooaofooa_CA_SMEEA * CA_SMEEA_R422_is_carried_by;
  ooaofooa_S_EEDI * S_EEDI_R423_represents_access_of;
};
void ooaofooa_CA_SMEED_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CA_SMEED_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CA_SMEED_batch_relate( Escher_iHandle_t );

void ooaofooa_CA_SMEED_R422_Link_carries( ooaofooa_CA_SMEEA *, ooaofooa_CA_SMEED * );
void ooaofooa_CA_SMEED_R422_Unlink_carries( ooaofooa_CA_SMEEA *, ooaofooa_CA_SMEED * );
void ooaofooa_CA_SMEED_R423_Link_is_accessed_by( ooaofooa_S_EEDI *, ooaofooa_CA_SMEED * );
void ooaofooa_CA_SMEED_R423_Unlink_is_accessed_by( ooaofooa_S_EEDI *, ooaofooa_CA_SMEED * );


#define ooaofooa_CA_SMEED_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CA_SMEED_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CA_SMEED_CLASS_H */


