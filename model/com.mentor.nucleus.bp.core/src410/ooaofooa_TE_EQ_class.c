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
  Escher_strcpy( self->ignored, avlstring[ 1 ] );
  Escher_strcpy( self->cant_happen, avlstring[ 2 ] );
  Escher_strcpy( self->system_events_union, avlstring[ 3 ] );
  Escher_strcpy( self->system_event_pool, avlstring[ 4 ] );
  Escher_strcpy( self->constant_type, avlstring[ 5 ] );
  Escher_strcpy( self->base_event_type, avlstring[ 6 ] );
  Escher_strcpy( self->base_variable, avlstring[ 7 ] );
  Escher_strcpy( self->max_events, avlstring[ 8 ] );
  Escher_strcpy( self->max_self_events, avlstring[ 9 ] );
  Escher_strcpy( self->max_nonself_events, avlstring[ 10 ] );
  Escher_strcpy( self->new, avlstring[ 11 ] );
  Escher_strcpy( self->allocate, avlstring[ 12 ] );
  Escher_strcpy( self->delete, avlstring[ 13 ] );
  Escher_strcpy( self->modify, avlstring[ 14 ] );
  Escher_strcpy( self->self, avlstring[ 15 ] );
  Escher_strcpy( self->non_self, avlstring[ 16 ] );
  Escher_strcpy( self->search_and_destroy, avlstring[ 17 ] );
  Escher_strcpy( self->run_flag, avlstring[ 18 ] );
  Escher_strcpy( self->event_message_variable, avlstring[ 19 ] );
  Escher_strcpy( self->scope, avlstring[ 20 ] );
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
    self->ignored,
    self->cant_happen,
    self->system_events_union,
    self->system_event_pool,
    self->constant_type,
    self->base_event_type,
    self->base_variable,
    self->max_events,
    self->max_self_events,
    self->max_nonself_events,
    self->new,
    self->allocate,
    self->delete,
    self->modify,
    self->self,
    self->non_self,
    self->search_and_destroy,
    self->run_flag,
    self->event_message_variable,
    self->scope );
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


