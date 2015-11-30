/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_ROB_class.c
 *
 * Class:       Required Operation Body  (ACT_ROB)
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
ooaofooa_ACT_ROB_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_ROB * self = (ooaofooa_ACT_ROB *) instance;
  /* Initialize application analysis class attributes.  */
  self->Action_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_ROB_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_ROB * ooaofooa_ACT_ROB_instance = (ooaofooa_ACT_ROB *) instance;
  ooaofooa_SPR_RO * ooaofooa_SPR_ROrelated_instance1 = ooaofooa_SPR_RO_AnyWhere1( ooaofooa_ACT_ROB_instance->Id );
  if ( ooaofooa_SPR_ROrelated_instance1 ) {
    ooaofooa_ACT_ROB_R685_Link( ooaofooa_SPR_ROrelated_instance1, ooaofooa_ACT_ROB_instance );
  }
  {
  ooaofooa_ACT_ACT * ooaofooa_ACT_ACTrelated_instance1 = (ooaofooa_ACT_ACT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_ROB_instance->Action_ID ];
  if ( ooaofooa_ACT_ACTrelated_instance1 ) {
    ooaofooa_ACT_ROB_R698_Link( ooaofooa_ACT_ACTrelated_instance1, ooaofooa_ACT_ROB_instance );
  }
  }
}


/*
 * RELATE SPR_RO TO ACT_ROB ACROSS R685
 */
void
ooaofooa_ACT_ROB_R685_Link( ooaofooa_SPR_RO * part, ooaofooa_ACT_ROB * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Id = part->Id;
  form->SPR_RO_R685_specifies_processing_for = part;
  part->ACT_ROB_R685 = form;
}

/*
 * UNRELATE SPR_RO FROM ACT_ROB ACROSS R685
 */
void
ooaofooa_ACT_ROB_R685_Unlink( ooaofooa_SPR_RO * part, ooaofooa_ACT_ROB * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Id = 0;
  form->SPR_RO_R685_specifies_processing_for = 0;
  part->ACT_ROB_R685 = 0;
}

/*
 * RELATE ACT_ACT TO ACT_ROB ACROSS R698
 */
void
ooaofooa_ACT_ROB_R698_Link( ooaofooa_ACT_ACT * supertype, ooaofooa_ACT_ROB * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Action_ID = supertype->Action_ID;
  /* Optimized linkage for ACT_ROB->ACT_ACT[R698] */
  subtype->ACT_ACT_R698 = supertype;
  /* Optimized linkage for ACT_ACT->ACT_ROB[R698] */
  supertype->R698_subtype = subtype;
  supertype->R698_object_id = ooaofooa_ACT_ROB_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_ACT FROM ACT_ROB ACROSS R698
 */
void
ooaofooa_ACT_ROB_R698_Unlink( ooaofooa_ACT_ACT * supertype, ooaofooa_ACT_ROB * subtype )
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
ooaofooa_ACT_ROB_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_ROB * self = (ooaofooa_ACT_ROB *) instance;
  printf( "INSERT INTO ACT_ROB VALUES ( %ld,%ld );\n",
    ((long)self->Action_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_ROB_container[ ooaofooa_ACT_ROB_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_ROB ooaofooa_ACT_ROB_instances[ ooaofooa_ACT_ROB_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_ROB_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_ROB_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_ROB_instances,
  sizeof( ooaofooa_ACT_ROB ), 0, ooaofooa_ACT_ROB_MAX_EXTENT_SIZE
  };


