/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_LIN_class.c
 *
 * Class:       Literal Integer  (V_LIN)
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
ooaofooa_V_LIN_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_V_LIN * self = (ooaofooa_V_LIN *) instance;
  /* Initialize application analysis class attributes.  */
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  Escher_strcpy( self->Value, avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_V_LIN_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_V_LIN * ooaofooa_V_LIN_instance = (ooaofooa_V_LIN *) instance;
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_V_LIN_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_V_LIN_R801_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_V_LIN_instance );
  }
}


/*
 * RELATE V_VAL TO V_LIN ACROSS R801
 */
void
ooaofooa_V_LIN_R801_Link( ooaofooa_V_VAL * supertype, ooaofooa_V_LIN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Value_ID = supertype->Value_ID;
  /* Optimized linkage for V_LIN->V_VAL[R801] */
  subtype->V_VAL_R801 = supertype;
  /* Optimized linkage for V_VAL->V_LIN[R801] */
  supertype->R801_subtype = subtype;
  supertype->R801_object_id = ooaofooa_V_LIN_CLASS_NUMBER;
}


/*
 * UNRELATE V_VAL FROM V_LIN ACROSS R801
 */
void
ooaofooa_V_LIN_R801_Unlink( ooaofooa_V_VAL * supertype, ooaofooa_V_LIN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->V_VAL_R801 = 0;
  supertype->R801_subtype = 0;
  supertype->R801_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_V_LIN_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_V_LIN * self = (ooaofooa_V_LIN *) instance;
  printf( "INSERT INTO V_LIN VALUES ( %ld,'%s' );\n",
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK),
    self->Value );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_V_LIN_container[ ooaofooa_V_LIN_MAX_EXTENT_SIZE ];
static ooaofooa_V_LIN ooaofooa_V_LIN_instances[ ooaofooa_V_LIN_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_V_LIN_extent = {
  {0,0}, {0,0}, &ooaofooa_V_LIN_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_V_LIN_instances,
  sizeof( ooaofooa_V_LIN ), 0, ooaofooa_V_LIN_MAX_EXTENT_SIZE
  };


