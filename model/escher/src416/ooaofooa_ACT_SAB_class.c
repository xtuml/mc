/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_SAB_class.c
 *
 * Class:       State Action Body  (ACT_SAB)
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
ooaofooa_ACT_SAB_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_SAB * self = (ooaofooa_ACT_SAB *) instance;
  /* Initialize application analysis class attributes.  */
  self->Action_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Act_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_SAB_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_SAB * ooaofooa_ACT_SAB_instance = (ooaofooa_ACT_SAB *) instance;
  ooaofooa_SM_ACT * ooaofooa_SM_ACTrelated_instance1 = ooaofooa_SM_ACT_AnyWhere1( ooaofooa_ACT_SAB_instance->Act_ID, ooaofooa_ACT_SAB_instance->SM_ID );
  if ( ooaofooa_SM_ACTrelated_instance1 ) {
    ooaofooa_ACT_SAB_R691_Link( ooaofooa_SM_ACTrelated_instance1, ooaofooa_ACT_SAB_instance );
  }
  {
  ooaofooa_ACT_ACT * ooaofooa_ACT_ACTrelated_instance1 = (ooaofooa_ACT_ACT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_SAB_instance->Action_ID ];
  if ( ooaofooa_ACT_ACTrelated_instance1 ) {
    ooaofooa_ACT_SAB_R698_Link( ooaofooa_ACT_ACTrelated_instance1, ooaofooa_ACT_SAB_instance );
  }
  }
}


/*
 * RELATE SM_ACT TO ACT_SAB ACROSS R691
 */
void
ooaofooa_ACT_SAB_R691_Link( ooaofooa_SM_ACT * part, ooaofooa_ACT_SAB * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->Act_ID = part->Act_ID;
  form->SM_ACT_R691_specifies_processing_for = part;
  part->ACT_SAB_R691 = form;
}

/*
 * UNRELATE SM_ACT FROM ACT_SAB ACROSS R691
 */
void
ooaofooa_ACT_SAB_R691_Unlink( ooaofooa_SM_ACT * part, ooaofooa_ACT_SAB * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = 0;
  form->Act_ID = 0;
  form->SM_ACT_R691_specifies_processing_for = 0;
  part->ACT_SAB_R691 = 0;
}

/*
 * RELATE ACT_ACT TO ACT_SAB ACROSS R698
 */
void
ooaofooa_ACT_SAB_R698_Link( ooaofooa_ACT_ACT * supertype, ooaofooa_ACT_SAB * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Action_ID = supertype->Action_ID;
  /* Optimized linkage for ACT_SAB->ACT_ACT[R698] */
  subtype->ACT_ACT_R698 = supertype;
  /* Optimized linkage for ACT_ACT->ACT_SAB[R698] */
  supertype->R698_subtype = subtype;
  supertype->R698_object_id = ooaofooa_ACT_SAB_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_ACT FROM ACT_SAB ACROSS R698
 */
void
ooaofooa_ACT_SAB_R698_Unlink( ooaofooa_ACT_ACT * supertype, ooaofooa_ACT_SAB * subtype )
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
ooaofooa_ACT_SAB_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_SAB * self = (ooaofooa_ACT_SAB *) instance;
  printf( "INSERT INTO ACT_SAB VALUES ( %ld,%ld,%ld );\n",
    ((long)self->Action_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Act_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_SAB_container[ ooaofooa_ACT_SAB_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_SAB ooaofooa_ACT_SAB_instances[ ooaofooa_ACT_SAB_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_SAB_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_SAB_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_SAB_instances,
  sizeof( ooaofooa_ACT_SAB ), 0, ooaofooa_ACT_SAB_MAX_EXTENT_SIZE
  };


