/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_LNK_class.c
 *
 * Class:       Extended Chain Link  (TE_LNK)
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
ooaofooa_TE_LNK_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_LNK * self = (ooaofooa_TE_LNK *) instance;
  /* Initialize application analysis class attributes.  */
  self->ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->ID;
  self->Mult = Escher_atoi( avlstring[ 2 ] );
  Escher_strcpy( self->rel_phrase, avlstring[ 3 ] );
  self->rel_number = Escher_atoi( avlstring[ 4 ] );
  Escher_strcpy( self->OAL, avlstring[ 5 ] );
  Escher_strcpy( self->buffer, avlstring[ 6 ] );
  self->next_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  self->Link_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 8 ] );
  Escher_strcpy( self->linkage, avlstring[ 9 ] );
  Escher_strcpy( self->iterator, avlstring[ 10 ] );
  Escher_strcpy( self->left, avlstring[ 11 ] );
  Escher_strcpy( self->te_classGeneratedName, avlstring[ 12 ] );
  self->first = ( '0' != *avlstring[ 13 ] );
  self->last = ( '0' != *avlstring[ 14 ] );
  Escher_strcpy( self->assoc_type, avlstring[ 15 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_LNK_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_LNK * ooaofooa_TE_LNK_instance = (ooaofooa_TE_LNK *) instance;
  ooaofooa_ACT_LNK * ooaofooa_ACT_LNKrelated_instance1 = (ooaofooa_ACT_LNK *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_LNK_instance->Link_ID ];
  if ( ooaofooa_ACT_LNKrelated_instance1 ) {
    ooaofooa_TE_LNK_R2042_Link( ooaofooa_ACT_LNKrelated_instance1, ooaofooa_TE_LNK_instance );
  }
  {
  ooaofooa_TE_LNK * ooaofooa_TE_LNKrelated_instance1 = (ooaofooa_TE_LNK *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_LNK_instance->next_ID ];
  if ( ooaofooa_TE_LNKrelated_instance1 ) {
    ooaofooa_TE_LNK_R2075_Link_precedes( ooaofooa_TE_LNKrelated_instance1, ooaofooa_TE_LNK_instance );
  }
  }
  {
  ooaofooa_TE_CLASS * ooaofooa_TE_CLASSrelated_instance1 = (ooaofooa_TE_CLASS *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_LNK_instance->te_classGeneratedName ];
  if ( ooaofooa_TE_CLASSrelated_instance1 ) {
    ooaofooa_TE_LNK_R2076_Link_connects( ooaofooa_TE_CLASSrelated_instance1, ooaofooa_TE_LNK_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_LNK *
ooaofooa_TE_LNK_AnyWhere1( Escher_UniqueID_t w_ID )
{
  ooaofooa_TE_LNK * w; 
  Escher_Iterator_s iter_TE_LNK;
  Escher_IteratorReset( &iter_TE_LNK, &pG_ooaofooa_TE_LNK_extent.active );
  while ( (w = (ooaofooa_TE_LNK *) Escher_IteratorNext( &iter_TE_LNK )) != 0 ) {
    if ( w->ID == w_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE ACT_LNK TO TE_LNK ACROSS R2042
 */
void
ooaofooa_TE_LNK_R2042_Link( ooaofooa_ACT_LNK * part, ooaofooa_TE_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Link_ID = part->Link_ID;
  form->ACT_LNK_R2042 = part;
  part->TE_LNK_R2042 = form;
}

/*
 * UNRELATE ACT_LNK FROM TE_LNK ACROSS R2042
 */
void
ooaofooa_TE_LNK_R2042_Unlink( ooaofooa_ACT_LNK * part, ooaofooa_TE_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Link_ID = 0;
  form->ACT_LNK_R2042 = 0;
  part->TE_LNK_R2042 = 0;
}

/*
 * RELATE <left> TE_LNK TO <right> TE_LNK ACROSS R2075.'precedes'
 */
void
ooaofooa_TE_LNK_R2075_Link_precedes( ooaofooa_TE_LNK * left, ooaofooa_TE_LNK * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->next_ID = left->ID;
  left->TE_LNK_R2075_precedes = right; /* SR L1 */
  right->TE_LNK_R2075_succeeds = left; /* SR L2 */
}

/*
 * UNRELATE <left> TE_LNK FROM <right> TE_LNK ACROSS R2075.'precedes'
 */
void
ooaofooa_TE_LNK_R2075_Unlink_precedes( ooaofooa_TE_LNK * left, ooaofooa_TE_LNK * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->next_ID = 0;
  left->TE_LNK_R2075_precedes = 0; /* SR U1 */
  right->TE_LNK_R2075_succeeds = 0; /* SR U2 */
}

/*
 * RELATE <left> TE_LNK TO <right> TE_LNK ACROSS R2075.'succeeds'
 */
void
ooaofooa_TE_LNK_R2075_Link_succeeds( ooaofooa_TE_LNK * left, ooaofooa_TE_LNK * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->next_ID = right->ID;
  right->TE_LNK_R2075_precedes = left; /* SR L4 */
  left->TE_LNK_R2075_succeeds = right; /* SR L5 */
}

/*
 * UNRELATE <left> TE_LNK FROM <right> TE_LNK ACROSS R2075.'succeeds'
 */
void
ooaofooa_TE_LNK_R2075_Unlink_succeeds( ooaofooa_TE_LNK * left, ooaofooa_TE_LNK * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->next_ID = 0;
  right->TE_LNK_R2075_precedes = 0; /* SR U4 */
  left->TE_LNK_R2075_succeeds = 0; /* SR U5 */
}

/*
 * RELATE TE_CLASS TO TE_LNK ACROSS R2076
 */
void
ooaofooa_TE_LNK_R2076_Link_connects( ooaofooa_TE_CLASS * part, ooaofooa_TE_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  Escher_strcpy( form->te_classGeneratedName, part->GeneratedName );
  form->TE_CLASS_R2076_chains = part;
  Escher_SetInsertElement( &part->TE_LNK_R2076_connects, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_CLASS FROM TE_LNK ACROSS R2076
 */
void
ooaofooa_TE_LNK_R2076_Unlink_connects( ooaofooa_TE_CLASS * part, ooaofooa_TE_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  Escher_memset( &form->te_classGeneratedName, 0, sizeof( form->te_classGeneratedName ) );
  form->TE_CLASS_R2076_chains = 0;
  Escher_SetRemoveElement( &part->TE_LNK_R2076_connects, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_LNK_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_LNK * self = (ooaofooa_TE_LNK *) instance;
  printf( "INSERT INTO TE_LNK VALUES ( %ld,%d,'%s',%d,'%s','%s',%ld,%ld,'%s','%s','%s','%s',%d,%d,'%s' );\n",
    ((long)self->ID & ESCHER_IDDUMP_MASK),
    self->Mult,
    self->rel_phrase,
    self->rel_number,
    self->OAL,
    self->buffer,
    ((long)self->next_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Link_ID & ESCHER_IDDUMP_MASK),
    self->linkage,
    self->iterator,
    self->left,
    self->te_classGeneratedName,
    self->first,
    self->last,
    self->assoc_type );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_LNK_container[ ooaofooa_TE_LNK_MAX_EXTENT_SIZE ];
static ooaofooa_TE_LNK ooaofooa_TE_LNK_instances[ ooaofooa_TE_LNK_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_LNK_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_LNK_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_LNK_instances,
  sizeof( ooaofooa_TE_LNK ), 0, ooaofooa_TE_LNK_MAX_EXTENT_SIZE
  };


