/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_SYS_class.c
 *
 * Class:       Extended System  (TE_SYS)
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
ooaofooa_TE_SYS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_SYS * self = (ooaofooa_TE_SYS *) instance;
  /* Initialize application analysis class attributes.  */
  self->SystemID = Escher_atoi( avlstring[ 1 ] );
  Escher_strcpy( self->ModelCompilerName, avlstring[ 2 ] );
  Escher_strcpy( self->ExecutableName, avlstring[ 3 ] );
  self->MaxStringLen = Escher_atoi( avlstring[ 4 ] );
  self->MaxObjExtent = Escher_atoi( avlstring[ 5 ] );
  self->MaxRelExtent = Escher_atoi( avlstring[ 6 ] );
  self->MaxSelectExtent = Escher_atoi( avlstring[ 7 ] );
  self->TotalContainers = Escher_atoi( avlstring[ 8 ] );
  self->MaxSelfEvents = Escher_atoi( avlstring[ 9 ] );
  self->MaxNonSelfEvents = Escher_atoi( avlstring[ 10 ] );
  self->MaxTimers = Escher_atoi( avlstring[ 11 ] );
  self->MaxInterleavedBridges = Escher_atoi( avlstring[ 12 ] );
  self->MaxInterleavedBridgeDataSize = Escher_atoi( avlstring[ 13 ] );
  self->CollectionsFlavor = Escher_atoi( avlstring[ 14 ] );
  self->ForcePriorityEvents = ( '0' != *avlstring[ 15 ] );
  self->PEIClassCount = Escher_atoi( avlstring[ 16 ] );
  self->PersistentClassCount = Escher_atoi( avlstring[ 17 ] );
  self->PersistInstanceCacheDepth = Escher_atoi( avlstring[ 18 ] );
  self->PersistLinkCacheDepth = Escher_atoi( avlstring[ 19 ] );
  self->UnitsToDynamicallyAllocate = Escher_atoi( avlstring[ 20 ] );
  self->InstanceLoading = ( '0' != *avlstring[ 21 ] );
  Escher_strcpy( self->self_name, avlstring[ 22 ] );
  Escher_strcpy( self->Name, avlstring[ 23 ] );
  self->AUTOSAR = ( '0' != *avlstring[ 24 ] );
  self->VFB = ( '0' != *avlstring[ 25 ] );
  Escher_strcpy( self->SystemCPortsType, avlstring[ 26 ] );
  self->AllPortsPoly = ( '0' != *avlstring[ 27 ] );
  Escher_strcpy( self->DomainClassNumberName, avlstring[ 28 ] );
  self->Sys_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 29 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_SYS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_SYS * ooaofooa_TE_SYS_instance = (ooaofooa_TE_SYS *) instance;
  ooaofooa_S_SYS * ooaofooa_S_SYSrelated_instance1 = (ooaofooa_S_SYS *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_SYS_instance->Sys_ID ];
  if ( ooaofooa_S_SYSrelated_instance1 ) {
    ooaofooa_TE_SYS_R2018_Link( ooaofooa_S_SYSrelated_instance1, ooaofooa_TE_SYS_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_SYS *
ooaofooa_TE_SYS_AnyWhere1( i_t w_SystemID )
{
  ooaofooa_TE_SYS * w; 
  Escher_Iterator_s iter_TE_SYS;
  Escher_IteratorReset( &iter_TE_SYS, &pG_ooaofooa_TE_SYS_extent.active );
  while ( (w = (ooaofooa_TE_SYS *) Escher_IteratorNext( &iter_TE_SYS )) != 0 ) {
    if ( w->SystemID == w_SystemID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_SYS TO TE_SYS ACROSS R2018
 */
void
ooaofooa_TE_SYS_R2018_Link( ooaofooa_S_SYS * part, ooaofooa_TE_SYS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sys_ID = part->Sys_ID;
  form->S_SYS_R2018 = part;
  part->TE_SYS_R2018 = form;
}

/*
 * UNRELATE S_SYS FROM TE_SYS ACROSS R2018
 */
void
ooaofooa_TE_SYS_R2018_Unlink( ooaofooa_S_SYS * part, ooaofooa_TE_SYS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sys_ID = 0;
  form->S_SYS_R2018 = 0;
  part->TE_SYS_R2018 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_SYS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_SYS * self = (ooaofooa_TE_SYS *) instance;
  printf( "INSERT INTO TE_SYS VALUES ( %d,'%s','%s',%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,'%s','%s',%d,%d,'%s',%d,'%s',%ld );\n",
    self->SystemID,
    self->ModelCompilerName,
    self->ExecutableName,
    self->MaxStringLen,
    self->MaxObjExtent,
    self->MaxRelExtent,
    self->MaxSelectExtent,
    self->TotalContainers,
    self->MaxSelfEvents,
    self->MaxNonSelfEvents,
    self->MaxTimers,
    self->MaxInterleavedBridges,
    self->MaxInterleavedBridgeDataSize,
    self->CollectionsFlavor,
    self->ForcePriorityEvents,
    self->PEIClassCount,
    self->PersistentClassCount,
    self->PersistInstanceCacheDepth,
    self->PersistLinkCacheDepth,
    self->UnitsToDynamicallyAllocate,
    self->InstanceLoading,
    self->self_name,
    self->Name,
    self->AUTOSAR,
    self->VFB,
    self->SystemCPortsType,
    self->AllPortsPoly,
    self->DomainClassNumberName,
    ((long)self->Sys_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_SYS_container[ ooaofooa_TE_SYS_MAX_EXTENT_SIZE ];
static ooaofooa_TE_SYS ooaofooa_TE_SYS_instances[ ooaofooa_TE_SYS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_SYS_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_SYS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_SYS_instances,
  sizeof( ooaofooa_TE_SYS ), 0, ooaofooa_TE_SYS_MAX_EXTENT_SIZE
  };


