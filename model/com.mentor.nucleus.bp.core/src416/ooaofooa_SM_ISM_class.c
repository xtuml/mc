/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_ISM_class.c
 *
 * Class:       Instance State Machine  (SM_ISM)
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
ooaofooa_SM_ISM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_ISM * self = (ooaofooa_SM_ISM *) instance;
  /* Initialize application analysis class attributes.  */
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_ISM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_ISM * ooaofooa_SM_ISM_instance = (ooaofooa_SM_ISM *) instance;
  ooaofooa_O_OBJ * ooaofooa_O_OBJrelated_instance1 = ooaofooa_O_OBJ_AnyWhere1( ooaofooa_SM_ISM_instance->Obj_ID );
  if ( ooaofooa_O_OBJrelated_instance1 ) {
    ooaofooa_SM_ISM_R518_Link( ooaofooa_O_OBJrelated_instance1, ooaofooa_SM_ISM_instance );
  }
  {
  ooaofooa_SM_SM * ooaofooa_SM_SMrelated_instance1 = (ooaofooa_SM_SM *) Escher_instance_cache[ (intptr_t) ooaofooa_SM_ISM_instance->SM_ID ];
  if ( ooaofooa_SM_SMrelated_instance1 ) {
    ooaofooa_SM_ISM_R517_Link( ooaofooa_SM_SMrelated_instance1, ooaofooa_SM_ISM_instance );
  }
  }
}


/*
 * RELATE SM_SM TO SM_ISM ACROSS R517
 */
void
ooaofooa_SM_ISM_R517_Link( ooaofooa_SM_SM * supertype, ooaofooa_SM_ISM * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SM_ID = supertype->SM_ID;
  /* Optimized linkage for SM_ISM->SM_SM[R517] */
  subtype->SM_SM_R517 = supertype;
  /* Optimized linkage for SM_SM->SM_ISM[R517] */
  supertype->R517_subtype = subtype;
  supertype->R517_object_id = ooaofooa_SM_ISM_CLASS_NUMBER;
}


/*
 * UNRELATE SM_SM FROM SM_ISM ACROSS R517
 */
void
ooaofooa_SM_ISM_R517_Unlink( ooaofooa_SM_SM * supertype, ooaofooa_SM_ISM * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SM_SM_R517 = 0;
  supertype->R517_subtype = 0;
  supertype->R517_object_id = 0;
}


/*
 * RELATE O_OBJ TO SM_ISM ACROSS R518
 */
void
ooaofooa_SM_ISM_R518_Link( ooaofooa_O_OBJ * part, ooaofooa_SM_ISM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = part->Obj_ID;
  form->O_OBJ_R518 = part;
  part->SM_ISM_R518 = form;
}

/*
 * UNRELATE O_OBJ FROM SM_ISM ACROSS R518
 */
void
ooaofooa_SM_ISM_R518_Unlink( ooaofooa_O_OBJ * part, ooaofooa_SM_ISM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = 0;
  form->O_OBJ_R518 = 0;
  part->SM_ISM_R518 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_ISM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_ISM * self = (ooaofooa_SM_ISM *) instance;
  printf( "INSERT INTO SM_ISM VALUES ( %ld,%ld );\n",
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_ISM_container[ ooaofooa_SM_ISM_MAX_EXTENT_SIZE ];
static ooaofooa_SM_ISM ooaofooa_SM_ISM_instances[ ooaofooa_SM_ISM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_ISM_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_ISM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_ISM_instances,
  sizeof( ooaofooa_SM_ISM ), 0, ooaofooa_SM_ISM_MAX_EXTENT_SIZE
  };


