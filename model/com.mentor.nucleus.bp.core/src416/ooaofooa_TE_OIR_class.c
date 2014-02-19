/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_OIR_class.c
 *
 * Class:       Extended Object In Relation  (TE_OIR)
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
ooaofooa_TE_OIR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_OIR * self = (ooaofooa_TE_OIR *) instance;
  /* Initialize application analysis class attributes.  */
  self->data_member = Escher_strcpy( self->data_member, avlstring[ 1 ] );
  self->assoc_type = Escher_strcpy( self->assoc_type, avlstring[ 2 ] );
  self->object_id = Escher_strcpy( self->object_id, avlstring[ 3 ] );
  self->rel_phrase = Escher_strcpy( self->rel_phrase, avlstring[ 4 ] );
  self->Mult = Escher_atoi( avlstring[ 5 ] );
  self->NavigatedTo = ( '0' != *avlstring[ 6 ] );
  self->OIR_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 8 ] );
  self->Rel_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 9 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_OIR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_OIR * ooaofooa_TE_OIR_instance = (ooaofooa_TE_OIR *) instance;
  ooaofooa_R_OIR * ooaofooa_R_OIRrelated_instance1 = ooaofooa_R_OIR_AnyWhere1( ooaofooa_TE_OIR_instance->Obj_ID, ooaofooa_TE_OIR_instance->Rel_ID, ooaofooa_TE_OIR_instance->OIR_ID );
  if ( ooaofooa_R_OIRrelated_instance1 ) {
    ooaofooa_TE_OIR_R2035_Link( ooaofooa_R_OIRrelated_instance1, ooaofooa_TE_OIR_instance );
  }
}


/*
 * RELATE R_OIR TO TE_OIR ACROSS R2035
 */
void
ooaofooa_TE_OIR_R2035_Link( ooaofooa_R_OIR * part, ooaofooa_TE_OIR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->OIR_ID = part->OIR_ID;
  form->Obj_ID = part->Obj_ID;
  form->Rel_ID = part->Rel_ID;
  form->R_OIR_R2035 = part;
  part->TE_OIR_R2035 = form;
}

/*
 * UNRELATE R_OIR FROM TE_OIR ACROSS R2035
 */
void
ooaofooa_TE_OIR_R2035_Unlink( ooaofooa_R_OIR * part, ooaofooa_TE_OIR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->OIR_ID = 0;
  form->Obj_ID = 0;
  form->Rel_ID = 0;
  form->R_OIR_R2035 = 0;
  part->TE_OIR_R2035 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_OIR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_OIR * self = (ooaofooa_TE_OIR *) instance;
  printf( "INSERT INTO TE_OIR VALUES ( '%s','%s','%s','%s',%d,%d,%ld,%ld,%ld );\n",
    ( 0 != self->data_member ) ? self->data_member : "",
    ( 0 != self->assoc_type ) ? self->assoc_type : "",
    ( 0 != self->object_id ) ? self->object_id : "",
    ( 0 != self->rel_phrase ) ? self->rel_phrase : "",
    self->Mult,
    self->NavigatedTo,
    ((long)self->OIR_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Rel_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_OIR_container[ ooaofooa_TE_OIR_MAX_EXTENT_SIZE ];
static ooaofooa_TE_OIR ooaofooa_TE_OIR_instances[ ooaofooa_TE_OIR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_OIR_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_OIR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_OIR_instances,
  sizeof( ooaofooa_TE_OIR ), 0, ooaofooa_TE_OIR_MAX_EXTENT_SIZE
  };


