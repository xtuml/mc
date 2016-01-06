/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_EESMC_class.c
 *
 * Class:       EE to SM Comm Path  (CA_EESMC)
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
ooaofooa_CA_EESMC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CA_EESMC * self = (ooaofooa_CA_EESMC *) instance;
  /* Initialize application analysis class attributes.  */
  self->CPath_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->EEmod_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->EE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CA_EESMC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CA_EESMC * ooaofooa_CA_EESMC_instance = (ooaofooa_CA_EESMC *) instance;
  ooaofooa_SM_SM * ooaofooa_SM_SMrelated_instance1 = (ooaofooa_SM_SM *) Escher_instance_cache[ (intptr_t) ooaofooa_CA_EESMC_instance->SM_ID ];
  if ( ooaofooa_SM_SMrelated_instance1 ) {
    ooaofooa_CA_EESMC_R403_Link_has_received_event_communication_represented_by( ooaofooa_SM_SMrelated_instance1, ooaofooa_CA_EESMC_instance );
  }
  {
  ooaofooa_S_EEM * ooaofooa_S_EEMrelated_instance1 = ooaofooa_S_EEM_AnyWhere1( ooaofooa_CA_EESMC_instance->EEmod_ID, ooaofooa_CA_EESMC_instance->EE_ID );
  if ( ooaofooa_S_EEMrelated_instance1 ) {
    ooaofooa_CA_EESMC_R402_Link_originates( ooaofooa_S_EEMrelated_instance1, ooaofooa_CA_EESMC_instance );
  }
  }
  {
  ooaofooa_CA_COMM * ooaofooa_CA_COMMrelated_instance1 = (ooaofooa_CA_COMM *) Escher_instance_cache[ (intptr_t) ooaofooa_CA_EESMC_instance->CPath_ID ];
  if ( ooaofooa_CA_COMMrelated_instance1 ) {
    ooaofooa_CA_EESMC_R401_Link( ooaofooa_CA_COMMrelated_instance1, ooaofooa_CA_EESMC_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_CA_EESMC *
ooaofooa_CA_EESMC_AnyWhere1( Escher_UniqueID_t w_CPath_ID )
{
  ooaofooa_CA_EESMC * w; 
  Escher_Iterator_s iter_CA_EESMC;
  Escher_IteratorReset( &iter_CA_EESMC, &pG_ooaofooa_CA_EESMC_extent.active );
  while ( (w = (ooaofooa_CA_EESMC *) Escher_IteratorNext( &iter_CA_EESMC )) != 0 ) {
    if ( w->CPath_ID == w_CPath_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE CA_COMM TO CA_EESMC ACROSS R401
 */
void
ooaofooa_CA_EESMC_R401_Link( ooaofooa_CA_COMM * supertype, ooaofooa_CA_EESMC * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->CPath_ID = supertype->CPath_ID;
  /* Optimized linkage for CA_EESMC->CA_COMM[R401] */
  subtype->CA_COMM_R401 = supertype;
  /* Optimized linkage for CA_COMM->CA_EESMC[R401] */
  supertype->R401_subtype = subtype;
  supertype->R401_object_id = ooaofooa_CA_EESMC_CLASS_NUMBER;
}


/*
 * UNRELATE CA_COMM FROM CA_EESMC ACROSS R401
 */
void
ooaofooa_CA_EESMC_R401_Unlink( ooaofooa_CA_COMM * supertype, ooaofooa_CA_EESMC * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->CA_COMM_R401 = 0;
  supertype->R401_subtype = 0;
  supertype->R401_object_id = 0;
}


/*
 * RELATE S_EEM TO CA_EESMC ACROSS R402
 */
void
ooaofooa_CA_EESMC_R402_Link_originates( ooaofooa_S_EEM * part, ooaofooa_CA_EESMC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EEmod_ID = part->EEmod_ID;
  form->EE_ID = part->EE_ID;
  form->S_EEM_R402_originates_from = part;
  Escher_SetInsertElement( &part->CA_EESMC_R402_originates, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_EEM FROM CA_EESMC ACROSS R402
 */
void
ooaofooa_CA_EESMC_R402_Unlink_originates( ooaofooa_S_EEM * part, ooaofooa_CA_EESMC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EEmod_ID = 0;
  form->EE_ID = 0;
  form->S_EEM_R402_originates_from = 0;
  Escher_SetRemoveElement( &part->CA_EESMC_R402_originates, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SM_SM TO CA_EESMC ACROSS R403
 */
void
ooaofooa_CA_EESMC_R403_Link_has_received_event_communication_represented_by( ooaofooa_SM_SM * part, ooaofooa_CA_EESMC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->SM_SM_R403_shows_event_communication_to = part;
  Escher_SetInsertElement( &part->CA_EESMC_R403_has_received_event_communication_represented_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_SM FROM CA_EESMC ACROSS R403
 */
void
ooaofooa_CA_EESMC_R403_Unlink_has_received_event_communication_represented_by( ooaofooa_SM_SM * part, ooaofooa_CA_EESMC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = 0;
  form->SM_SM_R403_shows_event_communication_to = 0;
  Escher_SetRemoveElement( &part->CA_EESMC_R403_has_received_event_communication_represented_by, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CA_EESMC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CA_EESMC * self = (ooaofooa_CA_EESMC *) instance;
  printf( "INSERT INTO CA_EESMC VALUES ( %ld,%ld,%ld,%ld );\n",
    ((long)self->CPath_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EEmod_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EE_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CA_EESMC_container[ ooaofooa_CA_EESMC_MAX_EXTENT_SIZE ];
static ooaofooa_CA_EESMC ooaofooa_CA_EESMC_instances[ ooaofooa_CA_EESMC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CA_EESMC_extent = {
  {0,0}, {0,0}, &ooaofooa_CA_EESMC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CA_EESMC_instances,
  sizeof( ooaofooa_CA_EESMC ), 0, ooaofooa_CA_EESMC_MAX_EXTENT_SIZE
  };


