/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_CIP_class.c
 *
 * Class:       Class Instance Participant  (SQ_CIP)
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
ooaofooa_SQ_CIP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SQ_CIP * self = (ooaofooa_SQ_CIP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 3 ] );
  self->InformalClassName = Escher_strcpy( self->InformalClassName, avlstring[ 4 ] );
  self->Label = Escher_strcpy( self->Label, avlstring[ 5 ] );
  {i_t i = avlstring[ 6 + 1 ] - avlstring[ 6 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 6 ][ i ]; }
  }
  self->isFormal = ( '0' != *avlstring[ 7 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SQ_CIP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SQ_CIP * ooaofooa_SQ_CIP_instance = (ooaofooa_SQ_CIP *) instance;
  ooaofooa_O_OBJ * ooaofooa_O_OBJrelated_instance1 = ooaofooa_O_OBJ_AnyWhere1( ooaofooa_SQ_CIP_instance->Obj_ID );
  if ( ooaofooa_O_OBJrelated_instance1 ) {
    ooaofooa_SQ_CIP_R934_Link_represents_participant_of( ooaofooa_O_OBJrelated_instance1, ooaofooa_SQ_CIP_instance );
  }
  {
  ooaofooa_SQ_P * ooaofooa_SQ_Prelated_instance1 = ooaofooa_SQ_P_AnyWhere1( ooaofooa_SQ_CIP_instance->Part_ID );
  if ( ooaofooa_SQ_Prelated_instance1 ) {
    ooaofooa_SQ_CIP_R930_Link( ooaofooa_SQ_Prelated_instance1, ooaofooa_SQ_CIP_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SQ_CIP *
ooaofooa_SQ_CIP_AnyWhere1( Escher_UniqueID_t w_Part_ID )
{
  ooaofooa_SQ_CIP * w; 
  Escher_Iterator_s iter_SQ_CIP;
  Escher_IteratorReset( &iter_SQ_CIP, &pG_ooaofooa_SQ_CIP_extent.active );
  while ( (w = (ooaofooa_SQ_CIP *) Escher_IteratorNext( &iter_SQ_CIP )) != 0 ) {
    if ( w->Part_ID == w_Part_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SQ_P TO SQ_CIP ACROSS R930
 */
void
ooaofooa_SQ_CIP_R930_Link( ooaofooa_SQ_P * supertype, ooaofooa_SQ_CIP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Part_ID = supertype->Part_ID;
  /* Optimized linkage for SQ_CIP->SQ_P[R930] */
  subtype->SQ_P_R930 = supertype;
  /* Optimized linkage for SQ_P->SQ_CIP[R930] */
  supertype->R930_subtype = subtype;
  supertype->R930_object_id = ooaofooa_SQ_CIP_CLASS_NUMBER;
}


/*
 * UNRELATE SQ_P FROM SQ_CIP ACROSS R930
 */
void
ooaofooa_SQ_CIP_R930_Unlink( ooaofooa_SQ_P * supertype, ooaofooa_SQ_CIP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SQ_P_R930 = 0;
  supertype->R930_subtype = 0;
  supertype->R930_object_id = 0;
}


/*
 * RELATE O_OBJ TO SQ_CIP ACROSS R934
 */
void
ooaofooa_SQ_CIP_R934_Link_represents_participant_of( ooaofooa_O_OBJ * part, ooaofooa_SQ_CIP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = part->Obj_ID;
  form->O_OBJ_R934_represents = part;
  Escher_SetInsertElement( &part->SQ_CIP_R934_represents_participant_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_OBJ FROM SQ_CIP ACROSS R934
 */
void
ooaofooa_SQ_CIP_R934_Unlink_represents_participant_of( ooaofooa_O_OBJ * part, ooaofooa_SQ_CIP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = 0;
  form->O_OBJ_R934_represents = 0;
  Escher_SetRemoveElement( &part->SQ_CIP_R934_represents_participant_of, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SQ_CIP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SQ_CIP * self = (ooaofooa_SQ_CIP *) instance;
  printf( "INSERT INTO SQ_CIP VALUES ( %ld,%ld,'%s','%s','%s','%s',%d );\n",
    ((long)self->Part_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->InformalClassName ) ? self->InformalClassName : "",
    ( 0 != self->Label ) ? self->Label : "",
    ( 0 != self->Descrip ) ? self->Descrip : "",
    self->isFormal );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SQ_CIP_container[ ooaofooa_SQ_CIP_MAX_EXTENT_SIZE ];
static ooaofooa_SQ_CIP ooaofooa_SQ_CIP_instances[ ooaofooa_SQ_CIP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SQ_CIP_extent = {
  {0,0}, {0,0}, &ooaofooa_SQ_CIP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SQ_CIP_instances,
  sizeof( ooaofooa_SQ_CIP ), 0, ooaofooa_SQ_CIP_MAX_EXTENT_SIZE
  };


