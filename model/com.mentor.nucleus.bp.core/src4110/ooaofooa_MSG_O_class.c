/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_O_class.c
 *
 * Class:       Operation Message  (MSG_O)
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
ooaofooa_MSG_O_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_MSG_O * self = (ooaofooa_MSG_O *) instance;
  /* Initialize application analysis class attributes.  */
  self->Msg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Tfr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_MSG_O_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_MSG_O * ooaofooa_MSG_O_instance = (ooaofooa_MSG_O *) instance;
  ooaofooa_O_TFR * ooaofooa_O_TFRrelated_instance1 = (ooaofooa_O_TFR *) Escher_instance_cache[ (intptr_t) ooaofooa_MSG_O_instance->Tfr_ID ];
  if ( ooaofooa_O_TFRrelated_instance1 ) {
    ooaofooa_MSG_O_R1011_Link_is_invoked_by( ooaofooa_O_TFRrelated_instance1, ooaofooa_MSG_O_instance );
  }
  {
  ooaofooa_MSG_SM * ooaofooa_MSG_SMrelated_instance1 = ooaofooa_MSG_SM_AnyWhere1( ooaofooa_MSG_O_instance->Msg_ID );
  if ( ooaofooa_MSG_SMrelated_instance1 ) {
    ooaofooa_MSG_O_R1020_Link( ooaofooa_MSG_SMrelated_instance1, ooaofooa_MSG_O_instance );
  }
  }
}


/*
 * RELATE O_TFR TO MSG_O ACROSS R1011
 */
void
ooaofooa_MSG_O_R1011_Link_is_invoked_by( ooaofooa_O_TFR * part, ooaofooa_MSG_O * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Tfr_ID = part->Tfr_ID;
  form->O_TFR_R1011_is_invocation_of = part;
  Escher_SetInsertElement( &part->MSG_O_R1011_is_invoked_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_TFR FROM MSG_O ACROSS R1011
 */
void
ooaofooa_MSG_O_R1011_Unlink_is_invoked_by( ooaofooa_O_TFR * part, ooaofooa_MSG_O * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Tfr_ID = 0;
  form->O_TFR_R1011_is_invocation_of = 0;
  Escher_SetRemoveElement( &part->MSG_O_R1011_is_invoked_by, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE MSG_SM TO MSG_O ACROSS R1020
 */
void
ooaofooa_MSG_O_R1020_Link( ooaofooa_MSG_SM * supertype, ooaofooa_MSG_O * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Msg_ID = supertype->Msg_ID;
  /* Optimized linkage for MSG_O->MSG_SM[R1020] */
  subtype->MSG_SM_R1020 = supertype;
  /* Optimized linkage for MSG_SM->MSG_O[R1020] */
  supertype->R1020_subtype = subtype;
  supertype->R1020_object_id = ooaofooa_MSG_O_CLASS_NUMBER;
}


/*
 * UNRELATE MSG_SM FROM MSG_O ACROSS R1020
 */
void
ooaofooa_MSG_O_R1020_Unlink( ooaofooa_MSG_SM * supertype, ooaofooa_MSG_O * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->MSG_SM_R1020 = 0;
  supertype->R1020_subtype = 0;
  supertype->R1020_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_MSG_O_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_MSG_O * self = (ooaofooa_MSG_O *) instance;
  printf( "INSERT INTO MSG_O VALUES ( %ld,%ld );\n",
    ((long)self->Msg_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Tfr_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_MSG_O_container[ ooaofooa_MSG_O_MAX_EXTENT_SIZE ];
static ooaofooa_MSG_O ooaofooa_MSG_O_instances[ ooaofooa_MSG_O_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_MSG_O_extent = {
  {0,0}, {0,0}, &ooaofooa_MSG_O_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_MSG_O_instances,
  sizeof( ooaofooa_MSG_O ), 0, ooaofooa_MSG_O_MAX_EXTENT_SIZE
  };


