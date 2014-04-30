/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_DIS_class.c
 *
 * Class:       Datatype In Suppression  (S_DIS)
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
ooaofooa_S_DIS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_DIS * self = (ooaofooa_S_DIS *) instance;
  /* Initialize application analysis class attributes.  */
  self->Dom_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_DIS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_DIS * ooaofooa_S_DIS_instance = (ooaofooa_S_DIS *) instance;
  ooaofooa_S_DOM * ooaofooa_S_DOMrelated_instance1 = (ooaofooa_S_DOM *) Escher_instance_cache[ (intptr_t) ooaofooa_S_DIS_instance->Dom_ID ];
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance2 = ooaofooa_S_DT_AnyWhere1( ooaofooa_S_DIS_instance->DT_ID );
  if ( ooaofooa_S_DOMrelated_instance1 && ooaofooa_S_DTrelated_instance2 ) {
    ooaofooa_S_DIS_R47_Link( ooaofooa_S_DOMrelated_instance1, ooaofooa_S_DTrelated_instance2, ooaofooa_S_DIS_instance );
  }
}


/*
 * RELATE S_DOM TO S_DT ACROSS R47 USING S_DIS
 */
void
ooaofooa_S_DIS_R47_Link( ooaofooa_S_DOM * aone, ooaofooa_S_DT * aoth, ooaofooa_S_DIS * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Dom_ID = aone->Dom_ID;
  assr->DT_ID = aoth->DT_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->S_DOM_R47_is_suppressed_in = aone;
  assr->S_DT_R47_contains_suppressed = aoth;
  Escher_SetInsertElement( &aone->S_DIS_R47, assr );
  Escher_SetInsertElement( &aoth->S_DIS_R47, assr );
}

/*
 * UNRELATE S_DOM FROM S_DT ACROSS R47 USING S_DIS
 */
void
ooaofooa_S_DIS_R47_Unlink( ooaofooa_S_DOM * aone, ooaofooa_S_DT * aoth, ooaofooa_S_DIS * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->S_DOM_R47_is_suppressed_in = 0;
  assr->S_DT_R47_contains_suppressed = 0;
  Escher_SetRemoveElement( &aone->S_DIS_R47, assr );
  Escher_SetRemoveElement( &aoth->S_DIS_R47, assr );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_DIS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_DIS * self = (ooaofooa_S_DIS *) instance;
  printf( "INSERT INTO S_DIS VALUES ( %ld,%ld );\n",
    ((long)self->Dom_ID & ESCHER_IDDUMP_MASK),
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_DIS_container[ ooaofooa_S_DIS_MAX_EXTENT_SIZE ];
static ooaofooa_S_DIS ooaofooa_S_DIS_instances[ ooaofooa_S_DIS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_DIS_extent = {
  {0,0}, {0,0}, &ooaofooa_S_DIS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_DIS_instances,
  sizeof( ooaofooa_S_DIS ), 0, ooaofooa_S_DIS_MAX_EXTENT_SIZE
  };


