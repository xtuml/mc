/*----------------------------------------------------------------------------
 * File:  ooaofooa_PL_FPID_class.c
 *
 * Class:       Function Package in Domain  (PL_FPID)
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
ooaofooa_PL_FPID_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_PL_FPID * self = (ooaofooa_PL_FPID *) instance;
  /* Initialize application analysis class attributes.  */
  self->FunPack_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Dom_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_PL_FPID_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_PL_FPID * ooaofooa_PL_FPID_instance = (ooaofooa_PL_FPID *) instance;
  ooaofooa_S_FPK * ooaofooa_S_FPKrelated_instance1 = (ooaofooa_S_FPK *) Escher_instance_cache[ (intptr_t) ooaofooa_PL_FPID_instance->FunPack_ID ];
  ooaofooa_S_DOM * ooaofooa_S_DOMrelated_instance2 = (ooaofooa_S_DOM *) Escher_instance_cache[ (intptr_t) ooaofooa_PL_FPID_instance->Dom_ID ];
  if ( ooaofooa_S_FPKrelated_instance1 && ooaofooa_S_DOMrelated_instance2 ) {
    ooaofooa_PL_FPID_R301_Link( ooaofooa_S_FPKrelated_instance1, ooaofooa_S_DOMrelated_instance2, ooaofooa_PL_FPID_instance );
  }
}


/*
 * RELATE S_FPK TO S_DOM ACROSS R301 USING PL_FPID
 */
void
ooaofooa_PL_FPID_R301_Link( ooaofooa_S_FPK * aone, ooaofooa_S_DOM * aoth, ooaofooa_PL_FPID * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->FunPack_ID = aone->FunPack_ID;
  assr->Dom_ID = aoth->Dom_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->S_FPK_R301_contains = aone;
  assr->S_DOM_R301_is_container = aoth;
  aone->PL_FPID_R301 = assr;
  Escher_SetInsertElement( &aoth->PL_FPID_R301, assr );
}

/*
 * UNRELATE S_FPK FROM S_DOM ACROSS R301 USING PL_FPID
 */
void
ooaofooa_PL_FPID_R301_Unlink( ooaofooa_S_FPK * aone, ooaofooa_S_DOM * aoth, ooaofooa_PL_FPID * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->S_FPK_R301_contains = 0;
  assr->S_DOM_R301_is_container = 0;
  aone->PL_FPID_R301 = 0;
  Escher_SetRemoveElement( &aoth->PL_FPID_R301, assr );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_PL_FPID_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_PL_FPID * self = (ooaofooa_PL_FPID *) instance;
  printf( "INSERT INTO PL_FPID VALUES ( %ld,%ld );\n",
    ((long)self->FunPack_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Dom_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_PL_FPID_container[ ooaofooa_PL_FPID_MAX_EXTENT_SIZE ];
static ooaofooa_PL_FPID ooaofooa_PL_FPID_instances[ ooaofooa_PL_FPID_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_PL_FPID_extent = {
  {0,0}, {0,0}, &ooaofooa_PL_FPID_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_PL_FPID_instances,
  sizeof( ooaofooa_PL_FPID ), 0, ooaofooa_PL_FPID_MAX_EXTENT_SIZE
  };


