/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_CPA_class.c
 *
 * Class:       Class Participant Attribute  (SQ_CPA)
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
ooaofooa_SQ_CPA_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SQ_CPA * self = (ooaofooa_SQ_CPA *) instance;
  /* Initialize application analysis class attributes.  */
  self->Ia_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Ia_ID;
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  Escher_strcpy( self->Type, avlstring[ 3 ] );
  self->Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  {i_t i = avlstring[ 5 + 1 ] - avlstring[ 5 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 5 ][ i ]; }
  }
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SQ_CPA_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SQ_CPA * ooaofooa_SQ_CPA_instance = (ooaofooa_SQ_CPA *) instance;
  ooaofooa_SQ_CP * ooaofooa_SQ_CPrelated_instance1 = ooaofooa_SQ_CP_AnyWhere1( ooaofooa_SQ_CPA_instance->Part_ID );
  if ( ooaofooa_SQ_CPrelated_instance1 ) {
    ooaofooa_SQ_CPA_R935_Link_may_have( ooaofooa_SQ_CPrelated_instance1, ooaofooa_SQ_CPA_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SQ_CPA *
ooaofooa_SQ_CPA_AnyWhere1( Escher_UniqueID_t w_Ia_ID )
{
  ooaofooa_SQ_CPA * w; 
  Escher_Iterator_s iter_SQ_CPA;
  Escher_IteratorReset( &iter_SQ_CPA, &pG_ooaofooa_SQ_CPA_extent.active );
  while ( (w = (ooaofooa_SQ_CPA *) Escher_IteratorNext( &iter_SQ_CPA )) != 0 ) {
    if ( w->Ia_ID == w_Ia_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SQ_CP TO SQ_CPA ACROSS R935
 */
void
ooaofooa_SQ_CPA_R935_Link_may_have( ooaofooa_SQ_CP * part, ooaofooa_SQ_CPA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Part_ID = part->Part_ID;
  form->SQ_CP_R935_belongs_to = part;
  Escher_SetInsertElement( &part->SQ_CPA_R935_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SQ_CP FROM SQ_CPA ACROSS R935
 */
void
ooaofooa_SQ_CPA_R935_Unlink_may_have( ooaofooa_SQ_CP * part, ooaofooa_SQ_CPA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Part_ID = 0;
  form->SQ_CP_R935_belongs_to = 0;
  Escher_SetRemoveElement( &part->SQ_CPA_R935_may_have, (Escher_ObjectSet_s *) form );
}

/* Accessors to SQ_CPA[R947] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SQ_CPA_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SQ_CPA * self = (ooaofooa_SQ_CPA *) instance;
  printf( "INSERT INTO SQ_CPA VALUES ( %ld,'%s','%s',%ld,'%s' );\n",
    ((long)self->Ia_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Type,
    ((long)self->Part_ID & ESCHER_IDDUMP_MASK),
    self->Descrip );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SQ_CPA_container[ ooaofooa_SQ_CPA_MAX_EXTENT_SIZE ];
static ooaofooa_SQ_CPA ooaofooa_SQ_CPA_instances[ ooaofooa_SQ_CPA_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SQ_CPA_extent = {
  {0,0}, {0,0}, &ooaofooa_SQ_CPA_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SQ_CPA_instances,
  sizeof( ooaofooa_SQ_CPA ), 0, ooaofooa_SQ_CPA_MAX_EXTENT_SIZE
  };


