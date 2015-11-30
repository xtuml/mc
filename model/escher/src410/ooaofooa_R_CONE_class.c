/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_CONE_class.c
 *
 * Class:       Class As Derived One Side  (R_CONE)
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
ooaofooa_R_CONE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_R_CONE * self = (ooaofooa_R_CONE *) instance;
  /* Initialize application analysis class attributes.  */
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Rel_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->OIR_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Mult = Escher_atoi( avlstring[ 4 ] );
  self->Cond = Escher_atoi( avlstring[ 5 ] );
  Escher_strcpy( self->Txt_Phrs, avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_R_CONE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_R_CONE * ooaofooa_R_CONE_instance = (ooaofooa_R_CONE *) instance;
  ooaofooa_R_COMP * ooaofooa_R_COMPrelated_instance1 = ooaofooa_R_COMP_AnyWhere1( ooaofooa_R_CONE_instance->Rel_ID );
  if ( ooaofooa_R_COMPrelated_instance1 ) {
    ooaofooa_R_CONE_R214_Link_relates( ooaofooa_R_COMPrelated_instance1, ooaofooa_R_CONE_instance );
  }
  {
  ooaofooa_R_OIR * ooaofooa_R_OIRrelated_instance1 = ooaofooa_R_OIR_AnyWhere1( ooaofooa_R_CONE_instance->Obj_ID, ooaofooa_R_CONE_instance->Rel_ID, ooaofooa_R_CONE_instance->OIR_ID );
  if ( ooaofooa_R_OIRrelated_instance1 ) {
    ooaofooa_R_CONE_R203_Link( ooaofooa_R_OIRrelated_instance1, ooaofooa_R_CONE_instance );
  }
  }
}


/*
 * RELATE R_OIR TO R_CONE ACROSS R203
 */
void
ooaofooa_R_CONE_R203_Link( ooaofooa_R_OIR * supertype, ooaofooa_R_CONE * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->OIR_ID = supertype->OIR_ID;
  subtype->Obj_ID = supertype->Obj_ID;
  subtype->Rel_ID = supertype->Rel_ID;
  /* Optimized linkage for R_CONE->R_OIR[R203] */
  subtype->R_OIR_R203 = supertype;
  /* Optimized linkage for R_OIR->R_CONE[R203] */
  supertype->R203_subtype = subtype;
  supertype->R203_object_id = ooaofooa_R_CONE_CLASS_NUMBER;
}


/*
 * UNRELATE R_OIR FROM R_CONE ACROSS R203
 */
void
ooaofooa_R_CONE_R203_Unlink( ooaofooa_R_OIR * supertype, ooaofooa_R_CONE * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->R_OIR_R203 = 0;
  supertype->R203_subtype = 0;
  supertype->R203_object_id = 0;
}


/*
 * RELATE R_COMP TO R_CONE ACROSS R214
 */
void
ooaofooa_R_CONE_R214_Link_relates( ooaofooa_R_COMP * part, ooaofooa_R_CONE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Rel_ID = part->Rel_ID;
  form->R_COMP_R214_is_related_to_other_type_via = part;
  part->R_CONE_R214_relates = form;
}

/*
 * UNRELATE R_COMP FROM R_CONE ACROSS R214
 */
void
ooaofooa_R_CONE_R214_Unlink_relates( ooaofooa_R_COMP * part, ooaofooa_R_CONE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->R_COMP_R214_is_related_to_other_type_via = 0;
  part->R_CONE_R214_relates = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_R_CONE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_R_CONE * self = (ooaofooa_R_CONE *) instance;
  printf( "INSERT INTO R_CONE VALUES ( %ld,%ld,%ld,%d,%d,'%s' );\n",
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Rel_ID & ESCHER_IDDUMP_MASK),
    ((long)self->OIR_ID & ESCHER_IDDUMP_MASK),
    self->Mult,
    self->Cond,
    self->Txt_Phrs );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_R_CONE_container[ ooaofooa_R_CONE_MAX_EXTENT_SIZE ];
static ooaofooa_R_CONE ooaofooa_R_CONE_instances[ ooaofooa_R_CONE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_R_CONE_extent = {
  {0,0}, {0,0}, &ooaofooa_R_CONE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_R_CONE_instances,
  sizeof( ooaofooa_R_CONE ), 0, ooaofooa_R_CONE_MAX_EXTENT_SIZE
  };


