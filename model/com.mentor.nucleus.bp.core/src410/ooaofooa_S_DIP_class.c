/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_DIP_class.c
 *
 * Class:       Data Type in Package  (S_DIP)
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
ooaofooa_S_DIP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_DIP * self = (ooaofooa_S_DIP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_DIP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_DIP * ooaofooa_S_DIP_instance = (ooaofooa_S_DIP *) instance;
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_S_DIP_instance->DT_ID );
  ooaofooa_S_DPK * ooaofooa_S_DPKrelated_instance2 = ooaofooa_S_DPK_AnyWhere1( ooaofooa_S_DIP_instance->Package_ID );
  if ( ooaofooa_S_DTrelated_instance1 && ooaofooa_S_DPKrelated_instance2 ) {
    ooaofooa_S_DIP_R39_Link( ooaofooa_S_DTrelated_instance1, ooaofooa_S_DPKrelated_instance2, ooaofooa_S_DIP_instance );
  }
}


/*
 * RELATE S_DT TO S_DPK ACROSS R39 USING S_DIP
 */
void
ooaofooa_S_DIP_R39_Link( ooaofooa_S_DT * aone, ooaofooa_S_DPK * aoth, ooaofooa_S_DIP * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->DT_ID = aone->DT_ID;
  assr->Package_ID = aoth->Package_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->S_DT_R39_contains = aone;
  assr->S_DPK_R39_is_contained_in = aoth;
  aone->S_DIP_R39 = assr;
  Escher_SetInsertElement( &aoth->S_DIP_R39, assr );
}

/*
 * UNRELATE S_DT FROM S_DPK ACROSS R39 USING S_DIP
 */
void
ooaofooa_S_DIP_R39_Unlink( ooaofooa_S_DT * aone, ooaofooa_S_DPK * aoth, ooaofooa_S_DIP * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->S_DT_R39_contains = 0;
  assr->S_DPK_R39_is_contained_in = 0;
  aone->S_DIP_R39 = 0;
  Escher_SetRemoveElement( &aoth->S_DIP_R39, assr );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_DIP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_DIP * self = (ooaofooa_S_DIP *) instance;
  printf( "INSERT INTO S_DIP VALUES ( %ld,%ld );\n",
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_DIP_container[ ooaofooa_S_DIP_MAX_EXTENT_SIZE ];
static ooaofooa_S_DIP ooaofooa_S_DIP_instances[ ooaofooa_S_DIP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_DIP_extent = {
  {0,0}, {0,0}, &ooaofooa_S_DIP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_DIP_instances,
  sizeof( ooaofooa_S_DIP ), 0, ooaofooa_S_DIP_MAX_EXTENT_SIZE
  };


