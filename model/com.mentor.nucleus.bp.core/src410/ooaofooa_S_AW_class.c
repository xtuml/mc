/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_AW_class.c
 *
 * Class:       Automatic Wiring  (S_AW)
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
ooaofooa_S_AW_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_AW * self = (ooaofooa_S_AW *) instance;
  /* Initialize application analysis class attributes.  */
  self->Brg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Sync_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_AW_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_AW * ooaofooa_S_AW_instance = (ooaofooa_S_AW *) instance;
  ooaofooa_S_SYNC * ooaofooa_S_SYNCrelated_instance1 = ooaofooa_S_SYNC_AnyWhere1( ooaofooa_S_AW_instance->Sync_ID );
  if ( ooaofooa_S_SYNCrelated_instance1 ) {
    ooaofooa_S_AW_R3201_Link_provides_execution_for( ooaofooa_S_SYNCrelated_instance1, ooaofooa_S_AW_instance );
  }
  {
  ooaofooa_S_BRG * ooaofooa_S_BRGrelated_instance1 = (ooaofooa_S_BRG *) Escher_instance_cache[ (intptr_t) ooaofooa_S_AW_instance->Brg_ID ];
  if ( ooaofooa_S_BRGrelated_instance1 ) {
    ooaofooa_S_AW_R3200_Link_is_executed_through( ooaofooa_S_BRGrelated_instance1, ooaofooa_S_AW_instance );
  }
  }
}


/*
 * RELATE S_BRG TO S_AW ACROSS R3200
 */
void
ooaofooa_S_AW_R3200_Link_is_executed_through( ooaofooa_S_BRG * part, ooaofooa_S_AW * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Brg_ID = part->Brg_ID;
  form->S_BRG_R3200_for_bridge_execution = part;
  part->S_AW_R3200_is_executed_through = form;
}

/*
 * UNRELATE S_BRG FROM S_AW ACROSS R3200
 */
void
ooaofooa_S_AW_R3200_Unlink_is_executed_through( ooaofooa_S_BRG * part, ooaofooa_S_AW * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Brg_ID = 0;
  form->S_BRG_R3200_for_bridge_execution = 0;
  part->S_AW_R3200_is_executed_through = 0;
}

/*
 * RELATE S_SYNC TO S_AW ACROSS R3201
 */
void
ooaofooa_S_AW_R3201_Link_provides_execution_for( ooaofooa_S_SYNC * part, ooaofooa_S_AW * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sync_ID = part->Sync_ID;
  form->S_SYNC_R3201_connects_bridge_execution_to = part;
  Escher_SetInsertElement( &part->S_AW_R3201_provides_execution_for, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SYNC FROM S_AW ACROSS R3201
 */
void
ooaofooa_S_AW_R3201_Unlink_provides_execution_for( ooaofooa_S_SYNC * part, ooaofooa_S_AW * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sync_ID = 0;
  form->S_SYNC_R3201_connects_bridge_execution_to = 0;
  Escher_SetRemoveElement( &part->S_AW_R3201_provides_execution_for, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_AW_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_AW * self = (ooaofooa_S_AW *) instance;
  printf( "INSERT INTO S_AW VALUES ( %ld,%ld );\n",
    ((long)self->Brg_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Sync_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_AW_container[ ooaofooa_S_AW_MAX_EXTENT_SIZE ];
static ooaofooa_S_AW ooaofooa_S_AW_instances[ ooaofooa_S_AW_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_AW_extent = {
  {0,0}, {0,0}, &ooaofooa_S_AW_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_AW_instances,
  sizeof( ooaofooa_S_AW ), 0, ooaofooa_S_AW_MAX_EXTENT_SIZE
  };


