/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_AVL_class.h
 *
 * Class:       Attribute Value Reference  (V_AVL)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_AVL_CLASS_H
#define OOAOFOOA_V_AVL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Attribute Value Reference  (V_AVL)
 */
struct ooaofooa_V_AVL {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t Root_Value_ID;  
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t Attr_ID;  

  /* relationship storage */
  ooaofooa_V_VAL * V_VAL_R801;
  ooaofooa_O_ATTR * O_ATTR_R806_is_value_of;
  ooaofooa_V_VAL * V_VAL_R807_has_root;
};
void ooaofooa_V_AVL_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_AVL_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_AVL_batch_relate( Escher_iHandle_t );

void ooaofooa_V_AVL_R801_Link( ooaofooa_V_VAL *, ooaofooa_V_AVL * );
void ooaofooa_V_AVL_R801_Unlink( ooaofooa_V_VAL *, ooaofooa_V_AVL * );
void ooaofooa_V_AVL_R806_Link( ooaofooa_O_ATTR *, ooaofooa_V_AVL * );
void ooaofooa_V_AVL_R806_Unlink( ooaofooa_O_ATTR *, ooaofooa_V_AVL * );
void ooaofooa_V_AVL_R807_Link_is_root_for( ooaofooa_V_VAL *, ooaofooa_V_AVL * );
void ooaofooa_V_AVL_R807_Unlink_is_root_for( ooaofooa_V_VAL *, ooaofooa_V_AVL * );


#define ooaofooa_V_AVL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_AVL_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_AVL_CLASS_H */


