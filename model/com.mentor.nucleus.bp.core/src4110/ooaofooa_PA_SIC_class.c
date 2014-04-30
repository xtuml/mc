/*----------------------------------------------------------------------------
 * File:  ooaofooa_PA_SIC_class.c
 *
 * Class:       Satisfaction In Component  (PA_SIC)
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
ooaofooa_PA_SIC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_PA_SIC * self = (ooaofooa_PA_SIC *) instance;
  /* Initialize application analysis class attributes.  */
  self->Component_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Satisfaction_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_PA_SIC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_PA_SIC * ooaofooa_PA_SIC_instance = (ooaofooa_PA_SIC *) instance;
  ooaofooa_C_SF * ooaofooa_C_SFrelated_instance1 = ooaofooa_C_SF_AnyWhere1( ooaofooa_PA_SIC_instance->Satisfaction_Id );
  ooaofooa_C_C * ooaofooa_C_Crelated_instance2 = ooaofooa_C_C_AnyWhere1( ooaofooa_PA_SIC_instance->Component_Id );
  if ( ooaofooa_C_SFrelated_instance1 && ooaofooa_C_Crelated_instance2 ) {
    ooaofooa_PA_SIC_R9000_Link( ooaofooa_C_Crelated_instance2, ooaofooa_C_SFrelated_instance1, ooaofooa_PA_SIC_instance );
  }
}


/*
 * RELATE C_C TO C_SF ACROSS R9000 USING PA_SIC
 */
void
ooaofooa_PA_SIC_R9000_Link( ooaofooa_C_C * aone, ooaofooa_C_SF * aoth, ooaofooa_PA_SIC * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Component_Id = aone->Id;
  assr->Satisfaction_Id = aoth->Id;
  /* Initialize optimized relationship storage extended attributes */
  assr->C_C_R9000 = aone;
  assr->C_SF_R9000 = aoth;
  Escher_SetInsertElement( &aone->PA_SIC_R9000, assr );
  aoth->PA_SIC_R9000 = assr;
}

/*
 * UNRELATE C_C FROM C_SF ACROSS R9000 USING PA_SIC
 */
void
ooaofooa_PA_SIC_R9000_Unlink( ooaofooa_C_C * aone, ooaofooa_C_SF * aoth, ooaofooa_PA_SIC * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->C_C_R9000 = 0;
  assr->C_SF_R9000 = 0;
  Escher_SetRemoveElement( &aone->PA_SIC_R9000, assr );
  aoth->PA_SIC_R9000 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_PA_SIC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_PA_SIC * self = (ooaofooa_PA_SIC *) instance;
  printf( "INSERT INTO PA_SIC VALUES ( %ld,%ld );\n",
    ((long)self->Component_Id & ESCHER_IDDUMP_MASK),
    ((long)self->Satisfaction_Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_PA_SIC_container[ ooaofooa_PA_SIC_MAX_EXTENT_SIZE ];
static ooaofooa_PA_SIC ooaofooa_PA_SIC_instances[ ooaofooa_PA_SIC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_PA_SIC_extent = {
  {0,0}, {0,0}, &ooaofooa_PA_SIC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_PA_SIC_instances,
  sizeof( ooaofooa_PA_SIC ), 0, ooaofooa_PA_SIC_MAX_EXTENT_SIZE
  };


