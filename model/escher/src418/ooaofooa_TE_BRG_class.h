/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_BRG_class.h
 *
 * Class:       Extended Bridge  (TE_BRG)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_BRG_CLASS_H
#define OOAOFOOA_TE_BRG_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Bridge  (TE_BRG)
 */
struct ooaofooa_TE_BRG {

  /* application analysis class attributes */
  c_t * EEname;  
  c_t * EEkeyletters;  
  c_t * Name;  
  c_t * GeneratedName;  
  Escher_UniqueID_t AbaID;  
  Escher_UniqueID_t Brg_ID;  
  Escher_UniqueID_t EE_ID;  

  /* relationship storage */
  ooaofooa_TE_ABA * TE_ABA_R2010;
  ooaofooa_S_BRG * S_BRG_R2025;
  ooaofooa_TE_EE * TE_EE_R2089;
};
void ooaofooa_TE_BRG_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_BRG_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_BRG_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_BRG_R2010_Link( ooaofooa_TE_ABA *, ooaofooa_TE_BRG * );
void ooaofooa_TE_BRG_R2010_Unlink( ooaofooa_TE_ABA *, ooaofooa_TE_BRG * );
void ooaofooa_TE_BRG_R2025_Link( ooaofooa_S_BRG *, ooaofooa_TE_BRG * );
void ooaofooa_TE_BRG_R2025_Unlink( ooaofooa_S_BRG *, ooaofooa_TE_BRG * );
void ooaofooa_TE_BRG_R2089_Link( ooaofooa_TE_EE *, ooaofooa_TE_BRG * );
void ooaofooa_TE_BRG_R2089_Unlink( ooaofooa_TE_EE *, ooaofooa_TE_BRG * );


#define ooaofooa_TE_BRG_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_BRG_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_BRG_CLASS_H */


