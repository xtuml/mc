/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_EEM_class.c
 *
 * Class:       External Entity in Model  (S_EEM)
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
ooaofooa_S_EEM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_EEM * self = (ooaofooa_S_EEM *) instance;
  /* Initialize application analysis class attributes.  */
  self->EEmod_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->EEmod_ID;
  self->EE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Modl_Typ = Escher_atoi( avlstring[ 3 ] );
  self->SS_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_EEM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_EEM * ooaofooa_S_EEM_instance = (ooaofooa_S_EEM *) instance;
  ooaofooa_S_SS * ooaofooa_S_SSrelated_instance1 = (ooaofooa_S_SS *) Escher_instance_cache[ (intptr_t) ooaofooa_S_EEM_instance->SS_ID ];
  if ( ooaofooa_S_SSrelated_instance1 ) {
    ooaofooa_S_EEM_R7_Link_contains( ooaofooa_S_SSrelated_instance1, ooaofooa_S_EEM_instance );
  }
  {
  ooaofooa_S_EE * ooaofooa_S_EErelated_instance1 = ooaofooa_S_EE_AnyWhere1( ooaofooa_S_EEM_instance->EE_ID );
  if ( ooaofooa_S_EErelated_instance1 ) {
    ooaofooa_S_EEM_R9_Link_is_represented_by( ooaofooa_S_EErelated_instance1, ooaofooa_S_EEM_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_EEM *
ooaofooa_S_EEM_AnyWhere1( Escher_UniqueID_t w_EEmod_ID, Escher_UniqueID_t w_EE_ID )
{
  ooaofooa_S_EEM * w; 
  Escher_Iterator_s iter_S_EEM;
  Escher_IteratorReset( &iter_S_EEM, &pG_ooaofooa_S_EEM_extent.active );
  while ( (w = (ooaofooa_S_EEM *) Escher_IteratorNext( &iter_S_EEM )) != 0 ) {
    if ( w->EEmod_ID == w_EEmod_ID && w->EE_ID == w_EE_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_SS TO S_EEM ACROSS R7
 */
void
ooaofooa_S_EEM_R7_Link_contains( ooaofooa_S_SS * part, ooaofooa_S_EEM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SS_ID = part->SS_ID;
  form->S_SS_R7_is_a_presence_of_an_an_external_entity_in = part;
  Escher_SetInsertElement( &part->S_EEM_R7_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SS FROM S_EEM ACROSS R7
 */
void
ooaofooa_S_EEM_R7_Unlink_contains( ooaofooa_S_SS * part, ooaofooa_S_EEM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SS_ID = 0;
  form->S_SS_R7_is_a_presence_of_an_an_external_entity_in = 0;
  Escher_SetRemoveElement( &part->S_EEM_R7_contains, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_EE TO S_EEM ACROSS R9
 */
void
ooaofooa_S_EEM_R9_Link_is_represented_by( ooaofooa_S_EE * part, ooaofooa_S_EEM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EE_ID = part->EE_ID;
  form->S_EE_R9_is_a_presence_in_subsystem_model_of = part;
  Escher_SetInsertElement( &part->S_EEM_R9_is_represented_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_EE FROM S_EEM ACROSS R9
 */
void
ooaofooa_S_EEM_R9_Unlink_is_represented_by( ooaofooa_S_EE * part, ooaofooa_S_EEM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->S_EE_R9_is_a_presence_in_subsystem_model_of = 0;
  Escher_SetRemoveElement( &part->S_EEM_R9_is_represented_by, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_EEM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_EEM * self = (ooaofooa_S_EEM *) instance;
  printf( "INSERT INTO S_EEM VALUES ( %ld,%ld,%d,%ld );\n",
    ((long)self->EEmod_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EE_ID & ESCHER_IDDUMP_MASK),
    self->Modl_Typ,
    ((long)self->SS_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_EEM_container[ ooaofooa_S_EEM_MAX_EXTENT_SIZE ];
static ooaofooa_S_EEM ooaofooa_S_EEM_instances[ ooaofooa_S_EEM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_EEM_extent = {
  {0,0}, {0,0}, &ooaofooa_S_EEM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_EEM_instances,
  sizeof( ooaofooa_S_EEM ), 0, ooaofooa_S_EEM_MAX_EXTENT_SIZE
  };


