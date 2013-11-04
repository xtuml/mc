/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_CALLOUT_class.c
 *
 * Class:       user callout  (TE_CALLOUT)
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
ooaofooa_TE_CALLOUT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_CALLOUT * self = (ooaofooa_TE_CALLOUT *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->file, avlstring[ 1 ] );
  Escher_strcpy( self->initialization, avlstring[ 2 ] );
  Escher_strcpy( self->pre_xtUML_initialization, avlstring[ 3 ] );
  Escher_strcpy( self->post_xtUML_initialization, avlstring[ 4 ] );
  Escher_strcpy( self->background_processing, avlstring[ 5 ] );
  Escher_strcpy( self->event_cant_happen, avlstring[ 6 ] );
  Escher_strcpy( self->pre_shutdown, avlstring[ 7 ] );
  Escher_strcpy( self->post_shutdown, avlstring[ 8 ] );
  Escher_strcpy( self->event_no_instance, avlstring[ 9 ] );
  Escher_strcpy( self->event_free_list_empty, avlstring[ 10 ] );
  Escher_strcpy( self->empty_handle_detected, avlstring[ 11 ] );
  Escher_strcpy( self->object_pool_empty, avlstring[ 12 ] );
  Escher_strcpy( self->node_list_empty, avlstring[ 13 ] );
  Escher_strcpy( self->interleaved_bridge_overflow, avlstring[ 14 ] );
  Escher_strcpy( self->self_event_queue_empty, avlstring[ 15 ] );
  Escher_strcpy( self->non_self_event_queue_empty, avlstring[ 16 ] );
  Escher_strcpy( self->persistence_error, avlstring[ 17 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_CALLOUT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_CALLOUT * self = (ooaofooa_TE_CALLOUT *) instance;
  printf( "INSERT INTO TE_CALLOUT VALUES ( '%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s' );\n",
    self->file,
    self->initialization,
    self->pre_xtUML_initialization,
    self->post_xtUML_initialization,
    self->background_processing,
    self->event_cant_happen,
    self->pre_shutdown,
    self->post_shutdown,
    self->event_no_instance,
    self->event_free_list_empty,
    self->empty_handle_detected,
    self->object_pool_empty,
    self->node_list_empty,
    self->interleaved_bridge_overflow,
    self->self_event_queue_empty,
    self->non_self_event_queue_empty,
    self->persistence_error );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_CALLOUT_container[ ooaofooa_TE_CALLOUT_MAX_EXTENT_SIZE ];
static ooaofooa_TE_CALLOUT ooaofooa_TE_CALLOUT_instances[ ooaofooa_TE_CALLOUT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_CALLOUT_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_CALLOUT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_CALLOUT_instances,
  sizeof( ooaofooa_TE_CALLOUT ), 0, ooaofooa_TE_CALLOUT_MAX_EXTENT_SIZE
  };


