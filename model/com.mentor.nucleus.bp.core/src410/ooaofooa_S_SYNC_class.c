/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_SYNC_class.c
 *
 * Class:       Function  (S_SYNC)
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
ooaofooa_S_SYNC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_SYNC * self = (ooaofooa_S_SYNC *) instance;
  /* Initialize application analysis class attributes.  */
  self->Sync_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Dom_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  Escher_strcpy( self->Name, avlstring[ 3 ] );
  {i_t i = avlstring[ 4 + 1 ] - avlstring[ 4 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 4 ][ i ]; }
  }
  {i_t i = avlstring[ 5 + 1 ] - avlstring[ 5 ];
  self->Action_Semantics_internal = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Action_Semantics_internal[ i ] = avlstring[ 5 ][ i ]; }
  }
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  self->Suc_Pars = Escher_atoi( avlstring[ 7 ] );
  Escher_strcpy( self->Return_Dimensions, avlstring[ 8 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_SYNC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_SYNC * ooaofooa_S_SYNC_instance = (ooaofooa_S_SYNC *) instance;
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_S_SYNC_instance->Sync_ID ];
  if ( ooaofooa_PE_PErelated_instance1 ) {
    ooaofooa_S_SYNC_R8001_Link( ooaofooa_PE_PErelated_instance1, ooaofooa_S_SYNC_instance );
  }
  {
  ooaofooa_S_DOM * ooaofooa_S_DOMrelated_instance1 = (ooaofooa_S_DOM *) Escher_instance_cache[ (intptr_t) ooaofooa_S_SYNC_instance->Dom_ID ];
  if ( ooaofooa_S_DOMrelated_instance1 ) {
    ooaofooa_S_SYNC_R23_Link_defines( ooaofooa_S_DOMrelated_instance1, ooaofooa_S_SYNC_instance );
  }
  }
  {
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_S_SYNC_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_S_SYNC_R25_Link_defines_return_type( ooaofooa_S_DTrelated_instance1, ooaofooa_S_SYNC_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_SYNC *
ooaofooa_S_SYNC_AnyWhere1( Escher_UniqueID_t w_Sync_ID )
{
  ooaofooa_S_SYNC * w; 
  Escher_Iterator_s iter_S_SYNC;
  Escher_IteratorReset( &iter_S_SYNC, &pG_ooaofooa_S_SYNC_extent.active );
  while ( (w = (ooaofooa_S_SYNC *) Escher_IteratorNext( &iter_S_SYNC )) != 0 ) {
    if ( w->Sync_ID == w_Sync_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_DOM TO S_SYNC ACROSS R23
 */
void
ooaofooa_S_SYNC_R23_Link_defines( ooaofooa_S_DOM * part, ooaofooa_S_SYNC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = part->Dom_ID;
  form->S_DOM_R23_is_defined_in_ = part;
  Escher_SetInsertElement( &part->S_SYNC_R23_defines, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DOM FROM S_SYNC ACROSS R23
 */
void
ooaofooa_S_SYNC_R23_Unlink_defines( ooaofooa_S_DOM * part, ooaofooa_S_SYNC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = 0;
  form->S_DOM_R23_is_defined_in_ = 0;
  Escher_SetRemoveElement( &part->S_SYNC_R23_defines, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_DT TO S_SYNC ACROSS R25
 */
void
ooaofooa_S_SYNC_R25_Link_defines_return_type( ooaofooa_S_DT * part, ooaofooa_S_SYNC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = part->DT_ID;
  form->S_DT_R25_has_return_type_of = part;
  Escher_SetInsertElement( &part->S_SYNC_R25_defines_return_type, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DT FROM S_SYNC ACROSS R25
 */
void
ooaofooa_S_SYNC_R25_Unlink_defines_return_type( ooaofooa_S_DT * part, ooaofooa_S_SYNC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = 0;
  form->S_DT_R25_has_return_type_of = 0;
  Escher_SetRemoveElement( &part->S_SYNC_R25_defines_return_type, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE PE_PE TO S_SYNC ACROSS R8001
 */
void
ooaofooa_S_SYNC_R8001_Link( ooaofooa_PE_PE * supertype, ooaofooa_S_SYNC * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Sync_ID = supertype->Element_ID;
  /* Optimized linkage for S_SYNC->PE_PE[R8001] */
  subtype->PE_PE_R8001 = supertype;
  /* Optimized linkage for PE_PE->S_SYNC[R8001] */
  supertype->R8001_subtype = subtype;
  supertype->R8001_object_id = ooaofooa_S_SYNC_CLASS_NUMBER;
}


/*
 * UNRELATE PE_PE FROM S_SYNC ACROSS R8001
 */
void
ooaofooa_S_SYNC_R8001_Unlink( ooaofooa_PE_PE * supertype, ooaofooa_S_SYNC * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->PE_PE_R8001 = 0;
  supertype->R8001_subtype = 0;
  supertype->R8001_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_SYNC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_SYNC * self = (ooaofooa_S_SYNC *) instance;
  printf( "INSERT INTO S_SYNC VALUES ( %ld,%ld,'%s','%s','%s',%ld,%d,'%s' );\n",
    ((long)self->Sync_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Dom_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip,
    self->Action_Semantics_internal,
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
    self->Suc_Pars,
    self->Return_Dimensions );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_SYNC_container[ ooaofooa_S_SYNC_MAX_EXTENT_SIZE ];
static ooaofooa_S_SYNC ooaofooa_S_SYNC_instances[ ooaofooa_S_SYNC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_SYNC_extent = {
  {0,0}, {0,0}, &ooaofooa_S_SYNC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_SYNC_instances,
  sizeof( ooaofooa_S_SYNC ), 0, ooaofooa_S_SYNC_MAX_EXTENT_SIZE
  };


