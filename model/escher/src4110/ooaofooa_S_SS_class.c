/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_SS_class.c
 *
 * Class:       Subsystem  (S_SS)
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
ooaofooa_S_SS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_SS * self = (ooaofooa_S_SS *) instance;
  /* Initialize application analysis class attributes.  */
  self->SS_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->SS_ID;
  self->Name = Escher_strcpy( self->Name, avlstring[ 2 ] );
  {i_t i = avlstring[ 3 + 1 ] - avlstring[ 3 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 3 ][ i ]; }
  }
  self->Prefix = Escher_strcpy( self->Prefix, avlstring[ 4 ] );
  self->Num_Rng = Escher_atoi( avlstring[ 5 ] );
  self->Dom_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  self->Config_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_SS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_SS * ooaofooa_S_SS_instance = (ooaofooa_S_SS *) instance;
  ooaofooa_S_DOM * ooaofooa_S_DOMrelated_instance1 = (ooaofooa_S_DOM *) Escher_instance_cache[ (intptr_t) ooaofooa_S_SS_instance->Dom_ID ];
  if ( ooaofooa_S_DOMrelated_instance1 ) {
    ooaofooa_S_SS_R1_Link_is_partitioned_into( ooaofooa_S_DOMrelated_instance1, ooaofooa_S_SS_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_SS *
ooaofooa_S_SS_AnyWhere1( Escher_UniqueID_t w_SS_ID )
{
  ooaofooa_S_SS * w; 
  Escher_Iterator_s iter_S_SS;
  Escher_IteratorReset( &iter_S_SS, &pG_ooaofooa_S_SS_extent.active );
  while ( (w = (ooaofooa_S_SS *) Escher_IteratorNext( &iter_S_SS )) != 0 ) {
    if ( w->SS_ID == w_SS_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_DOM TO S_SS ACROSS R1
 */
void
ooaofooa_S_SS_R1_Link_is_partitioned_into( ooaofooa_S_DOM * part, ooaofooa_S_SS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = part->Dom_ID;
  form->S_DOM_R1_is_first_level_of_partitioning_for = part;
  Escher_SetInsertElement( &part->S_SS_R1_is_partitioned_into, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DOM FROM S_SS ACROSS R1
 */
void
ooaofooa_S_SS_R1_Unlink_is_partitioned_into( ooaofooa_S_DOM * part, ooaofooa_S_SS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = 0;
  form->S_DOM_R1_is_first_level_of_partitioning_for = 0;
  Escher_SetRemoveElement( &part->S_SS_R1_is_partitioned_into, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_SS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_SS * self = (ooaofooa_S_SS *) instance;
  printf( "INSERT INTO S_SS VALUES ( %ld,'%s','%s','%s',%d,%ld,%ld );\n",
    ((long)self->SS_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->Descrip ) ? self->Descrip : "",
    ( 0 != self->Prefix ) ? self->Prefix : "",
    self->Num_Rng,
    ((long)self->Dom_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Config_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_SS_container[ ooaofooa_S_SS_MAX_EXTENT_SIZE ];
static ooaofooa_S_SS ooaofooa_S_SS_instances[ ooaofooa_S_SS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_SS_extent = {
  {0,0}, {0,0}, &ooaofooa_S_SS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_SS_instances,
  sizeof( ooaofooa_S_SS ), 0, ooaofooa_S_SS_MAX_EXTENT_SIZE
  };


