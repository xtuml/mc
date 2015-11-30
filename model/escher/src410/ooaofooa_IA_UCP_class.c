/*----------------------------------------------------------------------------
 * File:  ooaofooa_IA_UCP_class.c
 *
 * Class:       Use Case Participant  (IA_UCP)
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
ooaofooa_IA_UCP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_IA_UCP * self = (ooaofooa_IA_UCP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  {i_t i = avlstring[ 3 + 1 ] - avlstring[ 3 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 3 ][ i ]; }
  }
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_IA_UCP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_IA_UCP * ooaofooa_IA_UCP_instance = (ooaofooa_IA_UCP *) instance;
  ooaofooa_SQ_P * ooaofooa_SQ_Prelated_instance1 = ooaofooa_SQ_P_AnyWhere1( ooaofooa_IA_UCP_instance->Part_ID );
  if ( ooaofooa_SQ_Prelated_instance1 ) {
    ooaofooa_IA_UCP_R930_Link( ooaofooa_SQ_Prelated_instance1, ooaofooa_IA_UCP_instance );
  }
}


/*
 * RELATE SQ_P TO IA_UCP ACROSS R930
 */
void
ooaofooa_IA_UCP_R930_Link( ooaofooa_SQ_P * supertype, ooaofooa_IA_UCP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Part_ID = supertype->Part_ID;
  /* Optimized linkage for IA_UCP->SQ_P[R930] */
  subtype->SQ_P_R930 = supertype;
  /* Optimized linkage for SQ_P->IA_UCP[R930] */
  supertype->R930_subtype = subtype;
  supertype->R930_object_id = ooaofooa_IA_UCP_CLASS_NUMBER;
}


/*
 * UNRELATE SQ_P FROM IA_UCP ACROSS R930
 */
void
ooaofooa_IA_UCP_R930_Unlink( ooaofooa_SQ_P * supertype, ooaofooa_IA_UCP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SQ_P_R930 = 0;
  supertype->R930_subtype = 0;
  supertype->R930_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_IA_UCP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_IA_UCP * self = (ooaofooa_IA_UCP *) instance;
  printf( "INSERT INTO IA_UCP VALUES ( %ld,'%s','%s' );\n",
    ((long)self->Part_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_IA_UCP_container[ ooaofooa_IA_UCP_MAX_EXTENT_SIZE ];
static ooaofooa_IA_UCP ooaofooa_IA_UCP_instances[ ooaofooa_IA_UCP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_IA_UCP_extent = {
  {0,0}, {0,0}, &ooaofooa_IA_UCP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_IA_UCP_instances,
  sizeof( ooaofooa_IA_UCP ), 0, ooaofooa_IA_UCP_MAX_EXTENT_SIZE
  };


