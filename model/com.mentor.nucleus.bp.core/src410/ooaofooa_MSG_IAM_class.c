/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_IAM_class.c
 *
 * Class:       Informal Asynchronous Message  (MSG_IAM)
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
ooaofooa_MSG_IAM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_MSG_IAM * self = (ooaofooa_MSG_IAM *) instance;
  /* Initialize application analysis class attributes.  */
  self->Msg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_MSG_IAM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_MSG_IAM * ooaofooa_MSG_IAM_instance = (ooaofooa_MSG_IAM *) instance;
  ooaofooa_MSG_AM * ooaofooa_MSG_AMrelated_instance1 = ooaofooa_MSG_AM_AnyWhere1( ooaofooa_MSG_IAM_instance->Msg_ID );
  if ( ooaofooa_MSG_AMrelated_instance1 ) {
    ooaofooa_MSG_IAM_R1019_Link( ooaofooa_MSG_AMrelated_instance1, ooaofooa_MSG_IAM_instance );
  }
}


/*
 * RELATE MSG_AM TO MSG_IAM ACROSS R1019
 */
void
ooaofooa_MSG_IAM_R1019_Link( ooaofooa_MSG_AM * supertype, ooaofooa_MSG_IAM * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Msg_ID = supertype->Msg_ID;
  /* Optimized linkage for MSG_IAM->MSG_AM[R1019] */
  subtype->MSG_AM_R1019 = supertype;
  /* Optimized linkage for MSG_AM->MSG_IAM[R1019] */
  supertype->R1019_subtype = subtype;
  supertype->R1019_object_id = ooaofooa_MSG_IAM_CLASS_NUMBER;
}


/*
 * UNRELATE MSG_AM FROM MSG_IAM ACROSS R1019
 */
void
ooaofooa_MSG_IAM_R1019_Unlink( ooaofooa_MSG_AM * supertype, ooaofooa_MSG_IAM * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->MSG_AM_R1019 = 0;
  supertype->R1019_subtype = 0;
  supertype->R1019_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_MSG_IAM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_MSG_IAM * self = (ooaofooa_MSG_IAM *) instance;
  printf( "INSERT INTO MSG_IAM VALUES ( %ld );\n",
    ((long)self->Msg_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_MSG_IAM_container[ ooaofooa_MSG_IAM_MAX_EXTENT_SIZE ];
static ooaofooa_MSG_IAM ooaofooa_MSG_IAM_instances[ ooaofooa_MSG_IAM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_MSG_IAM_extent = {
  {0,0}, {0,0}, &ooaofooa_MSG_IAM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_MSG_IAM_instances,
  sizeof( ooaofooa_MSG_IAM ), 0, ooaofooa_MSG_IAM_MAX_EXTENT_SIZE
  };


