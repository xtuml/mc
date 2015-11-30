/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_AM_class.c
 *
 * Class:       Asynchronous Message  (MSG_AM)
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
ooaofooa_MSG_AM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_MSG_AM * self = (ooaofooa_MSG_AM *) instance;
  /* Initialize application analysis class attributes.  */
  self->Msg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->InformalName = Escher_strcpy( self->InformalName, avlstring[ 2 ] );
  {i_t i = avlstring[ 3 + 1 ] - avlstring[ 3 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 3 ][ i ]; }
  }
  self->GuardCondition = Escher_strcpy( self->GuardCondition, avlstring[ 4 ] );
  self->DurationObservation = Escher_strcpy( self->DurationObservation, avlstring[ 5 ] );
  self->DurationConstraint = Escher_strcpy( self->DurationConstraint, avlstring[ 6 ] );
  self->isFormal = ( '0' != *avlstring[ 7 ] );
  self->Label = Escher_strcpy( self->Label, avlstring[ 8 ] );
  self->SequenceNumb = Escher_strcpy( self->SequenceNumb, avlstring[ 9 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_MSG_AM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_MSG_AM * ooaofooa_MSG_AM_instance = (ooaofooa_MSG_AM *) instance;
  ooaofooa_MSG_M * ooaofooa_MSG_Mrelated_instance1 = ooaofooa_MSG_M_AnyWhere1( ooaofooa_MSG_AM_instance->Msg_ID );
  if ( ooaofooa_MSG_Mrelated_instance1 ) {
    ooaofooa_MSG_AM_R1018_Link( ooaofooa_MSG_Mrelated_instance1, ooaofooa_MSG_AM_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_MSG_AM *
ooaofooa_MSG_AM_AnyWhere1( Escher_UniqueID_t w_Msg_ID )
{
  ooaofooa_MSG_AM * w; 
  Escher_Iterator_s iter_MSG_AM;
  Escher_IteratorReset( &iter_MSG_AM, &pG_ooaofooa_MSG_AM_extent.active );
  while ( (w = (ooaofooa_MSG_AM *) Escher_IteratorNext( &iter_MSG_AM )) != 0 ) {
    if ( w->Msg_ID == w_Msg_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE MSG_M TO MSG_AM ACROSS R1018
 */
void
ooaofooa_MSG_AM_R1018_Link( ooaofooa_MSG_M * supertype, ooaofooa_MSG_AM * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Msg_ID = supertype->Msg_ID;
  /* Optimized linkage for MSG_AM->MSG_M[R1018] */
  subtype->MSG_M_R1018 = supertype;
  /* Optimized linkage for MSG_M->MSG_AM[R1018] */
  supertype->R1018_subtype = subtype;
  supertype->R1018_object_id = ooaofooa_MSG_AM_CLASS_NUMBER;
}


/*
 * UNRELATE MSG_M FROM MSG_AM ACROSS R1018
 */
void
ooaofooa_MSG_AM_R1018_Unlink( ooaofooa_MSG_M * supertype, ooaofooa_MSG_AM * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->MSG_M_R1018 = 0;
  supertype->R1018_subtype = 0;
  supertype->R1018_object_id = 0;
}


/* Accessors to MSG_AM[R1019] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_MSG_AM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_MSG_AM * self = (ooaofooa_MSG_AM *) instance;
  printf( "INSERT INTO MSG_AM VALUES ( %ld,'%s','%s','%s','%s','%s',%d,'%s','%s' );\n",
    ((long)self->Msg_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->InformalName ) ? self->InformalName : "",
    ( 0 != self->Descrip ) ? self->Descrip : "",
    ( 0 != self->GuardCondition ) ? self->GuardCondition : "",
    ( 0 != self->DurationObservation ) ? self->DurationObservation : "",
    ( 0 != self->DurationConstraint ) ? self->DurationConstraint : "",
    self->isFormal,
    ( 0 != self->Label ) ? self->Label : "",
    ( 0 != self->SequenceNumb ) ? self->SequenceNumb : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_MSG_AM_container[ ooaofooa_MSG_AM_MAX_EXTENT_SIZE ];
static ooaofooa_MSG_AM ooaofooa_MSG_AM_instances[ ooaofooa_MSG_AM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_MSG_AM_extent = {
  {0,0}, {0,0}, &ooaofooa_MSG_AM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_MSG_AM_instances,
  sizeof( ooaofooa_MSG_AM ), 0, ooaofooa_MSG_AM_MAX_EXTENT_SIZE
  };


