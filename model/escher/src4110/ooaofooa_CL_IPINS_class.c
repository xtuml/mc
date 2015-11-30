/*----------------------------------------------------------------------------
 * File:  ooaofooa_CL_IPINS_class.c
 *
 * Class:       Imported Provision In Satisfaction  (CL_IPINS)
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
ooaofooa_CL_IPINS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CL_IPINS * self = (ooaofooa_CL_IPINS *) instance;
  /* Initialize application analysis class attributes.  */
  self->Satisfaction_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->ImportedProvision_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CL_IPINS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CL_IPINS * ooaofooa_CL_IPINS_instance = (ooaofooa_CL_IPINS *) instance;
  ooaofooa_C_SF * ooaofooa_C_SFrelated_instance1 = ooaofooa_C_SF_AnyWhere1( ooaofooa_CL_IPINS_instance->Satisfaction_Id );
  ooaofooa_CL_IP * ooaofooa_CL_IPrelated_instance2 = ooaofooa_CL_IP_AnyWhere1( ooaofooa_CL_IPINS_instance->ImportedProvision_Id );
  if ( ooaofooa_C_SFrelated_instance1 && ooaofooa_CL_IPrelated_instance2 ) {
    ooaofooa_CL_IPINS_R4705_Link( ooaofooa_C_SFrelated_instance1, ooaofooa_CL_IPrelated_instance2, ooaofooa_CL_IPINS_instance );
  }
}


/*
 * RELATE C_SF TO CL_IP ACROSS R4705 USING CL_IPINS
 */
void
ooaofooa_CL_IPINS_R4705_Link( ooaofooa_C_SF * aone, ooaofooa_CL_IP * aoth, ooaofooa_CL_IPINS * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Satisfaction_Id = aone->Id;
  assr->ImportedProvision_Id = aoth->Id;
  /* Initialize optimized relationship storage extended attributes */
  assr->C_SF_R4705_provides_satisfaction_through = aone;
  assr->CL_IP_R4705_satisfaction_made_with = aoth;
  aone->CL_IPINS_R4705 = assr;
  Escher_SetInsertElement( &aoth->CL_IPINS_R4705, assr );
}

/*
 * UNRELATE C_SF FROM CL_IP ACROSS R4705 USING CL_IPINS
 */
void
ooaofooa_CL_IPINS_R4705_Unlink( ooaofooa_C_SF * aone, ooaofooa_CL_IP * aoth, ooaofooa_CL_IPINS * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->C_SF_R4705_provides_satisfaction_through = 0;
  assr->CL_IP_R4705_satisfaction_made_with = 0;
  aone->CL_IPINS_R4705 = 0;
  Escher_SetRemoveElement( &aoth->CL_IPINS_R4705, assr );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CL_IPINS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CL_IPINS * self = (ooaofooa_CL_IPINS *) instance;
  printf( "INSERT INTO CL_IPINS VALUES ( %ld,%ld );\n",
    ((long)self->Satisfaction_Id & ESCHER_IDDUMP_MASK),
    ((long)self->ImportedProvision_Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CL_IPINS_container[ ooaofooa_CL_IPINS_MAX_EXTENT_SIZE ];
static ooaofooa_CL_IPINS ooaofooa_CL_IPINS_instances[ ooaofooa_CL_IPINS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CL_IPINS_extent = {
  {0,0}, {0,0}, &ooaofooa_CL_IPINS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CL_IPINS_instances,
  sizeof( ooaofooa_CL_IPINS ), 0, ooaofooa_CL_IPINS_MAX_EXTENT_SIZE
  };


