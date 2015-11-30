/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_EEEDI_class.c
 *
 * Class:       External Entity Event Data Item  (S_EEEDI)
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
ooaofooa_S_EEEDI_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_EEEDI * self = (ooaofooa_S_EEEDI *) instance;
  /* Initialize application analysis class attributes.  */
  self->EEedi_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->EEedi_ID;
  self->EE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  Escher_strcpy( self->Name, avlstring[ 3 ] );
  {i_t i = avlstring[ 4 + 1 ] - avlstring[ 4 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 4 ][ i ]; }
  }
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_EEEDI_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_EEEDI * ooaofooa_S_EEEDI_instance = (ooaofooa_S_EEEDI *) instance;
  ooaofooa_S_EE * ooaofooa_S_EErelated_instance1 = ooaofooa_S_EE_AnyWhere1( ooaofooa_S_EEEDI_instance->EE_ID );
  if ( ooaofooa_S_EErelated_instance1 ) {
    ooaofooa_S_EEEDI_R12_Link_can_asynchronously_communicate_via( ooaofooa_S_EErelated_instance1, ooaofooa_S_EEEDI_instance );
  }
  {
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_S_EEEDI_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_S_EEEDI_R16_Link_defines_the_type_of( ooaofooa_S_DTrelated_instance1, ooaofooa_S_EEEDI_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_EEEDI *
ooaofooa_S_EEEDI_AnyWhere1( Escher_UniqueID_t w_EEedi_ID, Escher_UniqueID_t w_EE_ID )
{
  ooaofooa_S_EEEDI * w; 
  Escher_Iterator_s iter_S_EEEDI;
  Escher_IteratorReset( &iter_S_EEEDI, &pG_ooaofooa_S_EEEDI_extent.active );
  while ( (w = (ooaofooa_S_EEEDI *) Escher_IteratorNext( &iter_S_EEEDI )) != 0 ) {
    if ( w->EEedi_ID == w_EEedi_ID && w->EE_ID == w_EE_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_EE TO S_EEEDI ACROSS R12
 */
void
ooaofooa_S_EEEDI_R12_Link_can_asynchronously_communicate_via( ooaofooa_S_EE * part, ooaofooa_S_EEEDI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EE_ID = part->EE_ID;
  form->S_EE_R12_is_data_for_events_of = part;
  Escher_SetInsertElement( &part->S_EEEDI_R12_can_asynchronously_communicate_via, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_EE FROM S_EEEDI ACROSS R12
 */
void
ooaofooa_S_EEEDI_R12_Unlink_can_asynchronously_communicate_via( ooaofooa_S_EE * part, ooaofooa_S_EEEDI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->S_EE_R12_is_data_for_events_of = 0;
  Escher_SetRemoveElement( &part->S_EEEDI_R12_can_asynchronously_communicate_via, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_DT TO S_EEEDI ACROSS R16
 */
void
ooaofooa_S_EEEDI_R16_Link_defines_the_type_of( ooaofooa_S_DT * part, ooaofooa_S_EEEDI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = part->DT_ID;
  form->S_DT_R16_is_defined_by = part;
  Escher_SetInsertElement( &part->S_EEEDI_R16_defines_the_type_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DT FROM S_EEEDI ACROSS R16
 */
void
ooaofooa_S_EEEDI_R16_Unlink_defines_the_type_of( ooaofooa_S_DT * part, ooaofooa_S_EEEDI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = 0;
  form->S_DT_R16_is_defined_by = 0;
  Escher_SetRemoveElement( &part->S_EEEDI_R16_defines_the_type_of, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_EEEDI_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_EEEDI * self = (ooaofooa_S_EEEDI *) instance;
  printf( "INSERT INTO S_EEEDI VALUES ( %ld,%ld,'%s','%s',%ld );\n",
    ((long)self->EEedi_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EE_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip,
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_EEEDI_container[ ooaofooa_S_EEEDI_MAX_EXTENT_SIZE ];
static ooaofooa_S_EEEDI ooaofooa_S_EEEDI_instances[ ooaofooa_S_EEEDI_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_EEEDI_extent = {
  {0,0}, {0,0}, &ooaofooa_S_EEEDI_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_EEEDI_instances,
  sizeof( ooaofooa_S_EEEDI ), 0, ooaofooa_S_EEEDI_MAX_EXTENT_SIZE
  };


