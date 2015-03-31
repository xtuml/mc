/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_EEM_class.h
 *
 * Class:       External Entity in Model  (S_EEM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_EEM_CLASS_H
#define OOAOFOOA_S_EEM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   External Entity in Model  (S_EEM)
 */
struct ooaofooa_S_EEM {

  /* application analysis class attributes */
  Escher_UniqueID_t EEmod_ID;  
  Escher_UniqueID_t EE_ID;  
  i_t Modl_Typ;  
  Escher_UniqueID_t SS_ID;  

  /* relationship storage */
  ooaofooa_S_SS * S_SS_R7_is_a_presence_of_an_an_external_entity_in;
  ooaofooa_S_EE * S_EE_R9_is_a_presence_in_subsystem_model_of;
  Escher_ObjectSet_s CA_EESMC_R402_originates;
  Escher_ObjectSet_s CA_SMEEC_R411_has_received_event_communication_represented_by;
  Escher_ObjectSet_s CA_SMEEA_R421_has_data_access_represented_by;
};
void ooaofooa_S_EEM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_EEM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_EEM_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_EEM * ooaofooa_S_EEM_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t );

void ooaofooa_S_EEM_R7_Link_contains( ooaofooa_S_SS *, ooaofooa_S_EEM * );
void ooaofooa_S_EEM_R7_Unlink_contains( ooaofooa_S_SS *, ooaofooa_S_EEM * );
void ooaofooa_S_EEM_R9_Link_is_represented_by( ooaofooa_S_EE *, ooaofooa_S_EEM * );
void ooaofooa_S_EEM_R9_Unlink_is_represented_by( ooaofooa_S_EE *, ooaofooa_S_EEM * );
#define ooaofooa_CA_EESMC_R402_From_S_EEM_originates( S_EEM ) ( &((S_EEM)->CA_EESMC_R402_originates) )
/* Note:  S_EEM->CA_EESMC[R402] not navigated */
#define ooaofooa_CA_SMEEC_R411_From_S_EEM_has_received_event_communication_represented_by( S_EEM ) ( &((S_EEM)->CA_SMEEC_R411_has_received_event_communication_represented_by) )
/* Note:  S_EEM->CA_SMEEC[R411] not navigated */
#define ooaofooa_CA_SMEEA_R421_From_S_EEM_has_data_access_represented_by( S_EEM ) ( &((S_EEM)->CA_SMEEA_R421_has_data_access_represented_by) )
/* Note:  S_EEM->CA_SMEEA[R421] not navigated */


#define ooaofooa_S_EEM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_EEM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_EEM_CLASS_H */


