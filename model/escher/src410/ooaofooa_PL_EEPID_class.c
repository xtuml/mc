/*----------------------------------------------------------------------------
 * File:  ooaofooa_PL_EEPID_class.c
 *
 * Class:       External Entity Package in Domain  (PL_EEPID)
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
ooaofooa_PL_EEPID_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_PL_EEPID * self = (ooaofooa_PL_EEPID *) instance;
  /* Initialize application analysis class attributes.  */
  self->Dom_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->EEPack_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_PL_EEPID_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_PL_EEPID * ooaofooa_PL_EEPID_instance = (ooaofooa_PL_EEPID *) instance;
  ooaofooa_S_EEPK * ooaofooa_S_EEPKrelated_instance1 = (ooaofooa_S_EEPK *) Escher_instance_cache[ (intptr_t) ooaofooa_PL_EEPID_instance->EEPack_ID ];
  ooaofooa_S_DOM * ooaofooa_S_DOMrelated_instance2 = (ooaofooa_S_DOM *) Escher_instance_cache[ (intptr_t) ooaofooa_PL_EEPID_instance->Dom_ID ];
  if ( ooaofooa_S_EEPKrelated_instance1 && ooaofooa_S_DOMrelated_instance2 ) {
    ooaofooa_PL_EEPID_R300_Link( ooaofooa_S_DOMrelated_instance2, ooaofooa_S_EEPKrelated_instance1, ooaofooa_PL_EEPID_instance );
  }
}


/*
 * RELATE S_DOM TO S_EEPK ACROSS R300 USING PL_EEPID
 */
void
ooaofooa_PL_EEPID_R300_Link( ooaofooa_S_DOM * aone, ooaofooa_S_EEPK * aoth, ooaofooa_PL_EEPID * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Dom_ID = aone->Dom_ID;
  assr->EEPack_ID = aoth->EEPack_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->S_DOM_R300_is_container = aone;
  assr->S_EEPK_R300_contains = aoth;
  Escher_SetInsertElement( &aone->PL_EEPID_R300, assr );
  aoth->PL_EEPID_R300 = assr;
}

/*
 * UNRELATE S_DOM FROM S_EEPK ACROSS R300 USING PL_EEPID
 */
void
ooaofooa_PL_EEPID_R300_Unlink( ooaofooa_S_DOM * aone, ooaofooa_S_EEPK * aoth, ooaofooa_PL_EEPID * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->S_DOM_R300_is_container = 0;
  assr->S_EEPK_R300_contains = 0;
  Escher_SetRemoveElement( &aone->PL_EEPID_R300, assr );
  aoth->PL_EEPID_R300 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_PL_EEPID_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_PL_EEPID * self = (ooaofooa_PL_EEPID *) instance;
  printf( "INSERT INTO PL_EEPID VALUES ( %ld,%ld );\n",
    ((long)self->Dom_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EEPack_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_PL_EEPID_container[ ooaofooa_PL_EEPID_MAX_EXTENT_SIZE ];
static ooaofooa_PL_EEPID ooaofooa_PL_EEPID_instances[ ooaofooa_PL_EEPID_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_PL_EEPID_extent = {
  {0,0}, {0,0}, &ooaofooa_PL_EEPID_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_PL_EEPID_instances,
  sizeof( ooaofooa_PL_EEPID ), 0, ooaofooa_PL_EEPID_MAX_EXTENT_SIZE
  };


