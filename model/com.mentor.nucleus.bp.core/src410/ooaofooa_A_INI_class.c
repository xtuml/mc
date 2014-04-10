/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_INI_class.c
 *
 * Class:       Initial Node  (A_INI)
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
ooaofooa_A_INI_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_A_INI * self = (ooaofooa_A_INI *) instance;
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
void ooaofooa_A_INI_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_A_INI * ooaofooa_A_INI_instance = (ooaofooa_A_INI *) instance;
  ooaofooa_A_CTL * ooaofooa_A_CTLrelated_instance1 = ooaofooa_A_CTL_AnyWhere1( ooaofooa_A_INI_instance->Id );
  if ( ooaofooa_A_CTLrelated_instance1 ) {
    ooaofooa_A_INI_R1106_Link( ooaofooa_A_CTLrelated_instance1, ooaofooa_A_INI_instance );
  }
}


/*
 * RELATE A_CTL TO A_INI ACROSS R1106
 */
void
ooaofooa_A_INI_R1106_Link( ooaofooa_A_CTL * supertype, ooaofooa_A_INI * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for A_INI->A_CTL[R1106] */
  subtype->A_CTL_R1106 = supertype;
  /* Optimized linkage for A_CTL->A_INI[R1106] */
  supertype->R1106_subtype = subtype;
  supertype->R1106_object_id = ooaofooa_A_INI_CLASS_NUMBER;
}


/*
 * UNRELATE A_CTL FROM A_INI ACROSS R1106
 */
void
ooaofooa_A_INI_R1106_Unlink( ooaofooa_A_CTL * supertype, ooaofooa_A_INI * subtype )
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
ooaofooa_A_INI_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_A_INI * self = (ooaofooa_A_INI *) instance;
  printf( "INSERT INTO A_INI VALUES ( %ld,'%s' );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    self->Descrip );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_A_INI_container[ ooaofooa_A_INI_MAX_EXTENT_SIZE ];
static ooaofooa_A_INI ooaofooa_A_INI_instances[ ooaofooa_A_INI_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_A_INI_extent = {
  {0,0}, {0,0}, &ooaofooa_A_INI_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_A_INI_instances,
  sizeof( ooaofooa_A_INI ), 0, ooaofooa_A_INI_MAX_EXTENT_SIZE
  };


