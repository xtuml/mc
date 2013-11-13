/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_ACT_class.c
 *
 * Class:       Action  (SM_ACT)
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
ooaofooa_SM_ACT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_ACT * self = (ooaofooa_SM_ACT *) instance;
  /* Initialize application analysis class attributes.  */
  self->Act_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Act_ID;
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Suc_Pars = Escher_atoi( avlstring[ 3 ] );
  {i_t i = avlstring[ 4 + 1 ] - avlstring[ 4 ];
  self->Action_Semantics_internal = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Action_Semantics_internal[ i ] = avlstring[ 4 ][ i ]; }
  }
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
void ooaofooa_SM_ACT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_ACT * ooaofooa_SM_ACT_instance = (ooaofooa_SM_ACT *) instance;
  ooaofooa_SM_SM * ooaofooa_SM_SMrelated_instance1 = (ooaofooa_SM_SM *) Escher_instance_cache[ (intptr_t) ooaofooa_SM_ACT_instance->SM_ID ];
  if ( ooaofooa_SM_SMrelated_instance1 ) {
    ooaofooa_SM_ACT_R515_Link_contains( ooaofooa_SM_SMrelated_instance1, ooaofooa_SM_ACT_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SM_ACT *
ooaofooa_SM_ACT_AnyWhere1( Escher_UniqueID_t w_Act_ID, Escher_UniqueID_t w_SM_ID )
{
  ooaofooa_SM_ACT * w; 
  Escher_Iterator_s iter_SM_ACT;
  Escher_IteratorReset( &iter_SM_ACT, &pG_ooaofooa_SM_ACT_extent.active );
  while ( (w = (ooaofooa_SM_ACT *) Escher_IteratorNext( &iter_SM_ACT )) != 0 ) {
    if ( w->Act_ID == w_Act_ID && w->SM_ID == w_SM_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SM_SM TO SM_ACT ACROSS R515
 */
void
ooaofooa_SM_ACT_R515_Link_contains( ooaofooa_SM_SM * part, ooaofooa_SM_ACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->SM_SM_R515 = part;
  Escher_SetInsertElement( &part->SM_ACT_R515_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_SM FROM SM_ACT ACROSS R515
 */
void
ooaofooa_SM_ACT_R515_Unlink_contains( ooaofooa_SM_SM * part, ooaofooa_SM_ACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_SM_R515 = 0;
  Escher_SetRemoveElement( &part->SM_ACT_R515_contains, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_ACT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_ACT * self = (ooaofooa_SM_ACT *) instance;
  printf( "INSERT INTO SM_ACT VALUES ( %ld,%ld,%d,'%s','%s' );\n",
    ((long)self->Act_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    self->Suc_Pars,
    self->Action_Semantics_internal,
    self->Descrip );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_ACT_container[ ooaofooa_SM_ACT_MAX_EXTENT_SIZE ];
static ooaofooa_SM_ACT ooaofooa_SM_ACT_instances[ ooaofooa_SM_ACT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_ACT_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_ACT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_ACT_instances,
  sizeof( ooaofooa_SM_ACT ), 0, ooaofooa_SM_ACT_MAX_EXTENT_SIZE
  };


