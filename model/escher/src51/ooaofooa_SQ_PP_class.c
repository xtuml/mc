/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_PP_class.c
 *
 * Class:       Package Participant  (SQ_PP)
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
ooaofooa_SQ_PP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SQ_PP * self = (ooaofooa_SQ_PP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Label = Escher_strcpy( self->Label, avlstring[ 3 ] );
  self->InformalName = Escher_strcpy( self->InformalName, avlstring[ 4 ] );
  {i_t i = avlstring[ 5 + 1 ] - avlstring[ 5 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 5 ][ i ]; }
  }
  self->isFormal = ( '0' != *avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SQ_PP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SQ_PP * ooaofooa_SQ_PP_instance = (ooaofooa_SQ_PP *) instance;
  ooaofooa_SQ_P * ooaofooa_SQ_Prelated_instance1 = ooaofooa_SQ_P_AnyWhere1( ooaofooa_SQ_PP_instance->Part_ID );
  if ( ooaofooa_SQ_Prelated_instance1 ) {
    ooaofooa_SQ_PP_R930_Link( ooaofooa_SQ_Prelated_instance1, ooaofooa_SQ_PP_instance );
  }
  {
  ooaofooa_EP_PKG * ooaofooa_EP_PKGrelated_instance1 = ooaofooa_EP_PKG_AnyWhere1( ooaofooa_SQ_PP_instance->Package_ID );
  if ( ooaofooa_EP_PKGrelated_instance1 ) {
    ooaofooa_SQ_PP_R956_Link_represents_participant_of( ooaofooa_EP_PKGrelated_instance1, ooaofooa_SQ_PP_instance );
  }
  }
}


/*
 * RELATE SQ_P TO SQ_PP ACROSS R930
 */
void
ooaofooa_SQ_PP_R930_Link( ooaofooa_SQ_P * supertype, ooaofooa_SQ_PP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Part_ID = supertype->Part_ID;
  /* Optimized linkage for SQ_PP->SQ_P[R930] */
  subtype->SQ_P_R930 = supertype;
  /* Optimized linkage for SQ_P->SQ_PP[R930] */
  supertype->R930_subtype = subtype;
  supertype->R930_object_id = ooaofooa_SQ_PP_CLASS_NUMBER;
}


/*
 * UNRELATE SQ_P FROM SQ_PP ACROSS R930
 */
void
ooaofooa_SQ_PP_R930_Unlink( ooaofooa_SQ_P * supertype, ooaofooa_SQ_PP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SQ_P_R930 = 0;
  supertype->R930_subtype = 0;
  supertype->R930_object_id = 0;
}


/*
 * RELATE EP_PKG TO SQ_PP ACROSS R956
 */
void
ooaofooa_SQ_PP_R956_Link_represents_participant_of( ooaofooa_EP_PKG * part, ooaofooa_SQ_PP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = part->Package_ID;
  form->EP_PKG_R956_represents = part;
  Escher_SetInsertElement( &part->SQ_PP_R956_represents_participant_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE EP_PKG FROM SQ_PP ACROSS R956
 */
void
ooaofooa_SQ_PP_R956_Unlink_represents_participant_of( ooaofooa_EP_PKG * part, ooaofooa_SQ_PP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = 0;
  form->EP_PKG_R956_represents = 0;
  Escher_SetRemoveElement( &part->SQ_PP_R956_represents_participant_of, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SQ_PP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SQ_PP * self = (ooaofooa_SQ_PP *) instance;
  printf( "INSERT INTO SQ_PP VALUES ( %ld,%ld,'%s','%s','%s',%d );\n",
    ((long)self->Part_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Label ) ? self->Label : "",
    ( 0 != self->InformalName ) ? self->InformalName : "",
    ( 0 != self->Descrip ) ? self->Descrip : "",
    self->isFormal );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SQ_PP_container[ ooaofooa_SQ_PP_MAX_EXTENT_SIZE ];
static ooaofooa_SQ_PP ooaofooa_SQ_PP_instances[ ooaofooa_SQ_PP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SQ_PP_extent = {
  {0,0}, {0,0}, &ooaofooa_SQ_PP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SQ_PP_instances,
  sizeof( ooaofooa_SQ_PP ), 0, ooaofooa_SQ_PP_MAX_EXTENT_SIZE
  };


