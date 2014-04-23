/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_EESME_class.c
 *
 * Class:       EE to SM Event Comm  (CA_EESME)
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
ooaofooa_CA_EESME_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CA_EESME * self = (ooaofooa_CA_EESME *) instance;
  /* Initialize application analysis class attributes.  */
  self->CPath_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SMevt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CA_EESME_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CA_EESME * ooaofooa_CA_EESME_instance = (ooaofooa_CA_EESME *) instance;
  ooaofooa_SM_EVT * ooaofooa_SM_EVTrelated_instance1 = (ooaofooa_SM_EVT *) Escher_instance_cache[ (intptr_t) ooaofooa_CA_EESME_instance->SMevt_ID ];
  if ( ooaofooa_SM_EVTrelated_instance1 ) {
    ooaofooa_CA_EESME_R405_Link_is_carried_to_other_SMs_via( ooaofooa_SM_EVTrelated_instance1, ooaofooa_CA_EESME_instance );
  }
  {
  ooaofooa_CA_EESMC * ooaofooa_CA_EESMCrelated_instance1 = ooaofooa_CA_EESMC_AnyWhere1( ooaofooa_CA_EESME_instance->CPath_ID );
  if ( ooaofooa_CA_EESMCrelated_instance1 ) {
    ooaofooa_CA_EESME_R404_Link_carries( ooaofooa_CA_EESMCrelated_instance1, ooaofooa_CA_EESME_instance );
  }
  }
}


/*
 * RELATE CA_EESMC TO CA_EESME ACROSS R404
 */
void
ooaofooa_CA_EESME_R404_Link_carries( ooaofooa_CA_EESMC * part, ooaofooa_CA_EESME * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->CPath_ID = part->CPath_ID;
  form->CA_EESMC_R404_is_carried_by = part;
  Escher_SetInsertElement( &part->CA_EESME_R404_carries, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE CA_EESMC FROM CA_EESME ACROSS R404
 */
void
ooaofooa_CA_EESME_R404_Unlink_carries( ooaofooa_CA_EESMC * part, ooaofooa_CA_EESME * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->CA_EESMC_R404_is_carried_by = 0;
  Escher_SetRemoveElement( &part->CA_EESME_R404_carries, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SM_EVT TO CA_EESME ACROSS R405
 */
void
ooaofooa_CA_EESME_R405_Link_is_carried_to_other_SMs_via( ooaofooa_SM_EVT * part, ooaofooa_CA_EESME * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SMevt_ID = part->SMevt_ID;
  form->SM_EVT_R405_represents_communication_of = part;
  Escher_SetInsertElement( &part->CA_EESME_R405_is_carried_to_other_SMs_via, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_EVT FROM CA_EESME ACROSS R405
 */
void
ooaofooa_CA_EESME_R405_Unlink_is_carried_to_other_SMs_via( ooaofooa_SM_EVT * part, ooaofooa_CA_EESME * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_EVT_R405_represents_communication_of = 0;
  Escher_SetRemoveElement( &part->CA_EESME_R405_is_carried_to_other_SMs_via, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CA_EESME_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CA_EESME * self = (ooaofooa_CA_EESME *) instance;
  printf( "INSERT INTO CA_EESME VALUES ( %ld,%ld );\n",
    ((long)self->CPath_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMevt_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CA_EESME_container[ ooaofooa_CA_EESME_MAX_EXTENT_SIZE ];
static ooaofooa_CA_EESME ooaofooa_CA_EESME_instances[ ooaofooa_CA_EESME_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CA_EESME_extent = {
  {0,0}, {0,0}, &ooaofooa_CA_EESME_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CA_EESME_instances,
  sizeof( ooaofooa_CA_EESME ), 0, ooaofooa_CA_EESME_MAX_EXTENT_SIZE
  };


