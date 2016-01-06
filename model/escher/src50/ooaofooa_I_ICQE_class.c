/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_ICQE_class.c
 *
 * Class:       Intercomponent Queue Entry  (I_ICQE)
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
ooaofooa_I_ICQE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_I_ICQE * self = (ooaofooa_I_ICQE *) instance;
  /* Initialize application analysis class attributes.  */
  self->Stack_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Stack_Frame_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Execution_Engine_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_I_ICQE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_I_ICQE * ooaofooa_I_ICQE_instance = (ooaofooa_I_ICQE *) instance;
  ooaofooa_I_STACK * ooaofooa_I_STACKrelated_instance1 = (ooaofooa_I_STACK *) Escher_instance_cache[ (intptr_t) ooaofooa_I_ICQE_instance->Stack_ID ];
  ooaofooa_I_STF * ooaofooa_I_STFrelated_instance2 = (ooaofooa_I_STF *) Escher_instance_cache[ (intptr_t) ooaofooa_I_ICQE_instance->Stack_Frame_ID ];
  if ( ooaofooa_I_STACKrelated_instance1 && ooaofooa_I_STFrelated_instance2 ) {
    ooaofooa_I_ICQE_R2966_Link( ooaofooa_I_STACKrelated_instance1, ooaofooa_I_STFrelated_instance2, ooaofooa_I_ICQE_instance );
  }
  {
  ooaofooa_I_EXE * ooaofooa_I_EXErelated_instance1 = (ooaofooa_I_EXE *) Escher_instance_cache[ (intptr_t) ooaofooa_I_ICQE_instance->Execution_Engine_ID ];
  if ( ooaofooa_I_EXErelated_instance1 ) {
    ooaofooa_I_ICQE_R2977_Link( ooaofooa_I_EXErelated_instance1, ooaofooa_I_ICQE_instance );
  }
  }
}


/*
 * RELATE I_STACK TO I_STF ACROSS R2966 USING I_ICQE
 */
void
ooaofooa_I_ICQE_R2966_Link( ooaofooa_I_STACK * aone, ooaofooa_I_STF * aoth, ooaofooa_I_ICQE * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Stack_ID = aone->Stack_ID;
  assr->Stack_Frame_ID = aoth->Stack_Frame_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->I_STACK_R2966_is_enqueued_with = aone;
  assr->I_STF_R2966_has_queued = aoth;
  Escher_SetInsertElement( &aone->I_ICQE_R2966, assr );
  aoth->I_ICQE_R2966 = assr;
}

/*
 * UNRELATE I_STACK FROM I_STF ACROSS R2966 USING I_ICQE
 */
void
ooaofooa_I_ICQE_R2966_Unlink( ooaofooa_I_STACK * aone, ooaofooa_I_STF * aoth, ooaofooa_I_ICQE * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->I_STACK_R2966_is_enqueued_with = 0;
  assr->I_STF_R2966_has_queued = 0;
  Escher_SetRemoveElement( &aone->I_ICQE_R2966, assr );
  aoth->I_ICQE_R2966 = 0;
}

/*
 * RELATE I_EXE TO I_ICQE ACROSS R2977
 */
void
ooaofooa_I_ICQE_R2977_Link( ooaofooa_I_EXE * part, ooaofooa_I_ICQE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Execution_Engine_ID = part->Execution_Engine_ID;
  form->I_EXE_R2977_enqueued_by = part;
  Escher_SetInsertElement( &part->I_ICQE_R2977, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE I_EXE FROM I_ICQE ACROSS R2977
 */
void
ooaofooa_I_ICQE_R2977_Unlink( ooaofooa_I_EXE * part, ooaofooa_I_ICQE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Execution_Engine_ID = 0;
  form->I_EXE_R2977_enqueued_by = 0;
  Escher_SetRemoveElement( &part->I_ICQE_R2977, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_I_ICQE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_I_ICQE * self = (ooaofooa_I_ICQE *) instance;
  printf( "INSERT INTO I_ICQE VALUES ( %ld,%ld,%ld );\n",
    ((long)self->Stack_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Stack_Frame_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Execution_Engine_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_I_ICQE_container[ ooaofooa_I_ICQE_MAX_EXTENT_SIZE ];
static ooaofooa_I_ICQE ooaofooa_I_ICQE_instances[ ooaofooa_I_ICQE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_I_ICQE_extent = {
  {0,0}, {0,0}, &ooaofooa_I_ICQE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_I_ICQE_instances,
  sizeof( ooaofooa_I_ICQE ), 0, ooaofooa_I_ICQE_MAX_EXTENT_SIZE
  };


