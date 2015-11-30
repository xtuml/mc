/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_OPB_class.h
 *
 * Class:       Operation Body  (ACT_OPB)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_OPB_CLASS_H
#define OOAOFOOA_ACT_OPB_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Operation Body  (ACT_OPB)
 */
struct ooaofooa_ACT_OPB {

  /* application analysis class attributes */
  Escher_UniqueID_t Action_ID;  
  Escher_UniqueID_t Tfr_ID;  

  /* relationship storage */
  ooaofooa_O_TFR * O_TFR_R696_specifies_processing_for;
  ooaofooa_ACT_ACT * ACT_ACT_R698;
};
void ooaofooa_ACT_OPB_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_OPB_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_OPB_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_OPB_R696_Link( ooaofooa_O_TFR *, ooaofooa_ACT_OPB * );
void ooaofooa_ACT_OPB_R696_Unlink( ooaofooa_O_TFR *, ooaofooa_ACT_OPB * );
void ooaofooa_ACT_OPB_R698_Link( ooaofooa_ACT_ACT *, ooaofooa_ACT_OPB * );
void ooaofooa_ACT_OPB_R698_Unlink( ooaofooa_ACT_ACT *, ooaofooa_ACT_OPB * );


#define ooaofooa_ACT_OPB_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_OPB_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_OPB_CLASS_H */


