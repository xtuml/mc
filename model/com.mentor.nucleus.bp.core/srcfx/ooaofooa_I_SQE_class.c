/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_SQE_class.c
 *
 * Class:       Self Queue Entry  (I_SQE)
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
ooaofooa_I_SQE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_I_SQE * self = (ooaofooa_I_SQE *) instance;
  /* Initialize application analysis class attributes.  */
  self->Self_Queue_Entry_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Self_Queue_Entry_ID;
  self->Execution_Engine_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Event_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Next_Self_Queue_Entry_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_I_SQE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_I_SQE * ooaofooa_I_SQE_instance = (ooaofooa_I_SQE *) instance;
  ooaofooa_I_EXE * ooaofooa_I_EXErelated_instance1 = (ooaofooa_I_EXE *) Escher_instance_cache[ (intptr_t) ooaofooa_I_SQE_instance->Execution_Engine_ID ];
  ooaofooa_I_EVI * ooaofooa_I_EVIrelated_instance2 = (ooaofooa_I_EVI *) Escher_instance_cache[ (intptr_t) ooaofooa_I_SQE_instance->Event_ID ];
  if ( ooaofooa_I_EXErelated_instance1 && ooaofooa_I_EVIrelated_instance2 ) {
    ooaofooa_I_SQE_R2946_Link( ooaofooa_I_EXErelated_instance1, ooaofooa_I_EVIrelated_instance2, ooaofooa_I_SQE_instance );
  }
  {
  ooaofooa_I_SQE * ooaofooa_I_SQErelated_instance1 = (ooaofooa_I_SQE *) Escher_instance_cache[ (intptr_t) ooaofooa_I_SQE_instance->Next_Self_Queue_Entry_ID ];
  if ( ooaofooa_I_SQErelated_instance1 ) {
    ooaofooa_I_SQE_R2947_Link_precedes( ooaofooa_I_SQErelated_instance1, ooaofooa_I_SQE_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_I_SQE *
ooaofooa_I_SQE_AnyWhere1( Escher_UniqueID_t w_Self_Queue_Entry_ID )
{
  ooaofooa_I_SQE * w; 
  Escher_Iterator_s iter_I_SQE;
  Escher_IteratorReset( &iter_I_SQE, &pG_ooaofooa_I_SQE_extent.active );
  while ( (w = (ooaofooa_I_SQE *) Escher_IteratorNext( &iter_I_SQE )) != 0 ) {
    if ( w->Self_Queue_Entry_ID == w_Self_Queue_Entry_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE I_EXE TO I_EVI ACROSS R2946 USING I_SQE
 */
void
ooaofooa_I_SQE_R2946_Link( ooaofooa_I_EXE * aone, ooaofooa_I_EVI * aoth, ooaofooa_I_SQE * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Execution_Engine_ID = aone->Execution_Engine_ID;
  assr->Event_ID = aoth->Event_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->I_EXE_R2946 = aone;
  assr->I_EVI_R2946 = aoth;
  Escher_SetInsertElement( &aone->I_SQE_R2946, assr );
  aoth->I_SQE_R2946 = assr;
}

/*
 * UNRELATE I_EXE FROM I_EVI ACROSS R2946 USING I_SQE
 */
void
ooaofooa_I_SQE_R2946_Unlink( ooaofooa_I_EXE * aone, ooaofooa_I_EVI * aoth, ooaofooa_I_SQE * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Execution_Engine_ID = 0;
  assr->Event_ID = 0;
  assr->I_EXE_R2946 = 0;
  assr->I_EVI_R2946 = 0;
  Escher_SetRemoveElement( &aone->I_SQE_R2946, assr );
  aoth->I_SQE_R2946 = 0;
}

/*
 * RELATE <left> I_SQE TO <right> I_SQE ACROSS R2947.'follows'
 */
void
ooaofooa_I_SQE_R2947_Link_follows( ooaofooa_I_SQE * left, ooaofooa_I_SQE * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Next_Self_Queue_Entry_ID = right->Self_Queue_Entry_ID;
  left->I_SQE_R2947_follows = right; /* SR L1 */
  right->I_SQE_R2947_precedes = left; /* SR L2 */
}

/*
 * UNRELATE <left> I_SQE FROM <right> I_SQE ACROSS R2947.'follows'
 */
void
ooaofooa_I_SQE_R2947_Unlink_follows( ooaofooa_I_SQE * left, ooaofooa_I_SQE * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Next_Self_Queue_Entry_ID = 0;
  left->I_SQE_R2947_follows = 0; /* SR U1 */
  right->I_SQE_R2947_precedes = 0; /* SR U2 */
}

/*
 * RELATE <left> I_SQE TO <right> I_SQE ACROSS R2947.'precedes'
 */
void
ooaofooa_I_SQE_R2947_Link_precedes( ooaofooa_I_SQE * left, ooaofooa_I_SQE * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Next_Self_Queue_Entry_ID = left->Self_Queue_Entry_ID;
  right->I_SQE_R2947_follows = left; /* SR L4 */
  left->I_SQE_R2947_precedes = right; /* SR L5 */
}

/*
 * UNRELATE <left> I_SQE FROM <right> I_SQE ACROSS R2947.'precedes'
 */
void
ooaofooa_I_SQE_R2947_Unlink_precedes( ooaofooa_I_SQE * left, ooaofooa_I_SQE * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Next_Self_Queue_Entry_ID = 0;
  right->I_SQE_R2947_follows = 0; /* SR U4 */
  left->I_SQE_R2947_precedes = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_I_SQE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_I_SQE * self = (ooaofooa_I_SQE *) instance;
  printf( "INSERT INTO I_SQE VALUES ( %ld,%ld,%ld,%ld );\n",
    ((long)self->Self_Queue_Entry_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Execution_Engine_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Event_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Next_Self_Queue_Entry_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_I_SQE_container[ ooaofooa_I_SQE_MAX_EXTENT_SIZE ];
static ooaofooa_I_SQE ooaofooa_I_SQE_instances[ ooaofooa_I_SQE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_I_SQE_extent = {
  {0,0}, {0,0}, &ooaofooa_I_SQE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_I_SQE_instances,
  sizeof( ooaofooa_I_SQE ), 0, ooaofooa_I_SQE_MAX_EXTENT_SIZE
  };


