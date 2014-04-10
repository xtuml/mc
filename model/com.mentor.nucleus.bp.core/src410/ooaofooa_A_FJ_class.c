/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_FJ_class.c
 *
 * Class:       Fork Join Node  (A_FJ)
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
ooaofooa_A_FJ_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_A_FJ * self = (ooaofooa_A_FJ *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  {i_t i = avlstring[ 2 + 1 ] - avlstring[ 2 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 2 ][ i ]; }
  }
  Escher_strcpy( self->GuardCondition, avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_A_FJ_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_A_FJ * ooaofooa_A_FJ_instance = (ooaofooa_A_FJ *) instance;
  ooaofooa_A_CTL * ooaofooa_A_CTLrelated_instance1 = ooaofooa_A_CTL_AnyWhere1( ooaofooa_A_FJ_instance->Id );
  if ( ooaofooa_A_CTLrelated_instance1 ) {
    ooaofooa_A_FJ_R1106_Link( ooaofooa_A_CTLrelated_instance1, ooaofooa_A_FJ_instance );
  }
}


/*
 * RELATE A_CTL TO A_FJ ACROSS R1106
 */
void
ooaofooa_A_FJ_R1106_Link( ooaofooa_A_CTL * supertype, ooaofooa_A_FJ * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for A_FJ->A_CTL[R1106] */
  subtype->A_CTL_R1106 = supertype;
  /* Optimized linkage for A_CTL->A_FJ[R1106] */
  supertype->R1106_subtype = subtype;
  supertype->R1106_object_id = ooaofooa_A_FJ_CLASS_NUMBER;
}


/*
 * UNRELATE A_CTL FROM A_FJ ACROSS R1106
 */
void
ooaofooa_A_FJ_R1106_Unlink( ooaofooa_A_CTL * supertype, ooaofooa_A_FJ * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->A_CTL_R1106 = 0;
  supertype->R1106_subtype = 0;
  supertype->R1106_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_A_FJ_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_A_FJ * self = (ooaofooa_A_FJ *) instance;
  printf( "INSERT INTO A_FJ VALUES ( %ld,'%s','%s' );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    self->Descrip,
    self->GuardCondition );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_A_FJ_container[ ooaofooa_A_FJ_MAX_EXTENT_SIZE ];
static ooaofooa_A_FJ ooaofooa_A_FJ_instances[ ooaofooa_A_FJ_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_A_FJ_extent = {
  {0,0}, {0,0}, &ooaofooa_A_FJ_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_A_FJ_instances,
  sizeof( ooaofooa_A_FJ ), 0, ooaofooa_A_FJ_MAX_EXTENT_SIZE
  };


