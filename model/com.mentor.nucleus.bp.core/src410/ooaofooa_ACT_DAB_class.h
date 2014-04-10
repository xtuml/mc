/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_DAB_class.h
 *
 * Class:       Derived Attribute Body  (ACT_DAB)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_DAB_CLASS_H
#define OOAOFOOA_ACT_DAB_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Derived Attribute Body  (ACT_DAB)
 */
struct ooaofooa_ACT_DAB {

  /* application analysis class attributes */
  Escher_UniqueID_t Action_ID;  
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t Attr_ID;  
  bool AttributeWritten;  

  /* relationship storage */
  ooaofooa_O_DBATTR * O_DBATTR_R693_specifies_processing_for;
  ooaofooa_ACT_ACT * ACT_ACT_R698;
};
void ooaofooa_ACT_DAB_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_DAB_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_DAB_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_DAB_R693_Link( ooaofooa_O_DBATTR *, ooaofooa_ACT_DAB * );
void ooaofooa_ACT_DAB_R693_Unlink( ooaofooa_O_DBATTR *, ooaofooa_ACT_DAB * );
void ooaofooa_ACT_DAB_R698_Link( ooaofooa_ACT_ACT *, ooaofooa_ACT_DAB * );
void ooaofooa_ACT_DAB_R698_Unlink( ooaofooa_ACT_ACT *, ooaofooa_ACT_DAB * );


#define ooaofooa_ACT_DAB_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_DAB_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_DAB_CLASS_H */


