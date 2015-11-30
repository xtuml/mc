/*----------------------------------------------------------------------------
 * File:  ooaofooa_SPR_REP_class.c
 *
 * Class:       Required Executable Property  (SPR_REP)
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
ooaofooa_SPR_REP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SPR_REP * self = (ooaofooa_SPR_REP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Id;
  self->ExecutableProperty_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Requirement_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SPR_REP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SPR_REP * ooaofooa_SPR_REP_instance = (ooaofooa_SPR_REP *) instance;
  ooaofooa_C_R * ooaofooa_C_Rrelated_instance1 = ooaofooa_C_R_AnyWhere1( ooaofooa_SPR_REP_instance->Requirement_Id );
  ooaofooa_C_EP * ooaofooa_C_EPrelated_instance2 = (ooaofooa_C_EP *) Escher_instance_cache[ (intptr_t) ooaofooa_SPR_REP_instance->ExecutableProperty_Id ];
  if ( ooaofooa_C_Rrelated_instance1 && ooaofooa_C_EPrelated_instance2 ) {
    ooaofooa_SPR_REP_R4500_Link( ooaofooa_C_EPrelated_instance2, ooaofooa_C_Rrelated_instance1, ooaofooa_SPR_REP_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SPR_REP *
ooaofooa_SPR_REP_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_SPR_REP * w; 
  Escher_Iterator_s iter_SPR_REP;
  Escher_IteratorReset( &iter_SPR_REP, &pG_ooaofooa_SPR_REP_extent.active );
  while ( (w = (ooaofooa_SPR_REP *) Escher_IteratorNext( &iter_SPR_REP )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE C_EP TO C_R ACROSS R4500 USING SPR_REP
 */
void
ooaofooa_SPR_REP_R4500_Link( ooaofooa_C_EP * aone, ooaofooa_C_R * aoth, ooaofooa_SPR_REP * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->ExecutableProperty_Id = aone->Id;
  assr->Requirement_Id = aoth->Requirement_Id;
  /* Initialize optimized relationship storage extended attributes */
  assr->C_EP_R4500_implements = aone;
  assr->C_R_R4500_is_implemented_by = aoth;
  Escher_SetInsertElement( &aone->SPR_REP_R4500, assr );
  Escher_SetInsertElement( &aoth->SPR_REP_R4500, assr );
}

/*
 * UNRELATE C_EP FROM C_R ACROSS R4500 USING SPR_REP
 */
void
ooaofooa_SPR_REP_R4500_Unlink( ooaofooa_C_EP * aone, ooaofooa_C_R * aoth, ooaofooa_SPR_REP * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->ExecutableProperty_Id = 0;
  assr->Requirement_Id = 0;
  assr->C_EP_R4500_implements = 0;
  assr->C_R_R4500_is_implemented_by = 0;
  Escher_SetRemoveElement( &aone->SPR_REP_R4500, assr );
  Escher_SetRemoveElement( &aoth->SPR_REP_R4500, assr );
}

/* Accessors to SPR_REP[R4502] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SPR_REP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SPR_REP * self = (ooaofooa_SPR_REP *) instance;
  printf( "INSERT INTO SPR_REP VALUES ( %ld,%ld,%ld );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->ExecutableProperty_Id & ESCHER_IDDUMP_MASK),
    ((long)self->Requirement_Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SPR_REP_container[ ooaofooa_SPR_REP_MAX_EXTENT_SIZE ];
static ooaofooa_SPR_REP ooaofooa_SPR_REP_instances[ ooaofooa_SPR_REP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SPR_REP_extent = {
  {0,0}, {0,0}, &ooaofooa_SPR_REP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SPR_REP_instances,
  sizeof( ooaofooa_SPR_REP ), 0, ooaofooa_SPR_REP_MAX_EXTENT_SIZE
  };


