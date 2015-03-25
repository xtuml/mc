/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_VAL_class.c
 *
 * Class:       Value  (V_VAL)
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
ooaofooa_V_VAL_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_V_VAL * self = (ooaofooa_V_VAL *) instance;
  /* Initialize application analysis class attributes.  */
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Value_ID;
  self->isLValue = ( '0' != *avlstring[ 2 ] );
  self->isImplicit = ( '0' != *avlstring[ 3 ] );
  self->LineNumber = Escher_atoi( avlstring[ 4 ] );
  self->StartPosition = Escher_atoi( avlstring[ 5 ] );
  self->EndPosition = Escher_atoi( avlstring[ 6 ] );
  self->firstParameterLabelLineNumber = Escher_atoi( avlstring[ 7 ] );
  self->firstParameterLabelColumn = Escher_atoi( avlstring[ 8 ] );
  self->currentLaterParameterLabelLineNumber = Escher_atoi( avlstring[ 9 ] );
  self->currentLaterParameterLabelColumn = Escher_atoi( avlstring[ 10 ] );
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 11 ] );
  self->Block_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 12 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_V_VAL_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_V_VAL * ooaofooa_V_VAL_instance = (ooaofooa_V_VAL *) instance;
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_V_VAL_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_V_VAL_R820_Link_is_type_of( ooaofooa_S_DTrelated_instance1, ooaofooa_V_VAL_instance );
  }
  {
  ooaofooa_ACT_BLK * ooaofooa_ACT_BLKrelated_instance1 = (ooaofooa_ACT_BLK *) Escher_instance_cache[ (intptr_t) ooaofooa_V_VAL_instance->Block_ID ];
  if ( ooaofooa_ACT_BLKrelated_instance1 ) {
    ooaofooa_V_VAL_R826_Link_defines_scope_of( ooaofooa_ACT_BLKrelated_instance1, ooaofooa_V_VAL_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_V_VAL *
ooaofooa_V_VAL_AnyWhere1( Escher_UniqueID_t w_Value_ID )
{
  ooaofooa_V_VAL * w; 
  Escher_Iterator_s iter_V_VAL;
  Escher_IteratorReset( &iter_V_VAL, &pG_ooaofooa_V_VAL_extent.active );
  while ( (w = (ooaofooa_V_VAL *) Escher_IteratorNext( &iter_V_VAL )) != 0 ) {
    if ( w->Value_ID == w_Value_ID ) {
      return w;
    }
  }
  return 0;
}


/* Accessors to V_VAL[R801] subtypes */


/*
 * RELATE S_DT TO V_VAL ACROSS R820
 */
void
ooaofooa_V_VAL_R820_Link_is_type_of( ooaofooa_S_DT * part, ooaofooa_V_VAL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = part->DT_ID;
  form->S_DT_R820_has_type = part;
  Escher_SetInsertElement( &part->V_VAL_R820_is_type_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DT FROM V_VAL ACROSS R820
 */
void
ooaofooa_V_VAL_R820_Unlink_is_type_of( ooaofooa_S_DT * part, ooaofooa_V_VAL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = 0;
  form->S_DT_R820_has_type = 0;
  Escher_SetRemoveElement( &part->V_VAL_R820_is_type_of, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE ACT_BLK TO V_VAL ACROSS R826
 */
void
ooaofooa_V_VAL_R826_Link_defines_scope_of( ooaofooa_ACT_BLK * part, ooaofooa_V_VAL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Block_ID = part->Block_ID;
  form->ACT_BLK_R826_has_scope = part;
  Escher_SetInsertElement( &part->V_VAL_R826_defines_scope_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE ACT_BLK FROM V_VAL ACROSS R826
 */
void
ooaofooa_V_VAL_R826_Unlink_defines_scope_of( ooaofooa_ACT_BLK * part, ooaofooa_V_VAL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Block_ID = 0;
  form->ACT_BLK_R826_has_scope = 0;
  Escher_SetRemoveElement( &part->V_VAL_R826_defines_scope_of, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_V_VAL_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_V_VAL * self = (ooaofooa_V_VAL *) instance;
  printf( "INSERT INTO V_VAL VALUES ( %ld,%d,%d,%d,%d,%d,%d,%d,%d,%d,%ld,%ld );\n",
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK),
    self->isLValue,
    self->isImplicit,
    self->LineNumber,
    self->StartPosition,
    self->EndPosition,
    self->firstParameterLabelLineNumber,
    self->firstParameterLabelColumn,
    self->currentLaterParameterLabelLineNumber,
    self->currentLaterParameterLabelColumn,
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Block_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_V_VAL_container[ ooaofooa_V_VAL_MAX_EXTENT_SIZE ];
static ooaofooa_V_VAL ooaofooa_V_VAL_instances[ ooaofooa_V_VAL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_V_VAL_extent = {
  {0,0}, {0,0}, &ooaofooa_V_VAL_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_V_VAL_instances,
  sizeof( ooaofooa_V_VAL ), 0, ooaofooa_V_VAL_MAX_EXTENT_SIZE
  };


