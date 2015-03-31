/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_DM_class.c
 *
 * Class:       Decision Merge Node  (A_DM)
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
ooaofooa_A_DM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_A_DM * self = (ooaofooa_A_DM *) instance;
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
void ooaofooa_A_DM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_A_DM * ooaofooa_A_DM_instance = (ooaofooa_A_DM *) instance;
  ooaofooa_A_CTL * ooaofooa_A_CTLrelated_instance1 = ooaofooa_A_CTL_AnyWhere1( ooaofooa_A_DM_instance->Id );
  if ( ooaofooa_A_CTLrelated_instance1 ) {
    ooaofooa_A_DM_R1106_Link( ooaofooa_A_CTLrelated_instance1, ooaofooa_A_DM_instance );
  }
}


/*
 * RELATE A_CTL TO A_DM ACROSS R1106
 */
void
ooaofooa_A_DM_R1106_Link( ooaofooa_A_CTL * supertype, ooaofooa_A_DM * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for A_DM->A_CTL[R1106] */
  subtype->A_CTL_R1106 = supertype;
  /* Optimized linkage for A_CTL->A_DM[R1106] */
  supertype->R1106_subtype = subtype;
  supertype->R1106_object_id = ooaofooa_A_DM_CLASS_NUMBER;
}


/*
 * UNRELATE A_CTL FROM A_DM ACROSS R1106
 */
void
ooaofooa_A_DM_R1106_Unlink( ooaofooa_A_CTL * supertype, ooaofooa_A_DM * subtype )
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
ooaofooa_A_DM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_A_DM * self = (ooaofooa_A_DM *) instance;
  printf( "INSERT INTO A_DM VALUES ( %ld,'%s','%s' );\n",
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
static Escher_SetElement_s ooaofooa_A_DM_container[ ooaofooa_A_DM_MAX_EXTENT_SIZE ];
static ooaofooa_A_DM ooaofooa_A_DM_instances[ ooaofooa_A_DM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_A_DM_extent = {
  {0,0}, {0,0}, &ooaofooa_A_DM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_A_DM_instances,
  sizeof( ooaofooa_A_DM ), 0, ooaofooa_A_DM_MAX_EXTENT_SIZE
  };


