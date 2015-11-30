/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQU_R_class.c
 *
 * Class:       References Query  (SQU_R)
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
ooaofooa_SQU_R_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SQU_R * self = (ooaofooa_SQU_R *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SQU_R_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SQU_R * ooaofooa_SQU_R_instance = (ooaofooa_SQU_R *) instance;
  ooaofooa_SQU_Q * ooaofooa_SQU_Qrelated_instance1 = (ooaofooa_SQU_Q *) Escher_instance_cache[ (intptr_t) ooaofooa_SQU_R_instance->Id ];
  if ( ooaofooa_SQU_Qrelated_instance1 ) {
    ooaofooa_SQU_R_R9600_Link( ooaofooa_SQU_Qrelated_instance1, ooaofooa_SQU_R_instance );
  }
}


/*
 * RELATE SQU_Q TO SQU_R ACROSS R9600
 */
void
ooaofooa_SQU_R_R9600_Link( ooaofooa_SQU_Q * supertype, ooaofooa_SQU_R * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for SQU_R->SQU_Q[R9600] */
  subtype->SQU_Q_R9600 = supertype;
  /* Optimized linkage for SQU_Q->SQU_R[R9600] */
  supertype->R9600_subtype = subtype;
  supertype->R9600_object_id = ooaofooa_SQU_R_CLASS_NUMBER;
}


/*
 * UNRELATE SQU_Q FROM SQU_R ACROSS R9600
 */
void
ooaofooa_SQU_R_R9600_Unlink( ooaofooa_SQU_Q * supertype, ooaofooa_SQU_R * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SQU_Q_R9600 = 0;
  supertype->R9600_subtype = 0;
  supertype->R9600_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SQU_R_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SQU_R * self = (ooaofooa_SQU_R *) instance;
  printf( "INSERT INTO SQU_R VALUES ( %ld );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SQU_R_container[ ooaofooa_SQU_R_MAX_EXTENT_SIZE ];
static ooaofooa_SQU_R ooaofooa_SQU_R_instances[ ooaofooa_SQU_R_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SQU_R_extent = {
  {0,0}, {0,0}, &ooaofooa_SQU_R_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SQU_R_instances,
  sizeof( ooaofooa_SQU_R ), 0, ooaofooa_SQU_R_MAX_EXTENT_SIZE
  };


