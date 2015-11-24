/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_CONTAINER_class.c
 *
 * Class:       container  (TE_CONTAINER)
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
ooaofooa_TE_CONTAINER_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_CONTAINER * self = (ooaofooa_TE_CONTAINER *) instance;
  /* Initialize application analysis class attributes.  */
  self->flavor = Escher_strcpy( self->flavor, avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_CONTAINER *
ooaofooa_TE_CONTAINER_AnyWhere1( c_t * w_flavor )
{
  ooaofooa_TE_CONTAINER * w; 
  Escher_Iterator_s iter_TE_CONTAINER;
  Escher_IteratorReset( &iter_TE_CONTAINER, &pG_ooaofooa_TE_CONTAINER_extent.active );
  while ( (w = (ooaofooa_TE_CONTAINER *) Escher_IteratorNext( &iter_TE_CONTAINER )) != 0 ) {
    if ( w->flavor == w_flavor ) {
      return w;
    }
  }
  return 0;
}


/* Accessors to TE_CONTAINER[R2045] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_CONTAINER_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_CONTAINER * self = (ooaofooa_TE_CONTAINER *) instance;
  printf( "INSERT INTO TE_CONTAINER VALUES ( '%s' );\n",
    ( 0 != self->flavor ) ? self->flavor : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_CONTAINER_container[ ooaofooa_TE_CONTAINER_MAX_EXTENT_SIZE ];
static ooaofooa_TE_CONTAINER ooaofooa_TE_CONTAINER_instances[ ooaofooa_TE_CONTAINER_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_CONTAINER_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_CONTAINER_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_CONTAINER_instances,
  sizeof( ooaofooa_TE_CONTAINER ), 0, ooaofooa_TE_CONTAINER_MAX_EXTENT_SIZE
  };


