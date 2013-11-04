/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_STACK_class.c
 *
 * Class:       Stack  (I_STACK)
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
ooaofooa_I_STACK_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_I_STACK * self = (ooaofooa_I_STACK *) instance;
  /* Initialize application analysis class attributes.  */
  self->Stack_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Stack_ID;
  self->Execution_Engine_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->runState = Escher_atoi( avlstring[ 3 ] );
  Escher_strcpy( self->suspendReason, avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_I_STACK_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_I_STACK * ooaofooa_I_STACK_instance = (ooaofooa_I_STACK *) instance;
  ooaofooa_I_EXE * ooaofooa_I_EXErelated_instance1 = (ooaofooa_I_EXE *) Escher_instance_cache[ (intptr_t) ooaofooa_I_STACK_instance->Execution_Engine_ID ];
  if ( ooaofooa_I_EXErelated_instance1 ) {
    ooaofooa_I_STACK_R2930_Link_controls( ooaofooa_I_EXErelated_instance1, ooaofooa_I_STACK_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_I_STACK *
ooaofooa_I_STACK_AnyWhere1( Escher_UniqueID_t w_Stack_ID )
{
  ooaofooa_I_STACK * w; 
  Escher_Iterator_s iter_I_STACK;
  Escher_IteratorReset( &iter_I_STACK, &pG_ooaofooa_I_STACK_extent.active );
  while ( (w = (ooaofooa_I_STACK *) Escher_IteratorNext( &iter_I_STACK )) != 0 ) {
    if ( w->Stack_ID == w_Stack_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE I_EXE TO I_STACK ACROSS R2930
 */
void
ooaofooa_I_STACK_R2930_Link_controls( ooaofooa_I_EXE * part, ooaofooa_I_STACK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Execution_Engine_ID = part->Execution_Engine_ID;
  form->I_EXE_R2930_is_controlled_by = part;
  part->I_STACK_R2930_controls = form;
}

/*
 * UNRELATE I_EXE FROM I_STACK ACROSS R2930
 */
void
ooaofooa_I_STACK_R2930_Unlink_controls( ooaofooa_I_EXE * part, ooaofooa_I_STACK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Execution_Engine_ID = 0;
  form->I_EXE_R2930_is_controlled_by = 0;
  part->I_STACK_R2930_controls = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_I_STACK_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_I_STACK * self = (ooaofooa_I_STACK *) instance;
  printf( "INSERT INTO I_STACK VALUES ( %ld,%ld,%d,'%s' );\n",
    ((long)self->Stack_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Execution_Engine_ID & ESCHER_IDDUMP_MASK),
    self->runState,
    self->suspendReason );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_I_STACK_container[ ooaofooa_I_STACK_MAX_EXTENT_SIZE ];
static ooaofooa_I_STACK ooaofooa_I_STACK_instances[ ooaofooa_I_STACK_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_I_STACK_extent = {
  {0,0}, {0,0}, &ooaofooa_I_STACK_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_I_STACK_instances,
  sizeof( ooaofooa_I_STACK ), 0, ooaofooa_I_STACK_MAX_EXTENT_SIZE
  };


