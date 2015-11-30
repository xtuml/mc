/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_LS_class.c
 *
 * Class:       Lifespan  (SQ_LS)
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
ooaofooa_SQ_LS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SQ_LS * self = (ooaofooa_SQ_LS *) instance;
  /* Initialize application analysis class attributes.  */
  self->Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Source_Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  {i_t i = avlstring[ 3 + 1 ] - avlstring[ 3 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 3 ][ i ]; }
  }
  self->Destroyed = ( '0' != *avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SQ_LS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SQ_LS * ooaofooa_SQ_LS_instance = (ooaofooa_SQ_LS *) instance;
  ooaofooa_SQ_P * ooaofooa_SQ_Prelated_instance1 = ooaofooa_SQ_P_AnyWhere1( ooaofooa_SQ_LS_instance->Part_ID );
  if ( ooaofooa_SQ_Prelated_instance1 ) {
    ooaofooa_SQ_LS_R930_Link( ooaofooa_SQ_Prelated_instance1, ooaofooa_SQ_LS_instance );
  }
  {
  ooaofooa_SQ_P * ooaofooa_SQ_Prelated_instance1 = ooaofooa_SQ_P_AnyWhere1( ooaofooa_SQ_LS_instance->Source_Part_ID );
  if ( ooaofooa_SQ_Prelated_instance1 ) {
    ooaofooa_SQ_LS_R940_Link_is_source_of_span( ooaofooa_SQ_Prelated_instance1, ooaofooa_SQ_LS_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SQ_LS *
ooaofooa_SQ_LS_AnyWhere1( Escher_UniqueID_t w_Part_ID )
{
  ooaofooa_SQ_LS * w; 
  Escher_Iterator_s iter_SQ_LS;
  Escher_IteratorReset( &iter_SQ_LS, &pG_ooaofooa_SQ_LS_extent.active );
  while ( (w = (ooaofooa_SQ_LS *) Escher_IteratorNext( &iter_SQ_LS )) != 0 ) {
    if ( w->Part_ID == w_Part_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SQ_P TO SQ_LS ACROSS R930
 */
void
ooaofooa_SQ_LS_R930_Link( ooaofooa_SQ_P * supertype, ooaofooa_SQ_LS * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Part_ID = supertype->Part_ID;
  /* Optimized linkage for SQ_LS->SQ_P[R930] */
  subtype->SQ_P_R930 = supertype;
  /* Optimized linkage for SQ_P->SQ_LS[R930] */
  supertype->R930_subtype = subtype;
  supertype->R930_object_id = ooaofooa_SQ_LS_CLASS_NUMBER;
}


/*
 * UNRELATE SQ_P FROM SQ_LS ACROSS R930
 */
void
ooaofooa_SQ_LS_R930_Unlink( ooaofooa_SQ_P * supertype, ooaofooa_SQ_LS * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SQ_P_R930 = 0;
  supertype->R930_subtype = 0;
  supertype->R930_object_id = 0;
}


/*
 * RELATE SQ_P TO SQ_LS ACROSS R940
 */
void
ooaofooa_SQ_LS_R940_Link_is_source_of_span( ooaofooa_SQ_P * part, ooaofooa_SQ_LS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Source_Part_ID = part->Part_ID;
  form->SQ_P_R940_extends_from = part;
  part->SQ_LS_R940_is_source_of_span = form;
}

/*
 * UNRELATE SQ_P FROM SQ_LS ACROSS R940
 */
void
ooaofooa_SQ_LS_R940_Unlink_is_source_of_span( ooaofooa_SQ_P * part, ooaofooa_SQ_LS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Source_Part_ID = 0;
  form->SQ_P_R940_extends_from = 0;
  part->SQ_LS_R940_is_source_of_span = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SQ_LS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SQ_LS * self = (ooaofooa_SQ_LS *) instance;
  printf( "INSERT INTO SQ_LS VALUES ( %ld,%ld,'%s',%d );\n",
    ((long)self->Part_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Source_Part_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Descrip ) ? self->Descrip : "",
    self->Destroyed );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SQ_LS_container[ ooaofooa_SQ_LS_MAX_EXTENT_SIZE ];
static ooaofooa_SQ_LS ooaofooa_SQ_LS_instances[ ooaofooa_SQ_LS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SQ_LS_extent = {
  {0,0}, {0,0}, &ooaofooa_SQ_LS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SQ_LS_instances,
  sizeof( ooaofooa_SQ_LS ), 0, ooaofooa_SQ_LS_MAX_EXTENT_SIZE
  };


