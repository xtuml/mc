/*----------------------------------------------------------------------------
 * File:  ooaofooa_SPR_PEP_class.c
 *
 * Class:       Provided Executable Property  (SPR_PEP)
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
ooaofooa_SPR_PEP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SPR_PEP * self = (ooaofooa_SPR_PEP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Id;
  self->ExecutableProperty_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Provision_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SPR_PEP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SPR_PEP * ooaofooa_SPR_PEP_instance = (ooaofooa_SPR_PEP *) instance;
  ooaofooa_C_P * ooaofooa_C_Prelated_instance1 = ooaofooa_C_P_AnyWhere1( ooaofooa_SPR_PEP_instance->Provision_Id );
  ooaofooa_C_EP * ooaofooa_C_EPrelated_instance2 = (ooaofooa_C_EP *) Escher_instance_cache[ (intptr_t) ooaofooa_SPR_PEP_instance->ExecutableProperty_Id ];
  if ( ooaofooa_C_Prelated_instance1 && ooaofooa_C_EPrelated_instance2 ) {
    ooaofooa_SPR_PEP_R4501_Link( ooaofooa_C_EPrelated_instance2, ooaofooa_C_Prelated_instance1, ooaofooa_SPR_PEP_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SPR_PEP *
ooaofooa_SPR_PEP_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_SPR_PEP * w; 
  Escher_Iterator_s iter_SPR_PEP;
  Escher_IteratorReset( &iter_SPR_PEP, &pG_ooaofooa_SPR_PEP_extent.active );
  while ( (w = (ooaofooa_SPR_PEP *) Escher_IteratorNext( &iter_SPR_PEP )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE C_EP TO C_P ACROSS R4501 USING SPR_PEP
 */
void
ooaofooa_SPR_PEP_R4501_Link( ooaofooa_C_EP * aone, ooaofooa_C_P * aoth, ooaofooa_SPR_PEP * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->ExecutableProperty_Id = aone->Id;
  assr->Provision_Id = aoth->Provision_Id;
  /* Initialize optimized relationship storage extended attributes */
  assr->C_EP_R4501_implements = aone;
  assr->C_P_R4501_is_implemented_by = aoth;
  Escher_SetInsertElement( &aone->SPR_PEP_R4501, assr );
  Escher_SetInsertElement( &aoth->SPR_PEP_R4501, assr );
}

/*
 * UNRELATE C_EP FROM C_P ACROSS R4501 USING SPR_PEP
 */
void
ooaofooa_SPR_PEP_R4501_Unlink( ooaofooa_C_EP * aone, ooaofooa_C_P * aoth, ooaofooa_SPR_PEP * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->ExecutableProperty_Id = 0;
  assr->Provision_Id = 0;
  assr->C_EP_R4501_implements = 0;
  assr->C_P_R4501_is_implemented_by = 0;
  Escher_SetRemoveElement( &aone->SPR_PEP_R4501, assr );
  Escher_SetRemoveElement( &aoth->SPR_PEP_R4501, assr );
}

/* Accessors to SPR_PEP[R4503] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SPR_PEP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SPR_PEP * self = (ooaofooa_SPR_PEP *) instance;
  printf( "INSERT INTO SPR_PEP VALUES ( %ld,%ld,%ld );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->ExecutableProperty_Id & ESCHER_IDDUMP_MASK),
    ((long)self->Provision_Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SPR_PEP_container[ ooaofooa_SPR_PEP_MAX_EXTENT_SIZE ];
static ooaofooa_SPR_PEP ooaofooa_SPR_PEP_instances[ ooaofooa_SPR_PEP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SPR_PEP_extent = {
  {0,0}, {0,0}, &ooaofooa_SPR_PEP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SPR_PEP_instances,
  sizeof( ooaofooa_SPR_PEP ), 0, ooaofooa_SPR_PEP_MAX_EXTENT_SIZE
  };


