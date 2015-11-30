/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_BPARM_class.c
 *
 * Class:       Bridge Parameter  (S_BPARM)
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
ooaofooa_S_BPARM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_BPARM * self = (ooaofooa_S_BPARM *) instance;
  /* Initialize application analysis class attributes.  */
  self->BParm_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->BParm_ID;
  self->Brg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 3 ] );
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->By_Ref = Escher_atoi( avlstring[ 5 ] );
  self->Dimensions = Escher_strcpy( self->Dimensions, avlstring[ 6 ] );
  self->Previous_BParm_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
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
void ooaofooa_S_BPARM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_BPARM * ooaofooa_S_BPARM_instance = (ooaofooa_S_BPARM *) instance;
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_S_BPARM_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_S_BPARM_R22_Link_defines_the_type_of( ooaofooa_S_DTrelated_instance1, ooaofooa_S_BPARM_instance );
  }
  {
  ooaofooa_S_BRG * ooaofooa_S_BRGrelated_instance1 = (ooaofooa_S_BRG *) Escher_instance_cache[ (intptr_t) ooaofooa_S_BPARM_instance->Brg_ID ];
  if ( ooaofooa_S_BRGrelated_instance1 ) {
    ooaofooa_S_BPARM_R21_Link_is_part_of( ooaofooa_S_BRGrelated_instance1, ooaofooa_S_BPARM_instance );
  }
  }
  {
  ooaofooa_S_BPARM * ooaofooa_S_BPARMrelated_instance1 = (ooaofooa_S_BPARM *) Escher_instance_cache[ (intptr_t) ooaofooa_S_BPARM_instance->Previous_BParm_ID ];
  if ( ooaofooa_S_BPARMrelated_instance1 ) {
    ooaofooa_S_BPARM_R55_Link_precedes( ooaofooa_S_BPARMrelated_instance1, ooaofooa_S_BPARM_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_BPARM *
ooaofooa_S_BPARM_AnyWhere1( Escher_UniqueID_t w_BParm_ID )
{
  ooaofooa_S_BPARM * w; 
  Escher_Iterator_s iter_S_BPARM;
  Escher_IteratorReset( &iter_S_BPARM, &pG_ooaofooa_S_BPARM_extent.active );
  while ( (w = (ooaofooa_S_BPARM *) Escher_IteratorNext( &iter_S_BPARM )) != 0 ) {
    if ( w->BParm_ID == w_BParm_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_BRG TO S_BPARM ACROSS R21
 */
void
ooaofooa_S_BPARM_R21_Link_is_part_of( ooaofooa_S_BRG * part, ooaofooa_S_BPARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Brg_ID = part->Brg_ID;
  form->S_BRG_R21_contains = part;
  Escher_SetInsertElement( &part->S_BPARM_R21_is_part_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_BRG FROM S_BPARM ACROSS R21
 */
void
ooaofooa_S_BPARM_R21_Unlink_is_part_of( ooaofooa_S_BRG * part, ooaofooa_S_BPARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Brg_ID = 0;
  form->S_BRG_R21_contains = 0;
  Escher_SetRemoveElement( &part->S_BPARM_R21_is_part_of, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_DT TO S_BPARM ACROSS R22
 */
void
ooaofooa_S_BPARM_R22_Link_defines_the_type_of( ooaofooa_S_DT * part, ooaofooa_S_BPARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = part->DT_ID;
  form->S_DT_R22_is_defined_by = part;
  Escher_SetInsertElement( &part->S_BPARM_R22_defines_the_type_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DT FROM S_BPARM ACROSS R22
 */
void
ooaofooa_S_BPARM_R22_Unlink_defines_the_type_of( ooaofooa_S_DT * part, ooaofooa_S_BPARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = 0;
  form->S_DT_R22_is_defined_by = 0;
  Escher_SetRemoveElement( &part->S_BPARM_R22_defines_the_type_of, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> S_BPARM TO <right> S_BPARM ACROSS R55.'succeeds'
 */
void
ooaofooa_S_BPARM_R55_Link_succeeds( ooaofooa_S_BPARM * left, ooaofooa_S_BPARM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_BParm_ID = right->BParm_ID;
  left->S_BPARM_R55_succeeds = right; /* SR L1 */
  right->S_BPARM_R55_precedes = left; /* SR L2 */
}

/*
 * UNRELATE <left> S_BPARM FROM <right> S_BPARM ACROSS R55.'succeeds'
 */
void
ooaofooa_S_BPARM_R55_Unlink_succeeds( ooaofooa_S_BPARM * left, ooaofooa_S_BPARM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_BParm_ID = 0;
  left->S_BPARM_R55_succeeds = 0; /* SR U1 */
  right->S_BPARM_R55_precedes = 0; /* SR U2 */
}

/*
 * RELATE <left> S_BPARM TO <right> S_BPARM ACROSS R55.'precedes'
 */
void
ooaofooa_S_BPARM_R55_Link_precedes( ooaofooa_S_BPARM * left, ooaofooa_S_BPARM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_BParm_ID = left->BParm_ID;
  right->S_BPARM_R55_succeeds = left; /* SR L4 */
  left->S_BPARM_R55_precedes = right; /* SR L5 */
}

/*
 * UNRELATE <left> S_BPARM FROM <right> S_BPARM ACROSS R55.'precedes'
 */
void
ooaofooa_S_BPARM_R55_Unlink_precedes( ooaofooa_S_BPARM * left, ooaofooa_S_BPARM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_BParm_ID = 0;
  right->S_BPARM_R55_succeeds = 0; /* SR U4 */
  left->S_BPARM_R55_precedes = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_BPARM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_BPARM * self = (ooaofooa_S_BPARM *) instance;
  printf( "INSERT INTO S_BPARM VALUES ( %ld,%ld,'%s',%ld,%d,'%s',%ld,'%s' );\n",
    ((long)self->BParm_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Brg_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
    self->By_Ref,
    ( 0 != self->Dimensions ) ? self->Dimensions : "",
    ((long)self->Previous_BParm_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Descrip ) ? self->Descrip : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_BPARM_container[ ooaofooa_S_BPARM_MAX_EXTENT_SIZE ];
static ooaofooa_S_BPARM ooaofooa_S_BPARM_instances[ ooaofooa_S_BPARM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_BPARM_extent = {
  {0,0}, {0,0}, &ooaofooa_S_BPARM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_BPARM_instances,
  sizeof( ooaofooa_S_BPARM ), 0, ooaofooa_S_BPARM_MAX_EXTENT_SIZE
  };


