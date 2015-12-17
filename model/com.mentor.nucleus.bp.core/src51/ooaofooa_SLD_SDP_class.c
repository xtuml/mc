/*----------------------------------------------------------------------------
 * File:  ooaofooa_SLD_SDP_class.c
 *
 * Class:       System Datatype Package  (SLD_SDP)
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
ooaofooa_SLD_SDP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SLD_SDP * self = (ooaofooa_SLD_SDP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Sys_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SLD_SDP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SLD_SDP * ooaofooa_SLD_SDP_instance = (ooaofooa_SLD_SDP *) instance;
  ooaofooa_S_SYS * ooaofooa_S_SYSrelated_instance1 = (ooaofooa_S_SYS *) Escher_instance_cache[ (intptr_t) ooaofooa_SLD_SDP_instance->Sys_ID ];
  ooaofooa_S_DPK * ooaofooa_S_DPKrelated_instance2 = ooaofooa_S_DPK_AnyWhere1( ooaofooa_SLD_SDP_instance->Package_ID );
  if ( ooaofooa_S_SYSrelated_instance1 && ooaofooa_S_DPKrelated_instance2 ) {
    ooaofooa_SLD_SDP_R4400_Link( ooaofooa_S_SYSrelated_instance1, ooaofooa_S_DPKrelated_instance2, ooaofooa_SLD_SDP_instance );
  }
}


/*
 * RELATE S_SYS TO S_DPK ACROSS R4400 USING SLD_SDP
 */
void
ooaofooa_SLD_SDP_R4400_Link( ooaofooa_S_SYS * aone, ooaofooa_S_DPK * aoth, ooaofooa_SLD_SDP * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Sys_ID = aone->Sys_ID;
  assr->Package_ID = aoth->Package_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->S_SYS_R4400_is_contained_in = aone;
  assr->S_DPK_R4400_contains = aoth;
  Escher_SetInsertElement( &aone->SLD_SDP_R4400, assr );
  aoth->SLD_SDP_R4400 = assr;
}

/*
 * UNRELATE S_SYS FROM S_DPK ACROSS R4400 USING SLD_SDP
 */
void
ooaofooa_SLD_SDP_R4400_Unlink( ooaofooa_S_SYS * aone, ooaofooa_S_DPK * aoth, ooaofooa_SLD_SDP * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->S_SYS_R4400_is_contained_in = 0;
  assr->S_DPK_R4400_contains = 0;
  Escher_SetRemoveElement( &aone->SLD_SDP_R4400, assr );
  aoth->SLD_SDP_R4400 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SLD_SDP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SLD_SDP * self = (ooaofooa_SLD_SDP *) instance;
  printf( "INSERT INTO SLD_SDP VALUES ( %ld,%ld );\n",
    ((long)self->Sys_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SLD_SDP_container[ ooaofooa_SLD_SDP_MAX_EXTENT_SIZE ];
static ooaofooa_SLD_SDP ooaofooa_SLD_SDP_instances[ ooaofooa_SLD_SDP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SLD_SDP_extent = {
  {0,0}, {0,0}, &ooaofooa_SLD_SDP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SLD_SDP_instances,
  sizeof( ooaofooa_SLD_SDP ), 0, ooaofooa_SLD_SDP_MAX_EXTENT_SIZE
  };


