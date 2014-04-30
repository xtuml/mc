/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_AF_class.c
 *
 * Class:       Activity Final Node  (A_AF)
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
ooaofooa_A_AF_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_A_AF * self = (ooaofooa_A_AF *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  {i_t i = avlstring[ 2 + 1 ] - avlstring[ 2 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 2 ][ i ]; }
  }
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_A_AF_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_A_AF * ooaofooa_A_AF_instance = (ooaofooa_A_AF *) instance;
  ooaofooa_A_CTL * ooaofooa_A_CTLrelated_instance1 = ooaofooa_A_CTL_AnyWhere1( ooaofooa_A_AF_instance->Id );
  if ( ooaofooa_A_CTLrelated_instance1 ) {
    ooaofooa_A_AF_R1106_Link( ooaofooa_A_CTLrelated_instance1, ooaofooa_A_AF_instance );
  }
}


/*
 * RELATE A_CTL TO A_AF ACROSS R1106
 */
void
ooaofooa_A_AF_R1106_Link( ooaofooa_A_CTL * supertype, ooaofooa_A_AF * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for A_AF->A_CTL[R1106] */
  subtype->A_CTL_R1106 = supertype;
  /* Optimized linkage for A_CTL->A_AF[R1106] */
  supertype->R1106_subtype = subtype;
  supertype->R1106_object_id = ooaofooa_A_AF_CLASS_NUMBER;
}


/*
 * UNRELATE A_CTL FROM A_AF ACROSS R1106
 */
void
ooaofooa_A_AF_R1106_Unlink( ooaofooa_A_CTL * supertype, ooaofooa_A_AF * subtype )
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
ooaofooa_A_AF_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_A_AF * self = (ooaofooa_A_AF *) instance;
  printf( "INSERT INTO A_AF VALUES ( %ld,'%s' );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ( 0 != self->Descrip ) ? self->Descrip : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_A_AF_container[ ooaofooa_A_AF_MAX_EXTENT_SIZE ];
static ooaofooa_A_AF ooaofooa_A_AF_instances[ ooaofooa_A_AF_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_A_AF_extent = {
  {0,0}, {0,0}, &ooaofooa_A_AF_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_A_AF_instances,
  sizeof( ooaofooa_A_AF ), 0, ooaofooa_A_AF_MAX_EXTENT_SIZE
  };


