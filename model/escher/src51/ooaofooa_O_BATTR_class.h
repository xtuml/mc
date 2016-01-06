/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_BATTR_class.h
 *
 * Class:       Base Attribute  (O_BATTR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_O_BATTR_CLASS_H
#define OOAOFOOA_O_BATTR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Base Attribute  (O_BATTR)
 */
struct ooaofooa_O_BATTR {

  /* application analysis class attributes */
  Escher_UniqueID_t Attr_ID;  
  Escher_UniqueID_t Obj_ID;  

  /* relationship storage */
  ooaofooa_O_ATTR * O_ATTR_R106;
  void * R107_subtype;
  Escher_ClassNumber_t R107_object_id;
  Escher_ObjectSet_s O_RATTR_R113_can_be_the_base_of;
};
void ooaofooa_O_BATTR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_O_BATTR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_O_BATTR_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_O_BATTR * ooaofooa_O_BATTR_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t );

void ooaofooa_O_BATTR_R106_Link( ooaofooa_O_ATTR *, ooaofooa_O_BATTR * );
void ooaofooa_O_BATTR_R106_Unlink( ooaofooa_O_ATTR *, ooaofooa_O_BATTR * );

/* Accessors to O_BATTR[R107] subtypes */
#define ooaofooa_O_DBATTR_R107_From_O_BATTR( O_BATTR ) \
   ( (((O_BATTR)->R107_object_id) == ooaofooa_O_DBATTR_CLASS_NUMBER) ? \
     ((ooaofooa_O_DBATTR *)((O_BATTR)->R107_subtype)) : (0) )
#define ooaofooa_O_NBATTR_R107_From_O_BATTR( O_BATTR ) \
   ( (((O_BATTR)->R107_object_id) == ooaofooa_O_NBATTR_CLASS_NUMBER) ? \
     ((ooaofooa_O_NBATTR *)((O_BATTR)->R107_subtype)) : (0) )

#define ooaofooa_O_RATTR_R113_From_O_BATTR_can_be_the_base_of( O_BATTR ) ( &((O_BATTR)->O_RATTR_R113_can_be_the_base_of) )


#define ooaofooa_O_BATTR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_O_BATTR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_O_BATTR_CLASS_H */


