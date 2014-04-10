/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_EE_class.h
 *
 * Class:       External Entity  (S_EE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_EE_CLASS_H
#define OOAOFOOA_S_EE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   External Entity  (S_EE)
 */
struct ooaofooa_S_EE {

  /* application analysis class attributes */
  Escher_UniqueID_t EE_ID;  
  c_t * Name;  
  c_t * Descrip;  
  c_t * Key_Lett;  
  Escher_UniqueID_t Dom_ID;  
  c_t * Realized_Class_Path;  
  c_t * Label;  

  /* relationship storage */
  ooaofooa_S_DOM * S_DOM_R8_interacts_with;
  Escher_ObjectSet_s S_EEM_R9_is_represented_by;
  Escher_ObjectSet_s S_EEEVT_R10_can_receive_asynchronous_communication_via;
  Escher_ObjectSet_s S_EEDI_R11_can_be_accessed_synchronously_via;
  Escher_ObjectSet_s S_EEEDI_R12_can_asynchronously_communicate_via;
  Escher_ObjectSet_s S_BRG_R19_uses;
  ooaofooa_S_EEIP * S_EEIP_R33;
  Escher_ObjectSet_s SQ_EEP_R933_represents_participant_of;
  ooaofooa_TE_EE * TE_EE_R2020;
  ooaofooa_PE_PE * PE_PE_R8001;
};
void ooaofooa_S_EE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_EE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_EE_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_EE * ooaofooa_S_EE_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_S_EE_R8_Link_interacts_with( ooaofooa_S_DOM *, ooaofooa_S_EE * );
void ooaofooa_S_EE_R8_Unlink_interacts_with( ooaofooa_S_DOM *, ooaofooa_S_EE * );
#define ooaofooa_S_EEM_R9_From_S_EE_is_represented_by( S_EE ) ( &((S_EE)->S_EEM_R9_is_represented_by) )
/* Note:  S_EE->S_EEM[R9] not navigated */
#define ooaofooa_S_EEEVT_R10_From_S_EE_can_receive_asynchronous_communication_via( S_EE ) ( &((S_EE)->S_EEEVT_R10_can_receive_asynchronous_communication_via) )
/* Note:  S_EE->S_EEEVT[R10] not navigated */
#define ooaofooa_S_EEDI_R11_From_S_EE_can_be_accessed_synchronously_via( S_EE ) ( &((S_EE)->S_EEDI_R11_can_be_accessed_synchronously_via) )
/* Note:  S_EE->S_EEDI[R11] not navigated */
#define ooaofooa_S_EEEDI_R12_From_S_EE_can_asynchronously_communicate_via( S_EE ) ( &((S_EE)->S_EEEDI_R12_can_asynchronously_communicate_via) )
/* Note:  S_EE->S_EEEDI[R12] not navigated */
#define ooaofooa_S_BRG_R19_From_S_EE_uses( S_EE ) ( &((S_EE)->S_BRG_R19_uses) )
#define ooaofooa_SQ_EEP_R933_From_S_EE_represents_participant_of( S_EE ) ( &((S_EE)->SQ_EEP_R933_represents_participant_of) )
void ooaofooa_S_EE_R8001_Link( ooaofooa_PE_PE *, ooaofooa_S_EE * );
void ooaofooa_S_EE_R8001_Unlink( ooaofooa_PE_PE *, ooaofooa_S_EE * );


#define ooaofooa_S_EE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_EE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_EE_CLASS_H */


