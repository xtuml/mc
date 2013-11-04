/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_EVENT_PARAMETERS_class.c
 *
 * Class:       OAL event_parameters  (TE_EVENT_PARAMETERS)
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
ooaofooa_TE_EVENT_PARAMETERS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_EVENT_PARAMETERS * self = (ooaofooa_TE_EVENT_PARAMETERS *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->evt_msg_var, avlstring[ 1 ] );
  Escher_strcpy( self->parameter, avlstring[ 2 ] );
  Escher_strcpy( self->value, avlstring[ 3 ] );
  Escher_strcpy( self->value_type, avlstring[ 4 ] );
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_EVENT_PARAMETERS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_EVENT_PARAMETERS * ooaofooa_TE_EVENT_PARAMETERS_instance = (ooaofooa_TE_EVENT_PARAMETERS *) instance;
  ooaofooa_TE_SMT * ooaofooa_TE_SMTrelated_instance1 = ooaofooa_TE_SMT_AnyWhere1( ooaofooa_TE_EVENT_PARAMETERS_instance->Statement_ID );
  if ( ooaofooa_TE_SMTrelated_instance1 ) {
    ooaofooa_TE_EVENT_PARAMETERS_R2069_Link( ooaofooa_TE_SMTrelated_instance1, ooaofooa_TE_EVENT_PARAMETERS_instance );
  }
}


/*
 * RELATE TE_SMT TO TE_EVENT_PARAMETERS ACROSS R2069
 */
void
ooaofooa_TE_EVENT_PARAMETERS_R2069_Link( ooaofooa_TE_SMT * supertype, ooaofooa_TE_EVENT_PARAMETERS * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for TE_EVENT_PARAMETERS->TE_SMT[R2069] */
  subtype->TE_SMT_R2069 = supertype;
  /* Optimized linkage for TE_SMT->TE_EVENT_PARAMETERS[R2069] */
  supertype->R2069_subtype = subtype;
  supertype->R2069_object_id = ooaofooa_TE_EVENT_PARAMETERS_CLASS_NUMBER;
}


/*
 * UNRELATE TE_SMT FROM TE_EVENT_PARAMETERS ACROSS R2069
 */
void
ooaofooa_TE_EVENT_PARAMETERS_R2069_Unlink( ooaofooa_TE_SMT * supertype, ooaofooa_TE_EVENT_PARAMETERS * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->TE_SMT_R2069 = 0;
  supertype->R2069_subtype = 0;
  supertype->R2069_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_EVENT_PARAMETERS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_EVENT_PARAMETERS * self = (ooaofooa_TE_EVENT_PARAMETERS *) instance;
  printf( "INSERT INTO TE_EVENT_PARAMETERS VALUES ( '%s','%s','%s','%s',%ld );\n",
    self->evt_msg_var,
    self->parameter,
    self->value,
    self->value_type,
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_EVENT_PARAMETERS_container[ ooaofooa_TE_EVENT_PARAMETERS_MAX_EXTENT_SIZE ];
static ooaofooa_TE_EVENT_PARAMETERS ooaofooa_TE_EVENT_PARAMETERS_instances[ ooaofooa_TE_EVENT_PARAMETERS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_EVENT_PARAMETERS_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_EVENT_PARAMETERS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_EVENT_PARAMETERS_instances,
  sizeof( ooaofooa_TE_EVENT_PARAMETERS ), 0, ooaofooa_TE_EVENT_PARAMETERS_MAX_EXTENT_SIZE
  };


