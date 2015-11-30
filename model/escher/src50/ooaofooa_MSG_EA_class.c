/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_EA_class.c
 *
 * Class:       Event Argument  (MSG_EA)
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
ooaofooa_MSG_EA_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_MSG_EA * self = (ooaofooa_MSG_EA *) instance;
  /* Initialize application analysis class attributes.  */
  self->Arg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->SMedi_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_MSG_EA_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_MSG_EA * ooaofooa_MSG_EA_instance = (ooaofooa_MSG_EA *) instance;
  ooaofooa_SM_EVTDI * ooaofooa_SM_EVTDIrelated_instance1 = ooaofooa_SM_EVTDI_AnyWhere1( ooaofooa_MSG_EA_instance->SMedi_ID, ooaofooa_MSG_EA_instance->SM_ID );
  if ( ooaofooa_SM_EVTDIrelated_instance1 ) {
    ooaofooa_MSG_EA_R1017_Link_represents( ooaofooa_SM_EVTDIrelated_instance1, ooaofooa_MSG_EA_instance );
  }
  {
  ooaofooa_MSG_A * ooaofooa_MSG_Arelated_instance1 = (ooaofooa_MSG_A *) Escher_instance_cache[ (intptr_t) ooaofooa_MSG_EA_instance->Arg_ID ];
  if ( ooaofooa_MSG_Arelated_instance1 ) {
    ooaofooa_MSG_EA_R1013_Link( ooaofooa_MSG_Arelated_instance1, ooaofooa_MSG_EA_instance );
  }
  }
}


/*
 * RELATE MSG_A TO MSG_EA ACROSS R1013
 */
void
ooaofooa_MSG_EA_R1013_Link( ooaofooa_MSG_A * supertype, ooaofooa_MSG_EA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Arg_ID = supertype->Arg_ID;
  /* Optimized linkage for MSG_EA->MSG_A[R1013] */
  subtype->MSG_A_R1013 = supertype;
  /* Optimized linkage for MSG_A->MSG_EA[R1013] */
  supertype->R1013_subtype = subtype;
  supertype->R1013_object_id = ooaofooa_MSG_EA_CLASS_NUMBER;
}


/*
 * UNRELATE MSG_A FROM MSG_EA ACROSS R1013
 */
void
ooaofooa_MSG_EA_R1013_Unlink( ooaofooa_MSG_A * supertype, ooaofooa_MSG_EA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->MSG_A_R1013 = 0;
  supertype->R1013_subtype = 0;
  supertype->R1013_object_id = 0;
}


/*
 * RELATE SM_EVTDI TO MSG_EA ACROSS R1017
 */
void
ooaofooa_MSG_EA_R1017_Link_represents( ooaofooa_SM_EVTDI * part, ooaofooa_MSG_EA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->SMedi_ID = part->SMedi_ID;
  form->SM_EVTDI_R1017_is_represented_by = part;
  Escher_SetInsertElement( &part->MSG_EA_R1017_represents, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_EVTDI FROM MSG_EA ACROSS R1017
 */
void
ooaofooa_MSG_EA_R1017_Unlink_represents( ooaofooa_SM_EVTDI * part, ooaofooa_MSG_EA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = 0;
  form->SMedi_ID = 0;
  form->SM_EVTDI_R1017_is_represented_by = 0;
  Escher_SetRemoveElement( &part->MSG_EA_R1017_represents, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_MSG_EA_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_MSG_EA * self = (ooaofooa_MSG_EA *) instance;
  printf( "INSERT INTO MSG_EA VALUES ( %ld,%ld,%ld );\n",
    ((long)self->Arg_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMedi_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_MSG_EA_container[ ooaofooa_MSG_EA_MAX_EXTENT_SIZE ];
static ooaofooa_MSG_EA ooaofooa_MSG_EA_instances[ ooaofooa_MSG_EA_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_MSG_EA_extent = {
  {0,0}, {0,0}, &ooaofooa_MSG_EA_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_MSG_EA_instances,
  sizeof( ooaofooa_MSG_EA ), 0, ooaofooa_MSG_EA_MAX_EXTENT_SIZE
  };


