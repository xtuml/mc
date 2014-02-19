/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_DLIST_class.h
 *
 * Class:       dlist  (TE_DLIST)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_DLIST_CLASS_H
#define OOAOFOOA_TE_DLIST_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   dlist  (TE_DLIST)
 */
struct ooaofooa_TE_DLIST {

  /* application analysis class attributes */
  c_t * flavor;  
  c_t * remove_node;  

  /* relationship storage */
  ooaofooa_TE_CONTAINER * TE_CONTAINER_R2045;
};
void ooaofooa_TE_DLIST_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_DLIST_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_DLIST_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_DLIST_R2045_Link( ooaofooa_TE_CONTAINER *, ooaofooa_TE_DLIST * );
void ooaofooa_TE_DLIST_R2045_Unlink( ooaofooa_TE_CONTAINER *, ooaofooa_TE_DLIST * );


#define ooaofooa_TE_DLIST_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_DLIST_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_DLIST_CLASS_H */


