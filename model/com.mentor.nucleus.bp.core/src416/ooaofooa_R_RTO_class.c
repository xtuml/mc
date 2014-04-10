/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_RTO_class.c
 *
 * Class:       Referred To Class in Assoc  (R_RTO)
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
ooaofooa_R_RTO_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_R_RTO * self = (ooaofooa_R_RTO *) instance;
  /* Initialize application analysis class attributes.  */
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Rel_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->OIR_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Oid_ID = Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_R_RTO_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_R_RTO * ooaofooa_R_RTO_instance = (ooaofooa_R_RTO *) instance;
  ooaofooa_O_ID * ooaofooa_O_IDrelated_instance1 = ooaofooa_O_ID_AnyWhere1( ooaofooa_R_RTO_instance->Oid_ID, ooaofooa_R_RTO_instance->Obj_ID );
  if ( ooaofooa_O_IDrelated_instance1 ) {
    ooaofooa_R_RTO_R109_Link_identifies_for_this_association_( ooaofooa_O_IDrelated_instance1, ooaofooa_R_RTO_instance );
  }
  {
  ooaofooa_R_OIR * ooaofooa_R_OIRrelated_instance1 = ooaofooa_R_OIR_AnyWhere1( ooaofooa_R_RTO_instance->Obj_ID, ooaofooa_R_RTO_instance->Rel_ID, ooaofooa_R_RTO_instance->OIR_ID );
  if ( ooaofooa_R_OIRrelated_instance1 ) {
    ooaofooa_R_RTO_R203_Link( ooaofooa_R_OIRrelated_instance1, ooaofooa_R_RTO_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_R_RTO *
ooaofooa_R_RTO_AnyWhere1( Escher_UniqueID_t w_Obj_ID, Escher_UniqueID_t w_Rel_ID, Escher_UniqueID_t w_OIR_ID )
{
  ooaofooa_R_RTO * w; 
  Escher_Iterator_s iter_R_RTO;
  Escher_IteratorReset( &iter_R_RTO, &pG_ooaofooa_R_RTO_extent.active );
  while ( (w = (ooaofooa_R_RTO *) Escher_IteratorNext( &iter_R_RTO )) != 0 ) {
    if ( w->Obj_ID == w_Obj_ID && w->Rel_ID == w_Rel_ID && w->OIR_ID == w_OIR_ID ) {
      return w;
    }
  }
  return 0;
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_R_RTO *
ooaofooa_R_RTO_AnyWhere2( Escher_UniqueID_t w_Obj_ID, Escher_UniqueID_t w_Rel_ID, Escher_UniqueID_t w_OIR_ID, i_t w_Oid_ID )
{
  ooaofooa_R_RTO * w; 
  Escher_Iterator_s iter_R_RTO;
  Escher_IteratorReset( &iter_R_RTO, &pG_ooaofooa_R_RTO_extent.active );
  while ( (w = (ooaofooa_R_RTO *) Escher_IteratorNext( &iter_R_RTO )) != 0 ) {
    if ( w->Obj_ID == w_Obj_ID && w->Rel_ID == w_Rel_ID && w->OIR_ID == w_OIR_ID && w->Oid_ID == w_Oid_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE O_ID TO R_RTO ACROSS R109
 */
void
ooaofooa_R_RTO_R109_Link_identifies_for_this_association_( ooaofooa_O_ID * part, ooaofooa_R_RTO * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Oid_ID = part->Oid_ID;
  form->Obj_ID = part->Obj_ID;
  form->O_ID_R109_is_identified_in_this_association_by = part;
  Escher_SetInsertElement( &part->R_RTO_R109_identifies_for_this_association_, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_ID FROM R_RTO ACROSS R109
 */
void
ooaofooa_R_RTO_R109_Unlink_identifies_for_this_association_( ooaofooa_O_ID * part, ooaofooa_R_RTO * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->O_ID_R109_is_identified_in_this_association_by = 0;
  Escher_SetRemoveElement( &part->R_RTO_R109_identifies_for_this_association_, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE R_OIR TO R_RTO ACROSS R203
 */
void
ooaofooa_R_RTO_R203_Link( ooaofooa_R_OIR * supertype, ooaofooa_R_RTO * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->OIR_ID = supertype->OIR_ID;
  subtype->Obj_ID = supertype->Obj_ID;
  subtype->Rel_ID = supertype->Rel_ID;
  /* Optimized linkage for R_RTO->R_OIR[R203] */
  subtype->R_OIR_R203 = supertype;
  /* Optimized linkage for R_OIR->R_RTO[R203] */
  supertype->R203_subtype = subtype;
  supertype->R203_object_id = ooaofooa_R_RTO_CLASS_NUMBER;
}


/*
 * UNRELATE R_OIR FROM R_RTO ACROSS R203
 */
void
ooaofooa_R_RTO_R203_Unlink( ooaofooa_R_OIR * supertype, ooaofooa_R_RTO * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->R_OIR_R203 = 0;
  supertype->R203_subtype = 0;
  supertype->R203_object_id = 0;
}


/* Accessors to R_RTO[R204] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_R_RTO_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_R_RTO * self = (ooaofooa_R_RTO *) instance;
  printf( "INSERT INTO R_RTO VALUES ( %ld,%ld,%ld,%d );\n",
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Rel_ID & ESCHER_IDDUMP_MASK),
    ((long)self->OIR_ID & ESCHER_IDDUMP_MASK),
    self->Oid_ID );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_R_RTO_container[ ooaofooa_R_RTO_MAX_EXTENT_SIZE ];
static ooaofooa_R_RTO ooaofooa_R_RTO_instances[ ooaofooa_R_RTO_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_R_RTO_extent = {
  {0,0}, {0,0}, &ooaofooa_R_RTO_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_R_RTO_instances,
  sizeof( ooaofooa_R_RTO ), 0, ooaofooa_R_RTO_MAX_EXTENT_SIZE
  };


