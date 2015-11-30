/*----------------------------------------------------------------------------
 * File:  ooaofooa_CNST_CIP_class.c
 *
 * Class:       Constant in Package  (CNST_CIP)
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
ooaofooa_CNST_CIP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CNST_CIP * self = (ooaofooa_CNST_CIP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Constant_Spec_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CNST_CIP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CNST_CIP * ooaofooa_CNST_CIP_instance = (ooaofooa_CNST_CIP *) instance;
  ooaofooa_S_DPK * ooaofooa_S_DPKrelated_instance1 = ooaofooa_S_DPK_AnyWhere1( ooaofooa_CNST_CIP_instance->Package_ID );
  ooaofooa_CNST_CSP * ooaofooa_CNST_CSPrelated_instance2 = ooaofooa_CNST_CSP_AnyWhere1( ooaofooa_CNST_CIP_instance->Constant_Spec_ID );
  if ( ooaofooa_S_DPKrelated_instance1 && ooaofooa_CNST_CSPrelated_instance2 ) {
    ooaofooa_CNST_CIP_R1506_Link( ooaofooa_CNST_CSPrelated_instance2, ooaofooa_S_DPKrelated_instance1, ooaofooa_CNST_CIP_instance );
  }
}


/*
 * RELATE CNST_CSP TO S_DPK ACROSS R1506 USING CNST_CIP
 */
void
ooaofooa_CNST_CIP_R1506_Link( ooaofooa_CNST_CSP * aone, ooaofooa_S_DPK * aoth, ooaofooa_CNST_CIP * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Constant_Spec_ID = aone->Constant_Spec_ID;
  assr->Package_ID = aoth->Package_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->CNST_CSP_R1506_contains = aone;
  assr->S_DPK_R1506_is_contained_in = aoth;
  aone->CNST_CIP_R1506 = assr;
  Escher_SetInsertElement( &aoth->CNST_CIP_R1506, assr );
}

/*
 * UNRELATE CNST_CSP FROM S_DPK ACROSS R1506 USING CNST_CIP
 */
void
ooaofooa_CNST_CIP_R1506_Unlink( ooaofooa_CNST_CSP * aone, ooaofooa_S_DPK * aoth, ooaofooa_CNST_CIP * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->CNST_CSP_R1506_contains = 0;
  assr->S_DPK_R1506_is_contained_in = 0;
  aone->CNST_CIP_R1506 = 0;
  Escher_SetRemoveElement( &aoth->CNST_CIP_R1506, assr );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CNST_CIP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CNST_CIP * self = (ooaofooa_CNST_CIP *) instance;
  printf( "INSERT INTO CNST_CIP VALUES ( %ld,%ld );\n",
    ((long)self->Constant_Spec_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CNST_CIP_container[ ooaofooa_CNST_CIP_MAX_EXTENT_SIZE ];
static ooaofooa_CNST_CIP ooaofooa_CNST_CIP_instances[ ooaofooa_CNST_CIP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CNST_CIP_extent = {
  {0,0}, {0,0}, &ooaofooa_CNST_CIP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CNST_CIP_instances,
  sizeof( ooaofooa_CNST_CIP ), 0, ooaofooa_CNST_CIP_MAX_EXTENT_SIZE
  };


