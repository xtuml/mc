/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_BIC_class.c
 *
 * Class:       Body in Component  (ACT_BIC)
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
ooaofooa_ACT_BIC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_BIC * self = (ooaofooa_ACT_BIC *) instance;
  /* Initialize application analysis class attributes.  */
  self->Component_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Action_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_BIC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_BIC * ooaofooa_ACT_BIC_instance = (ooaofooa_ACT_BIC *) instance;
  ooaofooa_C_C * ooaofooa_C_Crelated_instance1 = ooaofooa_C_C_AnyWhere1( ooaofooa_ACT_BIC_instance->Component_Id );
  ooaofooa_ACT_ACT * ooaofooa_ACT_ACTrelated_instance2 = (ooaofooa_ACT_ACT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_BIC_instance->Action_ID ];
  if ( ooaofooa_C_Crelated_instance1 && ooaofooa_ACT_ACTrelated_instance2 ) {
    ooaofooa_ACT_BIC_R694_Link( ooaofooa_C_Crelated_instance1, ooaofooa_ACT_ACTrelated_instance2, ooaofooa_ACT_BIC_instance );
  }
}


/*
 * RELATE C_C TO ACT_ACT ACROSS R694 USING ACT_BIC
 */
void
ooaofooa_ACT_BIC_R694_Link( ooaofooa_C_C * aone, ooaofooa_ACT_ACT * aoth, ooaofooa_ACT_BIC * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Component_Id = aone->Id;
  assr->Action_ID = aoth->Action_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->C_C_R694_is_declared_in = aone;
  assr->ACT_ACT_R694_has_declared = aoth;
  Escher_SetInsertElement( &aone->ACT_BIC_R694, assr );
  aoth->ACT_BIC_R694 = assr;
}

/*
 * UNRELATE C_C FROM ACT_ACT ACROSS R694 USING ACT_BIC
 */
void
ooaofooa_ACT_BIC_R694_Unlink( ooaofooa_C_C * aone, ooaofooa_ACT_ACT * aoth, ooaofooa_ACT_BIC * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->C_C_R694_is_declared_in = 0;
  assr->ACT_ACT_R694_has_declared = 0;
  Escher_SetRemoveElement( &aone->ACT_BIC_R694, assr );
  aoth->ACT_BIC_R694 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_BIC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_BIC * self = (ooaofooa_ACT_BIC *) instance;
  printf( "INSERT INTO ACT_BIC VALUES ( %ld,%ld );\n",
    ((long)self->Component_Id & ESCHER_IDDUMP_MASK),
    ((long)self->Action_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_BIC_container[ ooaofooa_ACT_BIC_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_BIC ooaofooa_ACT_BIC_instances[ ooaofooa_ACT_BIC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_BIC_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_BIC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_BIC_instances,
  sizeof( ooaofooa_ACT_BIC ), 0, ooaofooa_ACT_BIC_MAX_EXTENT_SIZE
  };


