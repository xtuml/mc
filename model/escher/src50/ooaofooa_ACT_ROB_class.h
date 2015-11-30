/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_ROB_class.h
 *
 * Class:       Required Operation Body  (ACT_ROB)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_ROB_CLASS_H
#define OOAOFOOA_ACT_ROB_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Required Operation Body  (ACT_ROB)
 */
struct ooaofooa_ACT_ROB {

  /* application analysis class attributes */
  Escher_UniqueID_t Action_ID;  
  Escher_UniqueID_t Id;  

  /* relationship storage */
  ooaofooa_SPR_RO * SPR_RO_R685_specifies_processing_for;
  ooaofooa_ACT_ACT * ACT_ACT_R698;
};
void ooaofooa_ACT_ROB_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_ROB_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_ROB_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_ROB_R685_Link( ooaofooa_SPR_RO *, ooaofooa_ACT_ROB * );
void ooaofooa_ACT_ROB_R685_Unlink( ooaofooa_SPR_RO *, ooaofooa_ACT_ROB * );
void ooaofooa_ACT_ROB_R698_Link( ooaofooa_ACT_ACT *, ooaofooa_ACT_ROB * );
void ooaofooa_ACT_ROB_R698_Unlink( ooaofooa_ACT_ACT *, ooaofooa_ACT_ROB * );


#define ooaofooa_ACT_ROB_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_ROB_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_ROB_CLASS_H */


