/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_IA_class.c
 *
 * Class:       Informal Argument  (MSG_IA)
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
ooaofooa_MSG_IA_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_MSG_IA * self = (ooaofooa_MSG_IA *) instance;
  /* Initialize application analysis class attributes.  */
  self->Arg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_MSG_IA_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_MSG_IA * ooaofooa_MSG_IA_instance = (ooaofooa_MSG_IA *) instance;
  ooaofooa_MSG_A * ooaofooa_MSG_Arelated_instance1 = (ooaofooa_MSG_A *) Escher_instance_cache[ (intptr_t) ooaofooa_MSG_IA_instance->Arg_ID ];
  if ( ooaofooa_MSG_Arelated_instance1 ) {
    ooaofooa_MSG_IA_R1013_Link( ooaofooa_MSG_Arelated_instance1, ooaofooa_MSG_IA_instance );
  }
}


/*
 * RELATE MSG_A TO MSG_IA ACROSS R1013
 */
void
ooaofooa_MSG_IA_R1013_Link( ooaofooa_MSG_A * supertype, ooaofooa_MSG_IA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Arg_ID = supertype->Arg_ID;
  /* Optimized linkage for MSG_IA->MSG_A[R1013] */
  subtype->MSG_A_R1013 = supertype;
  /* Optimized linkage for MSG_A->MSG_IA[R1013] */
  supertype->R1013_subtype = subtype;
  supertype->R1013_object_id = ooaofooa_MSG_IA_CLASS_NUMBER;
}


/*
 * UNRELATE MSG_A FROM MSG_IA ACROSS R1013
 */
void
ooaofooa_MSG_IA_R1013_Unlink( ooaofooa_MSG_A * supertype, ooaofooa_MSG_IA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->MSG_A_R1013 = 0;
  supertype->R1013_subtype = 0;
  supertype->R1013_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_MSG_IA_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_MSG_IA * self = (ooaofooa_MSG_IA *) instance;
  printf( "INSERT INTO MSG_IA VALUES ( %ld );\n",
    ((long)self->Arg_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_MSG_IA_container[ ooaofooa_MSG_IA_MAX_EXTENT_SIZE ];
static ooaofooa_MSG_IA ooaofooa_MSG_IA_instances[ ooaofooa_MSG_IA_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_MSG_IA_extent = {
  {0,0}, {0,0}, &ooaofooa_MSG_IA_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_MSG_IA_instances,
  sizeof( ooaofooa_MSG_IA ), 0, ooaofooa_MSG_IA_MAX_EXTENT_SIZE
  };


