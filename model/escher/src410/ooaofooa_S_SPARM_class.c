/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_SPARM_class.c
 *
 * Class:       Function Parameter  (S_SPARM)
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
ooaofooa_S_SPARM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_SPARM * self = (ooaofooa_S_SPARM *) instance;
  /* Initialize application analysis class attributes.  */
  self->SParm_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->SParm_ID;
  self->Sync_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  Escher_strcpy( self->Name, avlstring[ 3 ] );
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->By_Ref = Escher_atoi( avlstring[ 5 ] );
  Escher_strcpy( self->Dimensions, avlstring[ 6 ] );
  self->Previous_SParm_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  {i_t i = avlstring[ 8 + 1 ] - avlstring[ 8 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 8 ][ i ]; }
  }
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_SPARM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_SPARM * ooaofooa_S_SPARM_instance = (ooaofooa_S_SPARM *) instance;
  ooaofooa_S_SYNC * ooaofooa_S_SYNCrelated_instance1 = ooaofooa_S_SYNC_AnyWhere1( ooaofooa_S_SPARM_instance->Sync_ID );
  if ( ooaofooa_S_SYNCrelated_instance1 ) {
    ooaofooa_S_SPARM_R24_Link_defines( ooaofooa_S_SYNCrelated_instance1, ooaofooa_S_SPARM_instance );
  }
  {
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_S_SPARM_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_S_SPARM_R26_Link_describes_type_of( ooaofooa_S_DTrelated_instance1, ooaofooa_S_SPARM_instance );
  }
  }
  {
  ooaofooa_S_SPARM * ooaofooa_S_SPARMrelated_instance1 = (ooaofooa_S_SPARM *) Escher_instance_cache[ (intptr_t) ooaofooa_S_SPARM_instance->Previous_SParm_ID ];
  if ( ooaofooa_S_SPARMrelated_instance1 ) {
    ooaofooa_S_SPARM_R54_Link_succeeds( ooaofooa_S_SPARMrelated_instance1, ooaofooa_S_SPARM_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_SPARM *
ooaofooa_S_SPARM_AnyWhere1( Escher_UniqueID_t w_SParm_ID )
{
  ooaofooa_S_SPARM * w; 
  Escher_Iterator_s iter_S_SPARM;
  Escher_IteratorReset( &iter_S_SPARM, &pG_ooaofooa_S_SPARM_extent.active );
  while ( (w = (ooaofooa_S_SPARM *) Escher_IteratorNext( &iter_S_SPARM )) != 0 ) {
    if ( w->SParm_ID == w_SParm_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_SYNC TO S_SPARM ACROSS R24
 */
void
ooaofooa_S_SPARM_R24_Link_defines( ooaofooa_S_SYNC * part, ooaofooa_S_SPARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sync_ID = part->Sync_ID;
  form->S_SYNC_R24_is_defined_for = part;
  Escher_SetInsertElement( &part->S_SPARM_R24_defines, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SYNC FROM S_SPARM ACROSS R24
 */
void
ooaofooa_S_SPARM_R24_Unlink_defines( ooaofooa_S_SYNC * part, ooaofooa_S_SPARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sync_ID = 0;
  form->S_SYNC_R24_is_defined_for = 0;
  Escher_SetRemoveElement( &part->S_SPARM_R24_defines, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_DT TO S_SPARM ACROSS R26
 */
void
ooaofooa_S_SPARM_R26_Link_describes_type_of( ooaofooa_S_DT * part, ooaofooa_S_SPARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = part->DT_ID;
  form->S_DT_R26_is_typed_by_ = part;
  Escher_SetInsertElement( &part->S_SPARM_R26_describes_type_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DT FROM S_SPARM ACROSS R26
 */
void
ooaofooa_S_SPARM_R26_Unlink_describes_type_of( ooaofooa_S_DT * part, ooaofooa_S_SPARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = 0;
  form->S_DT_R26_is_typed_by_ = 0;
  Escher_SetRemoveElement( &part->S_SPARM_R26_describes_type_of, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> S_SPARM TO <right> S_SPARM ACROSS R54.'succeeds'
 */
void
ooaofooa_S_SPARM_R54_Link_succeeds( ooaofooa_S_SPARM * left, ooaofooa_S_SPARM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_SParm_ID = left->SParm_ID;
  left->S_SPARM_R54_succeeds = right; /* SR L1 */
  right->S_SPARM_R54_precedes = left; /* SR L2 */
}

/*
 * UNRELATE <left> S_SPARM FROM <right> S_SPARM ACROSS R54.'succeeds'
 */
void
ooaofooa_S_SPARM_R54_Unlink_succeeds( ooaofooa_S_SPARM * left, ooaofooa_S_SPARM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_SParm_ID = 0;
  left->S_SPARM_R54_succeeds = 0; /* SR U1 */
  right->S_SPARM_R54_precedes = 0; /* SR U2 */
}

/*
 * RELATE <left> S_SPARM TO <right> S_SPARM ACROSS R54.'precedes'
 */
void
ooaofooa_S_SPARM_R54_Link_precedes( ooaofooa_S_SPARM * left, ooaofooa_S_SPARM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_SParm_ID = right->SParm_ID;
  right->S_SPARM_R54_succeeds = left; /* SR L4 */
  left->S_SPARM_R54_precedes = right; /* SR L5 */
}

/*
 * UNRELATE <left> S_SPARM FROM <right> S_SPARM ACROSS R54.'precedes'
 */
void
ooaofooa_S_SPARM_R54_Unlink_precedes( ooaofooa_S_SPARM * left, ooaofooa_S_SPARM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_SParm_ID = 0;
  right->S_SPARM_R54_succeeds = 0; /* SR U4 */
  left->S_SPARM_R54_precedes = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_SPARM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_SPARM * self = (ooaofooa_S_SPARM *) instance;
  printf( "INSERT INTO S_SPARM VALUES ( %ld,%ld,'%s',%ld,%d,'%s',%ld,'%s' );\n",
    ((long)self->SParm_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Sync_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
    self->By_Ref,
    self->Dimensions,
    ((long)self->Previous_SParm_ID & ESCHER_IDDUMP_MASK),
    self->Descrip );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_SPARM_container[ ooaofooa_S_SPARM_MAX_EXTENT_SIZE ];
static ooaofooa_S_SPARM ooaofooa_S_SPARM_instances[ ooaofooa_S_SPARM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_SPARM_extent = {
  {0,0}, {0,0}, &ooaofooa_S_SPARM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_SPARM_instances,
  sizeof( ooaofooa_S_SPARM ), 0, ooaofooa_S_SPARM_MAX_EXTENT_SIZE
  };


