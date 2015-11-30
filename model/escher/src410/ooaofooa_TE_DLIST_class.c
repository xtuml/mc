/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_DLIST_class.c
 *
 * Class:       dlist  (TE_DLIST)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "sys_sys_types.h"
#include "LOG_bridge.h"
#include "POP_bridge.h"
#include "T_bridge.h"
#include "ooaofooa_classes.h"

/*
 * Instance Loader (from string data).
 */
Escher_iHandle_t
ooaofooa_TE_DLIST_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_DLIST * self = (ooaofooa_TE_DLIST *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->flavor, avlstring[ 1 ] );
  Escher_strcpy( self->remove_node, avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_DLIST_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_DLIST * ooaofooa_TE_DLIST_instance = (ooaofooa_TE_DLIST *) instance;
  ooaofooa_TE_CONTAINER * ooaofooa_TE_CONTAINERrelated_instance1 = (ooaofooa_TE_CONTAINER *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_DLIST_instance->flavor ];
  if ( ooaofooa_TE_CONTAINERrelated_instance1 ) {
    ooaofooa_TE_DLIST_R2045_Link( ooaofooa_TE_CONTAINERrelated_instance1, ooaofooa_TE_DLIST_instance );
  }
}


/*
 * RELATE TE_CONTAINER TO TE_DLIST ACROSS R2045
 */
void
ooaofooa_TE_DLIST_R2045_Link( ooaofooa_TE_CONTAINER * supertype, ooaofooa_TE_DLIST * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  Escher_strcpy( subtype->flavor, supertype->flavor );
  /* Optimized linkage for TE_DLIST->TE_CONTAINER[R2045] */
  subtype->TE_CONTAINER_R2045 = supertype;
  /* Optimized linkage for TE_CONTAINER->TE_DLIST[R2045] */
  supertype->R2045_subtype = subtype;
  supertype->R2045_object_id = ooaofooa_TE_DLIST_CLASS_NUMBER;
}


/*
 * UNRELATE TE_CONTAINER FROM TE_DLIST ACROSS R2045
 */
void
ooaofooa_TE_DLIST_R2045_Unlink( ooaofooa_TE_CONTAINER * supertype, ooaofooa_TE_DLIST * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->TE_CONTAINER_R2045 = 0;
  supertype->R2045_subtype = 0;
  supertype->R2045_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_DLIST_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_DLIST * self = (ooaofooa_TE_DLIST *) instance;
  printf( "INSERT INTO TE_DLIST VALUES ( '%s','%s' );\n",
    self->flavor,
    self->remove_node );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_DLIST_container[ ooaofooa_TE_DLIST_MAX_EXTENT_SIZE ];
static ooaofooa_TE_DLIST ooaofooa_TE_DLIST_instances[ ooaofooa_TE_DLIST_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_DLIST_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_DLIST_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_DLIST_instances,
  sizeof( ooaofooa_TE_DLIST ), 0, ooaofooa_TE_DLIST_MAX_EXTENT_SIZE
  };


