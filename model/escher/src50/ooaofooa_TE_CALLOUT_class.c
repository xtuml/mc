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
  self->file = Escher_strcpy( self->file, avlstring[ 1 ] );
  self->initialization = Escher_strcpy( self->initialization, avlstring[ 2 ] );
  self->pre_xtUML_initialization = Escher_strcpy( self->pre_xtUML_initialization, avlstring[ 3 ] );
  self->post_xtUML_initialization = Escher_strcpy( self->post_xtUML_initialization, avlstring[ 4 ] );
  self->background_processing = Escher_strcpy( self->background_processing, avlstring[ 5 ] );
  self->event_cant_happen = Escher_strcpy( self->event_cant_happen, avlstring[ 6 ] );
  self->pre_shutdown = Escher_strcpy( self->pre_shutdown, avlstring[ 7 ] );
  self->post_shutdown = Escher_strcpy( self->post_shutdown, avlstring[ 8 ] );
  self->event_no_instance = Escher_strcpy( self->event_no_instance, avlstring[ 9 ] );
  self->event_free_list_empty = Escher_strcpy( self->event_free_list_empty, avlstring[ 10 ] );
  self->empty_handle_detected = Escher_strcpy( self->empty_handle_detected, avlstring[ 11 ] );
  self->object_pool_empty = Escher_strcpy( self->object_pool_empty, avlstring[ 12 ] );
  self->node_list_empty = Escher_strcpy( self->node_list_empty, avlstring[ 13 ] );
  self->interleaved_bridge_overflow = Escher_strcpy( self->interleaved_bridge_overflow, avlstring[ 14 ] );
  self->self_event_queue_empty = Escher_strcpy( self->self_event_queue_empty, avlstring[ 15 ] );
  self->non_self_event_queue_empty = Escher_strcpy( self->non_self_event_queue_empty, avlstring[ 16 ] );
  self->persistence_error = Escher_strcpy( self->persistence_error, avlstring[ 17 ] );
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
    ( 0 != self->file ) ? self->file : "",
    ( 0 != self->initialization ) ? self->initialization : "",
    ( 0 != self->pre_xtUML_initialization ) ? self->pre_xtUML_initialization : "",
    ( 0 != self->post_xtUML_initialization ) ? self->post_xtUML_initialization : "",
    ( 0 != self->background_processing ) ? self->background_processing : "",
    ( 0 != self->event_cant_happen ) ? self->event_cant_happen : "",
    ( 0 != self->pre_shutdown ) ? self->pre_shutdown : "",
    ( 0 != self->post_shutdown ) ? self->post_shutdown : "",
    ( 0 != self->event_no_instance ) ? self->event_no_instance : "",
    ( 0 != self->event_free_list_empty ) ? self->event_free_list_empty : "",
    ( 0 != self->empty_handle_detected ) ? self->empty_handle_detected : "",
    ( 0 != self->object_pool_empty ) ? self->object_pool_empty : "",
    ( 0 != self->node_list_empty ) ? self->node_list_empty : "",
    ( 0 != self->interleaved_bridge_overflow ) ? self->interleaved_bridge_overflow : "",
    ( 0 != self->self_event_queue_empty ) ? self->self_event_queue_empty : "",
    ( 0 != self->non_self_event_queue_empty ) ? self->non_self_event_queue_empty : "",
    ( 0 != self->persistence_error ) ? self->persistence_error : "" );
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


