/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_CONTAINER_class.h
 *
 * Class:       container  (TE_CONTAINER)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_CONTAINER_CLASS_H
#define OOAOFOOA_TE_CONTAINER_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   container  (TE_CONTAINER)
 */
struct ooaofooa_TE_CONTAINER {

  /* application analysis class attributes */
  c_t * flavor;  

  /* relationship storage */
  void * R2045_subtype;
  Escher_ClassNumber_t R2045_object_id;
};
void ooaofooa_TE_CONTAINER_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_CONTAINER_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TE_CONTAINER_batch_relate 0

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_CONTAINER * ooaofooa_TE_CONTAINER_AnyWhere1( c_t * );


/* Accessors to TE_CONTAINER[R2045] subtypes */
#define ooaofooa_TE_SLIST_R2045_From_TE_CONTAINER( TE_CONTAINER ) \
   ( (((TE_CONTAINER)->R2045_object_id) == ooaofooa_TE_SLIST_CLASS_NUMBER) ? \
     ((ooaofooa_TE_SLIST *)((TE_CONTAINER)->R2045_subtype)) : (0) )
/* Note:  TE_CONTAINER->TE_SLIST[R2045] not navigated */
#define ooaofooa_TE_DLIST_R2045_From_TE_CONTAINER( TE_CONTAINER ) \
   ( (((TE_CONTAINER)->R2045_object_id) == ooaofooa_TE_DLIST_CLASS_NUMBER) ? \
     ((ooaofooa_TE_DLIST *)((TE_CONTAINER)->R2045_subtype)) : (0) )
/* Note:  TE_CONTAINER->TE_DLIST[R2045] not navigated */



#define ooaofooa_TE_CONTAINER_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_CONTAINER_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_CONTAINER_CLASS_H */


