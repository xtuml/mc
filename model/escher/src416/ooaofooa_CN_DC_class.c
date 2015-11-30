/*----------------------------------------------------------------------------
 * File:  ooaofooa_CN_DC_class.c
 *
 * Class:       Domain As Component  (CN_DC)
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
ooaofooa_CN_DC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CN_DC * self = (ooaofooa_CN_DC *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Dom_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CN_DC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CN_DC * ooaofooa_CN_DC_instance = (ooaofooa_CN_DC *) instance;
  ooaofooa_S_DOM * ooaofooa_S_DOMrelated_instance1 = (ooaofooa_S_DOM *) Escher_instance_cache[ (intptr_t) ooaofooa_CN_DC_instance->Dom_ID ];
  ooaofooa_C_C * ooaofooa_C_Crelated_instance2 = ooaofooa_C_C_AnyWhere1( ooaofooa_CN_DC_instance->Id );
  if ( ooaofooa_S_DOMrelated_instance1 && ooaofooa_C_Crelated_instance2 ) {
    ooaofooa_CN_DC_R4204_Link( ooaofooa_C_Crelated_instance2, ooaofooa_S_DOMrelated_instance1, ooaofooa_CN_DC_instance );
  }
}


/*
 * RELATE C_C TO S_DOM ACROSS R4204 USING CN_DC
 */
void
ooaofooa_CN_DC_R4204_Link( ooaofooa_C_C * aone, ooaofooa_S_DOM * aoth, ooaofooa_CN_DC * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Id = aone->Id;
  assr->Dom_ID = aoth->Dom_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->C_C_R4204_defined_subject_matter_for = aone;
  assr->S_DOM_R4204_has_subject_matter_of = aoth;
  aone->CN_DC_R4204 = assr;
  aoth->CN_DC_R4204 = assr;
}

/*
 * UNRELATE C_C FROM S_DOM ACROSS R4204 USING CN_DC
 */
void
ooaofooa_CN_DC_R4204_Unlink( ooaofooa_C_C * aone, ooaofooa_S_DOM * aoth, ooaofooa_CN_DC * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->C_C_R4204_defined_subject_matter_for = 0;
  assr->S_DOM_R4204_has_subject_matter_of = 0;
  aone->CN_DC_R4204 = 0;
  aoth->CN_DC_R4204 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CN_DC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CN_DC * self = (ooaofooa_CN_DC *) instance;
  printf( "INSERT INTO CN_DC VALUES ( %ld,%ld );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->Dom_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CN_DC_container[ ooaofooa_CN_DC_MAX_EXTENT_SIZE ];
static ooaofooa_CN_DC ooaofooa_CN_DC_instances[ ooaofooa_CN_DC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CN_DC_extent = {
  {0,0}, {0,0}, &ooaofooa_CN_DC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CN_DC_instances,
  sizeof( ooaofooa_CN_DC ), 0, ooaofooa_CN_DC_MAX_EXTENT_SIZE
  };


