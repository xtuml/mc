/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_REL_class.h
 *
 * Class:       Extended Relation  (TE_REL)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_REL_CLASS_H
#define OOAOFOOA_TE_REL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Relation  (TE_REL)
 */
struct ooaofooa_TE_REL {

  /* application analysis class attributes */
  i_t Numb;  
  bool LinkNeeded;  
  bool UnlinkNeeded;  
  bool Navigated;  
  i_t Order;  
  bool storage_needed;  
  Escher_UniqueID_t Rel_ID;  

  /* relationship storage */
  ooaofooa_R_REL * R_REL_R2034;
};
void ooaofooa_TE_REL_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_REL_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_REL_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_REL_R2034_Link( ooaofooa_R_REL *, ooaofooa_TE_REL * );
void ooaofooa_TE_REL_R2034_Unlink( ooaofooa_R_REL *, ooaofooa_TE_REL * );


#define ooaofooa_TE_REL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_REL_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_REL_CLASS_H */


