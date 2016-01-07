/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_EEEDT_class.c
 *
 * Class:       External Entity Event Data  (S_EEEDT)
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
ooaofooa_S_EEEDT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_EEEDT * self = (ooaofooa_S_EEEDT *) instance;
  /* Initialize application analysis class attributes.  */
  self->EE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->EEevt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->EEedi_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_EEEDT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_EEEDT * ooaofooa_S_EEEDT_instance = (ooaofooa_S_EEEDT *) instance;
  ooaofooa_S_EEEVT * ooaofooa_S_EEEVTrelated_instance1 = ooaofooa_S_EEEVT_AnyWhere1( ooaofooa_S_EEEDT_instance->EEevt_ID, ooaofooa_S_EEEDT_instance->EE_ID );
  ooaofooa_S_EEEDI * ooaofooa_S_EEEDIrelated_instance2 = ooaofooa_S_EEEDI_AnyWhere1( ooaofooa_S_EEEDT_instance->EEedi_ID, ooaofooa_S_EEEDT_instance->EE_ID );
  if ( ooaofooa_S_EEEVTrelated_instance1 && ooaofooa_S_EEEDIrelated_instance2 ) {
    ooaofooa_S_EEEDT_R13_Link( ooaofooa_S_EEEDIrelated_instance2, ooaofooa_S_EEEVTrelated_instance1, ooaofooa_S_EEEDT_instance );
  }
}


/*
 * RELATE S_EEEDI TO S_EEEVT ACROSS R13 USING S_EEEDT
 */
void
ooaofooa_S_EEEDT_R13_Link( ooaofooa_S_EEEDI * aone, ooaofooa_S_EEEVT * aoth, ooaofooa_S_EEEDT * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->EEedi_ID = aone->EEedi_ID;
  assr->EE_ID = aone->EE_ID;
  assr->EEevt_ID = aoth->EEevt_ID;
  assr->EE_ID = aoth->EE_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->S_EEEDI_R13_may_carry = aone;
  assr->S_EEEVT_R13_is_carried_via = aoth;
  Escher_SetInsertElement( &aone->S_EEEDT_R13, assr );
  Escher_SetInsertElement( &aoth->S_EEEDT_R13, assr );
}

/*
 * UNRELATE S_EEEDI FROM S_EEEVT ACROSS R13 USING S_EEEDT
 */
void
ooaofooa_S_EEEDT_R13_Unlink( ooaofooa_S_EEEDI * aone, ooaofooa_S_EEEVT * aoth, ooaofooa_S_EEEDT * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->S_EEEDI_R13_may_carry = 0;
  assr->S_EEEVT_R13_is_carried_via = 0;
  Escher_SetRemoveElement( &aone->S_EEEDT_R13, assr );
  Escher_SetRemoveElement( &aoth->S_EEEDT_R13, assr );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_EEEDT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_EEEDT * self = (ooaofooa_S_EEEDT *) instance;
  printf( "INSERT INTO S_EEEDT VALUES ( %ld,%ld,%ld );\n",
    ((long)self->EE_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EEevt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EEedi_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_EEEDT_container[ ooaofooa_S_EEEDT_MAX_EXTENT_SIZE ];
static ooaofooa_S_EEEDT ooaofooa_S_EEEDT_instances[ ooaofooa_S_EEEDT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_EEEDT_extent = {
  {0,0}, {0,0}, &ooaofooa_S_EEEDT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_EEEDT_instances,
  sizeof( ooaofooa_S_EEEDT ), 0, ooaofooa_S_EEEDT_MAX_EXTENT_SIZE
  };


