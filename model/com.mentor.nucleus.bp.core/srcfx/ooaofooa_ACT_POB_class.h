/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_POB_class.h
 *
 * Class:       Provided Operation Body  (ACT_POB)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_POB_CLASS_H
#define OOAOFOOA_ACT_POB_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Provided Operation Body  (ACT_POB)
 */
struct ooaofooa_ACT_POB {

  /* application analysis class attributes */
  Escher_UniqueID_t Action_ID;  
  Escher_UniqueID_t Id;  

  /* relationship storage */
  ooaofooa_SPR_PO * SPR_PO_R687_specifies_processing_for;
  ooaofooa_ACT_ACT * ACT_ACT_R698;
};
void ooaofooa_ACT_POB_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_POB_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_POB_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_POB_R687_Link( ooaofooa_SPR_PO *, ooaofooa_ACT_POB * );
void ooaofooa_ACT_POB_R687_Unlink( ooaofooa_SPR_PO *, ooaofooa_ACT_POB * );
void ooaofooa_ACT_POB_R698_Link( ooaofooa_ACT_ACT *, ooaofooa_ACT_POB * );
void ooaofooa_ACT_POB_R698_Unlink( ooaofooa_ACT_ACT *, ooaofooa_ACT_POB * );


#define ooaofooa_ACT_POB_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_POB_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_POB_CLASS_H */


