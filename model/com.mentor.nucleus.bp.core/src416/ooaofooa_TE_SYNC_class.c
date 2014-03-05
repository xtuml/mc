/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_SYNC_class.c
 *
 * Class:       Extended Function  (TE_SYNC)
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
ooaofooa_TE_SYNC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_SYNC * self = (ooaofooa_TE_SYNC *) instance;
  /* Initialize application analysis class attributes.  */
  self->Name = Escher_strcpy( self->Name, avlstring[ 1 ] );
  self->Included = ( '0' != *avlstring[ 2 ] );
  self->IsInitFunction = ( '0' != *avlstring[ 3 ] );
  self->IsSafeForInterrupts = ( '0' != *avlstring[ 4 ] );
  self->XlateSemantics = ( '0' != *avlstring[ 5 ] );
  self->Order = Escher_atoi( avlstring[ 6 ] );
  self->AbaID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  self->GeneratedName = Escher_strcpy( self->GeneratedName, avlstring[ 8 ] );
  self->intraface_method = Escher_strcpy( self->intraface_method, avlstring[ 9 ] );
  self->deferred_method = Escher_strcpy( self->deferred_method, avlstring[ 10 ] );
  self->te_cID = (Escher_iHandle_t) Escher_atoi( avlstring[ 11 ] );
  self->Sync_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 12 ] );
  self->ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 13 ] );
  self->nextID = (Escher_iHandle_t) Escher_atoi( avlstring[ 14 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_SYNC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_SYNC * ooaofooa_TE_SYNC_instance = (ooaofooa_TE_SYNC *) instance;
  ooaofooa_TE_ABA * ooaofooa_TE_ABArelated_instance1 = (ooaofooa_TE_ABA *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_SYNC_instance->AbaID ];
  if ( ooaofooa_TE_ABArelated_instance1 ) {
    ooaofooa_TE_SYNC_R2010_Link( ooaofooa_TE_ABArelated_instance1, ooaofooa_TE_SYNC_instance );
  }
  {
  ooaofooa_S_SYNC * ooaofooa_S_SYNCrelated_instance1 = ooaofooa_S_SYNC_AnyWhere1( ooaofooa_TE_SYNC_instance->Sync_ID );
  if ( ooaofooa_S_SYNCrelated_instance1 ) {
    ooaofooa_TE_SYNC_R2023_Link( ooaofooa_S_SYNCrelated_instance1, ooaofooa_TE_SYNC_instance );
  }
  }
  {
  ooaofooa_TE_C * ooaofooa_TE_Crelated_instance1 = (ooaofooa_TE_C *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_SYNC_instance->te_cID ];
  if ( ooaofooa_TE_Crelated_instance1 ) {
    ooaofooa_TE_SYNC_R2084_Link( ooaofooa_TE_Crelated_instance1, ooaofooa_TE_SYNC_instance );
  }
  }
  {
  ooaofooa_TE_SYNC * ooaofooa_TE_SYNCrelated_instance1 = ooaofooa_TE_SYNC_AnyWhere2( ooaofooa_TE_SYNC_instance->nextID );
  if ( ooaofooa_TE_SYNCrelated_instance1 ) {
    ooaofooa_TE_SYNC_R2095_Link_succeeds( ooaofooa_TE_SYNCrelated_instance1, ooaofooa_TE_SYNC_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_SYNC *
ooaofooa_TE_SYNC_AnyWhere2( Escher_UniqueID_t w_ID )
{
  ooaofooa_TE_SYNC * w; 
  Escher_Iterator_s iter_TE_SYNC;
  Escher_IteratorReset( &iter_TE_SYNC, &pG_ooaofooa_TE_SYNC_extent.active );
  while ( (w = (ooaofooa_TE_SYNC *) Escher_IteratorNext( &iter_TE_SYNC )) != 0 ) {
    if ( w->ID == w_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE TE_ABA TO TE_SYNC ACROSS R2010
 */
void
ooaofooa_TE_SYNC_R2010_Link( ooaofooa_TE_ABA * supertype, ooaofooa_TE_SYNC * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->AbaID = supertype->AbaID;
  /* Optimized linkage for TE_SYNC->TE_ABA[R2010] */
  subtype->TE_ABA_R2010 = supertype;
  /* Optimized linkage for TE_ABA->TE_SYNC[R2010] */
  supertype->R2010_subtype = subtype;
  supertype->R2010_object_id = ooaofooa_TE_SYNC_CLASS_NUMBER;
}


/*
 * UNRELATE TE_ABA FROM TE_SYNC ACROSS R2010
 */
void
ooaofooa_TE_SYNC_R2010_Unlink( ooaofooa_TE_ABA * supertype, ooaofooa_TE_SYNC * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->TE_ABA_R2010 = 0;
  supertype->R2010_subtype = 0;
  supertype->R2010_object_id = 0;
}


/*
 * RELATE S_SYNC TO TE_SYNC ACROSS R2023
 */
void
ooaofooa_TE_SYNC_R2023_Link( ooaofooa_S_SYNC * part, ooaofooa_TE_SYNC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sync_ID = part->Sync_ID;
  form->S_SYNC_R2023 = part;
  part->TE_SYNC_R2023 = form;
}

/*
 * UNRELATE S_SYNC FROM TE_SYNC ACROSS R2023
 */
void
ooaofooa_TE_SYNC_R2023_Unlink( ooaofooa_S_SYNC * part, ooaofooa_TE_SYNC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sync_ID = 0;
  form->S_SYNC_R2023 = 0;
  part->TE_SYNC_R2023 = 0;
}

/*
 * RELATE TE_C TO TE_SYNC ACROSS R2084
 */
void
ooaofooa_TE_SYNC_R2084_Link( ooaofooa_TE_C * part, ooaofooa_TE_SYNC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_cID = part->ID;
  form->TE_C_R2084 = part;
  Escher_SetInsertElement( &part->TE_SYNC_R2084, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_C FROM TE_SYNC ACROSS R2084
 */
void
ooaofooa_TE_SYNC_R2084_Unlink( ooaofooa_TE_C * part, ooaofooa_TE_SYNC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_cID = 0;
  form->TE_C_R2084 = 0;
  Escher_SetRemoveElement( &part->TE_SYNC_R2084, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> TE_SYNC TO <right> TE_SYNC ACROSS R2095.'precedes'
 */
void
ooaofooa_TE_SYNC_R2095_Link_precedes( ooaofooa_TE_SYNC * left, ooaofooa_TE_SYNC * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->nextID = right->ID;
  left->TE_SYNC_R2095_precedes = right; /* SR L1 */
  right->TE_SYNC_R2095_succeeds = left; /* SR L2 */
}

/*
 * UNRELATE <left> TE_SYNC FROM <right> TE_SYNC ACROSS R2095.'precedes'
 */
void
ooaofooa_TE_SYNC_R2095_Unlink_precedes( ooaofooa_TE_SYNC * left, ooaofooa_TE_SYNC * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->nextID = 0;
  left->TE_SYNC_R2095_precedes = 0; /* SR U1 */
  right->TE_SYNC_R2095_succeeds = 0; /* SR U2 */
}

/*
 * RELATE <left> TE_SYNC TO <right> TE_SYNC ACROSS R2095.'succeeds'
 */
void
ooaofooa_TE_SYNC_R2095_Link_succeeds( ooaofooa_TE_SYNC * left, ooaofooa_TE_SYNC * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->nextID = left->ID;
  right->TE_SYNC_R2095_precedes = left; /* SR L4 */
  left->TE_SYNC_R2095_succeeds = right; /* SR L5 */
}

/*
 * UNRELATE <left> TE_SYNC FROM <right> TE_SYNC ACROSS R2095.'succeeds'
 */
void
ooaofooa_TE_SYNC_R2095_Unlink_succeeds( ooaofooa_TE_SYNC * left, ooaofooa_TE_SYNC * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->nextID = 0;
  right->TE_SYNC_R2095_precedes = 0; /* SR U4 */
  left->TE_SYNC_R2095_succeeds = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_SYNC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_SYNC * self = (ooaofooa_TE_SYNC *) instance;
  printf( "INSERT INTO TE_SYNC VALUES ( '%s',%d,%d,%d,%d,%d,%ld,'%s','%s','%s',%ld,%ld,%ld,%ld );\n",
    ( 0 != self->Name ) ? self->Name : "",
    self->Included,
    self->IsInitFunction,
    self->IsSafeForInterrupts,
    self->XlateSemantics,
    self->Order,
    ((long)self->AbaID & ESCHER_IDDUMP_MASK),
    ( 0 != self->GeneratedName ) ? self->GeneratedName : "",
    ( 0 != self->intraface_method ) ? self->intraface_method : "",
    ( 0 != self->deferred_method ) ? self->deferred_method : "",
    ((long)self->te_cID & ESCHER_IDDUMP_MASK),
    ((long)self->Sync_ID & ESCHER_IDDUMP_MASK),
    ((long)self->ID & ESCHER_IDDUMP_MASK),
    ((long)self->nextID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_SYNC_container[ ooaofooa_TE_SYNC_MAX_EXTENT_SIZE ];
static ooaofooa_TE_SYNC ooaofooa_TE_SYNC_instances[ ooaofooa_TE_SYNC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_SYNC_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_SYNC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_SYNC_instances,
  sizeof( ooaofooa_TE_SYNC ), 0, ooaofooa_TE_SYNC_MAX_EXTENT_SIZE
  };


