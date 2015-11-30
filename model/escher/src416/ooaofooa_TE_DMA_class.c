/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_DMA_class.c
 *
 * Class:       dynamic memory allocation  (TE_DMA)
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
ooaofooa_TE_DMA_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_DMA * self = (ooaofooa_TE_DMA *) instance;
  /* Initialize application analysis class attributes.  */
  self->file = Escher_strcpy( self->file, avlstring[ 1 ] );
  self->allocate = Escher_strcpy( self->allocate, avlstring[ 2 ] );
  self->release = Escher_strcpy( self->release, avlstring[ 3 ] );
  self->debugging_heap = ( '0' != *avlstring[ 4 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_DMA_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_DMA * self = (ooaofooa_TE_DMA *) instance;
  printf( "INSERT INTO TE_DMA VALUES ( '%s','%s','%s',%d );\n",
    ( 0 != self->file ) ? self->file : "",
    ( 0 != self->allocate ) ? self->allocate : "",
    ( 0 != self->release ) ? self->release : "",
    self->debugging_heap );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_DMA_container[ ooaofooa_TE_DMA_MAX_EXTENT_SIZE ];
static ooaofooa_TE_DMA ooaofooa_TE_DMA_instances[ ooaofooa_TE_DMA_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_DMA_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_DMA_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_DMA_instances,
  sizeof( ooaofooa_TE_DMA ), 0, ooaofooa_TE_DMA_MAX_EXTENT_SIZE
  };


