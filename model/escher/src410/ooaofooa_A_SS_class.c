/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_SS_class.c
 *
 * Class:       Send Signal  (A_SS)
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
ooaofooa_A_SS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_A_SS * self = (ooaofooa_A_SS *) instance;
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
void ooaofooa_A_SS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_A_SS * ooaofooa_A_SS_instance = (ooaofooa_A_SS *) instance;
  ooaofooa_A_ACT * ooaofooa_A_ACTrelated_instance1 = ooaofooa_A_ACT_AnyWhere1( ooaofooa_A_SS_instance->Id );
  if ( ooaofooa_A_ACTrelated_instance1 ) {
    ooaofooa_A_SS_R1107_Link( ooaofooa_A_ACTrelated_instance1, ooaofooa_A_SS_instance );
  }
}


/*
 * RELATE A_ACT TO A_SS ACROSS R1107
 */
void
ooaofooa_A_SS_R1107_Link( ooaofooa_A_ACT * supertype, ooaofooa_A_SS * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for A_SS->A_ACT[R1107] */
  subtype->A_ACT_R1107 = supertype;
  /* Optimized linkage for A_ACT->A_SS[R1107] */
  supertype->R1107_subtype = subtype;
  supertype->R1107_object_id = ooaofooa_A_SS_CLASS_NUMBER;
}


/*
 * UNRELATE A_ACT FROM A_SS ACROSS R1107
 */
void
ooaofooa_A_SS_R1107_Unlink( ooaofooa_A_ACT * supertype, ooaofooa_A_SS * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->A_ACT_R1107 = 0;
  supertype->R1107_subtype = 0;
  supertype->R1107_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_A_SS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_A_SS * self = (ooaofooa_A_SS *) instance;
  printf( "INSERT INTO A_SS VALUES ( %ld,'%s','%s' );\n",
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
static Escher_SetElement_s ooaofooa_A_SS_container[ ooaofooa_A_SS_MAX_EXTENT_SIZE ];
static ooaofooa_A_SS ooaofooa_A_SS_instances[ ooaofooa_A_SS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_A_SS_extent = {
  {0,0}, {0,0}, &ooaofooa_A_SS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_A_SS_instances,
  sizeof( ooaofooa_A_SS ), 0, ooaofooa_A_SS_MAX_EXTENT_SIZE
  };


