/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_EEP_class.c
 *
 * Class:       External Entity Participant  (SQ_EEP)
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
ooaofooa_SQ_EEP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SQ_EEP * self = (ooaofooa_SQ_EEP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->EE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
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
void ooaofooa_SQ_EEP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SQ_EEP * ooaofooa_SQ_EEP_instance = (ooaofooa_SQ_EEP *) instance;
  ooaofooa_SQ_P * ooaofooa_SQ_Prelated_instance1 = ooaofooa_SQ_P_AnyWhere1( ooaofooa_SQ_EEP_instance->Part_ID );
  if ( ooaofooa_SQ_Prelated_instance1 ) {
    ooaofooa_SQ_EEP_R930_Link( ooaofooa_SQ_Prelated_instance1, ooaofooa_SQ_EEP_instance );
  }
  {
  ooaofooa_S_EE * ooaofooa_S_EErelated_instance1 = ooaofooa_S_EE_AnyWhere1( ooaofooa_SQ_EEP_instance->EE_ID );
  if ( ooaofooa_S_EErelated_instance1 ) {
    ooaofooa_SQ_EEP_R933_Link_represents_participant_of( ooaofooa_S_EErelated_instance1, ooaofooa_SQ_EEP_instance );
  }
  }
}


/*
 * RELATE SQ_P TO SQ_EEP ACROSS R930
 */
void
ooaofooa_SQ_EEP_R930_Link( ooaofooa_SQ_P * supertype, ooaofooa_SQ_EEP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Part_ID = supertype->Part_ID;
  /* Optimized linkage for SQ_EEP->SQ_P[R930] */
  subtype->SQ_P_R930 = supertype;
  /* Optimized linkage for SQ_P->SQ_EEP[R930] */
  supertype->R930_subtype = subtype;
  supertype->R930_object_id = ooaofooa_SQ_EEP_CLASS_NUMBER;
}


/*
 * UNRELATE SQ_P FROM SQ_EEP ACROSS R930
 */
void
ooaofooa_SQ_EEP_R930_Unlink( ooaofooa_SQ_P * supertype, ooaofooa_SQ_EEP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SQ_P_R930 = 0;
  supertype->R930_subtype = 0;
  supertype->R930_object_id = 0;
}


/*
 * RELATE S_EE TO SQ_EEP ACROSS R933
 */
void
ooaofooa_SQ_EEP_R933_Link_represents_participant_of( ooaofooa_S_EE * part, ooaofooa_SQ_EEP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EE_ID = part->EE_ID;
  form->S_EE_R933_represents = part;
  Escher_SetInsertElement( &part->SQ_EEP_R933_represents_participant_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_EE FROM SQ_EEP ACROSS R933
 */
void
ooaofooa_SQ_EEP_R933_Unlink_represents_participant_of( ooaofooa_S_EE * part, ooaofooa_SQ_EEP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EE_ID = 0;
  form->S_EE_R933_represents = 0;
  Escher_SetRemoveElement( &part->SQ_EEP_R933_represents_participant_of, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SQ_EEP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SQ_EEP * self = (ooaofooa_SQ_EEP *) instance;
  printf( "INSERT INTO SQ_EEP VALUES ( %ld,%ld,'%s','%s','%s',%d );\n",
    ((long)self->Part_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EE_ID & ESCHER_IDDUMP_MASK),
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
static Escher_SetElement_s ooaofooa_SQ_EEP_container[ ooaofooa_SQ_EEP_MAX_EXTENT_SIZE ];
static ooaofooa_SQ_EEP ooaofooa_SQ_EEP_instances[ ooaofooa_SQ_EEP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SQ_EEP_extent = {
  {0,0}, {0,0}, &ooaofooa_SQ_EEP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SQ_EEP_instances,
  sizeof( ooaofooa_SQ_EEP ), 0, ooaofooa_SQ_EEP_MAX_EXTENT_SIZE
  };


