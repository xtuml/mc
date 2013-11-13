/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_EEEVT_class.h
 *
 * Class:       External Entity Event  (S_EEEVT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_EEEVT_CLASS_H
#define OOAOFOOA_S_EEEVT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   External Entity Event  (S_EEEVT)
 */
struct ooaofooa_S_EEEVT {

  /* application analysis class attributes */
  Escher_UniqueID_t EEevt_ID;  
  Escher_UniqueID_t EE_ID;  
  i_t Numb;  
  c_t Mning[ESCHER_SYS_MAX_STRING_LEN];  
  i_t Is_Lbl_U;  
  c_t Unq_Lbl[ESCHER_SYS_MAX_STRING_LEN];  
  c_t Drv_Lbl[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_S_EE * S_EE_R10_is_vehicle_of_communication_for;
  Escher_ObjectSet_s S_EEEDT_R13;
  Escher_ObjectSet_s CA_SMEEE_R413_is_carried_to_EE_via;
  Escher_ObjectSet_s E_CEE_R708;
  Escher_ObjectSet_s E_GEE_R709;
};
void ooaofooa_S_EEEVT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_EEEVT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_EEEVT_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_EEEVT * ooaofooa_S_EEEVT_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t );

void ooaofooa_S_EEEVT_R10_Link_can_receive_asynchronous_communication_via( ooaofooa_S_EE *, ooaofooa_S_EEEVT * );
void ooaofooa_S_EEEVT_R10_Unlink_can_receive_asynchronous_communication_via( ooaofooa_S_EE *, ooaofooa_S_EEEVT * );
#define ooaofooa_S_EEEDT_R13_From_S_EEEVT( S_EEEVT ) ( &((S_EEEVT)->S_EEEDT_R13) )
#define ooaofooa_CA_SMEEE_R413_From_S_EEEVT_is_carried_to_EE_via( S_EEEVT ) ( &((S_EEEVT)->CA_SMEEE_R413_is_carried_to_EE_via) )
/* Note:  S_EEEVT->CA_SMEEE[R413] not navigated */
#define ooaofooa_E_CEE_R708_From_S_EEEVT( S_EEEVT ) ( &((S_EEEVT)->E_CEE_R708) )
/* Note:  S_EEEVT->E_CEE[R708] not navigated */
#define ooaofooa_E_GEE_R709_From_S_EEEVT( S_EEEVT ) ( &((S_EEEVT)->E_GEE_R709) )
/* Note:  S_EEEVT->E_GEE[R709] not navigated */


#define ooaofooa_S_EEEVT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_EEEVT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_EEEVT_CLASS_H */


