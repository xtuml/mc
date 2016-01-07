/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_BRB_class.h
 *
 * Class:       Bridge Body  (ACT_BRB)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_BRB_CLASS_H
#define OOAOFOOA_ACT_BRB_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Bridge Body  (ACT_BRB)
 */
struct ooaofooa_ACT_BRB {

  /* application analysis class attributes */
  Escher_UniqueID_t Action_ID;  
  Escher_UniqueID_t Brg_ID;  

  /* relationship storage */
  ooaofooa_S_BRG * S_BRG_R697_specifies_processing_for;
  ooaofooa_ACT_ACT * ACT_ACT_R698;
};
void ooaofooa_ACT_BRB_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_BRB_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_BRB_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_BRB_R697_Link( ooaofooa_S_BRG *, ooaofooa_ACT_BRB * );
void ooaofooa_ACT_BRB_R697_Unlink( ooaofooa_S_BRG *, ooaofooa_ACT_BRB * );
void ooaofooa_ACT_BRB_R698_Link( ooaofooa_ACT_ACT *, ooaofooa_ACT_BRB * );
void ooaofooa_ACT_BRB_R698_Unlink( ooaofooa_ACT_ACT *, ooaofooa_ACT_BRB * );


#define ooaofooa_ACT_BRB_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_BRB_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_BRB_CLASS_H */


