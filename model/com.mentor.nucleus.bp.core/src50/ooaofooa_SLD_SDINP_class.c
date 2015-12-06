/*----------------------------------------------------------------------------
 * File:  ooaofooa_SLD_SDINP_class.c
 *
 * Class:       System Datatype in Package  (SLD_SDINP)
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
ooaofooa_SLD_SDINP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SLD_SDINP * self = (ooaofooa_SLD_SDINP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Sys_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SLD_SDINP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SLD_SDINP * ooaofooa_SLD_SDINP_instance = (ooaofooa_SLD_SDINP *) instance;
  ooaofooa_S_DPK * ooaofooa_S_DPKrelated_instance1 = ooaofooa_S_DPK_AnyWhere1( ooaofooa_SLD_SDINP_instance->Package_ID );
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance2 = ooaofooa_S_DT_AnyWhere1( ooaofooa_SLD_SDINP_instance->DT_ID );
  if ( ooaofooa_S_DPKrelated_instance1 && ooaofooa_S_DTrelated_instance2 ) {
    ooaofooa_SLD_SDINP_R4401_Link( ooaofooa_S_DPKrelated_instance1, ooaofooa_S_DTrelated_instance2, ooaofooa_SLD_SDINP_instance );
  }
  {
  ooaofooa_S_SYS * ooaofooa_S_SYSrelated_instance1 = (ooaofooa_S_SYS *) Escher_instance_cache[ (intptr_t) ooaofooa_SLD_SDINP_instance->Sys_ID ];
  if ( ooaofooa_S_SYSrelated_instance1 ) {
    ooaofooa_SLD_SDINP_R4402_Link_is_system_of( ooaofooa_S_SYSrelated_instance1, ooaofooa_SLD_SDINP_instance );
  }
  }
}


/*
 * RELATE S_DPK TO S_DT ACROSS R4401 USING SLD_SDINP
 */
void
ooaofooa_SLD_SDINP_R4401_Link( ooaofooa_S_DPK * aone, ooaofooa_S_DT * aoth, ooaofooa_SLD_SDINP * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Package_ID = aone->Package_ID;
  assr->DT_ID = aoth->DT_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->S_DPK_R4401_can_show_in_lower_package = aone;
  assr->S_DT_R4401_may_show = aoth;
  Escher_SetInsertElement( &aone->SLD_SDINP_R4401, assr );
  Escher_SetInsertElement( &aoth->SLD_SDINP_R4401, assr );
}

/*
 * UNRELATE S_DPK FROM S_DT ACROSS R4401 USING SLD_SDINP
 */
void
ooaofooa_SLD_SDINP_R4401_Unlink( ooaofooa_S_DPK * aone, ooaofooa_S_DT * aoth, ooaofooa_SLD_SDINP * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->S_DPK_R4401_can_show_in_lower_package = 0;
  assr->S_DT_R4401_may_show = 0;
  Escher_SetRemoveElement( &aone->SLD_SDINP_R4401, assr );
  Escher_SetRemoveElement( &aoth->SLD_SDINP_R4401, assr );
}

/*
 * RELATE S_SYS TO SLD_SDINP ACROSS R4402
 */
void
ooaofooa_SLD_SDINP_R4402_Link_is_system_of( ooaofooa_S_SYS * part, ooaofooa_SLD_SDINP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sys_ID = part->Sys_ID;
  form->S_SYS_R4402_is_datatype_in = part;
  Escher_SetInsertElement( &part->SLD_SDINP_R4402_is_system_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SYS FROM SLD_SDINP ACROSS R4402
 */
void
ooaofooa_SLD_SDINP_R4402_Unlink_is_system_of( ooaofooa_S_SYS * part, ooaofooa_SLD_SDINP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sys_ID = 0;
  form->S_SYS_R4402_is_datatype_in = 0;
  Escher_SetRemoveElement( &part->SLD_SDINP_R4402_is_system_of, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SLD_SDINP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SLD_SDINP * self = (ooaofooa_SLD_SDINP *) instance;
  printf( "INSERT INTO SLD_SDINP VALUES ( %ld,%ld,%ld );\n",
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Sys_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SLD_SDINP_container[ ooaofooa_SLD_SDINP_MAX_EXTENT_SIZE ];
static ooaofooa_SLD_SDINP ooaofooa_SLD_SDINP_instances[ ooaofooa_SLD_SDINP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SLD_SDINP_extent = {
  {0,0}, {0,0}, &ooaofooa_SLD_SDINP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SLD_SDINP_instances,
  sizeof( ooaofooa_SLD_SDINP ), 0, ooaofooa_SLD_SDINP_MAX_EXTENT_SIZE
  };


