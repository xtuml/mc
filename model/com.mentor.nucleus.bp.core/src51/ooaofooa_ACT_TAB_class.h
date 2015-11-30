/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_TAB_class.h
 *
 * Class:       Transition Action Body  (ACT_TAB)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_TAB_CLASS_H
#define OOAOFOOA_ACT_TAB_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Transition Action Body  (ACT_TAB)
 */
struct ooaofooa_ACT_TAB {

  /* application analysis class attributes */
  Escher_UniqueID_t Action_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t Act_ID;  

  /* relationship storage */
  ooaofooa_SM_ACT * SM_ACT_R688_specifies_processing_for;
  ooaofooa_ACT_ACT * ACT_ACT_R698;
};
void ooaofooa_ACT_TAB_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_TAB_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_TAB_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_TAB_R688_Link( ooaofooa_SM_ACT *, ooaofooa_ACT_TAB * );
void ooaofooa_ACT_TAB_R688_Unlink( ooaofooa_SM_ACT *, ooaofooa_ACT_TAB * );
void ooaofooa_ACT_TAB_R698_Link( ooaofooa_ACT_ACT *, ooaofooa_ACT_TAB * );
void ooaofooa_ACT_TAB_R698_Unlink( ooaofooa_ACT_ACT *, ooaofooa_ACT_TAB * );


#define ooaofooa_ACT_TAB_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_TAB_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_TAB_CLASS_H */


