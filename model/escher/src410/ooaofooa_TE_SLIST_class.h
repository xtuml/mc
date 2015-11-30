/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_SLIST_class.h
 *
 * Class:       slist  (TE_SLIST)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_SLIST_CLASS_H
#define OOAOFOOA_TE_SLIST_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   slist  (TE_SLIST)
 */
struct ooaofooa_TE_SLIST {

  /* application analysis class attributes */
  c_t flavor[ESCHER_SYS_MAX_STRING_LEN];  
  c_t remove_node[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_TE_CONTAINER * TE_CONTAINER_R2045;
};
void ooaofooa_TE_SLIST_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_SLIST_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_SLIST_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_SLIST_R2045_Link( ooaofooa_TE_CONTAINER *, ooaofooa_TE_SLIST * );
void ooaofooa_TE_SLIST_R2045_Unlink( ooaofooa_TE_CONTAINER *, ooaofooa_TE_SLIST * );


#define ooaofooa_TE_SLIST_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_SLIST_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_SLIST_CLASS_H */


