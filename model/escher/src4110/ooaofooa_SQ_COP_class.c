/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_COP_class.c
 *
 * Class:       Component Participant  (SQ_COP)
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
ooaofooa_SQ_COP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SQ_COP * self = (ooaofooa_SQ_COP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Component_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Label = Escher_strcpy( self->Label, avlstring[ 3 ] );
  self->InformalComponentName = Escher_strcpy( self->InformalComponentName, avlstring[ 4 ] );
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
void ooaofooa_SQ_COP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SQ_COP * ooaofooa_SQ_COP_instance = (ooaofooa_SQ_COP *) instance;
  ooaofooa_SQ_P * ooaofooa_SQ_Prelated_instance1 = ooaofooa_SQ_P_AnyWhere1( ooaofooa_SQ_COP_instance->Part_ID );
  if ( ooaofooa_SQ_Prelated_instance1 ) {
    ooaofooa_SQ_COP_R930_Link( ooaofooa_SQ_Prelated_instance1, ooaofooa_SQ_COP_instance );
  }
  {
  ooaofooa_C_C * ooaofooa_C_Crelated_instance1 = ooaofooa_C_C_AnyWhere1( ooaofooa_SQ_COP_instance->Component_Id );
  if ( ooaofooa_C_Crelated_instance1 ) {
    ooaofooa_SQ_COP_R955_Link( ooaofooa_C_Crelated_instance1, ooaofooa_SQ_COP_instance );
  }
  }
}


/*
 * RELATE SQ_P TO SQ_COP ACROSS R930
 */
void
ooaofooa_SQ_COP_R930_Link( ooaofooa_SQ_P * supertype, ooaofooa_SQ_COP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Part_ID = supertype->Part_ID;
  /* Optimized linkage for SQ_COP->SQ_P[R930] */
  subtype->SQ_P_R930 = supertype;
  /* Optimized linkage for SQ_P->SQ_COP[R930] */
  supertype->R930_subtype = subtype;
  supertype->R930_object_id = ooaofooa_SQ_COP_CLASS_NUMBER;
}


/*
 * UNRELATE SQ_P FROM SQ_COP ACROSS R930
 */
void
ooaofooa_SQ_COP_R930_Unlink( ooaofooa_SQ_P * supertype, ooaofooa_SQ_COP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SQ_P_R930 = 0;
  supertype->R930_subtype = 0;
  supertype->R930_object_id = 0;
}


/*
 * RELATE C_C TO SQ_COP ACROSS R955
 */
void
ooaofooa_SQ_COP_R955_Link( ooaofooa_C_C * part, ooaofooa_SQ_COP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Id = part->Id;
  form->C_C_R955_represents = part;
  Escher_SetInsertElement( &part->SQ_COP_R955, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_C FROM SQ_COP ACROSS R955
 */
void
ooaofooa_SQ_COP_R955_Unlink( ooaofooa_C_C * part, ooaofooa_SQ_COP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Id = 0;
  form->C_C_R955_represents = 0;
  Escher_SetRemoveElement( &part->SQ_COP_R955, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SQ_COP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SQ_COP * self = (ooaofooa_SQ_COP *) instance;
  printf( "INSERT INTO SQ_COP VALUES ( %ld,%ld,'%s','%s','%s',%d );\n",
    ((long)self->Part_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Component_Id & ESCHER_IDDUMP_MASK),
    ( 0 != self->Label ) ? self->Label : "",
    ( 0 != self->InformalComponentName ) ? self->InformalComponentName : "",
    ( 0 != self->Descrip ) ? self->Descrip : "",
    self->isFormal );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SQ_COP_container[ ooaofooa_SQ_COP_MAX_EXTENT_SIZE ];
static ooaofooa_SQ_COP ooaofooa_SQ_COP_instances[ ooaofooa_SQ_COP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SQ_COP_extent = {
  {0,0}, {0,0}, &ooaofooa_SQ_COP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SQ_COP_instances,
  sizeof( ooaofooa_SQ_COP ), 0, ooaofooa_SQ_COP_MAX_EXTENT_SIZE
  };


