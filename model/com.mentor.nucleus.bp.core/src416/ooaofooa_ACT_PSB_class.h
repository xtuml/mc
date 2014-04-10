/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_PSB_class.h
 *
 * Class:       Provided Signal Body  (ACT_PSB)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_PSB_CLASS_H
#define OOAOFOOA_ACT_PSB_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Provided Signal Body  (ACT_PSB)
 */
struct ooaofooa_ACT_PSB {

  /* application analysis class attributes */
  Escher_UniqueID_t Action_ID;  
  Escher_UniqueID_t Id;  

  /* relationship storage */
  ooaofooa_SPR_PS * SPR_PS_R686_specifies_processing_for;
  ooaofooa_ACT_ACT * ACT_ACT_R698;
};
void ooaofooa_ACT_PSB_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_PSB_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_PSB_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_PSB_R686_Link( ooaofooa_SPR_PS *, ooaofooa_ACT_PSB * );
void ooaofooa_ACT_PSB_R686_Unlink( ooaofooa_SPR_PS *, ooaofooa_ACT_PSB * );
void ooaofooa_ACT_PSB_R698_Link( ooaofooa_ACT_ACT *, ooaofooa_ACT_PSB * );
void ooaofooa_ACT_PSB_R698_Unlink( ooaofooa_ACT_ACT *, ooaofooa_ACT_PSB * );


#define ooaofooa_ACT_PSB_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_PSB_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_PSB_CLASS_H */


