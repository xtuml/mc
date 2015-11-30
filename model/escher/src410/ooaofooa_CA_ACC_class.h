/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_ACC_class.h
 *
 * Class:       Access Path  (CA_ACC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CA_ACC_CLASS_H
#define OOAOFOOA_CA_ACC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Access Path  (CA_ACC)
 */
struct ooaofooa_CA_ACC {

  /* application analysis class attributes */
  Escher_UniqueID_t APath_ID;  
  Escher_UniqueID_t SS_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t IObj_ID;  

  /* relationship storage */
  ooaofooa_S_SS * S_SS_R6_abstracts_synchronous_data_access_between_classes_in;
  void * R415_subtype;
  Escher_ClassNumber_t R415_object_id;
  ooaofooa_SM_SM * SM_SM_R416_originates_from;
  ooaofooa_O_IOBJ * O_IOBJ_R425_origination_OBJ_can_be_represented_by;
};
void ooaofooa_CA_ACC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CA_ACC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CA_ACC_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_CA_ACC * ooaofooa_CA_ACC_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_CA_ACC_R6_Link_contains( ooaofooa_S_SS *, ooaofooa_CA_ACC * );
void ooaofooa_CA_ACC_R6_Unlink_contains( ooaofooa_S_SS *, ooaofooa_CA_ACC * );

/* Accessors to CA_ACC[R415] subtypes */
#define ooaofooa_CA_SMOA_R415_From_CA_ACC( CA_ACC ) \
   ( (((CA_ACC)->R415_object_id) == ooaofooa_CA_SMOA_CLASS_NUMBER) ? \
     ((ooaofooa_CA_SMOA *)((CA_ACC)->R415_subtype)) : (0) )
/* Note:  CA_ACC->CA_SMOA[R415] not navigated */
#define ooaofooa_CA_SMEEA_R415_From_CA_ACC( CA_ACC ) \
   ( (((CA_ACC)->R415_object_id) == ooaofooa_CA_SMEEA_CLASS_NUMBER) ? \
     ((ooaofooa_CA_SMEEA *)((CA_ACC)->R415_subtype)) : (0) )
/* Note:  CA_ACC->CA_SMEEA[R415] not navigated */

void ooaofooa_CA_ACC_R416_Link_originates( ooaofooa_SM_SM *, ooaofooa_CA_ACC * );
void ooaofooa_CA_ACC_R416_Unlink_originates( ooaofooa_SM_SM *, ooaofooa_CA_ACC * );
void ooaofooa_CA_ACC_R425_Link_represents_origination_OBJ_for( ooaofooa_O_IOBJ *, ooaofooa_CA_ACC * );
void ooaofooa_CA_ACC_R425_Unlink_represents_origination_OBJ_for( ooaofooa_O_IOBJ *, ooaofooa_CA_ACC * );


#define ooaofooa_CA_ACC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CA_ACC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CA_ACC_CLASS_H */


