/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_SMEEA_class.c
 *
 * Class:       SM to EE Access Path  (CA_SMEEA)
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
ooaofooa_CA_SMEEA_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CA_SMEEA * self = (ooaofooa_CA_SMEEA *) instance;
  /* Initialize application analysis class attributes.  */
  self->APath_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->EE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->EEmod_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CA_SMEEA_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CA_SMEEA * ooaofooa_CA_SMEEA_instance = (ooaofooa_CA_SMEEA *) instance;
  ooaofooa_S_EEM * ooaofooa_S_EEMrelated_instance1 = ooaofooa_S_EEM_AnyWhere1( ooaofooa_CA_SMEEA_instance->EEmod_ID, ooaofooa_CA_SMEEA_instance->EE_ID );
  if ( ooaofooa_S_EEMrelated_instance1 ) {
    ooaofooa_CA_SMEEA_R421_Link_has_data_access_represented_by( ooaofooa_S_EEMrelated_instance1, ooaofooa_CA_SMEEA_instance );
  }
  {
  ooaofooa_CA_ACC * ooaofooa_CA_ACCrelated_instance1 = (ooaofooa_CA_ACC *) Escher_instance_cache[ (intptr_t) ooaofooa_CA_SMEEA_instance->APath_ID ];
  if ( ooaofooa_CA_ACCrelated_instance1 ) {
    ooaofooa_CA_SMEEA_R415_Link( ooaofooa_CA_ACCrelated_instance1, ooaofooa_CA_SMEEA_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_CA_SMEEA *
ooaofooa_CA_SMEEA_AnyWhere2( Escher_UniqueID_t w_APath_ID, Escher_UniqueID_t w_EE_ID )
{
  ooaofooa_CA_SMEEA * w; 
  Escher_Iterator_s iter_CA_SMEEA;
  Escher_IteratorReset( &iter_CA_SMEEA, &pG_ooaofooa_CA_SMEEA_extent.active );
  while ( (w = (ooaofooa_CA_SMEEA *) Escher_IteratorNext( &iter_CA_SMEEA )) != 0 ) {
    if ( w->APath_ID == w_APath_ID && w->EE_ID == w_EE_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE CA_ACC TO CA_SMEEA ACROSS R415
 */
void
ooaofooa_CA_SMEEA_R415_Link( ooaofooa_CA_ACC * supertype, ooaofooa_CA_SMEEA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->APath_ID = supertype->APath_ID;
  /* Optimized linkage for CA_SMEEA->CA_ACC[R415] */
  subtype->CA_ACC_R415 = supertype;
  /* Optimized linkage for CA_ACC->CA_SMEEA[R415] */
  supertype->R415_subtype = subtype;
  supertype->R415_object_id = ooaofooa_CA_SMEEA_CLASS_NUMBER;
}


/*
 * UNRELATE CA_ACC FROM CA_SMEEA ACROSS R415
 */
void
ooaofooa_CA_SMEEA_R415_Unlink( ooaofooa_CA_ACC * supertype, ooaofooa_CA_SMEEA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->CA_ACC_R415 = 0;
  supertype->R415_subtype = 0;
  supertype->R415_object_id = 0;
}


/*
 * RELATE S_EEM TO CA_SMEEA ACROSS R421
 */
void
ooaofooa_CA_SMEEA_R421_Link_has_data_access_represented_by( ooaofooa_S_EEM * part, ooaofooa_CA_SMEEA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EEmod_ID = part->EEmod_ID;
  form->EE_ID = part->EE_ID;
  form->S_EEM_R421_accesses_data_of = part;
  Escher_SetInsertElement( &part->CA_SMEEA_R421_has_data_access_represented_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_EEM FROM CA_SMEEA ACROSS R421
 */
void
ooaofooa_CA_SMEEA_R421_Unlink_has_data_access_represented_by( ooaofooa_S_EEM * part, ooaofooa_CA_SMEEA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EEmod_ID = 0;
  form->S_EEM_R421_accesses_data_of = 0;
  Escher_SetRemoveElement( &part->CA_SMEEA_R421_has_data_access_represented_by, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CA_SMEEA_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CA_SMEEA * self = (ooaofooa_CA_SMEEA *) instance;
  printf( "INSERT INTO CA_SMEEA VALUES ( %ld,%ld,%ld );\n",
    ((long)self->APath_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EE_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EEmod_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CA_SMEEA_container[ ooaofooa_CA_SMEEA_MAX_EXTENT_SIZE ];
static ooaofooa_CA_SMEEA ooaofooa_CA_SMEEA_instances[ ooaofooa_CA_SMEEA_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CA_SMEEA_extent = {
  {0,0}, {0,0}, &ooaofooa_CA_SMEEA_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CA_SMEEA_instances,
  sizeof( ooaofooa_CA_SMEEA ), 0, ooaofooa_CA_SMEEA_MAX_EXTENT_SIZE
  };


