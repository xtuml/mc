/*----------------------------------------------------------------------------
 * File:  ooaofooa_SEN_ALE_class.c
 *
 * Class:       Action Language Engine  (SEN_ALE)
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
ooaofooa_SEN_ALE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SEN_ALE * self = (ooaofooa_SEN_ALE *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SEN_ALE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SEN_ALE * ooaofooa_SEN_ALE_instance = (ooaofooa_SEN_ALE *) instance;
  ooaofooa_SEN_E * ooaofooa_SEN_Erelated_instance1 = (ooaofooa_SEN_E *) Escher_instance_cache[ (intptr_t) ooaofooa_SEN_ALE_instance->Id ];
  if ( ooaofooa_SEN_Erelated_instance1 ) {
    ooaofooa_SEN_ALE_R9501_Link( ooaofooa_SEN_Erelated_instance1, ooaofooa_SEN_ALE_instance );
  }
}


/*
 * RELATE SEN_E TO SEN_ALE ACROSS R9501
 */
void
ooaofooa_SEN_ALE_R9501_Link( ooaofooa_SEN_E * supertype, ooaofooa_SEN_ALE * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for SEN_ALE->SEN_E[R9501] */
  subtype->SEN_E_R9501 = supertype;
  /* Optimized linkage for SEN_E->SEN_ALE[R9501] */
  supertype->R9501_subtype = subtype;
  supertype->R9501_object_id = ooaofooa_SEN_ALE_CLASS_NUMBER;
}


/*
 * UNRELATE SEN_E FROM SEN_ALE ACROSS R9501
 */
void
ooaofooa_SEN_ALE_R9501_Unlink( ooaofooa_SEN_E * supertype, ooaofooa_SEN_ALE * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SEN_E_R9501 = 0;
  supertype->R9501_subtype = 0;
  supertype->R9501_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SEN_ALE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SEN_ALE * self = (ooaofooa_SEN_ALE *) instance;
  printf( "INSERT INTO SEN_ALE VALUES ( %ld );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SEN_ALE_container[ ooaofooa_SEN_ALE_MAX_EXTENT_SIZE ];
static ooaofooa_SEN_ALE ooaofooa_SEN_ALE_instances[ ooaofooa_SEN_ALE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SEN_ALE_extent = {
  {0,0}, {0,0}, &ooaofooa_SEN_ALE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SEN_ALE_instances,
  sizeof( ooaofooa_SEN_ALE ), 0, ooaofooa_SEN_ALE_MAX_EXTENT_SIZE
  };


