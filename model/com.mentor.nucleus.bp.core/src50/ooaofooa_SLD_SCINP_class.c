/*----------------------------------------------------------------------------
 * File:  ooaofooa_SLD_SCINP_class.c
 *
 * Class:       System Constant in Package  (SLD_SCINP)
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
ooaofooa_SLD_SCINP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SLD_SCINP * self = (ooaofooa_SLD_SCINP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Sys_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Constant_Spec_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SLD_SCINP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SLD_SCINP * ooaofooa_SLD_SCINP_instance = (ooaofooa_SLD_SCINP *) instance;
  ooaofooa_S_SYS * ooaofooa_S_SYSrelated_instance1 = (ooaofooa_S_SYS *) Escher_instance_cache[ (intptr_t) ooaofooa_SLD_SCINP_instance->Sys_ID ];
  if ( ooaofooa_S_SYSrelated_instance1 ) {
    ooaofooa_SLD_SCINP_R4404_Link_is_system_of( ooaofooa_S_SYSrelated_instance1, ooaofooa_SLD_SCINP_instance );
  }
  {
  ooaofooa_S_DPK * ooaofooa_S_DPKrelated_instance1 = ooaofooa_S_DPK_AnyWhere1( ooaofooa_SLD_SCINP_instance->Package_ID );
  ooaofooa_CNST_CSP * ooaofooa_CNST_CSPrelated_instance2 = ooaofooa_CNST_CSP_AnyWhere1( ooaofooa_SLD_SCINP_instance->Constant_Spec_ID );
  if ( ooaofooa_S_DPKrelated_instance1 && ooaofooa_CNST_CSPrelated_instance2 ) {
    ooaofooa_SLD_SCINP_R4403_Link( ooaofooa_S_DPKrelated_instance1, ooaofooa_CNST_CSPrelated_instance2, ooaofooa_SLD_SCINP_instance );
  }
  }
}


/*
 * RELATE S_DPK TO CNST_CSP ACROSS R4403 USING SLD_SCINP
 */
void
ooaofooa_SLD_SCINP_R4403_Link( ooaofooa_S_DPK * aone, ooaofooa_CNST_CSP * aoth, ooaofooa_SLD_SCINP * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Package_ID = aone->Package_ID;
  assr->Constant_Spec_ID = aoth->Constant_Spec_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->S_DPK_R4403_can_show_in_lower_package = aone;
  assr->CNST_CSP_R4403_may_show = aoth;
  Escher_SetInsertElement( &aone->SLD_SCINP_R4403, assr );
  Escher_SetInsertElement( &aoth->SLD_SCINP_R4403, assr );
}

/*
 * UNRELATE S_DPK FROM CNST_CSP ACROSS R4403 USING SLD_SCINP
 */
void
ooaofooa_SLD_SCINP_R4403_Unlink( ooaofooa_S_DPK * aone, ooaofooa_CNST_CSP * aoth, ooaofooa_SLD_SCINP * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->S_DPK_R4403_can_show_in_lower_package = 0;
  assr->CNST_CSP_R4403_may_show = 0;
  Escher_SetRemoveElement( &aone->SLD_SCINP_R4403, assr );
  Escher_SetRemoveElement( &aoth->SLD_SCINP_R4403, assr );
}

/*
 * RELATE S_SYS TO SLD_SCINP ACROSS R4404
 */
void
ooaofooa_SLD_SCINP_R4404_Link_is_system_of( ooaofooa_S_SYS * part, ooaofooa_SLD_SCINP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sys_ID = part->Sys_ID;
  form->S_SYS_R4404_is_constant_in = part;
  Escher_SetInsertElement( &part->SLD_SCINP_R4404_is_system_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SYS FROM SLD_SCINP ACROSS R4404
 */
void
ooaofooa_SLD_SCINP_R4404_Unlink_is_system_of( ooaofooa_S_SYS * part, ooaofooa_SLD_SCINP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sys_ID = 0;
  form->S_SYS_R4404_is_constant_in = 0;
  Escher_SetRemoveElement( &part->SLD_SCINP_R4404_is_system_of, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SLD_SCINP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SLD_SCINP * self = (ooaofooa_SLD_SCINP *) instance;
  printf( "INSERT INTO SLD_SCINP VALUES ( %ld,%ld,%ld );\n",
    ((long)self->Sys_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Constant_Spec_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SLD_SCINP_container[ ooaofooa_SLD_SCINP_MAX_EXTENT_SIZE ];
static ooaofooa_SLD_SCINP ooaofooa_SLD_SCINP_instances[ ooaofooa_SLD_SCINP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SLD_SCINP_extent = {
  {0,0}, {0,0}, &ooaofooa_SLD_SCINP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SLD_SCINP_instances,
  sizeof( ooaofooa_SLD_SCINP ), 0, ooaofooa_SLD_SCINP_MAX_EXTENT_SIZE
  };


