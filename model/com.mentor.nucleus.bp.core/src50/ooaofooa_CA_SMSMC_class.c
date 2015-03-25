/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_SMSMC_class.c
 *
 * Class:       SM to SM Comm Path  (CA_SMSMC)
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
ooaofooa_CA_SMSMC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CA_SMSMC * self = (ooaofooa_CA_SMSMC *) instance;
  /* Initialize application analysis class attributes.  */
  self->CPath_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->OSM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->DSM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->OIObj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->DIObj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CA_SMSMC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CA_SMSMC * ooaofooa_CA_SMSMC_instance = (ooaofooa_CA_SMSMC *) instance;
  ooaofooa_O_IOBJ * ooaofooa_O_IOBJrelated_instance1 = ooaofooa_O_IOBJ_AnyWhere1( ooaofooa_CA_SMSMC_instance->DIObj_ID );
  if ( ooaofooa_O_IOBJrelated_instance1 ) {
    ooaofooa_CA_SMSMC_R414_Link_represents_the_destination_SM_for( ooaofooa_O_IOBJrelated_instance1, ooaofooa_CA_SMSMC_instance );
  }
  {
  ooaofooa_O_IOBJ * ooaofooa_O_IOBJrelated_instance1 = ooaofooa_O_IOBJ_AnyWhere1( ooaofooa_CA_SMSMC_instance->OIObj_ID );
  if ( ooaofooa_O_IOBJrelated_instance1 ) {
    ooaofooa_CA_SMSMC_R424_Link_represents_the_origination_SM_for( ooaofooa_O_IOBJrelated_instance1, ooaofooa_CA_SMSMC_instance );
  }
  }
  {
  ooaofooa_SM_SM * ooaofooa_SM_SMrelated_instance1 = (ooaofooa_SM_SM *) Escher_instance_cache[ (intptr_t) ooaofooa_CA_SMSMC_instance->OSM_ID ];
  if ( ooaofooa_SM_SMrelated_instance1 ) {
    ooaofooa_CA_SMSMC_R406_Link_originates( ooaofooa_SM_SMrelated_instance1, ooaofooa_CA_SMSMC_instance );
  }
  }
  {
  ooaofooa_SM_SM * ooaofooa_SM_SMrelated_instance1 = (ooaofooa_SM_SM *) Escher_instance_cache[ (intptr_t) ooaofooa_CA_SMSMC_instance->DSM_ID ];
  if ( ooaofooa_SM_SMrelated_instance1 ) {
    ooaofooa_CA_SMSMC_R407_Link_represents_the_destination_SM_for( ooaofooa_SM_SMrelated_instance1, ooaofooa_CA_SMSMC_instance );
  }
  }
  {
  ooaofooa_CA_COMM * ooaofooa_CA_COMMrelated_instance1 = (ooaofooa_CA_COMM *) Escher_instance_cache[ (intptr_t) ooaofooa_CA_SMSMC_instance->CPath_ID ];
  if ( ooaofooa_CA_COMMrelated_instance1 ) {
    ooaofooa_CA_SMSMC_R401_Link( ooaofooa_CA_COMMrelated_instance1, ooaofooa_CA_SMSMC_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_CA_SMSMC *
ooaofooa_CA_SMSMC_AnyWhere1( Escher_UniqueID_t w_CPath_ID )
{
  ooaofooa_CA_SMSMC * w; 
  Escher_Iterator_s iter_CA_SMSMC;
  Escher_IteratorReset( &iter_CA_SMSMC, &pG_ooaofooa_CA_SMSMC_extent.active );
  while ( (w = (ooaofooa_CA_SMSMC *) Escher_IteratorNext( &iter_CA_SMSMC )) != 0 ) {
    if ( w->CPath_ID == w_CPath_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE CA_COMM TO CA_SMSMC ACROSS R401
 */
void
ooaofooa_CA_SMSMC_R401_Link( ooaofooa_CA_COMM * supertype, ooaofooa_CA_SMSMC * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->CPath_ID = supertype->CPath_ID;
  /* Optimized linkage for CA_SMSMC->CA_COMM[R401] */
  subtype->CA_COMM_R401 = supertype;
  /* Optimized linkage for CA_COMM->CA_SMSMC[R401] */
  supertype->R401_subtype = subtype;
  supertype->R401_object_id = ooaofooa_CA_SMSMC_CLASS_NUMBER;
}


/*
 * UNRELATE CA_COMM FROM CA_SMSMC ACROSS R401
 */
void
ooaofooa_CA_SMSMC_R401_Unlink( ooaofooa_CA_COMM * supertype, ooaofooa_CA_SMSMC * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->CA_COMM_R401 = 0;
  supertype->R401_subtype = 0;
  supertype->R401_object_id = 0;
}


/*
 * RELATE SM_SM TO CA_SMSMC ACROSS R406
 */
void
ooaofooa_CA_SMSMC_R406_Link_originates( ooaofooa_SM_SM * part, ooaofooa_CA_SMSMC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->OSM_ID = part->SM_ID;
  form->SM_SM_R406_originates_from = part;
  Escher_SetInsertElement( &part->CA_SMSMC_R406_originates, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_SM FROM CA_SMSMC ACROSS R406
 */
void
ooaofooa_CA_SMSMC_R406_Unlink_originates( ooaofooa_SM_SM * part, ooaofooa_CA_SMSMC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_SM_R406_originates_from = 0;
  Escher_SetRemoveElement( &part->CA_SMSMC_R406_originates, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SM_SM TO CA_SMSMC ACROSS R407
 */
void
ooaofooa_CA_SMSMC_R407_Link_represents_the_destination_SM_for( ooaofooa_SM_SM * part, ooaofooa_CA_SMSMC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DSM_ID = part->SM_ID;
  form->SM_SM_R407_shows_event_communication_to = part;
  Escher_SetInsertElement( &part->CA_SMSMC_R407_represents_the_destination_SM_for, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_SM FROM CA_SMSMC ACROSS R407
 */
void
ooaofooa_CA_SMSMC_R407_Unlink_represents_the_destination_SM_for( ooaofooa_SM_SM * part, ooaofooa_CA_SMSMC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_SM_R407_shows_event_communication_to = 0;
  Escher_SetRemoveElement( &part->CA_SMSMC_R407_represents_the_destination_SM_for, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE O_IOBJ TO CA_SMSMC ACROSS R414
 */
void
ooaofooa_CA_SMSMC_R414_Link_represents_the_destination_SM_for( ooaofooa_O_IOBJ * part, ooaofooa_CA_SMSMC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DIObj_ID = part->IObj_ID;
  form->O_IOBJ_R414_destination_SM_can_be_represented_by = part;
  Escher_SetInsertElement( &part->CA_SMSMC_R414_represents_the_destination_SM_for, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_IOBJ FROM CA_SMSMC ACROSS R414
 */
void
ooaofooa_CA_SMSMC_R414_Unlink_represents_the_destination_SM_for( ooaofooa_O_IOBJ * part, ooaofooa_CA_SMSMC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DIObj_ID = 0;
  form->O_IOBJ_R414_destination_SM_can_be_represented_by = 0;
  Escher_SetRemoveElement( &part->CA_SMSMC_R414_represents_the_destination_SM_for, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE O_IOBJ TO CA_SMSMC ACROSS R424
 */
void
ooaofooa_CA_SMSMC_R424_Link_represents_the_origination_SM_for( ooaofooa_O_IOBJ * part, ooaofooa_CA_SMSMC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->OIObj_ID = part->IObj_ID;
  form->O_IOBJ_R424_origination_SM_can_be_represented_by = part;
  Escher_SetInsertElement( &part->CA_SMSMC_R424_represents_the_origination_SM_for, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_IOBJ FROM CA_SMSMC ACROSS R424
 */
void
ooaofooa_CA_SMSMC_R424_Unlink_represents_the_origination_SM_for( ooaofooa_O_IOBJ * part, ooaofooa_CA_SMSMC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->OIObj_ID = 0;
  form->O_IOBJ_R424_origination_SM_can_be_represented_by = 0;
  Escher_SetRemoveElement( &part->CA_SMSMC_R424_represents_the_origination_SM_for, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CA_SMSMC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CA_SMSMC * self = (ooaofooa_CA_SMSMC *) instance;
  printf( "INSERT INTO CA_SMSMC VALUES ( %ld,%ld,%ld,%ld,%ld );\n",
    ((long)self->CPath_ID & ESCHER_IDDUMP_MASK),
    ((long)self->OSM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->DSM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->OIObj_ID & ESCHER_IDDUMP_MASK),
    ((long)self->DIObj_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CA_SMSMC_container[ ooaofooa_CA_SMSMC_MAX_EXTENT_SIZE ];
static ooaofooa_CA_SMSMC ooaofooa_CA_SMSMC_instances[ ooaofooa_CA_SMSMC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CA_SMSMC_extent = {
  {0,0}, {0,0}, &ooaofooa_CA_SMSMC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CA_SMSMC_instances,
  sizeof( ooaofooa_CA_SMSMC ), 0, ooaofooa_CA_SMSMC_MAX_EXTENT_SIZE
  };


