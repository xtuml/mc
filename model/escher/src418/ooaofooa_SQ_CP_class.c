/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_CP_class.c
 *
 * Class:       Class Participant  (SQ_CP)
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
ooaofooa_SQ_CP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SQ_CP * self = (ooaofooa_SQ_CP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
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
void ooaofooa_SQ_CP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SQ_CP * ooaofooa_SQ_CP_instance = (ooaofooa_SQ_CP *) instance;
  ooaofooa_O_OBJ * ooaofooa_O_OBJrelated_instance1 = ooaofooa_O_OBJ_AnyWhere1( ooaofooa_SQ_CP_instance->Obj_ID );
  if ( ooaofooa_O_OBJrelated_instance1 ) {
    ooaofooa_SQ_CP_R939_Link_represents_participant_of( ooaofooa_O_OBJrelated_instance1, ooaofooa_SQ_CP_instance );
  }
  {
  ooaofooa_SQ_P * ooaofooa_SQ_Prelated_instance1 = ooaofooa_SQ_P_AnyWhere1( ooaofooa_SQ_CP_instance->Part_ID );
  if ( ooaofooa_SQ_Prelated_instance1 ) {
    ooaofooa_SQ_CP_R930_Link( ooaofooa_SQ_Prelated_instance1, ooaofooa_SQ_CP_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SQ_CP *
ooaofooa_SQ_CP_AnyWhere1( Escher_UniqueID_t w_Part_ID )
{
  ooaofooa_SQ_CP * w; 
  Escher_Iterator_s iter_SQ_CP;
  Escher_IteratorReset( &iter_SQ_CP, &pG_ooaofooa_SQ_CP_extent.active );
  while ( (w = (ooaofooa_SQ_CP *) Escher_IteratorNext( &iter_SQ_CP )) != 0 ) {
    if ( w->Part_ID == w_Part_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SQ_P TO SQ_CP ACROSS R930
 */
void
ooaofooa_SQ_CP_R930_Link( ooaofooa_SQ_P * supertype, ooaofooa_SQ_CP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Part_ID = supertype->Part_ID;
  /* Optimized linkage for SQ_CP->SQ_P[R930] */
  subtype->SQ_P_R930 = supertype;
  /* Optimized linkage for SQ_P->SQ_CP[R930] */
  supertype->R930_subtype = subtype;
  supertype->R930_object_id = ooaofooa_SQ_CP_CLASS_NUMBER;
}


/*
 * UNRELATE SQ_P FROM SQ_CP ACROSS R930
 */
void
ooaofooa_SQ_CP_R930_Unlink( ooaofooa_SQ_P * supertype, ooaofooa_SQ_CP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SQ_P_R930 = 0;
  supertype->R930_subtype = 0;
  supertype->R930_object_id = 0;
}


/*
 * RELATE O_OBJ TO SQ_CP ACROSS R939
 */
void
ooaofooa_SQ_CP_R939_Link_represents_participant_of( ooaofooa_O_OBJ * part, ooaofooa_SQ_CP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = part->Obj_ID;
  form->O_OBJ_R939_represents = part;
  Escher_SetInsertElement( &part->SQ_CP_R939_represents_participant_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_OBJ FROM SQ_CP ACROSS R939
 */
void
ooaofooa_SQ_CP_R939_Unlink_represents_participant_of( ooaofooa_O_OBJ * part, ooaofooa_SQ_CP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = 0;
  form->O_OBJ_R939_represents = 0;
  Escher_SetRemoveElement( &part->SQ_CP_R939_represents_participant_of, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SQ_CP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SQ_CP * self = (ooaofooa_SQ_CP *) instance;
  printf( "INSERT INTO SQ_CP VALUES ( %ld,%ld,'%s','%s','%s',%d );\n",
    ((long)self->Part_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
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
static Escher_SetElement_s ooaofooa_SQ_CP_container[ ooaofooa_SQ_CP_MAX_EXTENT_SIZE ];
static ooaofooa_SQ_CP ooaofooa_SQ_CP_instances[ ooaofooa_SQ_CP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SQ_CP_extent = {
  {0,0}, {0,0}, &ooaofooa_SQ_CP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SQ_CP_instances,
  sizeof( ooaofooa_SQ_CP ), 0, ooaofooa_SQ_CP_MAX_EXTENT_SIZE
  };


