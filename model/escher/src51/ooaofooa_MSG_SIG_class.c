/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_SIG_class.c
 *
 * Class:       Signal Message  (MSG_SIG)
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
ooaofooa_MSG_SIG_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_MSG_SIG * self = (ooaofooa_MSG_SIG *) instance;
  /* Initialize application analysis class attributes.  */
  self->Msg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_MSG_SIG_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_MSG_SIG * ooaofooa_MSG_SIG_instance = (ooaofooa_MSG_SIG *) instance;
  ooaofooa_MSG_AM * ooaofooa_MSG_AMrelated_instance1 = ooaofooa_MSG_AM_AnyWhere1( ooaofooa_MSG_SIG_instance->Msg_ID );
  if ( ooaofooa_MSG_AMrelated_instance1 ) {
    ooaofooa_MSG_SIG_R1019_Link( ooaofooa_MSG_AMrelated_instance1, ooaofooa_MSG_SIG_instance );
  }
  {
  ooaofooa_C_AS * ooaofooa_C_ASrelated_instance1 = ooaofooa_C_AS_AnyWhere1( ooaofooa_MSG_SIG_instance->Id );
  if ( ooaofooa_C_ASrelated_instance1 ) {
    ooaofooa_MSG_SIG_R1021_Link_sent_by( ooaofooa_C_ASrelated_instance1, ooaofooa_MSG_SIG_instance );
  }
  }
}


/*
 * RELATE MSG_AM TO MSG_SIG ACROSS R1019
 */
void
ooaofooa_MSG_SIG_R1019_Link( ooaofooa_MSG_AM * supertype, ooaofooa_MSG_SIG * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Msg_ID = supertype->Msg_ID;
  /* Optimized linkage for MSG_SIG->MSG_AM[R1019] */
  subtype->MSG_AM_R1019 = supertype;
  /* Optimized linkage for MSG_AM->MSG_SIG[R1019] */
  supertype->R1019_subtype = subtype;
  supertype->R1019_object_id = ooaofooa_MSG_SIG_CLASS_NUMBER;
}


/*
 * UNRELATE MSG_AM FROM MSG_SIG ACROSS R1019
 */
void
ooaofooa_MSG_SIG_R1019_Unlink( ooaofooa_MSG_AM * supertype, ooaofooa_MSG_SIG * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->MSG_AM_R1019 = 0;
  supertype->R1019_subtype = 0;
  supertype->R1019_object_id = 0;
}


/*
 * RELATE C_AS TO MSG_SIG ACROSS R1021
 */
void
ooaofooa_MSG_SIG_R1021_Link_sent_by( ooaofooa_C_AS * part, ooaofooa_MSG_SIG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Id = part->Id;
  form->C_AS_R1021_sends = part;
  Escher_SetInsertElement( &part->MSG_SIG_R1021_sent_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_AS FROM MSG_SIG ACROSS R1021
 */
void
ooaofooa_MSG_SIG_R1021_Unlink_sent_by( ooaofooa_C_AS * part, ooaofooa_MSG_SIG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Id = 0;
  form->C_AS_R1021_sends = 0;
  Escher_SetRemoveElement( &part->MSG_SIG_R1021_sent_by, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_MSG_SIG_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_MSG_SIG * self = (ooaofooa_MSG_SIG *) instance;
  printf( "INSERT INTO MSG_SIG VALUES ( %ld,%ld );\n",
    ((long)self->Msg_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_MSG_SIG_container[ ooaofooa_MSG_SIG_MAX_EXTENT_SIZE ];
static ooaofooa_MSG_SIG ooaofooa_MSG_SIG_instances[ ooaofooa_MSG_SIG_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_MSG_SIG_extent = {
  {0,0}, {0,0}, &ooaofooa_MSG_SIG_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_MSG_SIG_instances,
  sizeof( ooaofooa_MSG_SIG ), 0, ooaofooa_MSG_SIG_MAX_EXTENT_SIZE
  };


