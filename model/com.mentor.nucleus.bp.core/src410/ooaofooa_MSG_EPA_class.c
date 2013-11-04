/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_EPA_class.c
 *
 * Class:       Executable Property Argument  (MSG_EPA)
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
ooaofooa_MSG_EPA_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_MSG_EPA * self = (ooaofooa_MSG_EPA *) instance;
  /* Initialize application analysis class attributes.  */
  self->Arg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->PP_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_MSG_EPA_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_MSG_EPA * ooaofooa_MSG_EPA_instance = (ooaofooa_MSG_EPA *) instance;
  ooaofooa_MSG_A * ooaofooa_MSG_Arelated_instance1 = (ooaofooa_MSG_A *) Escher_instance_cache[ (intptr_t) ooaofooa_MSG_EPA_instance->Arg_ID ];
  if ( ooaofooa_MSG_Arelated_instance1 ) {
    ooaofooa_MSG_EPA_R1013_Link( ooaofooa_MSG_Arelated_instance1, ooaofooa_MSG_EPA_instance );
  }
  {
  ooaofooa_C_PP * ooaofooa_C_PPrelated_instance1 = (ooaofooa_C_PP *) Escher_instance_cache[ (intptr_t) ooaofooa_MSG_EPA_instance->PP_Id ];
  if ( ooaofooa_C_PPrelated_instance1 ) {
    ooaofooa_MSG_EPA_R1023_Link_represents( ooaofooa_C_PPrelated_instance1, ooaofooa_MSG_EPA_instance );
  }
  }
}


/*
 * RELATE MSG_A TO MSG_EPA ACROSS R1013
 */
void
ooaofooa_MSG_EPA_R1013_Link( ooaofooa_MSG_A * supertype, ooaofooa_MSG_EPA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Arg_ID = supertype->Arg_ID;
  /* Optimized linkage for MSG_EPA->MSG_A[R1013] */
  subtype->MSG_A_R1013 = supertype;
  /* Optimized linkage for MSG_A->MSG_EPA[R1013] */
  supertype->R1013_subtype = subtype;
  supertype->R1013_object_id = ooaofooa_MSG_EPA_CLASS_NUMBER;
}


/*
 * UNRELATE MSG_A FROM MSG_EPA ACROSS R1013
 */
void
ooaofooa_MSG_EPA_R1013_Unlink( ooaofooa_MSG_A * supertype, ooaofooa_MSG_EPA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->MSG_A_R1013 = 0;
  supertype->R1013_subtype = 0;
  supertype->R1013_object_id = 0;
}


/*
 * RELATE C_PP TO MSG_EPA ACROSS R1023
 */
void
ooaofooa_MSG_EPA_R1023_Link_represents( ooaofooa_C_PP * part, ooaofooa_MSG_EPA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->PP_Id = part->PP_Id;
  form->C_PP_R1023_is_represented_by = part;
  Escher_SetInsertElement( &part->MSG_EPA_R1023_represents, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_PP FROM MSG_EPA ACROSS R1023
 */
void
ooaofooa_MSG_EPA_R1023_Unlink_represents( ooaofooa_C_PP * part, ooaofooa_MSG_EPA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->PP_Id = 0;
  form->C_PP_R1023_is_represented_by = 0;
  Escher_SetRemoveElement( &part->MSG_EPA_R1023_represents, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_MSG_EPA_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_MSG_EPA * self = (ooaofooa_MSG_EPA *) instance;
  printf( "INSERT INTO MSG_EPA VALUES ( %ld,%ld );\n",
    ((long)self->Arg_ID & ESCHER_IDDUMP_MASK),
    ((long)self->PP_Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_MSG_EPA_container[ ooaofooa_MSG_EPA_MAX_EXTENT_SIZE ];
static ooaofooa_MSG_EPA ooaofooa_MSG_EPA_instances[ ooaofooa_MSG_EPA_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_MSG_EPA_extent = {
  {0,0}, {0,0}, &ooaofooa_MSG_EPA_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_MSG_EPA_instances,
  sizeof( ooaofooa_MSG_EPA ), 0, ooaofooa_MSG_EPA_MAX_EXTENT_SIZE
  };


