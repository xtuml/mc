/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_SMT_class.c
 *
 * Class:       Statement  (ACT_SMT)
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
ooaofooa_ACT_SMT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_SMT * self = (ooaofooa_ACT_SMT *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Statement_ID;
  self->Block_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Previous_Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->LineNumber = Escher_atoi( avlstring[ 4 ] );
  self->StartPosition = Escher_atoi( avlstring[ 5 ] );
  self->Label = Escher_strcpy( self->Label, avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_SMT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMT_instance = (ooaofooa_ACT_SMT *) instance;
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = ooaofooa_ACT_SMT_AnyWhere2( ooaofooa_ACT_SMT_instance->Previous_Statement_ID, ooaofooa_ACT_SMT_instance->Block_ID );
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_ACT_SMT_R661_Link_precedes( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_ACT_SMT_instance );
  }
  {
  ooaofooa_ACT_BLK * ooaofooa_ACT_BLKrelated_instance1 = (ooaofooa_ACT_BLK *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_SMT_instance->Block_ID ];
  if ( ooaofooa_ACT_BLKrelated_instance1 ) {
    ooaofooa_ACT_SMT_R602_Link_contained_by( ooaofooa_ACT_BLKrelated_instance1, ooaofooa_ACT_SMT_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_ACT_SMT *
ooaofooa_ACT_SMT_AnyWhere2( Escher_UniqueID_t w_Statement_ID, Escher_UniqueID_t w_Block_ID )
{
  ooaofooa_ACT_SMT * w; 
  Escher_Iterator_s iter_ACT_SMT;
  Escher_IteratorReset( &iter_ACT_SMT, &pG_ooaofooa_ACT_SMT_extent.active );
  while ( (w = (ooaofooa_ACT_SMT *) Escher_IteratorNext( &iter_ACT_SMT )) != 0 ) {
    if ( w->Statement_ID == w_Statement_ID && w->Block_ID == w_Block_ID ) {
      return w;
    }
  }
  return 0;
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_ACT_SMT *
ooaofooa_ACT_SMT_AnyWhere1( Escher_UniqueID_t w_Statement_ID )
{
  ooaofooa_ACT_SMT * w; 
  Escher_Iterator_s iter_ACT_SMT;
  Escher_IteratorReset( &iter_ACT_SMT, &pG_ooaofooa_ACT_SMT_extent.active );
  while ( (w = (ooaofooa_ACT_SMT *) Escher_IteratorNext( &iter_ACT_SMT )) != 0 ) {
    if ( w->Statement_ID == w_Statement_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE ACT_BLK TO ACT_SMT ACROSS R602
 */
void
ooaofooa_ACT_SMT_R602_Link_contained_by( ooaofooa_ACT_BLK * part, ooaofooa_ACT_SMT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Block_ID = part->Block_ID;
  form->ACT_BLK_R602_contains = part;
  Escher_SetInsertElement( &part->ACT_SMT_R602_contained_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE ACT_BLK FROM ACT_SMT ACROSS R602
 */
void
ooaofooa_ACT_SMT_R602_Unlink_contained_by( ooaofooa_ACT_BLK * part, ooaofooa_ACT_SMT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->ACT_BLK_R602_contains = 0;
  Escher_SetRemoveElement( &part->ACT_SMT_R602_contained_by, (Escher_ObjectSet_s *) form );
}

/* Accessors to ACT_SMT[R603] subtypes */


/*
 * RELATE <left> ACT_SMT TO <right> ACT_SMT ACROSS R661.'succeeds'
 */
void
ooaofooa_ACT_SMT_R661_Link_succeeds( ooaofooa_ACT_SMT * left, ooaofooa_ACT_SMT * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_Statement_ID = right->Statement_ID;
  left->Block_ID = right->Block_ID;
  left->ACT_SMT_R661_succeeds = right; /* SR L1 */
  right->ACT_SMT_R661_precedes = left; /* SR L2 */
}

/*
 * UNRELATE <left> ACT_SMT FROM <right> ACT_SMT ACROSS R661.'succeeds'
 */
void
ooaofooa_ACT_SMT_R661_Unlink_succeeds( ooaofooa_ACT_SMT * left, ooaofooa_ACT_SMT * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_Statement_ID = 0;
  left->ACT_SMT_R661_succeeds = 0; /* SR U1 */
  right->ACT_SMT_R661_precedes = 0; /* SR U2 */
}

/*
 * RELATE <left> ACT_SMT TO <right> ACT_SMT ACROSS R661.'precedes'
 */
void
ooaofooa_ACT_SMT_R661_Link_precedes( ooaofooa_ACT_SMT * left, ooaofooa_ACT_SMT * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_Statement_ID = left->Statement_ID;
  right->Block_ID = left->Block_ID;
  right->ACT_SMT_R661_succeeds = left; /* SR L4 */
  left->ACT_SMT_R661_precedes = right; /* SR L5 */
}

/*
 * UNRELATE <left> ACT_SMT FROM <right> ACT_SMT ACROSS R661.'precedes'
 */
void
ooaofooa_ACT_SMT_R661_Unlink_precedes( ooaofooa_ACT_SMT * left, ooaofooa_ACT_SMT * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_Statement_ID = 0;
  right->ACT_SMT_R661_succeeds = 0; /* SR U4 */
  left->ACT_SMT_R661_precedes = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_SMT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_SMT * self = (ooaofooa_ACT_SMT *) instance;
  printf( "INSERT INTO ACT_SMT VALUES ( %ld,%ld,%ld,%d,%d,'%s' );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Block_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Previous_Statement_ID & ESCHER_IDDUMP_MASK),
    self->LineNumber,
    self->StartPosition,
    ( 0 != self->Label ) ? self->Label : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_SMT_container[ ooaofooa_ACT_SMT_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_SMT ooaofooa_ACT_SMT_instances[ ooaofooa_ACT_SMT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_SMT_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_SMT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_SMT_instances,
  sizeof( ooaofooa_ACT_SMT ), 0, ooaofooa_ACT_SMT_MAX_EXTENT_SIZE
  };


