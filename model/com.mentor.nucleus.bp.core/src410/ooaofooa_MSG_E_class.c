/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_E_class.c
 *
 * Class:       Event Message  (MSG_E)
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
ooaofooa_MSG_E_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_MSG_E * self = (ooaofooa_MSG_E *) instance;
  /* Initialize application analysis class attributes.  */
  self->Msg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SMevt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_MSG_E_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_MSG_E * ooaofooa_MSG_E_instance = (ooaofooa_MSG_E *) instance;
  ooaofooa_SM_EVT * ooaofooa_SM_EVTrelated_instance1 = (ooaofooa_SM_EVT *) Escher_instance_cache[ (intptr_t) ooaofooa_MSG_E_instance->SMevt_ID ];
  if ( ooaofooa_SM_EVTrelated_instance1 ) {
    ooaofooa_MSG_E_R1009_Link_is_generated_by( ooaofooa_SM_EVTrelated_instance1, ooaofooa_MSG_E_instance );
  }
  {
  ooaofooa_MSG_AM * ooaofooa_MSG_AMrelated_instance1 = ooaofooa_MSG_AM_AnyWhere1( ooaofooa_MSG_E_instance->Msg_ID );
  if ( ooaofooa_MSG_AMrelated_instance1 ) {
    ooaofooa_MSG_E_R1019_Link( ooaofooa_MSG_AMrelated_instance1, ooaofooa_MSG_E_instance );
  }
  }
}


/*
 * RELATE SM_EVT TO MSG_E ACROSS R1009
 */
void
ooaofooa_MSG_E_R1009_Link_is_generated_by( ooaofooa_SM_EVT * part, ooaofooa_MSG_E * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SMevt_ID = part->SMevt_ID;
  form->SM_EVT_R1009_generates = part;
  Escher_SetInsertElement( &part->MSG_E_R1009_is_generated_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_EVT FROM MSG_E ACROSS R1009
 */
void
ooaofooa_MSG_E_R1009_Unlink_is_generated_by( ooaofooa_SM_EVT * part, ooaofooa_MSG_E * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SMevt_ID = 0;
  form->SM_EVT_R1009_generates = 0;
  Escher_SetRemoveElement( &part->MSG_E_R1009_is_generated_by, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE MSG_AM TO MSG_E ACROSS R1019
 */
void
ooaofooa_MSG_E_R1019_Link( ooaofooa_MSG_AM * supertype, ooaofooa_MSG_E * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Msg_ID = supertype->Msg_ID;
  /* Optimized linkage for MSG_E->MSG_AM[R1019] */
  subtype->MSG_AM_R1019 = supertype;
  /* Optimized linkage for MSG_AM->MSG_E[R1019] */
  supertype->R1019_subtype = subtype;
  supertype->R1019_object_id = ooaofooa_MSG_E_CLASS_NUMBER;
}


/*
 * UNRELATE MSG_AM FROM MSG_E ACROSS R1019
 */
void
ooaofooa_MSG_E_R1019_Unlink( ooaofooa_MSG_AM * supertype, ooaofooa_MSG_E * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->MSG_AM_R1019 = 0;
  supertype->R1019_subtype = 0;
  supertype->R1019_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_MSG_E_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_MSG_E * self = (ooaofooa_MSG_E *) instance;
  printf( "INSERT INTO MSG_E VALUES ( %ld,%ld );\n",
    ((long)self->Msg_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMevt_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_MSG_E_container[ ooaofooa_MSG_E_MAX_EXTENT_SIZE ];
static ooaofooa_MSG_E ooaofooa_MSG_E_instances[ ooaofooa_MSG_E_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_MSG_E_extent = {
  {0,0}, {0,0}, &ooaofooa_MSG_E_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_MSG_E_instances,
  sizeof( ooaofooa_MSG_E ), 0, ooaofooa_MSG_E_MAX_EXTENT_SIZE
  };


