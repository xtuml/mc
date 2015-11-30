/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_EQE_class.c
 *
 * Class:       Event Queue Entry  (I_EQE)
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
ooaofooa_I_EQE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_I_EQE * self = (ooaofooa_I_EQE *) instance;
  /* Initialize application analysis class attributes.  */
  self->Event_Queue_Entry_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Event_Queue_Entry_ID;
  self->Execution_Engine_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Event_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Next_Event_Queue_Entry_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_I_EQE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_I_EQE * ooaofooa_I_EQE_instance = (ooaofooa_I_EQE *) instance;
  ooaofooa_I_EVI * ooaofooa_I_EVIrelated_instance1 = (ooaofooa_I_EVI *) Escher_instance_cache[ (intptr_t) ooaofooa_I_EQE_instance->Event_ID ];
  ooaofooa_I_EXE * ooaofooa_I_EXErelated_instance2 = (ooaofooa_I_EXE *) Escher_instance_cache[ (intptr_t) ooaofooa_I_EQE_instance->Execution_Engine_ID ];
  if ( ooaofooa_I_EVIrelated_instance1 && ooaofooa_I_EXErelated_instance2 ) {
    ooaofooa_I_EQE_R2944_Link( ooaofooa_I_EXErelated_instance2, ooaofooa_I_EVIrelated_instance1, ooaofooa_I_EQE_instance );
  }
  {
  ooaofooa_I_EQE * ooaofooa_I_EQErelated_instance1 = (ooaofooa_I_EQE *) Escher_instance_cache[ (intptr_t) ooaofooa_I_EQE_instance->Next_Event_Queue_Entry_ID ];
  if ( ooaofooa_I_EQErelated_instance1 ) {
    ooaofooa_I_EQE_R2945_Link_follows( ooaofooa_I_EQErelated_instance1, ooaofooa_I_EQE_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_I_EQE *
ooaofooa_I_EQE_AnyWhere1( Escher_UniqueID_t w_Event_Queue_Entry_ID )
{
  ooaofooa_I_EQE * w; 
  Escher_Iterator_s iter_I_EQE;
  Escher_IteratorReset( &iter_I_EQE, &pG_ooaofooa_I_EQE_extent.active );
  while ( (w = (ooaofooa_I_EQE *) Escher_IteratorNext( &iter_I_EQE )) != 0 ) {
    if ( w->Event_Queue_Entry_ID == w_Event_Queue_Entry_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE I_EXE TO I_EVI ACROSS R2944 USING I_EQE
 */
void
ooaofooa_I_EQE_R2944_Link( ooaofooa_I_EXE * aone, ooaofooa_I_EVI * aoth, ooaofooa_I_EQE * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Execution_Engine_ID = aone->Execution_Engine_ID;
  assr->Event_ID = aoth->Event_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->I_EXE_R2944 = aone;
  assr->I_EVI_R2944 = aoth;
  Escher_SetInsertElement( &aone->I_EQE_R2944, assr );
  aoth->I_EQE_R2944 = assr;
}

/*
 * UNRELATE I_EXE FROM I_EVI ACROSS R2944 USING I_EQE
 */
void
ooaofooa_I_EQE_R2944_Unlink( ooaofooa_I_EXE * aone, ooaofooa_I_EVI * aoth, ooaofooa_I_EQE * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Execution_Engine_ID = 0;
  assr->Event_ID = 0;
  assr->I_EXE_R2944 = 0;
  assr->I_EVI_R2944 = 0;
  Escher_SetRemoveElement( &aone->I_EQE_R2944, assr );
  aoth->I_EQE_R2944 = 0;
}

/*
 * RELATE <left> I_EQE TO <right> I_EQE ACROSS R2945.'follows'
 */
void
ooaofooa_I_EQE_R2945_Link_follows( ooaofooa_I_EQE * left, ooaofooa_I_EQE * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Next_Event_Queue_Entry_ID = left->Event_Queue_Entry_ID;
  left->I_EQE_R2945_follows = right; /* SR L1 */
  right->I_EQE_R2945_precedes = left; /* SR L2 */
}

/*
 * UNRELATE <left> I_EQE FROM <right> I_EQE ACROSS R2945.'follows'
 */
void
ooaofooa_I_EQE_R2945_Unlink_follows( ooaofooa_I_EQE * left, ooaofooa_I_EQE * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Next_Event_Queue_Entry_ID = 0;
  left->I_EQE_R2945_follows = 0; /* SR U1 */
  right->I_EQE_R2945_precedes = 0; /* SR U2 */
}

/*
 * RELATE <left> I_EQE TO <right> I_EQE ACROSS R2945.'precedes'
 */
void
ooaofooa_I_EQE_R2945_Link_precedes( ooaofooa_I_EQE * left, ooaofooa_I_EQE * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Next_Event_Queue_Entry_ID = right->Event_Queue_Entry_ID;
  right->I_EQE_R2945_follows = left; /* SR L4 */
  left->I_EQE_R2945_precedes = right; /* SR L5 */
}

/*
 * UNRELATE <left> I_EQE FROM <right> I_EQE ACROSS R2945.'precedes'
 */
void
ooaofooa_I_EQE_R2945_Unlink_precedes( ooaofooa_I_EQE * left, ooaofooa_I_EQE * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Next_Event_Queue_Entry_ID = 0;
  right->I_EQE_R2945_follows = 0; /* SR U4 */
  left->I_EQE_R2945_precedes = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_I_EQE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_I_EQE * self = (ooaofooa_I_EQE *) instance;
  printf( "INSERT INTO I_EQE VALUES ( %ld,%ld,%ld,%ld );\n",
    ((long)self->Event_Queue_Entry_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Execution_Engine_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Event_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Next_Event_Queue_Entry_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_I_EQE_container[ ooaofooa_I_EQE_MAX_EXTENT_SIZE ];
static ooaofooa_I_EQE ooaofooa_I_EQE_instances[ ooaofooa_I_EQE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_I_EQE_extent = {
  {0,0}, {0,0}, &ooaofooa_I_EQE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_I_EQE_instances,
  sizeof( ooaofooa_I_EQE ), 0, ooaofooa_I_EQE_MAX_EXTENT_SIZE
  };


