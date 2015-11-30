/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_EQ_class.c
 *
 * Class:       event queue  (TE_EQ)
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
ooaofooa_TE_EQ_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_EQ * self = (ooaofooa_TE_EQ *) instance;
  /* Initialize application analysis class attributes.  */
  self->ignored = Escher_strcpy( self->ignored, avlstring[ 1 ] );
  self->cant_happen = Escher_strcpy( self->cant_happen, avlstring[ 2 ] );
  self->system_events_union = Escher_strcpy( self->system_events_union, avlstring[ 3 ] );
  self->system_event_pool = Escher_strcpy( self->system_event_pool, avlstring[ 4 ] );
  self->constant_type = Escher_strcpy( self->constant_type, avlstring[ 5 ] );
  self->base_event_type = Escher_strcpy( self->base_event_type, avlstring[ 6 ] );
  self->base_variable = Escher_strcpy( self->base_variable, avlstring[ 7 ] );
  self->max_events = Escher_strcpy( self->max_events, avlstring[ 8 ] );
  self->max_self_events = Escher_strcpy( self->max_self_events, avlstring[ 9 ] );
  self->max_nonself_events = Escher_strcpy( self->max_nonself_events, avlstring[ 10 ] );
  self->new = Escher_strcpy( self->new, avlstring[ 11 ] );
  self->allocate = Escher_strcpy( self->allocate, avlstring[ 12 ] );
  self->delete = Escher_strcpy( self->delete, avlstring[ 13 ] );
  self->modify = Escher_strcpy( self->modify, avlstring[ 14 ] );
  self->self = Escher_strcpy( self->self, avlstring[ 15 ] );
  self->non_self = Escher_strcpy( self->non_self, avlstring[ 16 ] );
  self->search_and_destroy = Escher_strcpy( self->search_and_destroy, avlstring[ 17 ] );
  self->run_flag = Escher_strcpy( self->run_flag, avlstring[ 18 ] );
  self->event_message_variable = Escher_strcpy( self->event_message_variable, avlstring[ 19 ] );
  self->scope = Escher_strcpy( self->scope, avlstring[ 20 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_EQ_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_EQ * self = (ooaofooa_TE_EQ *) instance;
  printf( "INSERT INTO TE_EQ VALUES ( '%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s' );\n",
    ( 0 != self->ignored ) ? self->ignored : "",
    ( 0 != self->cant_happen ) ? self->cant_happen : "",
    ( 0 != self->system_events_union ) ? self->system_events_union : "",
    ( 0 != self->system_event_pool ) ? self->system_event_pool : "",
    ( 0 != self->constant_type ) ? self->constant_type : "",
    ( 0 != self->base_event_type ) ? self->base_event_type : "",
    ( 0 != self->base_variable ) ? self->base_variable : "",
    ( 0 != self->max_events ) ? self->max_events : "",
    ( 0 != self->max_self_events ) ? self->max_self_events : "",
    ( 0 != self->max_nonself_events ) ? self->max_nonself_events : "",
    ( 0 != self->new ) ? self->new : "",
    ( 0 != self->allocate ) ? self->allocate : "",
    ( 0 != self->delete ) ? self->delete : "",
    ( 0 != self->modify ) ? self->modify : "",
    ( 0 != self->self ) ? self->self : "",
    ( 0 != self->non_self ) ? self->non_self : "",
    ( 0 != self->search_and_destroy ) ? self->search_and_destroy : "",
    ( 0 != self->run_flag ) ? self->run_flag : "",
    ( 0 != self->event_message_variable ) ? self->event_message_variable : "",
    ( 0 != self->scope ) ? self->scope : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_EQ_container[ ooaofooa_TE_EQ_MAX_EXTENT_SIZE ];
static ooaofooa_TE_EQ ooaofooa_TE_EQ_instances[ ooaofooa_TE_EQ_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_EQ_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_EQ_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_EQ_instances,
  sizeof( ooaofooa_TE_EQ ), 0, ooaofooa_TE_EQ_MAX_EXTENT_SIZE
  };


