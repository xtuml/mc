/*----------------------------------------------------------------------------
 * File:  ooaofooa_COMM_MIC_class.c
 *
 * Class:       Message in Communication  (COMM_MIC)
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
ooaofooa_COMM_MIC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_COMM_MIC * self = (ooaofooa_COMM_MIC *) instance;
  /* Initialize application analysis class attributes.  */
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Msg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_COMM_MIC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_COMM_MIC * ooaofooa_COMM_MIC_instance = (ooaofooa_COMM_MIC *) instance;
  ooaofooa_MSG_M * ooaofooa_MSG_Mrelated_instance1 = ooaofooa_MSG_M_AnyWhere1( ooaofooa_COMM_MIC_instance->Msg_ID );
  ooaofooa_COMM_COMM * ooaofooa_COMM_COMMrelated_instance2 = ooaofooa_COMM_COMM_AnyWhere1( ooaofooa_COMM_MIC_instance->Package_ID );
  if ( ooaofooa_MSG_Mrelated_instance1 && ooaofooa_COMM_COMMrelated_instance2 ) {
    ooaofooa_COMM_MIC_R1135_Link( ooaofooa_COMM_COMMrelated_instance2, ooaofooa_MSG_Mrelated_instance1, ooaofooa_COMM_MIC_instance );
  }
}


/*
 * RELATE COMM_COMM TO MSG_M ACROSS R1135 USING COMM_MIC
 */
void
ooaofooa_COMM_MIC_R1135_Link( ooaofooa_COMM_COMM * aone, ooaofooa_MSG_M * aoth, ooaofooa_COMM_MIC * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Package_ID = aone->Package_ID;
  assr->Msg_ID = aoth->Msg_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->COMM_COMM_R1135_can_be_displayed_in = aone;
  assr->MSG_M_R1135_may_display = aoth;
  Escher_SetInsertElement( &aone->COMM_MIC_R1135, assr );
  aoth->COMM_MIC_R1135 = assr;
}

/*
 * UNRELATE COMM_COMM FROM MSG_M ACROSS R1135 USING COMM_MIC
 */
void
ooaofooa_COMM_MIC_R1135_Unlink( ooaofooa_COMM_COMM * aone, ooaofooa_MSG_M * aoth, ooaofooa_COMM_MIC * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->COMM_COMM_R1135_can_be_displayed_in = 0;
  assr->MSG_M_R1135_may_display = 0;
  Escher_SetRemoveElement( &aone->COMM_MIC_R1135, assr );
  aoth->COMM_MIC_R1135 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_COMM_MIC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_COMM_MIC * self = (ooaofooa_COMM_MIC *) instance;
  printf( "INSERT INTO COMM_MIC VALUES ( %ld,%ld );\n",
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Msg_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_COMM_MIC_container[ ooaofooa_COMM_MIC_MAX_EXTENT_SIZE ];
static ooaofooa_COMM_MIC ooaofooa_COMM_MIC_instances[ ooaofooa_COMM_MIC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_COMM_MIC_extent = {
  {0,0}, {0,0}, &ooaofooa_COMM_MIC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_COMM_MIC_instances,
  sizeof( ooaofooa_COMM_MIC ), 0, ooaofooa_COMM_MIC_MAX_EXTENT_SIZE
  };


