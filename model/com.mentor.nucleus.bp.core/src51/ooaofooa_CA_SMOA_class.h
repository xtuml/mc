/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_SMOA_class.h
 *
 * Class:       SM to OBJ Access Path  (CA_SMOA)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CA_SMOA_CLASS_H
#define OOAOFOOA_CA_SMOA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   SM to OBJ Access Path  (CA_SMOA)
 */
struct ooaofooa_CA_SMOA {

  /* application analysis class attributes */
  Escher_UniqueID_t APath_ID;  
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t IObj_ID;  

  /* relationship storage */
  ooaofooa_CA_ACC * CA_ACC_R415;
  ooaofooa_O_OBJ * O_OBJ_R417_shows_accesses_of_data_from;
  Escher_ObjectSet_s CA_SMOAA_R418_carries;
  ooaofooa_O_IOBJ * O_IOBJ_R420_destination_OBJ_can_be_represented_by;
};
void ooaofooa_CA_SMOA_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CA_SMOA_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CA_SMOA_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_CA_SMOA * ooaofooa_CA_SMOA_AnyWhere2( Escher_UniqueID_t, Escher_UniqueID_t );

void ooaofooa_CA_SMOA_R415_Link( ooaofooa_CA_ACC *, ooaofooa_CA_SMOA * );
void ooaofooa_CA_SMOA_R415_Unlink( ooaofooa_CA_ACC *, ooaofooa_CA_SMOA * );
void ooaofooa_CA_SMOA_R417_Link_has_data_access_represented_by( ooaofooa_O_OBJ *, ooaofooa_CA_SMOA * );
void ooaofooa_CA_SMOA_R417_Unlink_has_data_access_represented_by( ooaofooa_O_OBJ *, ooaofooa_CA_SMOA * );
#define ooaofooa_CA_SMOAA_R418_From_CA_SMOA_carries( CA_SMOA ) ( &((CA_SMOA)->CA_SMOAA_R418_carries) )
/* Note:  CA_SMOA->CA_SMOAA[R418] not navigated */
void ooaofooa_CA_SMOA_R420_Link_represents_the_destination_OBJ_for( ooaofooa_O_IOBJ *, ooaofooa_CA_SMOA * );
void ooaofooa_CA_SMOA_R420_Unlink_represents_the_destination_OBJ_for( ooaofooa_O_IOBJ *, ooaofooa_CA_SMOA * );


#define ooaofooa_CA_SMOA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CA_SMOA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CA_SMOA_CLASS_H */


