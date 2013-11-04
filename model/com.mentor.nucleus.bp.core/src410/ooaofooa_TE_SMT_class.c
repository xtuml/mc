/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_SMT_class.c
 *
 * Class:       Extended Statement  (TE_SMT)
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
ooaofooa_TE_SMT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_SMT * self = (ooaofooa_TE_SMT *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  Escher_strcpy( self->OAL, avlstring[ 2 ] );
  Escher_strcpy( self->buffer, avlstring[ 3 ] );
  Escher_strcpy( self->buffer2, avlstring[ 4 ] );
  Escher_strcpy( self->trace, avlstring[ 5 ] );
  self->next_Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  self->sub_Block_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  Escher_strcpy( self->subtypeKL, avlstring[ 8 ] );
  self->parent_Block_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 9 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_SMT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_SMT * ooaofooa_TE_SMT_instance = (ooaofooa_TE_SMT *) instance;
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_SMT_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_TE_SMT_R2038_Link( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_TE_SMT_instance );
  }
  {
  ooaofooa_TE_SMT * ooaofooa_TE_SMTrelated_instance1 = ooaofooa_TE_SMT_AnyWhere1( ooaofooa_TE_SMT_instance->next_Statement_ID );
  if ( ooaofooa_TE_SMTrelated_instance1 ) {
    ooaofooa_TE_SMT_R2012_Link_precedes( ooaofooa_TE_SMTrelated_instance1, ooaofooa_TE_SMT_instance );
  }
  }
  {
  ooaofooa_TE_BLK * ooaofooa_TE_BLKrelated_instance1 = ooaofooa_TE_BLK_AnyWhere1( ooaofooa_TE_SMT_instance->sub_Block_ID );
  if ( ooaofooa_TE_BLKrelated_instance1 ) {
    ooaofooa_TE_SMT_R2015_Link( ooaofooa_TE_BLKrelated_instance1, ooaofooa_TE_SMT_instance );
  }
  }
  {
  ooaofooa_TE_BLK * ooaofooa_TE_BLKrelated_instance1 = ooaofooa_TE_BLK_AnyWhere1( ooaofooa_TE_SMT_instance->parent_Block_ID );
  if ( ooaofooa_TE_BLKrelated_instance1 ) {
    ooaofooa_TE_SMT_R2078_Link_has( ooaofooa_TE_BLKrelated_instance1, ooaofooa_TE_SMT_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_SMT *
ooaofooa_TE_SMT_AnyWhere1( Escher_UniqueID_t w_Statement_ID )
{
  ooaofooa_TE_SMT * w; 
  Escher_Iterator_s iter_TE_SMT;
  Escher_IteratorReset( &iter_TE_SMT, &pG_ooaofooa_TE_SMT_extent.active );
  while ( (w = (ooaofooa_TE_SMT *) Escher_IteratorNext( &iter_TE_SMT )) != 0 ) {
    if ( w->Statement_ID == w_Statement_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE <left> TE_SMT TO <right> TE_SMT ACROSS R2012.'precedes'
 */
void
ooaofooa_TE_SMT_R2012_Link_precedes( ooaofooa_TE_SMT * left, ooaofooa_TE_SMT * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->next_Statement_ID = left->Statement_ID;
  left->TE_SMT_R2012_precedes = right; /* SR L1 */
  right->TE_SMT_R2012_succeeds = left; /* SR L2 */
}

/*
 * UNRELATE <left> TE_SMT FROM <right> TE_SMT ACROSS R2012.'precedes'
 */
void
ooaofooa_TE_SMT_R2012_Unlink_precedes( ooaofooa_TE_SMT * left, ooaofooa_TE_SMT * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->next_Statement_ID = 0;
  left->TE_SMT_R2012_precedes = 0; /* SR U1 */
  right->TE_SMT_R2012_succeeds = 0; /* SR U2 */
}

/*
 * RELATE <left> TE_SMT TO <right> TE_SMT ACROSS R2012.'succeeds'
 */
void
ooaofooa_TE_SMT_R2012_Link_succeeds( ooaofooa_TE_SMT * left, ooaofooa_TE_SMT * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->next_Statement_ID = right->Statement_ID;
  right->TE_SMT_R2012_precedes = left; /* SR L4 */
  left->TE_SMT_R2012_succeeds = right; /* SR L5 */
}

/*
 * UNRELATE <left> TE_SMT FROM <right> TE_SMT ACROSS R2012.'succeeds'
 */
void
ooaofooa_TE_SMT_R2012_Unlink_succeeds( ooaofooa_TE_SMT * left, ooaofooa_TE_SMT * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->next_Statement_ID = 0;
  right->TE_SMT_R2012_precedes = 0; /* SR U4 */
  left->TE_SMT_R2012_succeeds = 0; /* SR U5 */
}

/*
 * RELATE TE_BLK TO TE_SMT ACROSS R2015
 */
void
ooaofooa_TE_SMT_R2015_Link( ooaofooa_TE_BLK * part, ooaofooa_TE_SMT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->sub_Block_ID = part->Block_ID;
  form->TE_BLK_R2015_has_sub = part;
  part->TE_SMT_R2015 = form;
}

/*
 * UNRELATE TE_BLK FROM TE_SMT ACROSS R2015
 */
void
ooaofooa_TE_SMT_R2015_Unlink( ooaofooa_TE_BLK * part, ooaofooa_TE_SMT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->sub_Block_ID = 0;
  form->TE_BLK_R2015_has_sub = 0;
  part->TE_SMT_R2015 = 0;
}

/*
 * RELATE ACT_SMT TO TE_SMT ACROSS R2038
 */
void
ooaofooa_TE_SMT_R2038_Link( ooaofooa_ACT_SMT * part, ooaofooa_TE_SMT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Statement_ID = part->Statement_ID;
  form->ACT_SMT_R2038 = part;
  part->TE_SMT_R2038 = form;
}

/*
 * UNRELATE ACT_SMT FROM TE_SMT ACROSS R2038
 */
void
ooaofooa_TE_SMT_R2038_Unlink( ooaofooa_ACT_SMT * part, ooaofooa_TE_SMT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->ACT_SMT_R2038 = 0;
  part->TE_SMT_R2038 = 0;
}

/* Accessors to TE_SMT[R2069] subtypes */


/*
 * RELATE TE_BLK TO TE_SMT ACROSS R2078
 */
void
ooaofooa_TE_SMT_R2078_Link_has( ooaofooa_TE_BLK * part, ooaofooa_TE_SMT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->parent_Block_ID = part->Block_ID;
  form->TE_BLK_R2078_is_in = part;
  Escher_SetInsertElement( &part->TE_SMT_R2078_has, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_BLK FROM TE_SMT ACROSS R2078
 */
void
ooaofooa_TE_SMT_R2078_Unlink_has( ooaofooa_TE_BLK * part, ooaofooa_TE_SMT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->parent_Block_ID = 0;
  form->TE_BLK_R2078_is_in = 0;
  Escher_SetRemoveElement( &part->TE_SMT_R2078_has, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_SMT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_SMT * self = (ooaofooa_TE_SMT *) instance;
  printf( "INSERT INTO TE_SMT VALUES ( %ld,'%s','%s','%s','%s',%ld,%ld,'%s',%ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    self->OAL,
    self->buffer,
    self->buffer2,
    self->trace,
    ((long)self->next_Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->sub_Block_ID & ESCHER_IDDUMP_MASK),
    self->subtypeKL,
    ((long)self->parent_Block_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_SMT_container[ ooaofooa_TE_SMT_MAX_EXTENT_SIZE ];
static ooaofooa_TE_SMT ooaofooa_TE_SMT_instances[ ooaofooa_TE_SMT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_SMT_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_SMT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_SMT_instances,
  sizeof( ooaofooa_TE_SMT ), 0, ooaofooa_TE_SMT_MAX_EXTENT_SIZE
  };


