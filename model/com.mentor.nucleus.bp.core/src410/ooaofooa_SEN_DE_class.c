/*----------------------------------------------------------------------------
 * File:  ooaofooa_SEN_DE_class.c
 *
 * Class:       Description Engine  (SEN_DE)
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
ooaofooa_SEN_DE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SEN_DE * self = (ooaofooa_SEN_DE *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SEN_DE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SEN_DE * ooaofooa_SEN_DE_instance = (ooaofooa_SEN_DE *) instance;
  ooaofooa_SEN_E * ooaofooa_SEN_Erelated_instance1 = (ooaofooa_SEN_E *) Escher_instance_cache[ (intptr_t) ooaofooa_SEN_DE_instance->Id ];
  if ( ooaofooa_SEN_Erelated_instance1 ) {
    ooaofooa_SEN_DE_R9501_Link( ooaofooa_SEN_Erelated_instance1, ooaofooa_SEN_DE_instance );
  }
}


/*
 * RELATE SEN_E TO SEN_DE ACROSS R9501
 */
void
ooaofooa_SEN_DE_R9501_Link( ooaofooa_SEN_E * supertype, ooaofooa_SEN_DE * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for SEN_DE->SEN_E[R9501] */
  subtype->SEN_E_R9501 = supertype;
  /* Optimized linkage for SEN_E->SEN_DE[R9501] */
  supertype->R9501_subtype = subtype;
  supertype->R9501_object_id = ooaofooa_SEN_DE_CLASS_NUMBER;
}


/*
 * UNRELATE SEN_E FROM SEN_DE ACROSS R9501
 */
void
ooaofooa_SEN_DE_R9501_Unlink( ooaofooa_SEN_E * supertype, ooaofooa_SEN_DE * subtype )
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
ooaofooa_SEN_DE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SEN_DE * self = (ooaofooa_SEN_DE *) instance;
  printf( "INSERT INTO SEN_DE VALUES ( %ld );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SEN_DE_container[ ooaofooa_SEN_DE_MAX_EXTENT_SIZE ];
static ooaofooa_SEN_DE ooaofooa_SEN_DE_instances[ ooaofooa_SEN_DE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SEN_DE_extent = {
  {0,0}, {0,0}, &ooaofooa_SEN_DE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SEN_DE_instances,
  sizeof( ooaofooa_SEN_DE ), 0, ooaofooa_SEN_DE_MAX_EXTENT_SIZE
  };


