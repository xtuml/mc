/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_EEEDI_class.h
 *
 * Class:       External Entity Event Data Item  (S_EEEDI)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_EEEDI_CLASS_H
#define OOAOFOOA_S_EEEDI_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   External Entity Event Data Item  (S_EEEDI)
 */
struct ooaofooa_S_EEEDI {

  /* application analysis class attributes */
  Escher_UniqueID_t EEedi_ID;  
  Escher_UniqueID_t EE_ID;  
  c_t * Name;  
  c_t * Descrip;  
  Escher_UniqueID_t DT_ID;  

  /* relationship storage */
  ooaofooa_S_EE * S_EE_R12_is_data_for_events_of;
  Escher_ObjectSet_s S_EEEDT_R13;
  ooaofooa_S_DT * S_DT_R16_is_defined_by;
};
void ooaofooa_S_EEEDI_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_EEEDI_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_EEEDI_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_EEEDI * ooaofooa_S_EEEDI_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t );

void ooaofooa_S_EEEDI_R12_Link_can_asynchronously_communicate_via( ooaofooa_S_EE *, ooaofooa_S_EEEDI * );
void ooaofooa_S_EEEDI_R12_Unlink_can_asynchronously_communicate_via( ooaofooa_S_EE *, ooaofooa_S_EEEDI * );
#define ooaofooa_S_EEEDT_R13_From_S_EEEDI( S_EEEDI ) ( &((S_EEEDI)->S_EEEDT_R13) )
void ooaofooa_S_EEEDI_R16_Link_defines_the_type_of( ooaofooa_S_DT *, ooaofooa_S_EEEDI * );
void ooaofooa_S_EEEDI_R16_Unlink_defines_the_type_of( ooaofooa_S_DT *, ooaofooa_S_EEEDI * );


#define ooaofooa_S_EEEDI_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_EEEDI_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_EEEDI_CLASS_H */


