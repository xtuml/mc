/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_RSB_class.h
 *
 * Class:       Required Signal Body  (ACT_RSB)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_RSB_CLASS_H
#define OOAOFOOA_ACT_RSB_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Required Signal Body  (ACT_RSB)
 */
struct ooaofooa_ACT_RSB {

  /* application analysis class attributes */
  Escher_UniqueID_t Action_ID;  
  Escher_UniqueID_t Id;  

  /* relationship storage */
  ooaofooa_SPR_RS * SPR_RS_R684_specifies_processing_for;
  ooaofooa_ACT_ACT * ACT_ACT_R698;
};
void ooaofooa_ACT_RSB_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_RSB_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_RSB_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_RSB_R684_Link( ooaofooa_SPR_RS *, ooaofooa_ACT_RSB * );
void ooaofooa_ACT_RSB_R684_Unlink( ooaofooa_SPR_RS *, ooaofooa_ACT_RSB * );
void ooaofooa_ACT_RSB_R698_Link( ooaofooa_ACT_ACT *, ooaofooa_ACT_RSB * );
void ooaofooa_ACT_RSB_R698_Unlink( ooaofooa_ACT_ACT *, ooaofooa_ACT_RSB * );


#define ooaofooa_ACT_RSB_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_RSB_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_RSB_CLASS_H */


