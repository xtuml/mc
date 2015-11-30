/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_NBATTR_class.h
 *
 * Class:       New Base Attribute  (O_NBATTR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_O_NBATTR_CLASS_H
#define OOAOFOOA_O_NBATTR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   New Base Attribute  (O_NBATTR)
 */
struct ooaofooa_O_NBATTR {

  /* application analysis class attributes */
  Escher_UniqueID_t Attr_ID;  
  Escher_UniqueID_t Obj_ID;  

  /* relationship storage */
  ooaofooa_O_BATTR * O_BATTR_R107;
};
void ooaofooa_O_NBATTR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_O_NBATTR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_O_NBATTR_batch_relate( Escher_iHandle_t );

void ooaofooa_O_NBATTR_R107_Link( ooaofooa_O_BATTR *, ooaofooa_O_NBATTR * );
void ooaofooa_O_NBATTR_R107_Unlink( ooaofooa_O_BATTR *, ooaofooa_O_NBATTR * );


#define ooaofooa_O_NBATTR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_O_NBATTR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_O_NBATTR_CLASS_H */


