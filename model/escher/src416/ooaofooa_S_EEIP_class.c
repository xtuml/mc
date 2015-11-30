/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_EEIP_class.c
 *
 * Class:       External Entity in Package  (S_EEIP)
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
ooaofooa_S_EEIP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_EEIP * self = (ooaofooa_S_EEIP *) instance;
  /* Initialize application analysis class attributes.  */
  self->EEPack_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->EE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_EEIP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_EEIP * ooaofooa_S_EEIP_instance = (ooaofooa_S_EEIP *) instance;
  ooaofooa_S_EE * ooaofooa_S_EErelated_instance1 = ooaofooa_S_EE_AnyWhere1( ooaofooa_S_EEIP_instance->EE_ID );
  ooaofooa_S_EEPK * ooaofooa_S_EEPKrelated_instance2 = (ooaofooa_S_EEPK *) Escher_instance_cache[ (intptr_t) ooaofooa_S_EEIP_instance->EEPack_ID ];
  if ( ooaofooa_S_EErelated_instance1 && ooaofooa_S_EEPKrelated_instance2 ) {
    ooaofooa_S_EEIP_R33_Link( ooaofooa_S_EEPKrelated_instance2, ooaofooa_S_EErelated_instance1, ooaofooa_S_EEIP_instance );
  }
}


/*
 * RELATE S_EEPK TO S_EE ACROSS R33 USING S_EEIP
 */
void
ooaofooa_S_EEIP_R33_Link( ooaofooa_S_EEPK * aone, ooaofooa_S_EE * aoth, ooaofooa_S_EEIP * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->EEPack_ID = aone->EEPack_ID;
  assr->EE_ID = aoth->EE_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->S_EEPK_R33_is_contained_in = aone;
  assr->S_EE_R33_contains = aoth;
  Escher_SetInsertElement( &aone->S_EEIP_R33, assr );
  aoth->S_EEIP_R33 = assr;
}

/*
 * UNRELATE S_EEPK FROM S_EE ACROSS R33 USING S_EEIP
 */
void
ooaofooa_S_EEIP_R33_Unlink( ooaofooa_S_EEPK * aone, ooaofooa_S_EE * aoth, ooaofooa_S_EEIP * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->S_EEPK_R33_is_contained_in = 0;
  assr->S_EE_R33_contains = 0;
  Escher_SetRemoveElement( &aone->S_EEIP_R33, assr );
  aoth->S_EEIP_R33 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_EEIP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_EEIP * self = (ooaofooa_S_EEIP *) instance;
  printf( "INSERT INTO S_EEIP VALUES ( %ld,%ld );\n",
    ((long)self->EEPack_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EE_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_EEIP_container[ ooaofooa_S_EEIP_MAX_EXTENT_SIZE ];
static ooaofooa_S_EEIP ooaofooa_S_EEIP_instances[ ooaofooa_S_EEIP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_EEIP_extent = {
  {0,0}, {0,0}, &ooaofooa_S_EEIP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_EEIP_instances,
  sizeof( ooaofooa_S_EEIP ), 0, ooaofooa_S_EEIP_MAX_EXTENT_SIZE
  };


