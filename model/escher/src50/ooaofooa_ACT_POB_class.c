/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_POB_class.c
 *
 * Class:       Provided Operation Body  (ACT_POB)
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
ooaofooa_ACT_POB_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_POB * self = (ooaofooa_ACT_POB *) instance;
  /* Initialize application analysis class attributes.  */
  self->Action_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_POB_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_POB * ooaofooa_ACT_POB_instance = (ooaofooa_ACT_POB *) instance;
  ooaofooa_SPR_PO * ooaofooa_SPR_POrelated_instance1 = ooaofooa_SPR_PO_AnyWhere1( ooaofooa_ACT_POB_instance->Id );
  if ( ooaofooa_SPR_POrelated_instance1 ) {
    ooaofooa_ACT_POB_R687_Link( ooaofooa_SPR_POrelated_instance1, ooaofooa_ACT_POB_instance );
  }
  {
  ooaofooa_ACT_ACT * ooaofooa_ACT_ACTrelated_instance1 = (ooaofooa_ACT_ACT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_POB_instance->Action_ID ];
  if ( ooaofooa_ACT_ACTrelated_instance1 ) {
    ooaofooa_ACT_POB_R698_Link( ooaofooa_ACT_ACTrelated_instance1, ooaofooa_ACT_POB_instance );
  }
  }
}


/*
 * RELATE SPR_PO TO ACT_POB ACROSS R687
 */
void
ooaofooa_ACT_POB_R687_Link( ooaofooa_SPR_PO * part, ooaofooa_ACT_POB * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Id = part->Id;
  form->SPR_PO_R687_specifies_processing_for = part;
  part->ACT_POB_R687 = form;
}

/*
 * UNRELATE SPR_PO FROM ACT_POB ACROSS R687
 */
void
ooaofooa_ACT_POB_R687_Unlink( ooaofooa_SPR_PO * part, ooaofooa_ACT_POB * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Id = 0;
  form->SPR_PO_R687_specifies_processing_for = 0;
  part->ACT_POB_R687 = 0;
}

/*
 * RELATE ACT_ACT TO ACT_POB ACROSS R698
 */
void
ooaofooa_ACT_POB_R698_Link( ooaofooa_ACT_ACT * supertype, ooaofooa_ACT_POB * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Action_ID = supertype->Action_ID;
  /* Optimized linkage for ACT_POB->ACT_ACT[R698] */
  subtype->ACT_ACT_R698 = supertype;
  /* Optimized linkage for ACT_ACT->ACT_POB[R698] */
  supertype->R698_subtype = subtype;
  supertype->R698_object_id = ooaofooa_ACT_POB_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_ACT FROM ACT_POB ACROSS R698
 */
void
ooaofooa_ACT_POB_R698_Unlink( ooaofooa_ACT_ACT * supertype, ooaofooa_ACT_POB * subtype )
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
ooaofooa_ACT_POB_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_POB * self = (ooaofooa_ACT_POB *) instance;
  printf( "INSERT INTO ACT_POB VALUES ( %ld,%ld );\n",
    ((long)self->Action_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_POB_container[ ooaofooa_ACT_POB_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_POB ooaofooa_ACT_POB_instances[ ooaofooa_ACT_POB_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_POB_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_POB_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_POB_instances,
  sizeof( ooaofooa_ACT_POB ), 0, ooaofooa_ACT_POB_MAX_EXTENT_SIZE
  };


