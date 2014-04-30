/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_PSB_class.c
 *
 * Class:       Provided Signal Body  (ACT_PSB)
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
ooaofooa_ACT_PSB_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_PSB * self = (ooaofooa_ACT_PSB *) instance;
  /* Initialize application analysis class attributes.  */
  self->Action_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_PSB_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_PSB * ooaofooa_ACT_PSB_instance = (ooaofooa_ACT_PSB *) instance;
  ooaofooa_SPR_PS * ooaofooa_SPR_PSrelated_instance1 = ooaofooa_SPR_PS_AnyWhere1( ooaofooa_ACT_PSB_instance->Id );
  if ( ooaofooa_SPR_PSrelated_instance1 ) {
    ooaofooa_ACT_PSB_R686_Link( ooaofooa_SPR_PSrelated_instance1, ooaofooa_ACT_PSB_instance );
  }
  {
  ooaofooa_ACT_ACT * ooaofooa_ACT_ACTrelated_instance1 = (ooaofooa_ACT_ACT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_PSB_instance->Action_ID ];
  if ( ooaofooa_ACT_ACTrelated_instance1 ) {
    ooaofooa_ACT_PSB_R698_Link( ooaofooa_ACT_ACTrelated_instance1, ooaofooa_ACT_PSB_instance );
  }
  }
}


/*
 * RELATE SPR_PS TO ACT_PSB ACROSS R686
 */
void
ooaofooa_ACT_PSB_R686_Link( ooaofooa_SPR_PS * part, ooaofooa_ACT_PSB * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Id = part->Id;
  form->SPR_PS_R686_specifies_processing_for = part;
  part->ACT_PSB_R686 = form;
}

/*
 * UNRELATE SPR_PS FROM ACT_PSB ACROSS R686
 */
void
ooaofooa_ACT_PSB_R686_Unlink( ooaofooa_SPR_PS * part, ooaofooa_ACT_PSB * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Id = 0;
  form->SPR_PS_R686_specifies_processing_for = 0;
  part->ACT_PSB_R686 = 0;
}

/*
 * RELATE ACT_ACT TO ACT_PSB ACROSS R698
 */
void
ooaofooa_ACT_PSB_R698_Link( ooaofooa_ACT_ACT * supertype, ooaofooa_ACT_PSB * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Action_ID = supertype->Action_ID;
  /* Optimized linkage for ACT_PSB->ACT_ACT[R698] */
  subtype->ACT_ACT_R698 = supertype;
  /* Optimized linkage for ACT_ACT->ACT_PSB[R698] */
  supertype->R698_subtype = subtype;
  supertype->R698_object_id = ooaofooa_ACT_PSB_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_ACT FROM ACT_PSB ACROSS R698
 */
void
ooaofooa_ACT_PSB_R698_Unlink( ooaofooa_ACT_ACT * supertype, ooaofooa_ACT_PSB * subtype )
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
ooaofooa_ACT_PSB_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_PSB * self = (ooaofooa_ACT_PSB *) instance;
  printf( "INSERT INTO ACT_PSB VALUES ( %ld,%ld );\n",
    ((long)self->Action_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_PSB_container[ ooaofooa_ACT_PSB_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_PSB ooaofooa_ACT_PSB_instances[ ooaofooa_ACT_PSB_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_PSB_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_PSB_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_PSB_instances,
  sizeof( ooaofooa_ACT_PSB ), 0, ooaofooa_ACT_PSB_MAX_EXTENT_SIZE
  };


