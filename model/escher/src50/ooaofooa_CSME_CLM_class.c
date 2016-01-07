/*----------------------------------------------------------------------------
 * File:  ooaofooa_CSME_CLM_class.c
 *
 * Class:       Class Monitor  (CSME_CLM)
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
ooaofooa_CSME_CLM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CSME_CLM * self = (ooaofooa_CSME_CLM *) instance;
  /* Initialize application analysis class attributes.  */
  self->Execution_Engine_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->CIE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CSME_CLM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CSME_CLM * ooaofooa_CSME_CLM_instance = (ooaofooa_CSME_CLM *) instance;
  ooaofooa_I_EXE * ooaofooa_I_EXErelated_instance1 = (ooaofooa_I_EXE *) Escher_instance_cache[ (intptr_t) ooaofooa_CSME_CLM_instance->Execution_Engine_ID ];
  ooaofooa_CSME_CIE * ooaofooa_CSME_CIErelated_instance2 = (ooaofooa_CSME_CIE *) Escher_instance_cache[ (intptr_t) ooaofooa_CSME_CLM_instance->CIE_ID ];
  if ( ooaofooa_I_EXErelated_instance1 && ooaofooa_CSME_CIErelated_instance2 ) {
    ooaofooa_CSME_CLM_R2950_Link( ooaofooa_CSME_CIErelated_instance2, ooaofooa_I_EXErelated_instance1, ooaofooa_CSME_CLM_instance );
  }
}


/*
 * RELATE CSME_CIE TO I_EXE ACROSS R2950 USING CSME_CLM
 */
void
ooaofooa_CSME_CLM_R2950_Link( ooaofooa_CSME_CIE * aone, ooaofooa_I_EXE * aoth, ooaofooa_CSME_CLM * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->CIE_ID = aone->CIE_ID;
  assr->Execution_Engine_ID = aoth->Execution_Engine_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->CSME_CIE_R2950_monitors = aone;
  assr->I_EXE_R2950_monitored_by = aoth;
  aone->CSME_CLM_R2950 = assr;
  Escher_SetInsertElement( &aoth->CSME_CLM_R2950, assr );
}

/*
 * UNRELATE CSME_CIE FROM I_EXE ACROSS R2950 USING CSME_CLM
 */
void
ooaofooa_CSME_CLM_R2950_Unlink( ooaofooa_CSME_CIE * aone, ooaofooa_I_EXE * aoth, ooaofooa_CSME_CLM * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->CSME_CIE_R2950_monitors = 0;
  assr->I_EXE_R2950_monitored_by = 0;
  aone->CSME_CLM_R2950 = 0;
  Escher_SetRemoveElement( &aoth->CSME_CLM_R2950, assr );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CSME_CLM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CSME_CLM * self = (ooaofooa_CSME_CLM *) instance;
  printf( "INSERT INTO CSME_CLM VALUES ( %ld,%ld );\n",
    ((long)self->Execution_Engine_ID & ESCHER_IDDUMP_MASK),
    ((long)self->CIE_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CSME_CLM_container[ ooaofooa_CSME_CLM_MAX_EXTENT_SIZE ];
static ooaofooa_CSME_CLM ooaofooa_CSME_CLM_instances[ ooaofooa_CSME_CLM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CSME_CLM_extent = {
  {0,0}, {0,0}, &ooaofooa_CSME_CLM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CSME_CLM_instances,
  sizeof( ooaofooa_CSME_CLM ), 0, ooaofooa_CSME_CLM_MAX_EXTENT_SIZE
  };


