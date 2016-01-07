/*----------------------------------------------------------------------------
 * File:  ooaofooa_SEN_RE_class.c
 *
 * Class:       References Engine  (SEN_RE)
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
ooaofooa_SEN_RE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SEN_RE * self = (ooaofooa_SEN_RE *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SEN_RE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SEN_RE * ooaofooa_SEN_RE_instance = (ooaofooa_SEN_RE *) instance;
  ooaofooa_SEN_E * ooaofooa_SEN_Erelated_instance1 = (ooaofooa_SEN_E *) Escher_instance_cache[ (intptr_t) ooaofooa_SEN_RE_instance->Id ];
  if ( ooaofooa_SEN_Erelated_instance1 ) {
    ooaofooa_SEN_RE_R9501_Link( ooaofooa_SEN_Erelated_instance1, ooaofooa_SEN_RE_instance );
  }
}


/*
 * RELATE SEN_E TO SEN_RE ACROSS R9501
 */
void
ooaofooa_SEN_RE_R9501_Link( ooaofooa_SEN_E * supertype, ooaofooa_SEN_RE * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for SEN_RE->SEN_E[R9501] */
  subtype->SEN_E_R9501 = supertype;
  /* Optimized linkage for SEN_E->SEN_RE[R9501] */
  supertype->R9501_subtype = subtype;
  supertype->R9501_object_id = ooaofooa_SEN_RE_CLASS_NUMBER;
}


/*
 * UNRELATE SEN_E FROM SEN_RE ACROSS R9501
 */
void
ooaofooa_SEN_RE_R9501_Unlink( ooaofooa_SEN_E * supertype, ooaofooa_SEN_RE * subtype )
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
ooaofooa_SEN_RE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SEN_RE * self = (ooaofooa_SEN_RE *) instance;
  printf( "INSERT INTO SEN_RE VALUES ( %ld );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SEN_RE_container[ ooaofooa_SEN_RE_MAX_EXTENT_SIZE ];
static ooaofooa_SEN_RE ooaofooa_SEN_RE_instances[ ooaofooa_SEN_RE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SEN_RE_extent = {
  {0,0}, {0,0}, &ooaofooa_SEN_RE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SEN_RE_instances,
  sizeof( ooaofooa_SEN_RE ), 0, ooaofooa_SEN_RE_MAX_EXTENT_SIZE
  };


