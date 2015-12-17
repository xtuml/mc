/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_SMEEA_class.h
 *
 * Class:       SM to EE Access Path  (CA_SMEEA)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CA_SMEEA_CLASS_H
#define OOAOFOOA_CA_SMEEA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   SM to EE Access Path  (CA_SMEEA)
 */
struct ooaofooa_CA_SMEEA {

  /* application analysis class attributes */
  Escher_UniqueID_t APath_ID;  
  Escher_UniqueID_t EE_ID;  
  Escher_UniqueID_t EEmod_ID;  

  /* relationship storage */
  ooaofooa_CA_ACC * CA_ACC_R415;
  ooaofooa_S_EEM * S_EEM_R421_accesses_data_of;
  Escher_ObjectSet_s CA_SMEED_R422_carries;
};
void ooaofooa_CA_SMEEA_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CA_SMEEA_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CA_SMEEA_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_CA_SMEEA * ooaofooa_CA_SMEEA_AnyWhere2( Escher_UniqueID_t, Escher_UniqueID_t );

void ooaofooa_CA_SMEEA_R415_Link( ooaofooa_CA_ACC *, ooaofooa_CA_SMEEA * );
void ooaofooa_CA_SMEEA_R415_Unlink( ooaofooa_CA_ACC *, ooaofooa_CA_SMEEA * );
void ooaofooa_CA_SMEEA_R421_Link_has_data_access_represented_by( ooaofooa_S_EEM *, ooaofooa_CA_SMEEA * );
void ooaofooa_CA_SMEEA_R421_Unlink_has_data_access_represented_by( ooaofooa_S_EEM *, ooaofooa_CA_SMEEA * );
#define ooaofooa_CA_SMEED_R422_From_CA_SMEEA_carries( CA_SMEEA ) ( &((CA_SMEEA)->CA_SMEED_R422_carries) )
/* Note:  CA_SMEEA->CA_SMEED[R422] not navigated */


#define ooaofooa_CA_SMEEA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CA_SMEEA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CA_SMEEA_CLASS_H */


