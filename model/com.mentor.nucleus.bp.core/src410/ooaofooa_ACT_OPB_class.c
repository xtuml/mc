/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_OPB_class.c
 *
 * Class:       Operation Body  (ACT_OPB)
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
ooaofooa_ACT_OPB_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_OPB * self = (ooaofooa_ACT_OPB *) instance;
  /* Initialize application analysis class attributes.  */
  self->Action_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Tfr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_OPB_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_OPB * ooaofooa_ACT_OPB_instance = (ooaofooa_ACT_OPB *) instance;
  ooaofooa_O_TFR * ooaofooa_O_TFRrelated_instance1 = (ooaofooa_O_TFR *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_OPB_instance->Tfr_ID ];
  if ( ooaofooa_O_TFRrelated_instance1 ) {
    ooaofooa_ACT_OPB_R696_Link( ooaofooa_O_TFRrelated_instance1, ooaofooa_ACT_OPB_instance );
  }
  {
  ooaofooa_ACT_ACT * ooaofooa_ACT_ACTrelated_instance1 = (ooaofooa_ACT_ACT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_OPB_instance->Action_ID ];
  if ( ooaofooa_ACT_ACTrelated_instance1 ) {
    ooaofooa_ACT_OPB_R698_Link( ooaofooa_ACT_ACTrelated_instance1, ooaofooa_ACT_OPB_instance );
  }
  }
}


/*
 * RELATE O_TFR TO ACT_OPB ACROSS R696
 */
void
ooaofooa_ACT_OPB_R696_Link( ooaofooa_O_TFR * part, ooaofooa_ACT_OPB * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Tfr_ID = part->Tfr_ID;
  form->O_TFR_R696_specifies_processing_for = part;
  part->ACT_OPB_R696 = form;
}

/*
 * UNRELATE O_TFR FROM ACT_OPB ACROSS R696
 */
void
ooaofooa_ACT_OPB_R696_Unlink( ooaofooa_O_TFR * part, ooaofooa_ACT_OPB * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Tfr_ID = 0;
  form->O_TFR_R696_specifies_processing_for = 0;
  part->ACT_OPB_R696 = 0;
}

/*
 * RELATE ACT_ACT TO ACT_OPB ACROSS R698
 */
void
ooaofooa_ACT_OPB_R698_Link( ooaofooa_ACT_ACT * supertype, ooaofooa_ACT_OPB * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Action_ID = supertype->Action_ID;
  /* Optimized linkage for ACT_OPB->ACT_ACT[R698] */
  subtype->ACT_ACT_R698 = supertype;
  /* Optimized linkage for ACT_ACT->ACT_OPB[R698] */
  supertype->R698_subtype = subtype;
  supertype->R698_object_id = ooaofooa_ACT_OPB_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_ACT FROM ACT_OPB ACROSS R698
 */
void
ooaofooa_ACT_OPB_R698_Unlink( ooaofooa_ACT_ACT * supertype, ooaofooa_ACT_OPB * subtype )
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
ooaofooa_ACT_OPB_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_OPB * self = (ooaofooa_ACT_OPB *) instance;
  printf( "INSERT INTO ACT_OPB VALUES ( %ld,%ld );\n",
    ((long)self->Action_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Tfr_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_OPB_container[ ooaofooa_ACT_OPB_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_OPB ooaofooa_ACT_OPB_instances[ ooaofooa_ACT_OPB_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_OPB_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_OPB_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_OPB_instances,
  sizeof( ooaofooa_ACT_OPB ), 0, ooaofooa_ACT_OPB_MAX_EXTENT_SIZE
  };


