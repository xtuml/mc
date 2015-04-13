/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_VAR_class.c
 *
 * Class:       Variable  (V_VAR)
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
ooaofooa_V_VAR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_V_VAR * self = (ooaofooa_V_VAR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Var_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Var_ID;
  self->Block_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 3 ] );
  self->Declared = ( '0' != *avlstring[ 4 ] );
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_V_VAR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_V_VAR * ooaofooa_V_VAR_instance = (ooaofooa_V_VAR *) instance;
  ooaofooa_ACT_BLK * ooaofooa_ACT_BLKrelated_instance1 = (ooaofooa_ACT_BLK *) Escher_instance_cache[ (intptr_t) ooaofooa_V_VAR_instance->Block_ID ];
  if ( ooaofooa_ACT_BLKrelated_instance1 ) {
    ooaofooa_V_VAR_R823_Link_is_scope_for( ooaofooa_ACT_BLKrelated_instance1, ooaofooa_V_VAR_instance );
  }
  {
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_V_VAR_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_V_VAR_R848_Link_is_type_of( ooaofooa_S_DTrelated_instance1, ooaofooa_V_VAR_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_V_VAR *
ooaofooa_V_VAR_AnyWhere1( Escher_UniqueID_t w_Var_ID )
{
  ooaofooa_V_VAR * w; 
  Escher_Iterator_s iter_V_VAR;
  Escher_IteratorReset( &iter_V_VAR, &pG_ooaofooa_V_VAR_extent.active );
  while ( (w = (ooaofooa_V_VAR *) Escher_IteratorNext( &iter_V_VAR )) != 0 ) {
    if ( w->Var_ID == w_Var_ID ) {
      return w;
    }
  }
  return 0;
}


/* Accessors to V_VAR[R814] subtypes */


/*
 * RELATE ACT_BLK TO V_VAR ACROSS R823
 */
void
ooaofooa_V_VAR_R823_Link_is_scope_for( ooaofooa_ACT_BLK * part, ooaofooa_V_VAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Block_ID = part->Block_ID;
  form->ACT_BLK_R823 = part;
  Escher_SetInsertElement( &part->V_VAR_R823_is_scope_for, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE ACT_BLK FROM V_VAR ACROSS R823
 */
void
ooaofooa_V_VAR_R823_Unlink_is_scope_for( ooaofooa_ACT_BLK * part, ooaofooa_V_VAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Block_ID = 0;
  form->ACT_BLK_R823 = 0;
  Escher_SetRemoveElement( &part->V_VAR_R823_is_scope_for, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_DT TO V_VAR ACROSS R848
 */
void
ooaofooa_V_VAR_R848_Link_is_type_of( ooaofooa_S_DT * part, ooaofooa_V_VAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = part->DT_ID;
  form->S_DT_R848_has = part;
  Escher_SetInsertElement( &part->V_VAR_R848_is_type_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DT FROM V_VAR ACROSS R848
 */
void
ooaofooa_V_VAR_R848_Unlink_is_type_of( ooaofooa_S_DT * part, ooaofooa_V_VAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = 0;
  form->S_DT_R848_has = 0;
  Escher_SetRemoveElement( &part->V_VAR_R848_is_type_of, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_V_VAR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_V_VAR * self = (ooaofooa_V_VAR *) instance;
  printf( "INSERT INTO V_VAR VALUES ( %ld,%ld,'%s',%d,%ld );\n",
    ((long)self->Var_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Block_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    self->Declared,
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_V_VAR_container[ ooaofooa_V_VAR_MAX_EXTENT_SIZE ];
static ooaofooa_V_VAR ooaofooa_V_VAR_instances[ ooaofooa_V_VAR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_V_VAR_extent = {
  {0,0}, {0,0}, &ooaofooa_V_VAR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_V_VAR_instances,
  sizeof( ooaofooa_V_VAR ), 0, ooaofooa_V_VAR_MAX_EXTENT_SIZE
  };


