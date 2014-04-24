/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_FIP_class.c
 *
 * Class:       Function in Package  (S_FIP)
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
ooaofooa_S_FIP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_FIP * self = (ooaofooa_S_FIP *) instance;
  /* Initialize application analysis class attributes.  */
  self->FunPack_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Sync_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_FIP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_FIP * ooaofooa_S_FIP_instance = (ooaofooa_S_FIP *) instance;
  ooaofooa_S_SYNC * ooaofooa_S_SYNCrelated_instance1 = ooaofooa_S_SYNC_AnyWhere1( ooaofooa_S_FIP_instance->Sync_ID );
  ooaofooa_S_FPK * ooaofooa_S_FPKrelated_instance2 = (ooaofooa_S_FPK *) Escher_instance_cache[ (intptr_t) ooaofooa_S_FIP_instance->FunPack_ID ];
  if ( ooaofooa_S_SYNCrelated_instance1 && ooaofooa_S_FPKrelated_instance2 ) {
    ooaofooa_S_FIP_R31_Link( ooaofooa_S_FPKrelated_instance2, ooaofooa_S_SYNCrelated_instance1, ooaofooa_S_FIP_instance );
  }
}


/*
 * RELATE S_FPK TO S_SYNC ACROSS R31 USING S_FIP
 */
void
ooaofooa_S_FIP_R31_Link( ooaofooa_S_FPK * aone, ooaofooa_S_SYNC * aoth, ooaofooa_S_FIP * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->FunPack_ID = aone->FunPack_ID;
  assr->Sync_ID = aoth->Sync_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->S_FPK_R31_is_contained_in = aone;
  assr->S_SYNC_R31_contains = aoth;
  Escher_SetInsertElement( &aone->S_FIP_R31, assr );
  aoth->S_FIP_R31 = assr;
}

/*
 * UNRELATE S_FPK FROM S_SYNC ACROSS R31 USING S_FIP
 */
void
ooaofooa_S_FIP_R31_Unlink( ooaofooa_S_FPK * aone, ooaofooa_S_SYNC * aoth, ooaofooa_S_FIP * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->S_FPK_R31_is_contained_in = 0;
  assr->S_SYNC_R31_contains = 0;
  Escher_SetRemoveElement( &aone->S_FIP_R31, assr );
  aoth->S_FIP_R31 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_FIP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_FIP * self = (ooaofooa_S_FIP *) instance;
  printf( "INSERT INTO S_FIP VALUES ( %ld,%ld );\n",
    ((long)self->FunPack_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Sync_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_FIP_container[ ooaofooa_S_FIP_MAX_EXTENT_SIZE ];
static ooaofooa_S_FIP ooaofooa_S_FIP_instances[ ooaofooa_S_FIP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_FIP_extent = {
  {0,0}, {0,0}, &ooaofooa_S_FIP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_FIP_instances,
  sizeof( ooaofooa_S_FIP ), 0, ooaofooa_S_FIP_MAX_EXTENT_SIZE
  };


