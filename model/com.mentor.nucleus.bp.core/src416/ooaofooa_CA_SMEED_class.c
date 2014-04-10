/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_SMEED_class.c
 *
 * Class:       SM to EE Data Item Access  (CA_SMEED)
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
ooaofooa_CA_SMEED_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CA_SMEED * self = (ooaofooa_CA_SMEED *) instance;
  /* Initialize application analysis class attributes.  */
  self->APath_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->EEdi_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->EE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CA_SMEED_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CA_SMEED * ooaofooa_CA_SMEED_instance = (ooaofooa_CA_SMEED *) instance;
  ooaofooa_S_EEDI * ooaofooa_S_EEDIrelated_instance1 = ooaofooa_S_EEDI_AnyWhere1( ooaofooa_CA_SMEED_instance->EEdi_ID, ooaofooa_CA_SMEED_instance->EE_ID );
  if ( ooaofooa_S_EEDIrelated_instance1 ) {
    ooaofooa_CA_SMEED_R423_Link_is_accessed_by( ooaofooa_S_EEDIrelated_instance1, ooaofooa_CA_SMEED_instance );
  }
  {
  ooaofooa_CA_SMEEA * ooaofooa_CA_SMEEArelated_instance1 = ooaofooa_CA_SMEEA_AnyWhere2( ooaofooa_CA_SMEED_instance->APath_ID, ooaofooa_CA_SMEED_instance->EE_ID );
  if ( ooaofooa_CA_SMEEArelated_instance1 ) {
    ooaofooa_CA_SMEED_R422_Link_carries( ooaofooa_CA_SMEEArelated_instance1, ooaofooa_CA_SMEED_instance );
  }
  }
}


/*
 * RELATE CA_SMEEA TO CA_SMEED ACROSS R422
 */
void
ooaofooa_CA_SMEED_R422_Link_carries( ooaofooa_CA_SMEEA * part, ooaofooa_CA_SMEED * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->APath_ID = part->APath_ID;
  form->EE_ID = part->EE_ID;
  form->CA_SMEEA_R422_is_carried_by = part;
  Escher_SetInsertElement( &part->CA_SMEED_R422_carries, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE CA_SMEEA FROM CA_SMEED ACROSS R422
 */
void
ooaofooa_CA_SMEED_R422_Unlink_carries( ooaofooa_CA_SMEEA * part, ooaofooa_CA_SMEED * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->CA_SMEEA_R422_is_carried_by = 0;
  Escher_SetRemoveElement( &part->CA_SMEED_R422_carries, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_EEDI TO CA_SMEED ACROSS R423
 */
void
ooaofooa_CA_SMEED_R423_Link_is_accessed_by( ooaofooa_S_EEDI * part, ooaofooa_CA_SMEED * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EEdi_ID = part->EEdi_ID;
  form->EE_ID = part->EE_ID;
  form->S_EEDI_R423_represents_access_of = part;
  Escher_SetInsertElement( &part->CA_SMEED_R423_is_accessed_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_EEDI FROM CA_SMEED ACROSS R423
 */
void
ooaofooa_CA_SMEED_R423_Unlink_is_accessed_by( ooaofooa_S_EEDI * part, ooaofooa_CA_SMEED * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->S_EEDI_R423_represents_access_of = 0;
  Escher_SetRemoveElement( &part->CA_SMEED_R423_is_accessed_by, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CA_SMEED_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CA_SMEED * self = (ooaofooa_CA_SMEED *) instance;
  printf( "INSERT INTO CA_SMEED VALUES ( %ld,%ld,%ld );\n",
    ((long)self->APath_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EEdi_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EE_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CA_SMEED_container[ ooaofooa_CA_SMEED_MAX_EXTENT_SIZE ];
static ooaofooa_CA_SMEED ooaofooa_CA_SMEED_instances[ ooaofooa_CA_SMEED_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CA_SMEED_extent = {
  {0,0}, {0,0}, &ooaofooa_CA_SMEED_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CA_SMEED_instances,
  sizeof( ooaofooa_CA_SMEED ), 0, ooaofooa_CA_SMEED_MAX_EXTENT_SIZE
  };


