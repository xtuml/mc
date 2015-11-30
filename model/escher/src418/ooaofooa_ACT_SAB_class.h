/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_SAB_class.h
 *
 * Class:       State Action Body  (ACT_SAB)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_SAB_CLASS_H
#define OOAOFOOA_ACT_SAB_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   State Action Body  (ACT_SAB)
 */
struct ooaofooa_ACT_SAB {

  /* application analysis class attributes */
  Escher_UniqueID_t Action_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t Act_ID;  

  /* relationship storage */
  ooaofooa_SM_ACT * SM_ACT_R691_specifies_processing_for;
  ooaofooa_ACT_ACT * ACT_ACT_R698;
};
void ooaofooa_ACT_SAB_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_SAB_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_SAB_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_SAB_R691_Link( ooaofooa_SM_ACT *, ooaofooa_ACT_SAB * );
void ooaofooa_ACT_SAB_R691_Unlink( ooaofooa_SM_ACT *, ooaofooa_ACT_SAB * );
void ooaofooa_ACT_SAB_R698_Link( ooaofooa_ACT_ACT *, ooaofooa_ACT_SAB * );
void ooaofooa_ACT_SAB_R698_Unlink( ooaofooa_ACT_ACT *, ooaofooa_ACT_SAB * );


#define ooaofooa_ACT_SAB_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_SAB_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_SAB_CLASS_H */


