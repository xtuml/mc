/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_SMSMC_class.h
 *
 * Class:       SM to SM Comm Path  (CA_SMSMC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CA_SMSMC_CLASS_H
#define OOAOFOOA_CA_SMSMC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   SM to SM Comm Path  (CA_SMSMC)
 */
struct ooaofooa_CA_SMSMC {

  /* application analysis class attributes */
  Escher_UniqueID_t CPath_ID;  
  Escher_UniqueID_t OSM_ID;  
  Escher_UniqueID_t DSM_ID;  
  Escher_UniqueID_t OIObj_ID;  
  Escher_UniqueID_t DIObj_ID;  

  /* relationship storage */
  ooaofooa_CA_COMM * CA_COMM_R401;
  ooaofooa_SM_SM * SM_SM_R406_originates_from;
  ooaofooa_SM_SM * SM_SM_R407_shows_event_communication_to;
  Escher_ObjectSet_s CA_SMSME_R408_carries;
  ooaofooa_O_IOBJ * O_IOBJ_R414_destination_SM_can_be_represented_by;
  ooaofooa_O_IOBJ * O_IOBJ_R424_origination_SM_can_be_represented_by;
};
void ooaofooa_CA_SMSMC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CA_SMSMC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CA_SMSMC_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_CA_SMSMC * ooaofooa_CA_SMSMC_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_CA_SMSMC_R401_Link( ooaofooa_CA_COMM *, ooaofooa_CA_SMSMC * );
void ooaofooa_CA_SMSMC_R401_Unlink( ooaofooa_CA_COMM *, ooaofooa_CA_SMSMC * );
void ooaofooa_CA_SMSMC_R406_Link_originates( ooaofooa_SM_SM *, ooaofooa_CA_SMSMC * );
void ooaofooa_CA_SMSMC_R406_Unlink_originates( ooaofooa_SM_SM *, ooaofooa_CA_SMSMC * );
void ooaofooa_CA_SMSMC_R407_Link_represents_the_destination_SM_for( ooaofooa_SM_SM *, ooaofooa_CA_SMSMC * );
void ooaofooa_CA_SMSMC_R407_Unlink_represents_the_destination_SM_for( ooaofooa_SM_SM *, ooaofooa_CA_SMSMC * );
#define ooaofooa_CA_SMSME_R408_From_CA_SMSMC_carries( CA_SMSMC ) ( &((CA_SMSMC)->CA_SMSME_R408_carries) )
/* Note:  CA_SMSMC->CA_SMSME[R408] not navigated */
void ooaofooa_CA_SMSMC_R414_Link_represents_the_destination_SM_for( ooaofooa_O_IOBJ *, ooaofooa_CA_SMSMC * );
void ooaofooa_CA_SMSMC_R414_Unlink_represents_the_destination_SM_for( ooaofooa_O_IOBJ *, ooaofooa_CA_SMSMC * );
void ooaofooa_CA_SMSMC_R424_Link_represents_the_origination_SM_for( ooaofooa_O_IOBJ *, ooaofooa_CA_SMSMC * );
void ooaofooa_CA_SMSMC_R424_Unlink_represents_the_origination_SM_for( ooaofooa_O_IOBJ *, ooaofooa_CA_SMSMC * );


#define ooaofooa_CA_SMSMC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CA_SMSMC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CA_SMSMC_CLASS_H */


