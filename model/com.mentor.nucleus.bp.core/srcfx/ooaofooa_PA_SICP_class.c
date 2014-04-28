/*----------------------------------------------------------------------------
 * File:  ooaofooa_PA_SICP_class.c
 *
 * Class:       Satisfaction In Component Package  (PA_SICP)
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
ooaofooa_PA_SICP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_PA_SICP * self = (ooaofooa_PA_SICP *) instance;
  /* Initialize application analysis class attributes.  */
  self->ComponentPackage_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Satisfaction_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_PA_SICP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_PA_SICP * ooaofooa_PA_SICP_instance = (ooaofooa_PA_SICP *) instance;
  ooaofooa_CP_CP * ooaofooa_CP_CPrelated_instance1 = ooaofooa_CP_CP_AnyWhere1( ooaofooa_PA_SICP_instance->ComponentPackage_ID );
  ooaofooa_C_SF * ooaofooa_C_SFrelated_instance2 = ooaofooa_C_SF_AnyWhere1( ooaofooa_PA_SICP_instance->Satisfaction_Id );
  if ( ooaofooa_CP_CPrelated_instance1 && ooaofooa_C_SFrelated_instance2 ) {
    ooaofooa_PA_SICP_R9001_Link( ooaofooa_C_SFrelated_instance2, ooaofooa_CP_CPrelated_instance1, ooaofooa_PA_SICP_instance );
  }
}


/*
 * RELATE C_SF TO CP_CP ACROSS R9001 USING PA_SICP
 */
void
ooaofooa_PA_SICP_R9001_Link( ooaofooa_C_SF * aone, ooaofooa_CP_CP * aoth, ooaofooa_PA_SICP * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Satisfaction_Id = aone->Id;
  assr->ComponentPackage_ID = aoth->Package_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->C_SF_R9001 = aone;
  assr->CP_CP_R9001 = aoth;
  aone->PA_SICP_R9001 = assr;
  Escher_SetInsertElement( &aoth->PA_SICP_R9001, assr );
}

/*
 * UNRELATE C_SF FROM CP_CP ACROSS R9001 USING PA_SICP
 */
void
ooaofooa_PA_SICP_R9001_Unlink( ooaofooa_C_SF * aone, ooaofooa_CP_CP * aoth, ooaofooa_PA_SICP * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->C_SF_R9001 = 0;
  assr->CP_CP_R9001 = 0;
  aone->PA_SICP_R9001 = 0;
  Escher_SetRemoveElement( &aoth->PA_SICP_R9001, assr );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_PA_SICP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_PA_SICP * self = (ooaofooa_PA_SICP *) instance;
  printf( "INSERT INTO PA_SICP VALUES ( %ld,%ld );\n",
    ((long)self->ComponentPackage_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Satisfaction_Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_PA_SICP_container[ ooaofooa_PA_SICP_MAX_EXTENT_SIZE ];
static ooaofooa_PA_SICP ooaofooa_PA_SICP_instances[ ooaofooa_PA_SICP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_PA_SICP_extent = {
  {0,0}, {0,0}, &ooaofooa_PA_SICP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_PA_SICP_instances,
  sizeof( ooaofooa_PA_SICP ), 0, ooaofooa_PA_SICP_MAX_EXTENT_SIZE
  };


