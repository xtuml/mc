/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_SMEEE_class.c
 *
 * Class:       SM to EE Event Comm  (CA_SMEEE)
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
ooaofooa_CA_SMEEE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CA_SMEEE * self = (ooaofooa_CA_SMEEE *) instance;
  /* Initialize application analysis class attributes.  */
  self->CPath_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->EE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->EEevt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CA_SMEEE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CA_SMEEE * ooaofooa_CA_SMEEE_instance = (ooaofooa_CA_SMEEE *) instance;
  ooaofooa_S_EEEVT * ooaofooa_S_EEEVTrelated_instance1 = ooaofooa_S_EEEVT_AnyWhere1( ooaofooa_CA_SMEEE_instance->EEevt_ID, ooaofooa_CA_SMEEE_instance->EE_ID );
  if ( ooaofooa_S_EEEVTrelated_instance1 ) {
    ooaofooa_CA_SMEEE_R413_Link_is_carried_to_EE_via( ooaofooa_S_EEEVTrelated_instance1, ooaofooa_CA_SMEEE_instance );
  }
  {
  ooaofooa_CA_SMEEC * ooaofooa_CA_SMEECrelated_instance1 = ooaofooa_CA_SMEEC_AnyWhere1( ooaofooa_CA_SMEEE_instance->CPath_ID );
  if ( ooaofooa_CA_SMEECrelated_instance1 ) {
    ooaofooa_CA_SMEEE_R412_Link_carries( ooaofooa_CA_SMEECrelated_instance1, ooaofooa_CA_SMEEE_instance );
  }
  }
}


/*
 * RELATE CA_SMEEC TO CA_SMEEE ACROSS R412
 */
void
ooaofooa_CA_SMEEE_R412_Link_carries( ooaofooa_CA_SMEEC * part, ooaofooa_CA_SMEEE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->CPath_ID = part->CPath_ID;
  form->CA_SMEEC_R412_is_carried_by = part;
  Escher_SetInsertElement( &part->CA_SMEEE_R412_carries, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE CA_SMEEC FROM CA_SMEEE ACROSS R412
 */
void
ooaofooa_CA_SMEEE_R412_Unlink_carries( ooaofooa_CA_SMEEC * part, ooaofooa_CA_SMEEE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->CA_SMEEC_R412_is_carried_by = 0;
  Escher_SetRemoveElement( &part->CA_SMEEE_R412_carries, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_EEEVT TO CA_SMEEE ACROSS R413
 */
void
ooaofooa_CA_SMEEE_R413_Link_is_carried_to_EE_via( ooaofooa_S_EEEVT * part, ooaofooa_CA_SMEEE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EEevt_ID = part->EEevt_ID;
  form->EE_ID = part->EE_ID;
  form->S_EEEVT_R413_represents_communication_of = part;
  Escher_SetInsertElement( &part->CA_SMEEE_R413_is_carried_to_EE_via, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_EEEVT FROM CA_SMEEE ACROSS R413
 */
void
ooaofooa_CA_SMEEE_R413_Unlink_is_carried_to_EE_via( ooaofooa_S_EEEVT * part, ooaofooa_CA_SMEEE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->S_EEEVT_R413_represents_communication_of = 0;
  Escher_SetRemoveElement( &part->CA_SMEEE_R413_is_carried_to_EE_via, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CA_SMEEE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CA_SMEEE * self = (ooaofooa_CA_SMEEE *) instance;
  printf( "INSERT INTO CA_SMEEE VALUES ( %ld,%ld,%ld );\n",
    ((long)self->CPath_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EE_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EEevt_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CA_SMEEE_container[ ooaofooa_CA_SMEEE_MAX_EXTENT_SIZE ];
static ooaofooa_CA_SMEEE ooaofooa_CA_SMEEE_instances[ ooaofooa_CA_SMEEE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CA_SMEEE_extent = {
  {0,0}, {0,0}, &ooaofooa_CA_SMEEE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CA_SMEEE_instances,
  sizeof( ooaofooa_CA_SMEEE ), 0, ooaofooa_CA_SMEEE_MAX_EXTENT_SIZE
  };


