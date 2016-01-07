/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_NETXN_class.h
 *
 * Class:       No Event Transition  (SM_NETXN)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_NETXN_CLASS_H
#define OOAOFOOA_SM_NETXN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   No Event Transition  (SM_NETXN)
 */
struct ooaofooa_SM_NETXN {

  /* application analysis class attributes */
  Escher_UniqueID_t Trans_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMstt_ID;  
  Escher_UniqueID_t SMspd_ID;  

  /* relationship storage */
  ooaofooa_SM_TXN * SM_TXN_R507;
  ooaofooa_SM_STATE * SM_STATE_R508_originates_from;
};
void ooaofooa_SM_NETXN_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_NETXN_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_NETXN_batch_relate( Escher_iHandle_t );

void ooaofooa_SM_NETXN_R507_Link( ooaofooa_SM_TXN *, ooaofooa_SM_NETXN * );
void ooaofooa_SM_NETXN_R507_Unlink( ooaofooa_SM_TXN *, ooaofooa_SM_NETXN * );
void ooaofooa_SM_NETXN_R508_Link_is_origination_of( ooaofooa_SM_STATE *, ooaofooa_SM_NETXN * );
void ooaofooa_SM_NETXN_R508_Unlink_is_origination_of( ooaofooa_SM_STATE *, ooaofooa_SM_NETXN * );


#define ooaofooa_SM_NETXN_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_NETXN_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_NETXN_CLASS_H */


