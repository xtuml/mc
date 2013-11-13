/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_SYSTAG_class.c
 *
 * Class:       System Tags  (TM_SYSTAG)
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
ooaofooa_TM_SYSTAG_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TM_SYSTAG * self = (ooaofooa_TM_SYSTAG *) instance;
  /* Initialize application analysis class attributes.  */
  self->MaxStringLen = Escher_atoi( avlstring[ 1 ] );
  self->MaxRelExtent = Escher_atoi( avlstring[ 2 ] );
  self->MaxSelectExtent = Escher_atoi( avlstring[ 3 ] );
  self->MaxSelfEvents = Escher_atoi( avlstring[ 4 ] );
  self->MaxNonSelfEvents = Escher_atoi( avlstring[ 5 ] );
  self->MaxTimers = Escher_atoi( avlstring[ 6 ] );
  self->MaxInterleavedBridges = Escher_atoi( avlstring[ 7 ] );
  self->MaxInterleavedBridgeDataSize = Escher_atoi( avlstring[ 8 ] );
  self->CollectionsFlavor = Escher_atoi( avlstring[ 9 ] );
  self->PersistInstanceCacheDepth = Escher_atoi( avlstring[ 10 ] );
  self->PersistLinkCacheDepth = Escher_atoi( avlstring[ 11 ] );
  self->UnitsToDynamicallyAllocate = Escher_atoi( avlstring[ 12 ] );
  self->VFB = ( '0' != *avlstring[ 13 ] );
  self->InstanceLoading = ( '0' != *avlstring[ 14 ] );
  Escher_strcpy( self->SystemCPortsType, avlstring[ 15 ] );
  self->AllPortsPoly = ( '0' != *avlstring[ 16 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TM_SYSTAG_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TM_SYSTAG * self = (ooaofooa_TM_SYSTAG *) instance;
  printf( "INSERT INTO TM_SYSTAG VALUES ( %d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,'%s',%d );\n",
    self->MaxStringLen,
    self->MaxRelExtent,
    self->MaxSelectExtent,
    self->MaxSelfEvents,
    self->MaxNonSelfEvents,
    self->MaxTimers,
    self->MaxInterleavedBridges,
    self->MaxInterleavedBridgeDataSize,
    self->CollectionsFlavor,
    self->PersistInstanceCacheDepth,
    self->PersistLinkCacheDepth,
    self->UnitsToDynamicallyAllocate,
    self->VFB,
    self->InstanceLoading,
    self->SystemCPortsType,
    self->AllPortsPoly );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TM_SYSTAG_container[ ooaofooa_TM_SYSTAG_MAX_EXTENT_SIZE ];
static ooaofooa_TM_SYSTAG ooaofooa_TM_SYSTAG_instances[ ooaofooa_TM_SYSTAG_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TM_SYSTAG_extent = {
  {0,0}, {0,0}, &ooaofooa_TM_SYSTAG_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TM_SYSTAG_instances,
  sizeof( ooaofooa_TM_SYSTAG ), 0, ooaofooa_TM_SYSTAG_MAX_EXTENT_SIZE
  };


