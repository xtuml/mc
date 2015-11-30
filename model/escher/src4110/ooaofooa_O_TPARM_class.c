/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_TPARM_class.c
 *
 * Class:       Operation Parameter  (O_TPARM)
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
ooaofooa_O_TPARM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_O_TPARM * self = (ooaofooa_O_TPARM *) instance;
  /* Initialize application analysis class attributes.  */
  self->TParm_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->TParm_ID;
  self->Tfr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 3 ] );
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->By_Ref = Escher_atoi( avlstring[ 5 ] );
  self->Dimensions = Escher_strcpy( self->Dimensions, avlstring[ 6 ] );
  self->Previous_TParm_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
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
void ooaofooa_O_TPARM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_O_TPARM * ooaofooa_O_TPARM_instance = (ooaofooa_O_TPARM *) instance;
  ooaofooa_O_TFR * ooaofooa_O_TFRrelated_instance1 = (ooaofooa_O_TFR *) Escher_instance_cache[ (intptr_t) ooaofooa_O_TPARM_instance->Tfr_ID ];
  if ( ooaofooa_O_TFRrelated_instance1 ) {
    ooaofooa_O_TPARM_R117_Link_contains( ooaofooa_O_TFRrelated_instance1, ooaofooa_O_TPARM_instance );
  }
  {
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_O_TPARM_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_O_TPARM_R118_Link_defines_the_type_of_( ooaofooa_S_DTrelated_instance1, ooaofooa_O_TPARM_instance );
  }
  }
  {
  ooaofooa_O_TPARM * ooaofooa_O_TPARMrelated_instance1 = (ooaofooa_O_TPARM *) Escher_instance_cache[ (intptr_t) ooaofooa_O_TPARM_instance->Previous_TParm_ID ];
  if ( ooaofooa_O_TPARMrelated_instance1 ) {
    ooaofooa_O_TPARM_R124_Link_precedes( ooaofooa_O_TPARMrelated_instance1, ooaofooa_O_TPARM_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_O_TPARM *
ooaofooa_O_TPARM_AnyWhere1( Escher_UniqueID_t w_TParm_ID )
{
  ooaofooa_O_TPARM * w; 
  Escher_Iterator_s iter_O_TPARM;
  Escher_IteratorReset( &iter_O_TPARM, &pG_ooaofooa_O_TPARM_extent.active );
  while ( (w = (ooaofooa_O_TPARM *) Escher_IteratorNext( &iter_O_TPARM )) != 0 ) {
    if ( w->TParm_ID == w_TParm_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE O_TFR TO O_TPARM ACROSS R117
 */
void
ooaofooa_O_TPARM_R117_Link_contains( ooaofooa_O_TFR * part, ooaofooa_O_TPARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Tfr_ID = part->Tfr_ID;
  form->O_TFR_R117_is_part_of_ = part;
  Escher_SetInsertElement( &part->O_TPARM_R117_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_TFR FROM O_TPARM ACROSS R117
 */
void
ooaofooa_O_TPARM_R117_Unlink_contains( ooaofooa_O_TFR * part, ooaofooa_O_TPARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Tfr_ID = 0;
  form->O_TFR_R117_is_part_of_ = 0;
  Escher_SetRemoveElement( &part->O_TPARM_R117_contains, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_DT TO O_TPARM ACROSS R118
 */
void
ooaofooa_O_TPARM_R118_Link_defines_the_type_of_( ooaofooa_S_DT * part, ooaofooa_O_TPARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = part->DT_ID;
  form->S_DT_R118_is_defined_by = part;
  Escher_SetInsertElement( &part->O_TPARM_R118_defines_the_type_of_, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DT FROM O_TPARM ACROSS R118
 */
void
ooaofooa_O_TPARM_R118_Unlink_defines_the_type_of_( ooaofooa_S_DT * part, ooaofooa_O_TPARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = 0;
  form->S_DT_R118_is_defined_by = 0;
  Escher_SetRemoveElement( &part->O_TPARM_R118_defines_the_type_of_, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> O_TPARM TO <right> O_TPARM ACROSS R124.'succeeds'
 */
void
ooaofooa_O_TPARM_R124_Link_succeeds( ooaofooa_O_TPARM * left, ooaofooa_O_TPARM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_TParm_ID = right->TParm_ID;
  left->O_TPARM_R124_succeeds = right; /* SR L1 */
  right->O_TPARM_R124_precedes = left; /* SR L2 */
}

/*
 * UNRELATE <left> O_TPARM FROM <right> O_TPARM ACROSS R124.'succeeds'
 */
void
ooaofooa_O_TPARM_R124_Unlink_succeeds( ooaofooa_O_TPARM * left, ooaofooa_O_TPARM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_TParm_ID = 0;
  left->O_TPARM_R124_succeeds = 0; /* SR U1 */
  right->O_TPARM_R124_precedes = 0; /* SR U2 */
}

/*
 * RELATE <left> O_TPARM TO <right> O_TPARM ACROSS R124.'precedes'
 */
void
ooaofooa_O_TPARM_R124_Link_precedes( ooaofooa_O_TPARM * left, ooaofooa_O_TPARM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_TParm_ID = left->TParm_ID;
  right->O_TPARM_R124_succeeds = left; /* SR L4 */
  left->O_TPARM_R124_precedes = right; /* SR L5 */
}

/*
 * UNRELATE <left> O_TPARM FROM <right> O_TPARM ACROSS R124.'precedes'
 */
void
ooaofooa_O_TPARM_R124_Unlink_precedes( ooaofooa_O_TPARM * left, ooaofooa_O_TPARM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_TParm_ID = 0;
  right->O_TPARM_R124_succeeds = 0; /* SR U4 */
  left->O_TPARM_R124_precedes = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_O_TPARM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_O_TPARM * self = (ooaofooa_O_TPARM *) instance;
  printf( "INSERT INTO O_TPARM VALUES ( %ld,%ld,'%s',%ld,%d,'%s',%ld,'%s' );\n",
    ((long)self->TParm_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Tfr_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
    self->By_Ref,
    ( 0 != self->Dimensions ) ? self->Dimensions : "",
    ((long)self->Previous_TParm_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Descrip ) ? self->Descrip : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_O_TPARM_container[ ooaofooa_O_TPARM_MAX_EXTENT_SIZE ];
static ooaofooa_O_TPARM ooaofooa_O_TPARM_instances[ ooaofooa_O_TPARM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_O_TPARM_extent = {
  {0,0}, {0,0}, &ooaofooa_O_TPARM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_O_TPARM_instances,
  sizeof( ooaofooa_O_TPARM ), 0, ooaofooa_O_TPARM_MAX_EXTENT_SIZE
  };


