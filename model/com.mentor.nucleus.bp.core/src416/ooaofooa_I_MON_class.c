/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_MON_class.c
 *
 * Class:       Monitor  (I_MON)
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
ooaofooa_I_MON_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_I_MON * self = (ooaofooa_I_MON *) instance;
  /* Initialize application analysis class attributes.  */
  self->Execution_Engine_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Inst_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->enabled = ( '0' != *avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_I_MON_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_I_MON * ooaofooa_I_MON_instance = (ooaofooa_I_MON *) instance;
  ooaofooa_I_EXE * ooaofooa_I_EXErelated_instance1 = (ooaofooa_I_EXE *) Escher_instance_cache[ (intptr_t) ooaofooa_I_MON_instance->Execution_Engine_ID ];
  ooaofooa_I_INS * ooaofooa_I_INSrelated_instance2 = (ooaofooa_I_INS *) Escher_instance_cache[ (intptr_t) ooaofooa_I_MON_instance->Inst_ID ];
  if ( ooaofooa_I_EXErelated_instance1 && ooaofooa_I_INSrelated_instance2 ) {
    ooaofooa_I_MON_R2949_Link( ooaofooa_I_EXErelated_instance1, ooaofooa_I_INSrelated_instance2, ooaofooa_I_MON_instance );
  }
}


/*
 * RELATE I_EXE TO I_INS ACROSS R2949 USING I_MON
 */
void
ooaofooa_I_MON_R2949_Link( ooaofooa_I_EXE * aone, ooaofooa_I_INS * aoth, ooaofooa_I_MON * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Execution_Engine_ID = aone->Execution_Engine_ID;
  assr->Inst_ID = aoth->Inst_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->I_EXE_R2949_monitored_by = aone;
  assr->I_INS_R2949_monitors = aoth;
  Escher_SetInsertElement( &aone->I_MON_R2949, assr );
  aoth->I_MON_R2949 = assr;
}

/*
 * UNRELATE I_EXE FROM I_INS ACROSS R2949 USING I_MON
 */
void
ooaofooa_I_MON_R2949_Unlink( ooaofooa_I_EXE * aone, ooaofooa_I_INS * aoth, ooaofooa_I_MON * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->I_EXE_R2949_monitored_by = 0;
  assr->I_INS_R2949_monitors = 0;
  Escher_SetRemoveElement( &aone->I_MON_R2949, assr );
  aoth->I_MON_R2949 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_I_MON_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_I_MON * self = (ooaofooa_I_MON *) instance;
  printf( "INSERT INTO I_MON VALUES ( %ld,%ld,%d );\n",
    ((long)self->Execution_Engine_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Inst_ID & ESCHER_IDDUMP_MASK),
    self->enabled );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_I_MON_container[ ooaofooa_I_MON_MAX_EXTENT_SIZE ];
static ooaofooa_I_MON ooaofooa_I_MON_instances[ ooaofooa_I_MON_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_I_MON_extent = {
  {0,0}, {0,0}, &ooaofooa_I_MON_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_I_MON_instances,
  sizeof( ooaofooa_I_MON ), 0, ooaofooa_I_MON_MAX_EXTENT_SIZE
  };


