/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_THREAD_class.c
 *
 * Class:       thread  (TE_THREAD)
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
ooaofooa_TE_THREAD_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_THREAD * self = (ooaofooa_TE_THREAD *) instance;
  /* Initialize application analysis class attributes.  */
  self->file = Escher_strcpy( self->file, avlstring[ 1 ] );
  self->create = Escher_strcpy( self->create, avlstring[ 2 ] );
  self->mutex_lock = Escher_strcpy( self->mutex_lock, avlstring[ 3 ] );
  self->mutex_unlock = Escher_strcpy( self->mutex_unlock, avlstring[ 4 ] );
  self->nonbusy_wait = Escher_strcpy( self->nonbusy_wait, avlstring[ 5 ] );
  self->nonbusy_wake = Escher_strcpy( self->nonbusy_wake, avlstring[ 6 ] );
  self->shutdown = Escher_strcpy( self->shutdown, avlstring[ 7 ] );
  self->enabled = ( '0' != *avlstring[ 8 ] );
  self->flavor = Escher_strcpy( self->flavor, avlstring[ 9 ] );
  self->serialize = ( '0' != *avlstring[ 10 ] );
  self->number_of_threads = Escher_atoi( avlstring[ 11 ] );
  self->extra_initialization = Escher_strcpy( self->extra_initialization, avlstring[ 12 ] );
  self->AUTOSAR_enabled = Escher_strcpy( self->AUTOSAR_enabled, avlstring[ 13 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_THREAD_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_THREAD * self = (ooaofooa_TE_THREAD *) instance;
  printf( "INSERT INTO TE_THREAD VALUES ( '%s','%s','%s','%s','%s','%s','%s',%d,'%s',%d,%d,'%s','%s' );\n",
    ( 0 != self->file ) ? self->file : "",
    ( 0 != self->create ) ? self->create : "",
    ( 0 != self->mutex_lock ) ? self->mutex_lock : "",
    ( 0 != self->mutex_unlock ) ? self->mutex_unlock : "",
    ( 0 != self->nonbusy_wait ) ? self->nonbusy_wait : "",
    ( 0 != self->nonbusy_wake ) ? self->nonbusy_wake : "",
    ( 0 != self->shutdown ) ? self->shutdown : "",
    self->enabled,
    ( 0 != self->flavor ) ? self->flavor : "",
    self->serialize,
    self->number_of_threads,
    ( 0 != self->extra_initialization ) ? self->extra_initialization : "",
    ( 0 != self->AUTOSAR_enabled ) ? self->AUTOSAR_enabled : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_THREAD_container[ ooaofooa_TE_THREAD_MAX_EXTENT_SIZE ];
static ooaofooa_TE_THREAD ooaofooa_TE_THREAD_instances[ ooaofooa_TE_THREAD_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_THREAD_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_THREAD_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_THREAD_instances,
  sizeof( ooaofooa_TE_THREAD ), 0, ooaofooa_TE_THREAD_MAX_EXTENT_SIZE
  };


