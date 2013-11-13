/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_THREAD_class.c
 *
 * Class:       Tasking Mark  (TM_THREAD)
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
ooaofooa_TM_THREAD_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TM_THREAD * self = (ooaofooa_TM_THREAD *) instance;
  /* Initialize application analysis class attributes.  */
  self->enabled = ( '0' != *avlstring[ 1 ] );
  Escher_strcpy( self->flavor, avlstring[ 2 ] );
  self->serialize = ( '0' != *avlstring[ 3 ] );
  self->number_of_threads = Escher_atoi( avlstring[ 4 ] );
  Escher_strcpy( self->extra_initialization, avlstring[ 5 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TM_THREAD_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TM_THREAD * self = (ooaofooa_TM_THREAD *) instance;
  printf( "INSERT INTO TM_THREAD VALUES ( %d,'%s',%d,%d,'%s' );\n",
    self->enabled,
    self->flavor,
    self->serialize,
    self->number_of_threads,
    self->extra_initialization );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TM_THREAD_container[ ooaofooa_TM_THREAD_MAX_EXTENT_SIZE ];
static ooaofooa_TM_THREAD ooaofooa_TM_THREAD_instances[ ooaofooa_TM_THREAD_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TM_THREAD_extent = {
  {0,0}, {0,0}, &ooaofooa_TM_THREAD_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TM_THREAD_instances,
  sizeof( ooaofooa_TM_THREAD ), 0, ooaofooa_TM_THREAD_MAX_EXTENT_SIZE
  };


