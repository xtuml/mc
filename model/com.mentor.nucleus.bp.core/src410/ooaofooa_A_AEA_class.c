/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_AEA_class.c
 *
 * Class:       Accept Event Action  (A_AEA)
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
ooaofooa_A_AEA_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_A_AEA * self = (ooaofooa_A_AEA *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
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
void ooaofooa_A_AEA_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_A_AEA * ooaofooa_A_AEA_instance = (ooaofooa_A_AEA *) instance;
  ooaofooa_A_AE * ooaofooa_A_AErelated_instance1 = ooaofooa_A_AE_AnyWhere1( ooaofooa_A_AEA_instance->Id );
  if ( ooaofooa_A_AErelated_instance1 ) {
    ooaofooa_A_AEA_R1112_Link( ooaofooa_A_AErelated_instance1, ooaofooa_A_AEA_instance );
  }
}


/*
 * RELATE A_AE TO A_AEA ACROSS R1112
 */
void
ooaofooa_A_AEA_R1112_Link( ooaofooa_A_AE * supertype, ooaofooa_A_AEA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for A_AEA->A_AE[R1112] */
  subtype->A_AE_R1112 = supertype;
  /* Optimized linkage for A_AE->A_AEA[R1112] */
  supertype->R1112_subtype = subtype;
  supertype->R1112_object_id = ooaofooa_A_AEA_CLASS_NUMBER;
}


/*
 * UNRELATE A_AE FROM A_AEA ACROSS R1112
 */
void
ooaofooa_A_AEA_R1112_Unlink( ooaofooa_A_AE * supertype, ooaofooa_A_AEA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->A_AE_R1112 = 0;
  supertype->R1112_subtype = 0;
  supertype->R1112_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_A_AEA_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_A_AEA * self = (ooaofooa_A_AEA *) instance;
  printf( "INSERT INTO A_AEA VALUES ( %ld,'%s','%s' );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_A_AEA_container[ ooaofooa_A_AEA_MAX_EXTENT_SIZE ];
static ooaofooa_A_AEA ooaofooa_A_AEA_instances[ ooaofooa_A_AEA_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_A_AEA_extent = {
  {0,0}, {0,0}, &ooaofooa_A_AEA_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_A_AEA_instances,
  sizeof( ooaofooa_A_AEA ), 0, ooaofooa_A_AEA_MAX_EXTENT_SIZE
  };


