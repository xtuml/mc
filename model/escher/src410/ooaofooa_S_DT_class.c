/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_DT_class.c
 *
 * Class:       Data Type  (S_DT)
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
ooaofooa_S_DT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_DT * self = (ooaofooa_S_DT *) instance;
  /* Initialize application analysis class attributes.  */
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Dom_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  Escher_strcpy( self->Name, avlstring[ 3 ] );
  {i_t i = avlstring[ 4 + 1 ] - avlstring[ 4 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 4 ][ i ]; }
  }
  Escher_strcpy( self->DefaultValue, avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_DT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_DT * ooaofooa_S_DT_instance = (ooaofooa_S_DT *) instance;
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_S_DT_instance->DT_ID ];
  if ( ooaofooa_PE_PErelated_instance1 ) {
    ooaofooa_S_DT_R8001_Link( ooaofooa_PE_PErelated_instance1, ooaofooa_S_DT_instance );
  }
  {
  ooaofooa_S_DOM * ooaofooa_S_DOMrelated_instance1 = (ooaofooa_S_DOM *) Escher_instance_cache[ (intptr_t) ooaofooa_S_DT_instance->Dom_ID ];
  if ( ooaofooa_S_DOMrelated_instance1 ) {
    ooaofooa_S_DT_R14_Link_contains_defined( ooaofooa_S_DOMrelated_instance1, ooaofooa_S_DT_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_DT *
ooaofooa_S_DT_AnyWhere1( Escher_UniqueID_t w_DT_ID )
{
  ooaofooa_S_DT * w; 
  Escher_Iterator_s iter_S_DT;
  Escher_IteratorReset( &iter_S_DT, &pG_ooaofooa_S_DT_extent.active );
  while ( (w = (ooaofooa_S_DT *) Escher_IteratorNext( &iter_S_DT )) != 0 ) {
    if ( w->DT_ID == w_DT_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_DOM TO S_DT ACROSS R14
 */
void
ooaofooa_S_DT_R14_Link_contains_defined( ooaofooa_S_DOM * part, ooaofooa_S_DT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = part->Dom_ID;
  form->S_DOM_R14_defines_types_available_within = part;
  Escher_SetInsertElement( &part->S_DT_R14_contains_defined, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DOM FROM S_DT ACROSS R14
 */
void
ooaofooa_S_DT_R14_Unlink_contains_defined( ooaofooa_S_DOM * part, ooaofooa_S_DT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = 0;
  form->S_DOM_R14_defines_types_available_within = 0;
  Escher_SetRemoveElement( &part->S_DT_R14_contains_defined, (Escher_ObjectSet_s *) form );
}

/* Accessors to S_DT[R17] subtypes */


/*
 * RELATE PE_PE TO S_DT ACROSS R8001
 */
void
ooaofooa_S_DT_R8001_Link( ooaofooa_PE_PE * supertype, ooaofooa_S_DT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->DT_ID = supertype->Element_ID;
  /* Optimized linkage for S_DT->PE_PE[R8001] */
  subtype->PE_PE_R8001 = supertype;
  /* Optimized linkage for PE_PE->S_DT[R8001] */
  supertype->R8001_subtype = subtype;
  supertype->R8001_object_id = ooaofooa_S_DT_CLASS_NUMBER;
}


/*
 * UNRELATE PE_PE FROM S_DT ACROSS R8001
 */
void
ooaofooa_S_DT_R8001_Unlink( ooaofooa_PE_PE * supertype, ooaofooa_S_DT * subtype )
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
ooaofooa_S_DT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_DT * self = (ooaofooa_S_DT *) instance;
  printf( "INSERT INTO S_DT VALUES ( %ld,%ld,'%s','%s','%s' );\n",
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Dom_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip,
    self->DefaultValue );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_DT_container[ ooaofooa_S_DT_MAX_EXTENT_SIZE ];
static ooaofooa_S_DT ooaofooa_S_DT_instances[ ooaofooa_S_DT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_DT_extent = {
  {0,0}, {0,0}, &ooaofooa_S_DT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_DT_instances,
  sizeof( ooaofooa_S_DT ), 0, ooaofooa_S_DT_MAX_EXTENT_SIZE
  };


