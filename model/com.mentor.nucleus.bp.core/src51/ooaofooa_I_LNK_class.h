/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_LNK_class.h
 *
 * Class:       Link  (I_LNK)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_I_LNK_CLASS_H
#define OOAOFOOA_I_LNK_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Link  (I_LNK)
 */
struct ooaofooa_I_LNK {

  /* application analysis class attributes */
  Escher_UniqueID_t Link_ID;  
  Escher_UniqueID_t Rel_ID;  
  Escher_UniqueID_t fromInst_ID;  
  Escher_UniqueID_t toInst_ID;  
  Escher_UniqueID_t assocInst_ID;  

  /* relationship storage */
  ooaofooa_I_LIP * I_LIP_R2901_originates_at;
  ooaofooa_I_LIP * I_LIP_R2902_ends_at;
  ooaofooa_I_LIP * I_LIP_R2903_has_associator;
  ooaofooa_R_REL * R_REL_R2904_is_instance_of;
};
void ooaofooa_I_LNK_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_I_LNK_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_I_LNK_batch_relate( Escher_iHandle_t );

void ooaofooa_I_LNK_R2901_Link_is_origin_of( ooaofooa_I_LIP *, ooaofooa_I_LNK * );
void ooaofooa_I_LNK_R2901_Unlink_is_origin_of( ooaofooa_I_LIP *, ooaofooa_I_LNK * );
void ooaofooa_I_LNK_R2902_Link_is_destination_of( ooaofooa_I_LIP *, ooaofooa_I_LNK * );
void ooaofooa_I_LNK_R2902_Unlink_is_destination_of( ooaofooa_I_LIP *, ooaofooa_I_LNK * );
void ooaofooa_I_LNK_R2903_Link_is_associator_for( ooaofooa_I_LIP *, ooaofooa_I_LNK * );
void ooaofooa_I_LNK_R2903_Unlink_is_associator_for( ooaofooa_I_LIP *, ooaofooa_I_LNK * );
void ooaofooa_I_LNK_R2904_Link_has_instances( ooaofooa_R_REL *, ooaofooa_I_LNK * );
void ooaofooa_I_LNK_R2904_Unlink_has_instances( ooaofooa_R_REL *, ooaofooa_I_LNK * );


#define ooaofooa_I_LNK_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_I_LNK_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_I_LNK_CLASS_H */


