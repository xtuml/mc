/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_EEDI_class.c
 *
 * Class:       External Entity Data Item  (S_EEDI)
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
ooaofooa_S_EEDI_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_EEDI * self = (ooaofooa_S_EEDI *) instance;
  /* Initialize application analysis class attributes.  */
  self->EEdi_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->EEdi_ID;
  self->EE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 3 ] );
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
void ooaofooa_S_EEDI_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_EEDI * ooaofooa_S_EEDI_instance = (ooaofooa_S_EEDI *) instance;
  ooaofooa_S_EE * ooaofooa_S_EErelated_instance1 = ooaofooa_S_EE_AnyWhere1( ooaofooa_S_EEDI_instance->EE_ID );
  if ( ooaofooa_S_EErelated_instance1 ) {
    ooaofooa_S_EEDI_R11_Link_can_be_accessed_synchronously_via( ooaofooa_S_EErelated_instance1, ooaofooa_S_EEDI_instance );
  }
  {
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_S_EEDI_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_S_EEDI_R15_Link_defines_the_type_of( ooaofooa_S_DTrelated_instance1, ooaofooa_S_EEDI_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_EEDI *
ooaofooa_S_EEDI_AnyWhere1( Escher_UniqueID_t w_EEdi_ID, Escher_UniqueID_t w_EE_ID )
{
  ooaofooa_S_EEDI * w; 
  Escher_Iterator_s iter_S_EEDI;
  Escher_IteratorReset( &iter_S_EEDI, &pG_ooaofooa_S_EEDI_extent.active );
  while ( (w = (ooaofooa_S_EEDI *) Escher_IteratorNext( &iter_S_EEDI )) != 0 ) {
    if ( w->EEdi_ID == w_EEdi_ID && w->EE_ID == w_EE_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_EE TO S_EEDI ACROSS R11
 */
void
ooaofooa_S_EEDI_R11_Link_can_be_accessed_synchronously_via( ooaofooa_S_EE * part, ooaofooa_S_EEDI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EE_ID = part->EE_ID;
  form->S_EE_R11_is_data_for = part;
  Escher_SetInsertElement( &part->S_EEDI_R11_can_be_accessed_synchronously_via, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_EE FROM S_EEDI ACROSS R11
 */
void
ooaofooa_S_EEDI_R11_Unlink_can_be_accessed_synchronously_via( ooaofooa_S_EE * part, ooaofooa_S_EEDI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->S_EE_R11_is_data_for = 0;
  Escher_SetRemoveElement( &part->S_EEDI_R11_can_be_accessed_synchronously_via, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_DT TO S_EEDI ACROSS R15
 */
void
ooaofooa_S_EEDI_R15_Link_defines_the_type_of( ooaofooa_S_DT * part, ooaofooa_S_EEDI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = part->DT_ID;
  form->S_DT_R15_is_defined_by = part;
  Escher_SetInsertElement( &part->S_EEDI_R15_defines_the_type_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DT FROM S_EEDI ACROSS R15
 */
void
ooaofooa_S_EEDI_R15_Unlink_defines_the_type_of( ooaofooa_S_DT * part, ooaofooa_S_EEDI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = 0;
  form->S_DT_R15_is_defined_by = 0;
  Escher_SetRemoveElement( &part->S_EEDI_R15_defines_the_type_of, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_EEDI_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_EEDI * self = (ooaofooa_S_EEDI *) instance;
  printf( "INSERT INTO S_EEDI VALUES ( %ld,%ld,'%s','%s',%ld );\n",
    ((long)self->EEdi_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EE_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->Descrip ) ? self->Descrip : "",
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_EEDI_container[ ooaofooa_S_EEDI_MAX_EXTENT_SIZE ];
static ooaofooa_S_EEDI ooaofooa_S_EEDI_instances[ ooaofooa_S_EEDI_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_EEDI_extent = {
  {0,0}, {0,0}, &ooaofooa_S_EEDI_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_EEDI_instances,
  sizeof( ooaofooa_S_EEDI ), 0, ooaofooa_S_EEDI_MAX_EXTENT_SIZE
  };


