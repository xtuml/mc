/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_SMEEC_class.h
 *
 * Class:       SM to EE Comm Path  (CA_SMEEC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CA_SMEEC_CLASS_H
#define OOAOFOOA_CA_SMEEC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   SM to EE Comm Path  (CA_SMEEC)
 */
struct ooaofooa_CA_SMEEC {

  /* application analysis class attributes */
  Escher_UniqueID_t CPath_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t EE_ID;  
  Escher_UniqueID_t EEmod_ID;  

  /* relationship storage */
  ooaofooa_CA_COMM * CA_COMM_R401;
  ooaofooa_SM_SM * SM_SM_R410_originates_from;
  ooaofooa_S_EEM * S_EEM_R411_shows_event_communication_to;
  Escher_ObjectSet_s CA_SMEEE_R412_carries;
};
void ooaofooa_CA_SMEEC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CA_SMEEC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CA_SMEEC_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_CA_SMEEC * ooaofooa_CA_SMEEC_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_CA_SMEEC_R401_Link( ooaofooa_CA_COMM *, ooaofooa_CA_SMEEC * );
void ooaofooa_CA_SMEEC_R401_Unlink( ooaofooa_CA_COMM *, ooaofooa_CA_SMEEC * );
void ooaofooa_CA_SMEEC_R410_Link_originates( ooaofooa_SM_SM *, ooaofooa_CA_SMEEC * );
void ooaofooa_CA_SMEEC_R410_Unlink_originates( ooaofooa_SM_SM *, ooaofooa_CA_SMEEC * );
void ooaofooa_CA_SMEEC_R411_Link_has_received_event_communication_represented_by( ooaofooa_S_EEM *, ooaofooa_CA_SMEEC * );
void ooaofooa_CA_SMEEC_R411_Unlink_has_received_event_communication_represented_by( ooaofooa_S_EEM *, ooaofooa_CA_SMEEC * );
#define ooaofooa_CA_SMEEE_R412_From_CA_SMEEC_carries( CA_SMEEC ) ( &((CA_SMEEC)->CA_SMEEE_R412_carries) )
/* Note:  CA_SMEEC->CA_SMEEE[R412] not navigated */


#define ooaofooa_CA_SMEEC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CA_SMEEC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CA_SMEEC_CLASS_H */


