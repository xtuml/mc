/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_AVL_class.h
 *
 * Class:       Attribute Value  (I_AVL)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_I_AVL_CLASS_H
#define OOAOFOOA_I_AVL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Attribute Value  (I_AVL)
 */
struct ooaofooa_I_AVL {

  /* application analysis class attributes */
  Escher_UniqueID_t Inst_ID;  
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t Attr_ID;  
  c_t * Value;  
  c_t * Label;  

  /* relationship storage */
  ooaofooa_I_INS * I_INS_R2909_defines_value_for_characteristic_of;
  ooaofooa_O_ATTR * O_ATTR_R2910_is_instance_of;
};
void ooaofooa_I_AVL_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_I_AVL_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_I_AVL_batch_relate( Escher_iHandle_t );

void ooaofooa_I_AVL_R2909_Link_has_characteristic_abstracted_by( ooaofooa_I_INS *, ooaofooa_I_AVL * );
void ooaofooa_I_AVL_R2909_Unlink_has_characteristic_abstracted_by( ooaofooa_I_INS *, ooaofooa_I_AVL * );
void ooaofooa_I_AVL_R2910_Link_has_instances( ooaofooa_O_ATTR *, ooaofooa_I_AVL * );
void ooaofooa_I_AVL_R2910_Unlink_has_instances( ooaofooa_O_ATTR *, ooaofooa_I_AVL * );


#define ooaofooa_I_AVL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_I_AVL_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_I_AVL_CLASS_H */


