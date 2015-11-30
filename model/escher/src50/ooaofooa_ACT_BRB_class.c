/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_BRB_class.c
 *
 * Class:       Bridge Body  (ACT_BRB)
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
ooaofooa_ACT_BRB_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_BRB * self = (ooaofooa_ACT_BRB *) instance;
  /* Initialize application analysis class attributes.  */
  self->Action_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Brg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_BRB_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_BRB * ooaofooa_ACT_BRB_instance = (ooaofooa_ACT_BRB *) instance;
  ooaofooa_S_BRG * ooaofooa_S_BRGrelated_instance1 = (ooaofooa_S_BRG *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_BRB_instance->Brg_ID ];
  if ( ooaofooa_S_BRGrelated_instance1 ) {
    ooaofooa_ACT_BRB_R697_Link( ooaofooa_S_BRGrelated_instance1, ooaofooa_ACT_BRB_instance );
  }
  {
  ooaofooa_ACT_ACT * ooaofooa_ACT_ACTrelated_instance1 = (ooaofooa_ACT_ACT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_BRB_instance->Action_ID ];
  if ( ooaofooa_ACT_ACTrelated_instance1 ) {
    ooaofooa_ACT_BRB_R698_Link( ooaofooa_ACT_ACTrelated_instance1, ooaofooa_ACT_BRB_instance );
  }
  }
}


/*
 * RELATE S_BRG TO ACT_BRB ACROSS R697
 */
void
ooaofooa_ACT_BRB_R697_Link( ooaofooa_S_BRG * part, ooaofooa_ACT_BRB * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Brg_ID = part->Brg_ID;
  form->S_BRG_R697_specifies_processing_for = part;
  part->ACT_BRB_R697 = form;
}

/*
 * UNRELATE S_BRG FROM ACT_BRB ACROSS R697
 */
void
ooaofooa_ACT_BRB_R697_Unlink( ooaofooa_S_BRG * part, ooaofooa_ACT_BRB * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Brg_ID = 0;
  form->S_BRG_R697_specifies_processing_for = 0;
  part->ACT_BRB_R697 = 0;
}

/*
 * RELATE ACT_ACT TO ACT_BRB ACROSS R698
 */
void
ooaofooa_ACT_BRB_R698_Link( ooaofooa_ACT_ACT * supertype, ooaofooa_ACT_BRB * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Action_ID = supertype->Action_ID;
  /* Optimized linkage for ACT_BRB->ACT_ACT[R698] */
  subtype->ACT_ACT_R698 = supertype;
  /* Optimized linkage for ACT_ACT->ACT_BRB[R698] */
  supertype->R698_subtype = subtype;
  supertype->R698_object_id = ooaofooa_ACT_BRB_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_ACT FROM ACT_BRB ACROSS R698
 */
void
ooaofooa_ACT_BRB_R698_Unlink( ooaofooa_ACT_ACT * supertype, ooaofooa_ACT_BRB * subtype )
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
ooaofooa_ACT_BRB_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_BRB * self = (ooaofooa_ACT_BRB *) instance;
  printf( "INSERT INTO ACT_BRB VALUES ( %ld,%ld );\n",
    ((long)self->Action_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Brg_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_BRB_container[ ooaofooa_ACT_BRB_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_BRB ooaofooa_ACT_BRB_instances[ ooaofooa_ACT_BRB_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_BRB_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_BRB_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_BRB_instances,
  sizeof( ooaofooa_ACT_BRB ), 0, ooaofooa_ACT_BRB_MAX_EXTENT_SIZE
  };


