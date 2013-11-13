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
  Escher_strcpy( self->create, avlstring[ 1 ] );
  Escher_strcpy( self->create_persistent, avlstring[ 2 ] );
  Escher_strcpy( self->delete, avlstring[ 3 ] );
  Escher_strcpy( self->delete_persistent, avlstring[ 4 ] );
  Escher_strcpy( self->self, avlstring[ 5 ] );
  Escher_strcpy( self->global_self, avlstring[ 6 ] );
  Escher_strcpy( self->base, avlstring[ 7 ] );
  Escher_strcpy( self->handle, avlstring[ 8 ] );
  Escher_strcpy( self->factory_init, avlstring[ 9 ] );
  Escher_strcpy( self->base_class, avlstring[ 10 ] );
  Escher_strcpy( self->max_extent, avlstring[ 11 ] );
  Escher_strcpy( self->max_association_extent, avlstring[ 12 ] );
  Escher_strcpy( self->max_transient_extent, avlstring[ 13 ] );
  Escher_strcpy( self->current_state, avlstring[ 14 ] );
  Escher_strcpy( self->scope, avlstring[ 15 ] );
  Escher_strcpy( self->get_dci, avlstring[ 16 ] );
  Escher_strcpy( self->get_event_dispatcher, avlstring[ 17 ] );
  Escher_strcpy( self->get_thread_assignment, avlstring[ 18 ] );
  Escher_strcpy( self->module, avlstring[ 19 ] );
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
    self->create,
    self->create_persistent,
    self->delete,
    self->delete_persistent,
    self->self,
    self->global_self,
    self->base,
    self->handle,
    self->factory_init,
    self->base_class,
    self->max_extent,
    self->max_association_extent,
    self->max_transient_extent,
    self->current_state,
    self->scope,
    self->get_dci,
    self->get_event_dispatcher,
    self->get_thread_assignment,
    self->module );
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


