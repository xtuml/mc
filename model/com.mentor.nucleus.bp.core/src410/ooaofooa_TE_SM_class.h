/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_SM_class.h
 *
 * Class:       Extended State Machine  (TE_SM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_SM_CLASS_H
#define OOAOFOOA_TE_SM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended State Machine  (TE_SM)
 */
struct ooaofooa_TE_SM {

  /* application analysis class attributes */
  Escher_UniqueID_t ID;  
  bool complete;  
  c_t initial_state[ESCHER_SYS_MAX_STRING_LEN];  
  c_t SEMname[ESCHER_SYS_MAX_STRING_LEN];  
  c_t action_array[ESCHER_SYS_MAX_STRING_LEN];  
  c_t action_type[ESCHER_SYS_MAX_STRING_LEN];  
  c_t events_union[ESCHER_SYS_MAX_STRING_LEN];  
  c_t txn_action_array[ESCHER_SYS_MAX_STRING_LEN];  
  i_t txn_action_count;  
  c_t state_names_array[ESCHER_SYS_MAX_STRING_LEN];  
  i_t num_states;  
  i_t num_events;  
  Escher_UniqueID_t SM_ID;  
  c_t te_classGeneratedName[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_SM_SM * SM_SM_R2043;
  Escher_ObjectSet_s TE_EVT_R2071;
  ooaofooa_TE_CLASS * TE_CLASS_R2072;
};
void ooaofooa_TE_SM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_SM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_SM_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_SM * ooaofooa_TE_SM_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_TE_SM_R2043_Link( ooaofooa_SM_SM *, ooaofooa_TE_SM * );
void ooaofooa_TE_SM_R2043_Unlink( ooaofooa_SM_SM *, ooaofooa_TE_SM * );
#define ooaofooa_TE_EVT_R2071_From_TE_SM( TE_SM ) ( &((TE_SM)->TE_EVT_R2071) )
/* Note:  TE_SM->TE_EVT[R2071] not navigated */
void ooaofooa_TE_SM_R2072_Link( ooaofooa_TE_CLASS *, ooaofooa_TE_SM * );
void ooaofooa_TE_SM_R2072_Unlink( ooaofooa_TE_CLASS *, ooaofooa_TE_SM * );


#define ooaofooa_TE_SM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_SM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_SM_CLASS_H */


