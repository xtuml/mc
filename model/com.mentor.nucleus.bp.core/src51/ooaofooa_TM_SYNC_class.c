/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_SYNC_class.c
 *
 * Class:       Function Mark  (TM_SYNC)
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
ooaofooa_TM_SYNC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TM_SYNC * self = (ooaofooa_TM_SYNC *) instance;
  /* Initialize application analysis class attributes.  */
  self->RegisteredDomain = Escher_strcpy( self->RegisteredDomain, avlstring[ 1 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 2 ] );
  self->IsSafeForInterrupts = ( '0' != *avlstring[ 3 ] );
  self->IsInitFunction = ( '0' != *avlstring[ 4 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TM_SYNC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TM_SYNC * self = (ooaofooa_TM_SYNC *) instance;
  printf( "INSERT INTO TM_SYNC VALUES ( '%s','%s',%d,%d );\n",
    ( 0 != self->RegisteredDomain ) ? self->RegisteredDomain : "",
    ( 0 != self->Name ) ? self->Name : "",
    self->IsSafeForInterrupts,
    self->IsInitFunction );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TM_SYNC_container[ ooaofooa_TM_SYNC_MAX_EXTENT_SIZE ];
static ooaofooa_TM_SYNC ooaofooa_TM_SYNC_instances[ ooaofooa_TM_SYNC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TM_SYNC_extent = {
  {0,0}, {0,0}, &ooaofooa_TM_SYNC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TM_SYNC_instances,
  sizeof( ooaofooa_TM_SYNC ), 0, ooaofooa_TM_SYNC_MAX_EXTENT_SIZE
  };


