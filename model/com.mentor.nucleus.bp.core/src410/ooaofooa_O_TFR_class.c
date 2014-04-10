/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_TFR_class.c
 *
 * Class:       Operation  (O_TFR)
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
ooaofooa_O_TFR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_O_TFR * self = (ooaofooa_O_TFR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Tfr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Tfr_ID;
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  Escher_strcpy( self->Name, avlstring[ 3 ] );
  {i_t i = avlstring[ 4 + 1 ] - avlstring[ 4 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 4 ][ i ]; }
  }
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->Instance_Based = Escher_atoi( avlstring[ 6 ] );
  {i_t i = avlstring[ 7 + 1 ] - avlstring[ 7 ];
  self->Action_Semantics_internal = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Action_Semantics_internal[ i ] = avlstring[ 7 ][ i ]; }
  }
  self->Suc_Pars = Escher_atoi( avlstring[ 8 ] );
  Escher_strcpy( self->Return_Dimensions, avlstring[ 9 ] );
  self->Previous_Tfr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 10 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_O_TFR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_O_TFR * ooaofooa_O_TFR_instance = (ooaofooa_O_TFR *) instance;
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_O_TFR_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_O_TFR_R116_Link_defines_the_type_of_return_code( ooaofooa_S_DTrelated_instance1, ooaofooa_O_TFR_instance );
  }
  {
  ooaofooa_O_OBJ * ooaofooa_O_OBJrelated_instance1 = ooaofooa_O_OBJ_AnyWhere1( ooaofooa_O_TFR_instance->Obj_ID );
  if ( ooaofooa_O_OBJrelated_instance1 ) {
    ooaofooa_O_TFR_R115_Link_may_contain( ooaofooa_O_OBJrelated_instance1, ooaofooa_O_TFR_instance );
  }
  }
  {
  ooaofooa_O_TFR * ooaofooa_O_TFRrelated_instance1 = (ooaofooa_O_TFR *) Escher_instance_cache[ (intptr_t) ooaofooa_O_TFR_instance->Previous_Tfr_ID ];
  if ( ooaofooa_O_TFRrelated_instance1 ) {
    ooaofooa_O_TFR_R125_Link_succeeds( ooaofooa_O_TFRrelated_instance1, ooaofooa_O_TFR_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_O_TFR *
ooaofooa_O_TFR_AnyWhere1( Escher_UniqueID_t w_Tfr_ID )
{
  ooaofooa_O_TFR * w; 
  Escher_Iterator_s iter_O_TFR;
  Escher_IteratorReset( &iter_O_TFR, &pG_ooaofooa_O_TFR_extent.active );
  while ( (w = (ooaofooa_O_TFR *) Escher_IteratorNext( &iter_O_TFR )) != 0 ) {
    if ( w->Tfr_ID == w_Tfr_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE O_OBJ TO O_TFR ACROSS R115
 */
void
ooaofooa_O_TFR_R115_Link_may_contain( ooaofooa_O_OBJ * part, ooaofooa_O_TFR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = part->Obj_ID;
  form->O_OBJ_R115_is_associated_with = part;
  Escher_SetInsertElement( &part->O_TFR_R115_may_contain, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_OBJ FROM O_TFR ACROSS R115
 */
void
ooaofooa_O_TFR_R115_Unlink_may_contain( ooaofooa_O_OBJ * part, ooaofooa_O_TFR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = 0;
  form->O_OBJ_R115_is_associated_with = 0;
  Escher_SetRemoveElement( &part->O_TFR_R115_may_contain, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_DT TO O_TFR ACROSS R116
 */
void
ooaofooa_O_TFR_R116_Link_defines_the_type_of_return_code( ooaofooa_S_DT * part, ooaofooa_O_TFR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = part->DT_ID;
  form->S_DT_R116_return_code_is_defined_by = part;
  Escher_SetInsertElement( &part->O_TFR_R116_defines_the_type_of_return_code, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DT FROM O_TFR ACROSS R116
 */
void
ooaofooa_O_TFR_R116_Unlink_defines_the_type_of_return_code( ooaofooa_S_DT * part, ooaofooa_O_TFR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = 0;
  form->S_DT_R116_return_code_is_defined_by = 0;
  Escher_SetRemoveElement( &part->O_TFR_R116_defines_the_type_of_return_code, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> O_TFR TO <right> O_TFR ACROSS R125.'succeeds'
 */
void
ooaofooa_O_TFR_R125_Link_succeeds( ooaofooa_O_TFR * left, ooaofooa_O_TFR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_Tfr_ID = left->Tfr_ID;
  left->O_TFR_R125_succeeds = right; /* SR L1 */
  right->O_TFR_R125_precedes = left; /* SR L2 */
}

/*
 * UNRELATE <left> O_TFR FROM <right> O_TFR ACROSS R125.'succeeds'
 */
void
ooaofooa_O_TFR_R125_Unlink_succeeds( ooaofooa_O_TFR * left, ooaofooa_O_TFR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_Tfr_ID = 0;
  left->O_TFR_R125_succeeds = 0; /* SR U1 */
  right->O_TFR_R125_precedes = 0; /* SR U2 */
}

/*
 * RELATE <left> O_TFR TO <right> O_TFR ACROSS R125.'precedes'
 */
void
ooaofooa_O_TFR_R125_Link_precedes( ooaofooa_O_TFR * left, ooaofooa_O_TFR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_Tfr_ID = right->Tfr_ID;
  right->O_TFR_R125_succeeds = left; /* SR L4 */
  left->O_TFR_R125_precedes = right; /* SR L5 */
}

/*
 * UNRELATE <left> O_TFR FROM <right> O_TFR ACROSS R125.'precedes'
 */
void
ooaofooa_O_TFR_R125_Unlink_precedes( ooaofooa_O_TFR * left, ooaofooa_O_TFR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_Tfr_ID = 0;
  right->O_TFR_R125_succeeds = 0; /* SR U4 */
  left->O_TFR_R125_precedes = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_O_TFR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_O_TFR * self = (ooaofooa_O_TFR *) instance;
  printf( "INSERT INTO O_TFR VALUES ( %ld,%ld,'%s','%s',%ld,%d,'%s',%d,'%s',%ld );\n",
    ((long)self->Tfr_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip,
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
    self->Instance_Based,
    self->Action_Semantics_internal,
    self->Suc_Pars,
    self->Return_Dimensions,
    ((long)self->Previous_Tfr_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_O_TFR_container[ ooaofooa_O_TFR_MAX_EXTENT_SIZE ];
static ooaofooa_O_TFR ooaofooa_O_TFR_instances[ ooaofooa_O_TFR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_O_TFR_extent = {
  {0,0}, {0,0}, &ooaofooa_O_TFR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_O_TFR_instances,
  sizeof( ooaofooa_O_TFR ), 0, ooaofooa_O_TFR_MAX_EXTENT_SIZE
  };


