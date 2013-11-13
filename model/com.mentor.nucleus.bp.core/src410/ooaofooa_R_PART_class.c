/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_PART_class.c
 *
 * Class:       Class As Simple Participant  (R_PART)
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
ooaofooa_R_PART_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_R_PART * self = (ooaofooa_R_PART *) instance;
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
void ooaofooa_R_PART_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_R_PART * ooaofooa_R_PART_instance = (ooaofooa_R_PART *) instance;
  ooaofooa_R_SIMP * ooaofooa_R_SIMPrelated_instance1 = ooaofooa_R_SIMP_AnyWhere1( ooaofooa_R_PART_instance->Rel_ID );
  if ( ooaofooa_R_SIMPrelated_instance1 ) {
    ooaofooa_R_PART_R207_Link_relates( ooaofooa_R_SIMPrelated_instance1, ooaofooa_R_PART_instance );
  }
  {
  ooaofooa_R_RTO * ooaofooa_R_RTOrelated_instance1 = ooaofooa_R_RTO_AnyWhere1( ooaofooa_R_PART_instance->Obj_ID, ooaofooa_R_PART_instance->Rel_ID, ooaofooa_R_PART_instance->OIR_ID );
  if ( ooaofooa_R_RTOrelated_instance1 ) {
    ooaofooa_R_PART_R204_Link( ooaofooa_R_RTOrelated_instance1, ooaofooa_R_PART_instance );
  }
  }
}


/*
 * RELATE R_RTO TO R_PART ACROSS R204
 */
void
ooaofooa_R_PART_R204_Link( ooaofooa_R_RTO * supertype, ooaofooa_R_PART * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->OIR_ID = supertype->OIR_ID;
  subtype->Obj_ID = supertype->Obj_ID;
  subtype->Rel_ID = supertype->Rel_ID;
  /* Optimized linkage for R_PART->R_RTO[R204] */
  subtype->R_RTO_R204 = supertype;
  /* Optimized linkage for R_RTO->R_PART[R204] */
  supertype->R204_subtype = subtype;
  supertype->R204_object_id = ooaofooa_R_PART_CLASS_NUMBER;
}


/*
 * UNRELATE R_RTO FROM R_PART ACROSS R204
 */
void
ooaofooa_R_PART_R204_Unlink( ooaofooa_R_RTO * supertype, ooaofooa_R_PART * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->R_RTO_R204 = 0;
  supertype->R204_subtype = 0;
  supertype->R204_object_id = 0;
}


/*
 * RELATE R_SIMP TO R_PART ACROSS R207
 */
void
ooaofooa_R_PART_R207_Link_relates( ooaofooa_R_SIMP * part, ooaofooa_R_PART * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Rel_ID = part->Rel_ID;
  form->R_SIMP_R207_is_related_to_formalizer_via = part;
  Escher_SetInsertElement( &part->R_PART_R207_relates, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE R_SIMP FROM R_PART ACROSS R207
 */
void
ooaofooa_R_PART_R207_Unlink_relates( ooaofooa_R_SIMP * part, ooaofooa_R_PART * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->R_SIMP_R207_is_related_to_formalizer_via = 0;
  Escher_SetRemoveElement( &part->R_PART_R207_relates, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_R_PART_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_R_PART * self = (ooaofooa_R_PART *) instance;
  printf( "INSERT INTO R_PART VALUES ( %ld,%ld,%ld,%d,%d,'%s' );\n",
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
static Escher_SetElement_s ooaofooa_R_PART_container[ ooaofooa_R_PART_MAX_EXTENT_SIZE ];
static ooaofooa_R_PART ooaofooa_R_PART_instances[ ooaofooa_R_PART_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_R_PART_extent = {
  {0,0}, {0,0}, &ooaofooa_R_PART_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_R_PART_instances,
  sizeof( ooaofooa_R_PART ), 0, ooaofooa_R_PART_MAX_EXTENT_SIZE
  };


