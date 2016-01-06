/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_DAB_class.c
 *
 * Class:       Derived Attribute Body  (ACT_DAB)
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
ooaofooa_ACT_DAB_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_DAB * self = (ooaofooa_ACT_DAB *) instance;
  /* Initialize application analysis class attributes.  */
  self->Action_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Attr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->AttributeWritten = ( '0' != *avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_DAB_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_DAB * ooaofooa_ACT_DAB_instance = (ooaofooa_ACT_DAB *) instance;
  ooaofooa_O_DBATTR * ooaofooa_O_DBATTRrelated_instance1 = ooaofooa_O_DBATTR_AnyWhere1( ooaofooa_ACT_DAB_instance->Attr_ID, ooaofooa_ACT_DAB_instance->Obj_ID );
  if ( ooaofooa_O_DBATTRrelated_instance1 ) {
    ooaofooa_ACT_DAB_R693_Link( ooaofooa_O_DBATTRrelated_instance1, ooaofooa_ACT_DAB_instance );
  }
  {
  ooaofooa_ACT_ACT * ooaofooa_ACT_ACTrelated_instance1 = (ooaofooa_ACT_ACT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_DAB_instance->Action_ID ];
  if ( ooaofooa_ACT_ACTrelated_instance1 ) {
    ooaofooa_ACT_DAB_R698_Link( ooaofooa_ACT_ACTrelated_instance1, ooaofooa_ACT_DAB_instance );
  }
  }
}


/*
 * RELATE O_DBATTR TO ACT_DAB ACROSS R693
 */
void
ooaofooa_ACT_DAB_R693_Link( ooaofooa_O_DBATTR * part, ooaofooa_ACT_DAB * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Attr_ID = part->Attr_ID;
  form->Obj_ID = part->Obj_ID;
  form->O_DBATTR_R693_specifies_processing_for = part;
  part->ACT_DAB_R693 = form;
}

/*
 * UNRELATE O_DBATTR FROM ACT_DAB ACROSS R693
 */
void
ooaofooa_ACT_DAB_R693_Unlink( ooaofooa_O_DBATTR * part, ooaofooa_ACT_DAB * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Attr_ID = 0;
  form->Obj_ID = 0;
  form->O_DBATTR_R693_specifies_processing_for = 0;
  part->ACT_DAB_R693 = 0;
}

/*
 * RELATE ACT_ACT TO ACT_DAB ACROSS R698
 */
void
ooaofooa_ACT_DAB_R698_Link( ooaofooa_ACT_ACT * supertype, ooaofooa_ACT_DAB * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Action_ID = supertype->Action_ID;
  /* Optimized linkage for ACT_DAB->ACT_ACT[R698] */
  subtype->ACT_ACT_R698 = supertype;
  /* Optimized linkage for ACT_ACT->ACT_DAB[R698] */
  supertype->R698_subtype = subtype;
  supertype->R698_object_id = ooaofooa_ACT_DAB_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_ACT FROM ACT_DAB ACROSS R698
 */
void
ooaofooa_ACT_DAB_R698_Unlink( ooaofooa_ACT_ACT * supertype, ooaofooa_ACT_DAB * subtype )
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
ooaofooa_ACT_DAB_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_DAB * self = (ooaofooa_ACT_DAB *) instance;
  printf( "INSERT INTO ACT_DAB VALUES ( %ld,%ld,%ld,%d );\n",
    ((long)self->Action_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Attr_ID & ESCHER_IDDUMP_MASK),
    self->AttributeWritten );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_DAB_container[ ooaofooa_ACT_DAB_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_DAB ooaofooa_ACT_DAB_instances[ ooaofooa_ACT_DAB_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_DAB_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_DAB_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_DAB_instances,
  sizeof( ooaofooa_ACT_DAB ), 0, ooaofooa_ACT_DAB_MAX_EXTENT_SIZE
  };


