/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_COTH_class.c
 *
 * Class:       Class As Derived Other Side  (R_COTH)
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
ooaofooa_R_COTH_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_R_COTH * self = (ooaofooa_R_COTH *) instance;
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
void ooaofooa_R_COTH_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_R_COTH * ooaofooa_R_COTH_instance = (ooaofooa_R_COTH *) instance;
  ooaofooa_R_COMP * ooaofooa_R_COMPrelated_instance1 = ooaofooa_R_COMP_AnyWhere1( ooaofooa_R_COTH_instance->Rel_ID );
  if ( ooaofooa_R_COMPrelated_instance1 ) {
    ooaofooa_R_COTH_R215_Link_relates( ooaofooa_R_COMPrelated_instance1, ooaofooa_R_COTH_instance );
  }
  {
  ooaofooa_R_OIR * ooaofooa_R_OIRrelated_instance1 = ooaofooa_R_OIR_AnyWhere1( ooaofooa_R_COTH_instance->Obj_ID, ooaofooa_R_COTH_instance->Rel_ID, ooaofooa_R_COTH_instance->OIR_ID );
  if ( ooaofooa_R_OIRrelated_instance1 ) {
    ooaofooa_R_COTH_R203_Link( ooaofooa_R_OIRrelated_instance1, ooaofooa_R_COTH_instance );
  }
  }
}


/*
 * RELATE R_OIR TO R_COTH ACROSS R203
 */
void
ooaofooa_R_COTH_R203_Link( ooaofooa_R_OIR * supertype, ooaofooa_R_COTH * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->OIR_ID = supertype->OIR_ID;
  subtype->Obj_ID = supertype->Obj_ID;
  subtype->Rel_ID = supertype->Rel_ID;
  /* Optimized linkage for R_COTH->R_OIR[R203] */
  subtype->R_OIR_R203 = supertype;
  /* Optimized linkage for R_OIR->R_COTH[R203] */
  supertype->R203_subtype = subtype;
  supertype->R203_object_id = ooaofooa_R_COTH_CLASS_NUMBER;
}


/*
 * UNRELATE R_OIR FROM R_COTH ACROSS R203
 */
void
ooaofooa_R_COTH_R203_Unlink( ooaofooa_R_OIR * supertype, ooaofooa_R_COTH * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->R_OIR_R203 = 0;
  supertype->R203_subtype = 0;
  supertype->R203_object_id = 0;
}


/*
 * RELATE R_COMP TO R_COTH ACROSS R215
 */
void
ooaofooa_R_COTH_R215_Link_relates( ooaofooa_R_COMP * part, ooaofooa_R_COTH * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Rel_ID = part->Rel_ID;
  form->R_COMP_R215_is_related_to_one_side_via = part;
  part->R_COTH_R215_relates = form;
}

/*
 * UNRELATE R_COMP FROM R_COTH ACROSS R215
 */
void
ooaofooa_R_COTH_R215_Unlink_relates( ooaofooa_R_COMP * part, ooaofooa_R_COTH * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->R_COMP_R215_is_related_to_one_side_via = 0;
  part->R_COTH_R215_relates = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_R_COTH_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_R_COTH * self = (ooaofooa_R_COTH *) instance;
  printf( "INSERT INTO R_COTH VALUES ( %ld,%ld,%ld,%d,%d,'%s' );\n",
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
static Escher_SetElement_s ooaofooa_R_COTH_container[ ooaofooa_R_COTH_MAX_EXTENT_SIZE ];
static ooaofooa_R_COTH ooaofooa_R_COTH_instances[ ooaofooa_R_COTH_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_R_COTH_extent = {
  {0,0}, {0,0}, &ooaofooa_R_COTH_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_R_COTH_instances,
  sizeof( ooaofooa_R_COTH ), 0, ooaofooa_R_COTH_MAX_EXTENT_SIZE
  };


