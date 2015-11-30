/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_EESMC_class.h
 *
 * Class:       EE to SM Comm Path  (CA_EESMC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CA_EESMC_CLASS_H
#define OOAOFOOA_CA_EESMC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   EE to SM Comm Path  (CA_EESMC)
 */
struct ooaofooa_CA_EESMC {

  /* application analysis class attributes */
  Escher_UniqueID_t CPath_ID;  
  Escher_UniqueID_t EEmod_ID;  
  Escher_UniqueID_t EE_ID;  
  Escher_UniqueID_t SM_ID;  

  /* relationship storage */
  ooaofooa_CA_COMM * CA_COMM_R401;
  ooaofooa_S_EEM * S_EEM_R402_originates_from;
  ooaofooa_SM_SM * SM_SM_R403_shows_event_communication_to;
  Escher_ObjectSet_s CA_EESME_R404_carries;
};
void ooaofooa_CA_EESMC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CA_EESMC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CA_EESMC_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_CA_EESMC * ooaofooa_CA_EESMC_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_CA_EESMC_R401_Link( ooaofooa_CA_COMM *, ooaofooa_CA_EESMC * );
void ooaofooa_CA_EESMC_R401_Unlink( ooaofooa_CA_COMM *, ooaofooa_CA_EESMC * );
void ooaofooa_CA_EESMC_R402_Link_originates( ooaofooa_S_EEM *, ooaofooa_CA_EESMC * );
void ooaofooa_CA_EESMC_R402_Unlink_originates( ooaofooa_S_EEM *, ooaofooa_CA_EESMC * );
void ooaofooa_CA_EESMC_R403_Link_has_received_event_communication_represented_by( ooaofooa_SM_SM *, ooaofooa_CA_EESMC * );
void ooaofooa_CA_EESMC_R403_Unlink_has_received_event_communication_represented_by( ooaofooa_SM_SM *, ooaofooa_CA_EESMC * );
#define ooaofooa_CA_EESME_R404_From_CA_EESMC_carries( CA_EESMC ) ( &((CA_EESMC)->CA_EESME_R404_carries) )
/* Note:  CA_EESMC->CA_EESME[R404] not navigated */


#define ooaofooa_CA_EESMC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CA_EESMC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CA_EESMC_CLASS_H */


