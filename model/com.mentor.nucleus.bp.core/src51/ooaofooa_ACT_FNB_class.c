/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_FNB_class.c
 *
 * Class:       Function Body  (ACT_FNB)
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
ooaofooa_ACT_FNB_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_FNB * self = (ooaofooa_ACT_FNB *) instance;
  /* Initialize application analysis class attributes.  */
  self->Action_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Sync_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_FNB_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_FNB * ooaofooa_ACT_FNB_instance = (ooaofooa_ACT_FNB *) instance;
  ooaofooa_S_SYNC * ooaofooa_S_SYNCrelated_instance1 = ooaofooa_S_SYNC_AnyWhere1( ooaofooa_ACT_FNB_instance->Sync_ID );
  if ( ooaofooa_S_SYNCrelated_instance1 ) {
    ooaofooa_ACT_FNB_R695_Link( ooaofooa_S_SYNCrelated_instance1, ooaofooa_ACT_FNB_instance );
  }
  {
  ooaofooa_ACT_ACT * ooaofooa_ACT_ACTrelated_instance1 = (ooaofooa_ACT_ACT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_FNB_instance->Action_ID ];
  if ( ooaofooa_ACT_ACTrelated_instance1 ) {
    ooaofooa_ACT_FNB_R698_Link( ooaofooa_ACT_ACTrelated_instance1, ooaofooa_ACT_FNB_instance );
  }
  }
}


/*
 * RELATE S_SYNC TO ACT_FNB ACROSS R695
 */
void
ooaofooa_ACT_FNB_R695_Link( ooaofooa_S_SYNC * part, ooaofooa_ACT_FNB * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sync_ID = part->Sync_ID;
  form->S_SYNC_R695_specifies_processing_for = part;
  part->ACT_FNB_R695 = form;
}

/*
 * UNRELATE S_SYNC FROM ACT_FNB ACROSS R695
 */
void
ooaofooa_ACT_FNB_R695_Unlink( ooaofooa_S_SYNC * part, ooaofooa_ACT_FNB * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sync_ID = 0;
  form->S_SYNC_R695_specifies_processing_for = 0;
  part->ACT_FNB_R695 = 0;
}

/*
 * RELATE ACT_ACT TO ACT_FNB ACROSS R698
 */
void
ooaofooa_ACT_FNB_R698_Link( ooaofooa_ACT_ACT * supertype, ooaofooa_ACT_FNB * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Action_ID = supertype->Action_ID;
  /* Optimized linkage for ACT_FNB->ACT_ACT[R698] */
  subtype->ACT_ACT_R698 = supertype;
  /* Optimized linkage for ACT_ACT->ACT_FNB[R698] */
  supertype->R698_subtype = subtype;
  supertype->R698_object_id = ooaofooa_ACT_FNB_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_ACT FROM ACT_FNB ACROSS R698
 */
void
ooaofooa_ACT_FNB_R698_Unlink( ooaofooa_ACT_ACT * supertype, ooaofooa_ACT_FNB * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->ACT_ACT_R698 = 0;
  supertype->R698_subtype = 0;
  supertype->R698_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_FNB_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_FNB * self = (ooaofooa_ACT_FNB *) instance;
  printf( "INSERT INTO ACT_FNB VALUES ( %ld,%ld );\n",
    ((long)self->Action_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Sync_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_FNB_container[ ooaofooa_ACT_FNB_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_FNB ooaofooa_ACT_FNB_instances[ ooaofooa_ACT_FNB_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_FNB_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_FNB_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_FNB_instances,
  sizeof( ooaofooa_ACT_FNB ), 0, ooaofooa_ACT_FNB_MAX_EXTENT_SIZE
  };


