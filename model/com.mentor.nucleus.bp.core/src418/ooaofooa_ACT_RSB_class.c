/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_RSB_class.c
 *
 * Class:       Required Signal Body  (ACT_RSB)
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
ooaofooa_ACT_RSB_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_RSB * self = (ooaofooa_ACT_RSB *) instance;
  /* Initialize application analysis class attributes.  */
  self->Action_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_RSB_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_RSB * ooaofooa_ACT_RSB_instance = (ooaofooa_ACT_RSB *) instance;
  ooaofooa_SPR_RS * ooaofooa_SPR_RSrelated_instance1 = ooaofooa_SPR_RS_AnyWhere1( ooaofooa_ACT_RSB_instance->Id );
  if ( ooaofooa_SPR_RSrelated_instance1 ) {
    ooaofooa_ACT_RSB_R684_Link( ooaofooa_SPR_RSrelated_instance1, ooaofooa_ACT_RSB_instance );
  }
  {
  ooaofooa_ACT_ACT * ooaofooa_ACT_ACTrelated_instance1 = (ooaofooa_ACT_ACT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_RSB_instance->Action_ID ];
  if ( ooaofooa_ACT_ACTrelated_instance1 ) {
    ooaofooa_ACT_RSB_R698_Link( ooaofooa_ACT_ACTrelated_instance1, ooaofooa_ACT_RSB_instance );
  }
  }
}


/*
 * RELATE SPR_RS TO ACT_RSB ACROSS R684
 */
void
ooaofooa_ACT_RSB_R684_Link( ooaofooa_SPR_RS * part, ooaofooa_ACT_RSB * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Id = part->Id;
  form->SPR_RS_R684_specifies_processing_for = part;
  part->ACT_RSB_R684 = form;
}

/*
 * UNRELATE SPR_RS FROM ACT_RSB ACROSS R684
 */
void
ooaofooa_ACT_RSB_R684_Unlink( ooaofooa_SPR_RS * part, ooaofooa_ACT_RSB * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Id = 0;
  form->SPR_RS_R684_specifies_processing_for = 0;
  part->ACT_RSB_R684 = 0;
}

/*
 * RELATE ACT_ACT TO ACT_RSB ACROSS R698
 */
void
ooaofooa_ACT_RSB_R698_Link( ooaofooa_ACT_ACT * supertype, ooaofooa_ACT_RSB * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Action_ID = supertype->Action_ID;
  /* Optimized linkage for ACT_RSB->ACT_ACT[R698] */
  subtype->ACT_ACT_R698 = supertype;
  /* Optimized linkage for ACT_ACT->ACT_RSB[R698] */
  supertype->R698_subtype = subtype;
  supertype->R698_object_id = ooaofooa_ACT_RSB_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_ACT FROM ACT_RSB ACROSS R698
 */
void
ooaofooa_ACT_RSB_R698_Unlink( ooaofooa_ACT_ACT * supertype, ooaofooa_ACT_RSB * subtype )
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
ooaofooa_ACT_RSB_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_RSB * self = (ooaofooa_ACT_RSB *) instance;
  printf( "INSERT INTO ACT_RSB VALUES ( %ld,%ld );\n",
    ((long)self->Action_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_RSB_container[ ooaofooa_ACT_RSB_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_RSB ooaofooa_ACT_RSB_instances[ ooaofooa_ACT_RSB_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_RSB_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_RSB_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_RSB_instances,
  sizeof( ooaofooa_ACT_RSB ), 0, ooaofooa_ACT_RSB_MAX_EXTENT_SIZE
  };


