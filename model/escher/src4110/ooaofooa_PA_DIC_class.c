/*----------------------------------------------------------------------------
 * File:  ooaofooa_PA_DIC_class.c
 *
 * Class:       Delegation In Component  (PA_DIC)
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
ooaofooa_PA_DIC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_PA_DIC * self = (ooaofooa_PA_DIC *) instance;
  /* Initialize application analysis class attributes.  */
  self->Component_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Delegation_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_PA_DIC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_PA_DIC * ooaofooa_PA_DIC_instance = (ooaofooa_PA_DIC *) instance;
  ooaofooa_C_DG * ooaofooa_C_DGrelated_instance1 = ooaofooa_C_DG_AnyWhere1( ooaofooa_PA_DIC_instance->Delegation_Id );
  ooaofooa_C_C * ooaofooa_C_Crelated_instance2 = ooaofooa_C_C_AnyWhere1( ooaofooa_PA_DIC_instance->Component_Id );
  if ( ooaofooa_C_DGrelated_instance1 && ooaofooa_C_Crelated_instance2 ) {
    ooaofooa_PA_DIC_R9002_Link( ooaofooa_C_Crelated_instance2, ooaofooa_C_DGrelated_instance1, ooaofooa_PA_DIC_instance );
  }
}


/*
 * RELATE C_C TO C_DG ACROSS R9002 USING PA_DIC
 */
void
ooaofooa_PA_DIC_R9002_Link( ooaofooa_C_C * aone, ooaofooa_C_DG * aoth, ooaofooa_PA_DIC * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Component_Id = aone->Id;
  assr->Delegation_Id = aoth->Id;
  /* Initialize optimized relationship storage extended attributes */
  assr->C_C_R9002 = aone;
  assr->C_DG_R9002 = aoth;
  Escher_SetInsertElement( &aone->PA_DIC_R9002, assr );
  aoth->PA_DIC_R9002 = assr;
}

/*
 * UNRELATE C_C FROM C_DG ACROSS R9002 USING PA_DIC
 */
void
ooaofooa_PA_DIC_R9002_Unlink( ooaofooa_C_C * aone, ooaofooa_C_DG * aoth, ooaofooa_PA_DIC * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->C_C_R9002 = 0;
  assr->C_DG_R9002 = 0;
  Escher_SetRemoveElement( &aone->PA_DIC_R9002, assr );
  aoth->PA_DIC_R9002 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_PA_DIC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_PA_DIC * self = (ooaofooa_PA_DIC *) instance;
  printf( "INSERT INTO PA_DIC VALUES ( %ld,%ld );\n",
    ((long)self->Component_Id & ESCHER_IDDUMP_MASK),
    ((long)self->Delegation_Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_PA_DIC_container[ ooaofooa_PA_DIC_MAX_EXTENT_SIZE ];
static ooaofooa_PA_DIC ooaofooa_PA_DIC_instances[ ooaofooa_PA_DIC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_PA_DIC_extent = {
  {0,0}, {0,0}, &ooaofooa_PA_DIC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_PA_DIC_instances,
  sizeof( ooaofooa_PA_DIC ), 0, ooaofooa_PA_DIC_MAX_EXTENT_SIZE
  };


