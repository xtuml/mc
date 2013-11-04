/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_EEDI_class.h
 *
 * Class:       External Entity Data Item  (S_EEDI)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_EEDI_CLASS_H
#define OOAOFOOA_S_EEDI_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   External Entity Data Item  (S_EEDI)
 */
struct ooaofooa_S_EEDI {

  /* application analysis class attributes */
  Escher_UniqueID_t EEdi_ID;  
  Escher_UniqueID_t EE_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  Escher_UniqueID_t DT_ID;  

  /* relationship storage */
  ooaofooa_S_EE * S_EE_R11_is_data_for;
  ooaofooa_S_DT * S_DT_R15_is_defined_by;
  Escher_ObjectSet_s CA_SMEED_R423_is_accessed_by;
};
void ooaofooa_S_EEDI_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_EEDI_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_EEDI_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_EEDI * ooaofooa_S_EEDI_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t );

void ooaofooa_S_EEDI_R11_Link_can_be_accessed_synchronously_via( ooaofooa_S_EE *, ooaofooa_S_EEDI * );
void ooaofooa_S_EEDI_R11_Unlink_can_be_accessed_synchronously_via( ooaofooa_S_EE *, ooaofooa_S_EEDI * );
void ooaofooa_S_EEDI_R15_Link_defines_the_type_of( ooaofooa_S_DT *, ooaofooa_S_EEDI * );
void ooaofooa_S_EEDI_R15_Unlink_defines_the_type_of( ooaofooa_S_DT *, ooaofooa_S_EEDI * );
#define ooaofooa_CA_SMEED_R423_From_S_EEDI_is_accessed_by( S_EEDI ) ( &((S_EEDI)->CA_SMEED_R423_is_accessed_by) )
/* Note:  S_EEDI->CA_SMEED[R423] not navigated */


#define ooaofooa_S_EEDI_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_EEDI_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_EEDI_CLASS_H */


