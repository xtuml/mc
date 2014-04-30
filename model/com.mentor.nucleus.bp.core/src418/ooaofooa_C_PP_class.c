/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_PP_class.c
 *
 * Class:       Property Parameter  (C_PP)
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
ooaofooa_C_PP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_C_PP * self = (ooaofooa_C_PP *) instance;
  /* Initialize application analysis class attributes.  */
  self->PP_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->PP_Id;
  self->Signal_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 4 ] );
  {i_t i = avlstring[ 5 + 1 ] - avlstring[ 5 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 5 ][ i ]; }
  }
  self->By_Ref = Escher_atoi( avlstring[ 6 ] );
  self->Dimensions = Escher_strcpy( self->Dimensions, avlstring[ 7 ] );
  self->Previous_PP_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 8 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_C_PP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_C_PP * ooaofooa_C_PP_instance = (ooaofooa_C_PP *) instance;
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_C_PP_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_C_PP_R4007_Link_Defines_the_type( ooaofooa_S_DTrelated_instance1, ooaofooa_C_PP_instance );
  }
  {
  ooaofooa_C_EP * ooaofooa_C_EPrelated_instance1 = (ooaofooa_C_EP *) Escher_instance_cache[ (intptr_t) ooaofooa_C_PP_instance->Signal_Id ];
  if ( ooaofooa_C_EPrelated_instance1 ) {
    ooaofooa_C_PP_R4006_Link_is_parameter_to( ooaofooa_C_EPrelated_instance1, ooaofooa_C_PP_instance );
  }
  }
  {
  ooaofooa_C_PP * ooaofooa_C_PPrelated_instance1 = (ooaofooa_C_PP *) Escher_instance_cache[ (intptr_t) ooaofooa_C_PP_instance->Previous_PP_Id ];
  if ( ooaofooa_C_PPrelated_instance1 ) {
    ooaofooa_C_PP_R4021_Link_precedes( ooaofooa_C_PPrelated_instance1, ooaofooa_C_PP_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_C_PP *
ooaofooa_C_PP_AnyWhere1( Escher_UniqueID_t w_PP_Id )
{
  ooaofooa_C_PP * w; 
  Escher_Iterator_s iter_C_PP;
  Escher_IteratorReset( &iter_C_PP, &pG_ooaofooa_C_PP_extent.active );
  while ( (w = (ooaofooa_C_PP *) Escher_IteratorNext( &iter_C_PP )) != 0 ) {
    if ( w->PP_Id == w_PP_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE C_EP TO C_PP ACROSS R4006
 */
void
ooaofooa_C_PP_R4006_Link_is_parameter_to( ooaofooa_C_EP * part, ooaofooa_C_PP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Signal_Id = part->Id;
  form->C_EP_R4006_parameterizes = part;
  Escher_SetInsertElement( &part->C_PP_R4006_is_parameter_to, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_EP FROM C_PP ACROSS R4006
 */
void
ooaofooa_C_PP_R4006_Unlink_is_parameter_to( ooaofooa_C_EP * part, ooaofooa_C_PP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Signal_Id = 0;
  form->C_EP_R4006_parameterizes = 0;
  Escher_SetRemoveElement( &part->C_PP_R4006_is_parameter_to, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_DT TO C_PP ACROSS R4007
 */
void
ooaofooa_C_PP_R4007_Link_Defines_the_type( ooaofooa_S_DT * part, ooaofooa_C_PP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = part->DT_ID;
  form->S_DT_R4007_is_typed_by = part;
  Escher_SetInsertElement( &part->C_PP_R4007_Defines_the_type, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DT FROM C_PP ACROSS R4007
 */
void
ooaofooa_C_PP_R4007_Unlink_Defines_the_type( ooaofooa_S_DT * part, ooaofooa_C_PP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = 0;
  form->S_DT_R4007_is_typed_by = 0;
  Escher_SetRemoveElement( &part->C_PP_R4007_Defines_the_type, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> C_PP TO <right> C_PP ACROSS R4021.'succeeds'
 */
void
ooaofooa_C_PP_R4021_Link_succeeds( ooaofooa_C_PP * left, ooaofooa_C_PP * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_PP_Id = right->PP_Id;
  left->C_PP_R4021_succeeds = right; /* SR L1 */
  right->C_PP_R4021_precedes = left; /* SR L2 */
}

/*
 * UNRELATE <left> C_PP FROM <right> C_PP ACROSS R4021.'succeeds'
 */
void
ooaofooa_C_PP_R4021_Unlink_succeeds( ooaofooa_C_PP * left, ooaofooa_C_PP * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_PP_Id = 0;
  left->C_PP_R4021_succeeds = 0; /* SR U1 */
  right->C_PP_R4021_precedes = 0; /* SR U2 */
}

/*
 * RELATE <left> C_PP TO <right> C_PP ACROSS R4021.'precedes'
 */
void
ooaofooa_C_PP_R4021_Link_precedes( ooaofooa_C_PP * left, ooaofooa_C_PP * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_PP_Id = left->PP_Id;
  right->C_PP_R4021_succeeds = left; /* SR L4 */
  left->C_PP_R4021_precedes = right; /* SR L5 */
}

/*
 * UNRELATE <left> C_PP FROM <right> C_PP ACROSS R4021.'precedes'
 */
void
ooaofooa_C_PP_R4021_Unlink_precedes( ooaofooa_C_PP * left, ooaofooa_C_PP * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_PP_Id = 0;
  right->C_PP_R4021_succeeds = 0; /* SR U4 */
  left->C_PP_R4021_precedes = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_C_PP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_C_PP * self = (ooaofooa_C_PP *) instance;
  printf( "INSERT INTO C_PP VALUES ( %ld,%ld,%ld,'%s','%s',%d,'%s',%ld );\n",
    ((long)self->PP_Id & ESCHER_IDDUMP_MASK),
    ((long)self->Signal_Id & ESCHER_IDDUMP_MASK),
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->Descrip ) ? self->Descrip : "",
    self->By_Ref,
    ( 0 != self->Dimensions ) ? self->Dimensions : "",
    ((long)self->Previous_PP_Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_C_PP_container[ ooaofooa_C_PP_MAX_EXTENT_SIZE ];
static ooaofooa_C_PP ooaofooa_C_PP_instances[ ooaofooa_C_PP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_C_PP_extent = {
  {0,0}, {0,0}, &ooaofooa_C_PP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_C_PP_instances,
  sizeof( ooaofooa_C_PP ), 0, ooaofooa_C_PP_MAX_EXTENT_SIZE
  };


