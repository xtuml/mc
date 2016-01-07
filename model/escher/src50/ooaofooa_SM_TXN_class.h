/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_TXN_class.h
 *
 * Class:       Transition  (SM_TXN)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_TXN_CLASS_H
#define OOAOFOOA_SM_TXN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Transition  (SM_TXN)
 */
struct ooaofooa_SM_TXN {

  /* application analysis class attributes */
  Escher_UniqueID_t Trans_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMstt_ID;  
  Escher_UniqueID_t SMspd_ID;  

  /* relationship storage */
  ooaofooa_SM_SM * SM_SM_R505;
  ooaofooa_SM_STATE * SM_STATE_R506_is_destined_to;
  void * R507_subtype;
  Escher_ClassNumber_t R507_object_id;
  ooaofooa_SM_MEAH * SM_MEAH_R512;
  ooaofooa_SM_TAH * SM_TAH_R530_houses_action_for;
  Escher_ObjectSet_s CSME_CIS_R2952;
  Escher_ObjectSet_s I_INS_R2953_caused_last_state_change_to;
};
void ooaofooa_SM_TXN_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_TXN_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_TXN_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SM_TXN * ooaofooa_SM_TXN_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t );

void ooaofooa_SM_TXN_R505_Link_contains( ooaofooa_SM_SM *, ooaofooa_SM_TXN * );
void ooaofooa_SM_TXN_R505_Unlink_contains( ooaofooa_SM_SM *, ooaofooa_SM_TXN * );
void ooaofooa_SM_TXN_R506_Link_is_destination_of( ooaofooa_SM_STATE *, ooaofooa_SM_TXN * );
void ooaofooa_SM_TXN_R506_Unlink_is_destination_of( ooaofooa_SM_STATE *, ooaofooa_SM_TXN * );

/* Accessors to SM_TXN[R507] subtypes */
#define ooaofooa_SM_NETXN_R507_From_SM_TXN( SM_TXN ) \
   ( (((SM_TXN)->R507_object_id) == ooaofooa_SM_NETXN_CLASS_NUMBER) ? \
     ((ooaofooa_SM_NETXN *)((SM_TXN)->R507_subtype)) : (0) )
/* Note:  SM_TXN->SM_NETXN[R507] not navigated */
#define ooaofooa_SM_CRTXN_R507_From_SM_TXN( SM_TXN ) \
   ( (((SM_TXN)->R507_object_id) == ooaofooa_SM_CRTXN_CLASS_NUMBER) ? \
     ((ooaofooa_SM_CRTXN *)((SM_TXN)->R507_subtype)) : (0) )
/* Note:  SM_TXN->SM_CRTXN[R507] not navigated */
#define ooaofooa_SM_NSTXN_R507_From_SM_TXN( SM_TXN ) \
   ( (((SM_TXN)->R507_object_id) == ooaofooa_SM_NSTXN_CLASS_NUMBER) ? \
     ((ooaofooa_SM_NSTXN *)((SM_TXN)->R507_subtype)) : (0) )
/* Note:  SM_TXN->SM_NSTXN[R507] not navigated */

#define ooaofooa_CSME_CIS_R2952_From_SM_TXN( SM_TXN ) ( &((SM_TXN)->CSME_CIS_R2952) )
/* Note:  SM_TXN->CSME_CIS[R2952] not navigated */
#define ooaofooa_I_INS_R2953_From_SM_TXN_caused_last_state_change_to( SM_TXN ) ( &((SM_TXN)->I_INS_R2953_caused_last_state_change_to) )
/* Note:  SM_TXN->I_INS[R2953] not navigated */


#define ooaofooa_SM_TXN_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_TXN_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_TXN_CLASS_H */


