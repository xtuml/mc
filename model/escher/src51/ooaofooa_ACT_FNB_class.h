/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_FNB_class.h
 *
 * Class:       Function Body  (ACT_FNB)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_FNB_CLASS_H
#define OOAOFOOA_ACT_FNB_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Function Body  (ACT_FNB)
 */
struct ooaofooa_ACT_FNB {

  /* application analysis class attributes */
  Escher_UniqueID_t Action_ID;  
  Escher_UniqueID_t Sync_ID;  

  /* relationship storage */
  ooaofooa_S_SYNC * S_SYNC_R695_specifies_processing_for;
  ooaofooa_ACT_ACT * ACT_ACT_R698;
};
void ooaofooa_ACT_FNB_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_FNB_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_FNB_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_FNB_R695_Link( ooaofooa_S_SYNC *, ooaofooa_ACT_FNB * );
void ooaofooa_ACT_FNB_R695_Unlink( ooaofooa_S_SYNC *, ooaofooa_ACT_FNB * );
void ooaofooa_ACT_FNB_R698_Link( ooaofooa_ACT_ACT *, ooaofooa_ACT_FNB * );
void ooaofooa_ACT_FNB_R698_Unlink( ooaofooa_ACT_ACT *, ooaofooa_ACT_FNB * );


#define ooaofooa_ACT_FNB_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_FNB_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_FNB_CLASS_H */


