/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_RID_class.c
 *
 * Class:       Interface Reference In Delegation  (C_RID)
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
ooaofooa_C_RID_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_C_RID * self = (ooaofooa_C_RID *) instance;
  /* Initialize application analysis class attributes.  */
  self->Reference_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Delegation_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_C_RID_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_C_RID * ooaofooa_C_RID_instance = (ooaofooa_C_RID *) instance;
  ooaofooa_C_IR * ooaofooa_C_IRrelated_instance1 = (ooaofooa_C_IR *) Escher_instance_cache[ (intptr_t) ooaofooa_C_RID_instance->Reference_Id ];
  ooaofooa_C_DG * ooaofooa_C_DGrelated_instance2 = ooaofooa_C_DG_AnyWhere1( ooaofooa_C_RID_instance->Delegation_Id );
  if ( ooaofooa_C_IRrelated_instance1 && ooaofooa_C_DGrelated_instance2 ) {
    ooaofooa_C_RID_R4013_Link( ooaofooa_C_IRrelated_instance1, ooaofooa_C_DGrelated_instance2, ooaofooa_C_RID_instance );
  }
}


/*
 * RELATE C_IR TO C_DG ACROSS R4013 USING C_RID
 */
void
ooaofooa_C_RID_R4013_Link( ooaofooa_C_IR * aone, ooaofooa_C_DG * aoth, ooaofooa_C_RID * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Reference_Id = aone->Id;
  assr->Delegation_Id = aoth->Id;
  /* Initialize optimized relationship storage extended attributes */
  assr->C_IR_R4013_handles_delegation_for = aone;
  assr->C_DG_R4013_may_delegate_through = aoth;
  Escher_SetInsertElement( &aone->C_RID_R4013, assr );
  Escher_SetInsertElement( &aoth->C_RID_R4013, assr );
}

/*
 * UNRELATE C_IR FROM C_DG ACROSS R4013 USING C_RID
 */
void
ooaofooa_C_RID_R4013_Unlink( ooaofooa_C_IR * aone, ooaofooa_C_DG * aoth, ooaofooa_C_RID * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->C_IR_R4013_handles_delegation_for = 0;
  assr->C_DG_R4013_may_delegate_through = 0;
  Escher_SetRemoveElement( &aone->C_RID_R4013, assr );
  Escher_SetRemoveElement( &aoth->C_RID_R4013, assr );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_C_RID_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_C_RID * self = (ooaofooa_C_RID *) instance;
  printf( "INSERT INTO C_RID VALUES ( %ld,%ld );\n",
    ((long)self->Reference_Id & ESCHER_IDDUMP_MASK),
    ((long)self->Delegation_Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_C_RID_container[ ooaofooa_C_RID_MAX_EXTENT_SIZE ];
static ooaofooa_C_RID ooaofooa_C_RID_instances[ ooaofooa_C_RID_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_C_RID_extent = {
  {0,0}, {0,0}, &ooaofooa_C_RID_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_C_RID_instances,
  sizeof( ooaofooa_C_RID ), 0, ooaofooa_C_RID_MAX_EXTENT_SIZE
  };


