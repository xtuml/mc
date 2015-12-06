/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_OBJ_class.c
 *
 * Class:       Object Node  (A_OBJ)
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
ooaofooa_A_OBJ_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_A_OBJ * self = (ooaofooa_A_OBJ *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 2 ] );
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
void ooaofooa_A_OBJ_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_A_OBJ * ooaofooa_A_OBJ_instance = (ooaofooa_A_OBJ *) instance;
  ooaofooa_A_N * ooaofooa_A_Nrelated_instance1 = ooaofooa_A_N_AnyWhere1( ooaofooa_A_OBJ_instance->Id );
  if ( ooaofooa_A_Nrelated_instance1 ) {
    ooaofooa_A_OBJ_R1105_Link( ooaofooa_A_Nrelated_instance1, ooaofooa_A_OBJ_instance );
  }
}


/*
 * RELATE A_N TO A_OBJ ACROSS R1105
 */
void
ooaofooa_A_OBJ_R1105_Link( ooaofooa_A_N * supertype, ooaofooa_A_OBJ * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for A_OBJ->A_N[R1105] */
  subtype->A_N_R1105 = supertype;
  /* Optimized linkage for A_N->A_OBJ[R1105] */
  supertype->R1105_subtype = subtype;
  supertype->R1105_object_id = ooaofooa_A_OBJ_CLASS_NUMBER;
}


/*
 * UNRELATE A_N FROM A_OBJ ACROSS R1105
 */
void
ooaofooa_A_OBJ_R1105_Unlink( ooaofooa_A_N * supertype, ooaofooa_A_OBJ * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->A_N_R1105 = 0;
  supertype->R1105_subtype = 0;
  supertype->R1105_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_A_OBJ_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_A_OBJ * self = (ooaofooa_A_OBJ *) instance;
  printf( "INSERT INTO A_OBJ VALUES ( %ld,'%s','%s' );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->Descrip ) ? self->Descrip : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_A_OBJ_container[ ooaofooa_A_OBJ_MAX_EXTENT_SIZE ];
static ooaofooa_A_OBJ ooaofooa_A_OBJ_instances[ ooaofooa_A_OBJ_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_A_OBJ_extent = {
  {0,0}, {0,0}, &ooaofooa_A_OBJ_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_A_OBJ_instances,
  sizeof( ooaofooa_A_OBJ ), 0, ooaofooa_A_OBJ_MAX_EXTENT_SIZE
  };


