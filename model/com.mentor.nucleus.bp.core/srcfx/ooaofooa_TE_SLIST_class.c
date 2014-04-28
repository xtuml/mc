/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_SLIST_class.c
 *
 * Class:       slist  (TE_SLIST)
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
ooaofooa_TE_SLIST_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_SLIST * self = (ooaofooa_TE_SLIST *) instance;
  /* Initialize application analysis class attributes.  */
  self->flavor = Escher_strcpy( self->flavor, avlstring[ 1 ] );
  self->remove_node = Escher_strcpy( self->remove_node, avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_SLIST_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_SLIST * ooaofooa_TE_SLIST_instance = (ooaofooa_TE_SLIST *) instance;
  ooaofooa_TE_CONTAINER * ooaofooa_TE_CONTAINERrelated_instance1 = (ooaofooa_TE_CONTAINER *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_SLIST_instance->flavor ];
  if ( ooaofooa_TE_CONTAINERrelated_instance1 ) {
    ooaofooa_TE_SLIST_R2045_Link( ooaofooa_TE_CONTAINERrelated_instance1, ooaofooa_TE_SLIST_instance );
  }
}


/*
 * RELATE TE_CONTAINER TO TE_SLIST ACROSS R2045
 */
void
ooaofooa_TE_SLIST_R2045_Link( ooaofooa_TE_CONTAINER * supertype, ooaofooa_TE_SLIST * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->flavor = Escher_strcpy( subtype->flavor, supertype->flavor );
  /* Optimized linkage for TE_SLIST->TE_CONTAINER[R2045] */
  subtype->TE_CONTAINER_R2045 = supertype;
  /* Optimized linkage for TE_CONTAINER->TE_SLIST[R2045] */
  supertype->R2045_subtype = subtype;
  supertype->R2045_object_id = ooaofooa_TE_SLIST_CLASS_NUMBER;
}


/*
 * UNRELATE TE_CONTAINER FROM TE_SLIST ACROSS R2045
 */
void
ooaofooa_TE_SLIST_R2045_Unlink( ooaofooa_TE_CONTAINER * supertype, ooaofooa_TE_SLIST * subtype )
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
ooaofooa_TE_SLIST_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_SLIST * self = (ooaofooa_TE_SLIST *) instance;
  printf( "INSERT INTO TE_SLIST VALUES ( '%s','%s' );\n",
    ( 0 != self->flavor ) ? self->flavor : "",
    ( 0 != self->remove_node ) ? self->remove_node : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_SLIST_container[ ooaofooa_TE_SLIST_MAX_EXTENT_SIZE ];
static ooaofooa_TE_SLIST ooaofooa_TE_SLIST_instances[ ooaofooa_TE_SLIST_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_SLIST_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_SLIST_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_SLIST_instances,
  sizeof( ooaofooa_TE_SLIST ), 0, ooaofooa_TE_SLIST_MAX_EXTENT_SIZE
  };


