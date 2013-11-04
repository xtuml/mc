/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_BRG_class.c
 *
 * Class:       Bridge  (S_BRG)
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
ooaofooa_S_BRG_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_BRG * self = (ooaofooa_S_BRG *) instance;
  /* Initialize application analysis class attributes.  */
  self->Brg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Brg_ID;
  self->EE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  Escher_strcpy( self->Name, avlstring[ 3 ] );
  {i_t i = avlstring[ 4 + 1 ] - avlstring[ 4 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 4 ][ i ]; }
  }
  self->Brg_Typ = Escher_atoi( avlstring[ 5 ] );
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  {i_t i = avlstring[ 7 + 1 ] - avlstring[ 7 ];
  self->Action_Semantics_internal = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Action_Semantics_internal[ i ] = avlstring[ 7 ][ i ]; }
  }
  self->Suc_Pars = Escher_atoi( avlstring[ 8 ] );
  Escher_strcpy( self->Return_Dimensions, avlstring[ 9 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_BRG_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_BRG * ooaofooa_S_BRG_instance = (ooaofooa_S_BRG *) instance;
  ooaofooa_S_EE * ooaofooa_S_EErelated_instance1 = ooaofooa_S_EE_AnyWhere1( ooaofooa_S_BRG_instance->EE_ID );
  if ( ooaofooa_S_EErelated_instance1 ) {
    ooaofooa_S_BRG_R19_Link_uses( ooaofooa_S_EErelated_instance1, ooaofooa_S_BRG_instance );
  }
  {
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_S_BRG_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_S_BRG_R20_Link_defines_the_return_value( ooaofooa_S_DTrelated_instance1, ooaofooa_S_BRG_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_BRG *
ooaofooa_S_BRG_AnyWhere1( Escher_UniqueID_t w_Brg_ID )
{
  ooaofooa_S_BRG * w; 
  Escher_Iterator_s iter_S_BRG;
  Escher_IteratorReset( &iter_S_BRG, &pG_ooaofooa_S_BRG_extent.active );
  while ( (w = (ooaofooa_S_BRG *) Escher_IteratorNext( &iter_S_BRG )) != 0 ) {
    if ( w->Brg_ID == w_Brg_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_EE TO S_BRG ACROSS R19
 */
void
ooaofooa_S_BRG_R19_Link_uses( ooaofooa_S_EE * part, ooaofooa_S_BRG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EE_ID = part->EE_ID;
  form->S_EE_R19_provides_access_to = part;
  Escher_SetInsertElement( &part->S_BRG_R19_uses, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_EE FROM S_BRG ACROSS R19
 */
void
ooaofooa_S_BRG_R19_Unlink_uses( ooaofooa_S_EE * part, ooaofooa_S_BRG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EE_ID = 0;
  form->S_EE_R19_provides_access_to = 0;
  Escher_SetRemoveElement( &part->S_BRG_R19_uses, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_DT TO S_BRG ACROSS R20
 */
void
ooaofooa_S_BRG_R20_Link_defines_the_return_value( ooaofooa_S_DT * part, ooaofooa_S_BRG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = part->DT_ID;
  form->S_DT_R20_return_value_defined_by = part;
  Escher_SetInsertElement( &part->S_BRG_R20_defines_the_return_value, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DT FROM S_BRG ACROSS R20
 */
void
ooaofooa_S_BRG_R20_Unlink_defines_the_return_value( ooaofooa_S_DT * part, ooaofooa_S_BRG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = 0;
  form->S_DT_R20_return_value_defined_by = 0;
  Escher_SetRemoveElement( &part->S_BRG_R20_defines_the_return_value, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_BRG_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_BRG * self = (ooaofooa_S_BRG *) instance;
  printf( "INSERT INTO S_BRG VALUES ( %ld,%ld,'%s','%s',%d,%ld,'%s',%d,'%s' );\n",
    ((long)self->Brg_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EE_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip,
    self->Brg_Typ,
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
    self->Action_Semantics_internal,
    self->Suc_Pars,
    self->Return_Dimensions );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_BRG_container[ ooaofooa_S_BRG_MAX_EXTENT_SIZE ];
static ooaofooa_S_BRG ooaofooa_S_BRG_instances[ ooaofooa_S_BRG_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_BRG_extent = {
  {0,0}, {0,0}, &ooaofooa_S_BRG_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_BRG_instances,
  sizeof( ooaofooa_S_BRG ), 0, ooaofooa_S_BRG_MAX_EXTENT_SIZE
  };


