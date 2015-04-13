/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_SMEEC_class.c
 *
 * Class:       SM to EE Comm Path  (CA_SMEEC)
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
ooaofooa_CA_SMEEC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CA_SMEEC * self = (ooaofooa_CA_SMEEC *) instance;
  /* Initialize application analysis class attributes.  */
  self->CPath_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->EE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->EEmod_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CA_SMEEC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CA_SMEEC * ooaofooa_CA_SMEEC_instance = (ooaofooa_CA_SMEEC *) instance;
  ooaofooa_SM_SM * ooaofooa_SM_SMrelated_instance1 = (ooaofooa_SM_SM *) Escher_instance_cache[ (intptr_t) ooaofooa_CA_SMEEC_instance->SM_ID ];
  if ( ooaofooa_SM_SMrelated_instance1 ) {
    ooaofooa_CA_SMEEC_R410_Link_originates( ooaofooa_SM_SMrelated_instance1, ooaofooa_CA_SMEEC_instance );
  }
  {
  ooaofooa_S_EEM * ooaofooa_S_EEMrelated_instance1 = ooaofooa_S_EEM_AnyWhere1( ooaofooa_CA_SMEEC_instance->EEmod_ID, ooaofooa_CA_SMEEC_instance->EE_ID );
  if ( ooaofooa_S_EEMrelated_instance1 ) {
    ooaofooa_CA_SMEEC_R411_Link_has_received_event_communication_represented_by( ooaofooa_S_EEMrelated_instance1, ooaofooa_CA_SMEEC_instance );
  }
  }
  {
  ooaofooa_CA_COMM * ooaofooa_CA_COMMrelated_instance1 = (ooaofooa_CA_COMM *) Escher_instance_cache[ (intptr_t) ooaofooa_CA_SMEEC_instance->CPath_ID ];
  if ( ooaofooa_CA_COMMrelated_instance1 ) {
    ooaofooa_CA_SMEEC_R401_Link( ooaofooa_CA_COMMrelated_instance1, ooaofooa_CA_SMEEC_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_CA_SMEEC *
ooaofooa_CA_SMEEC_AnyWhere1( Escher_UniqueID_t w_CPath_ID )
{
  ooaofooa_CA_SMEEC * w; 
  Escher_Iterator_s iter_CA_SMEEC;
  Escher_IteratorReset( &iter_CA_SMEEC, &pG_ooaofooa_CA_SMEEC_extent.active );
  while ( (w = (ooaofooa_CA_SMEEC *) Escher_IteratorNext( &iter_CA_SMEEC )) != 0 ) {
    if ( w->CPath_ID == w_CPath_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE CA_COMM TO CA_SMEEC ACROSS R401
 */
void
ooaofooa_CA_SMEEC_R401_Link( ooaofooa_CA_COMM * supertype, ooaofooa_CA_SMEEC * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->CPath_ID = supertype->CPath_ID;
  /* Optimized linkage for CA_SMEEC->CA_COMM[R401] */
  subtype->CA_COMM_R401 = supertype;
  /* Optimized linkage for CA_COMM->CA_SMEEC[R401] */
  supertype->R401_subtype = subtype;
  supertype->R401_object_id = ooaofooa_CA_SMEEC_CLASS_NUMBER;
}


/*
 * UNRELATE CA_COMM FROM CA_SMEEC ACROSS R401
 */
void
ooaofooa_CA_SMEEC_R401_Unlink( ooaofooa_CA_COMM * supertype, ooaofooa_CA_SMEEC * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->CA_COMM_R401 = 0;
  supertype->R401_subtype = 0;
  supertype->R401_object_id = 0;
}


/*
 * RELATE SM_SM TO CA_SMEEC ACROSS R410
 */
void
ooaofooa_CA_SMEEC_R410_Link_originates( ooaofooa_SM_SM * part, ooaofooa_CA_SMEEC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->SM_SM_R410_originates_from = part;
  Escher_SetInsertElement( &part->CA_SMEEC_R410_originates, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_SM FROM CA_SMEEC ACROSS R410
 */
void
ooaofooa_CA_SMEEC_R410_Unlink_originates( ooaofooa_SM_SM * part, ooaofooa_CA_SMEEC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_SM_R410_originates_from = 0;
  Escher_SetRemoveElement( &part->CA_SMEEC_R410_originates, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_EEM TO CA_SMEEC ACROSS R411
 */
void
ooaofooa_CA_SMEEC_R411_Link_has_received_event_communication_represented_by( ooaofooa_S_EEM * part, ooaofooa_CA_SMEEC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EEmod_ID = part->EEmod_ID;
  form->EE_ID = part->EE_ID;
  form->S_EEM_R411_shows_event_communication_to = part;
  Escher_SetInsertElement( &part->CA_SMEEC_R411_has_received_event_communication_represented_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_EEM FROM CA_SMEEC ACROSS R411
 */
void
ooaofooa_CA_SMEEC_R411_Unlink_has_received_event_communication_represented_by( ooaofooa_S_EEM * part, ooaofooa_CA_SMEEC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EEmod_ID = 0;
  form->S_EEM_R411_shows_event_communication_to = 0;
  Escher_SetRemoveElement( &part->CA_SMEEC_R411_has_received_event_communication_represented_by, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CA_SMEEC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CA_SMEEC * self = (ooaofooa_CA_SMEEC *) instance;
  printf( "INSERT INTO CA_SMEEC VALUES ( %ld,%ld,%ld,%ld );\n",
    ((long)self->CPath_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EE_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EEmod_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CA_SMEEC_container[ ooaofooa_CA_SMEEC_MAX_EXTENT_SIZE ];
static ooaofooa_CA_SMEEC ooaofooa_CA_SMEEC_instances[ ooaofooa_CA_SMEEC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CA_SMEEC_extent = {
  {0,0}, {0,0}, &ooaofooa_CA_SMEEC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CA_SMEEC_instances,
  sizeof( ooaofooa_CA_SMEEC ), 0, ooaofooa_CA_SMEEC_MAX_EXTENT_SIZE
  };


