/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_ISM_class.c
 *
 * Class:       Informal Synchronous Message  (MSG_ISM)
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
ooaofooa_MSG_ISM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_MSG_ISM * self = (ooaofooa_MSG_ISM *) instance;
  /* Initialize application analysis class attributes.  */
  self->Msg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_MSG_ISM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_MSG_ISM * ooaofooa_MSG_ISM_instance = (ooaofooa_MSG_ISM *) instance;
  ooaofooa_MSG_SM * ooaofooa_MSG_SMrelated_instance1 = ooaofooa_MSG_SM_AnyWhere1( ooaofooa_MSG_ISM_instance->Msg_ID );
  if ( ooaofooa_MSG_SMrelated_instance1 ) {
    ooaofooa_MSG_ISM_R1020_Link( ooaofooa_MSG_SMrelated_instance1, ooaofooa_MSG_ISM_instance );
  }
}


/*
 * RELATE MSG_SM TO MSG_ISM ACROSS R1020
 */
void
ooaofooa_MSG_ISM_R1020_Link( ooaofooa_MSG_SM * supertype, ooaofooa_MSG_ISM * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Msg_ID = supertype->Msg_ID;
  /* Optimized linkage for MSG_ISM->MSG_SM[R1020] */
  subtype->MSG_SM_R1020 = supertype;
  /* Optimized linkage for MSG_SM->MSG_ISM[R1020] */
  supertype->R1020_subtype = subtype;
  supertype->R1020_object_id = ooaofooa_MSG_ISM_CLASS_NUMBER;
}


/*
 * UNRELATE MSG_SM FROM MSG_ISM ACROSS R1020
 */
void
ooaofooa_MSG_ISM_R1020_Unlink( ooaofooa_MSG_SM * supertype, ooaofooa_MSG_ISM * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->MSG_SM_R1020 = 0;
  supertype->R1020_subtype = 0;
  supertype->R1020_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_MSG_ISM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_MSG_ISM * self = (ooaofooa_MSG_ISM *) instance;
  printf( "INSERT INTO MSG_ISM VALUES ( %ld );\n",
    ((long)self->Msg_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_MSG_ISM_container[ ooaofooa_MSG_ISM_MAX_EXTENT_SIZE ];
static ooaofooa_MSG_ISM ooaofooa_MSG_ISM_instances[ ooaofooa_MSG_ISM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_MSG_ISM_extent = {
  {0,0}, {0,0}, &ooaofooa_MSG_ISM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_MSG_ISM_instances,
  sizeof( ooaofooa_MSG_ISM ), 0, ooaofooa_MSG_ISM_MAX_EXTENT_SIZE
  };


