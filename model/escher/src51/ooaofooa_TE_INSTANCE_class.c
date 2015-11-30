/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_INSTANCE_class.c
 *
 * Class:       instance  (TE_INSTANCE)
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
ooaofooa_TE_INSTANCE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_INSTANCE * self = (ooaofooa_TE_INSTANCE *) instance;
  /* Initialize application analysis class attributes.  */
  self->create = Escher_strcpy( self->create, avlstring[ 1 ] );
  self->create_persistent = Escher_strcpy( self->create_persistent, avlstring[ 2 ] );
  self->delete = Escher_strcpy( self->delete, avlstring[ 3 ] );
  self->delete_persistent = Escher_strcpy( self->delete_persistent, avlstring[ 4 ] );
  self->self = Escher_strcpy( self->self, avlstring[ 5 ] );
  self->global_self = Escher_strcpy( self->global_self, avlstring[ 6 ] );
  self->base = Escher_strcpy( self->base, avlstring[ 7 ] );
  self->handle = Escher_strcpy( self->handle, avlstring[ 8 ] );
  self->factory_init = Escher_strcpy( self->factory_init, avlstring[ 9 ] );
  self->base_class = Escher_strcpy( self->base_class, avlstring[ 10 ] );
  self->max_extent = Escher_strcpy( self->max_extent, avlstring[ 11 ] );
  self->max_association_extent = Escher_strcpy( self->max_association_extent, avlstring[ 12 ] );
  self->max_transient_extent = Escher_strcpy( self->max_transient_extent, avlstring[ 13 ] );
  self->current_state = Escher_strcpy( self->current_state, avlstring[ 14 ] );
  self->scope = Escher_strcpy( self->scope, avlstring[ 15 ] );
  self->get_dci = Escher_strcpy( self->get_dci, avlstring[ 16 ] );
  self->get_event_dispatcher = Escher_strcpy( self->get_event_dispatcher, avlstring[ 17 ] );
  self->get_thread_assignment = Escher_strcpy( self->get_thread_assignment, avlstring[ 18 ] );
  self->module = Escher_strcpy( self->module, avlstring[ 19 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_INSTANCE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_INSTANCE * self = (ooaofooa_TE_INSTANCE *) instance;
  printf( "INSERT INTO TE_INSTANCE VALUES ( '%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s' );\n",
    ( 0 != self->create ) ? self->create : "",
    ( 0 != self->create_persistent ) ? self->create_persistent : "",
    ( 0 != self->delete ) ? self->delete : "",
    ( 0 != self->delete_persistent ) ? self->delete_persistent : "",
    ( 0 != self->self ) ? self->self : "",
    ( 0 != self->global_self ) ? self->global_self : "",
    ( 0 != self->base ) ? self->base : "",
    ( 0 != self->handle ) ? self->handle : "",
    ( 0 != self->factory_init ) ? self->factory_init : "",
    ( 0 != self->base_class ) ? self->base_class : "",
    ( 0 != self->max_extent ) ? self->max_extent : "",
    ( 0 != self->max_association_extent ) ? self->max_association_extent : "",
    ( 0 != self->max_transient_extent ) ? self->max_transient_extent : "",
    ( 0 != self->current_state ) ? self->current_state : "",
    ( 0 != self->scope ) ? self->scope : "",
    ( 0 != self->get_dci ) ? self->get_dci : "",
    ( 0 != self->get_event_dispatcher ) ? self->get_event_dispatcher : "",
    ( 0 != self->get_thread_assignment ) ? self->get_thread_assignment : "",
    ( 0 != self->module ) ? self->module : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_INSTANCE_container[ ooaofooa_TE_INSTANCE_MAX_EXTENT_SIZE ];
static ooaofooa_TE_INSTANCE ooaofooa_TE_INSTANCE_instances[ ooaofooa_TE_INSTANCE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_INSTANCE_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_INSTANCE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_INSTANCE_instances,
  sizeof( ooaofooa_TE_INSTANCE ), 0, ooaofooa_TE_INSTANCE_MAX_EXTENT_SIZE
  };


