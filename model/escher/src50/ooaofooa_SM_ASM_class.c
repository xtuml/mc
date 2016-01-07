/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_ASM_class.c
 *
 * Class:       Class State Machine  (SM_ASM)
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
ooaofooa_SM_ASM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_ASM * self = (ooaofooa_SM_ASM *) instance;
  /* Initialize application analysis class attributes.  */
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_ASM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_ASM * ooaofooa_SM_ASM_instance = (ooaofooa_SM_ASM *) instance;
  ooaofooa_O_OBJ * ooaofooa_O_OBJrelated_instance1 = ooaofooa_O_OBJ_AnyWhere1( ooaofooa_SM_ASM_instance->Obj_ID );
  if ( ooaofooa_O_OBJrelated_instance1 ) {
    ooaofooa_SM_ASM_R519_Link( ooaofooa_O_OBJrelated_instance1, ooaofooa_SM_ASM_instance );
  }
  {
  ooaofooa_SM_SM * ooaofooa_SM_SMrelated_instance1 = (ooaofooa_SM_SM *) Escher_instance_cache[ (intptr_t) ooaofooa_SM_ASM_instance->SM_ID ];
  if ( ooaofooa_SM_SMrelated_instance1 ) {
    ooaofooa_SM_ASM_R517_Link( ooaofooa_SM_SMrelated_instance1, ooaofooa_SM_ASM_instance );
  }
  }
}


/*
 * RELATE SM_SM TO SM_ASM ACROSS R517
 */
void
ooaofooa_SM_ASM_R517_Link( ooaofooa_SM_SM * supertype, ooaofooa_SM_ASM * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SM_ID = supertype->SM_ID;
  /* Optimized linkage for SM_ASM->SM_SM[R517] */
  subtype->SM_SM_R517 = supertype;
  /* Optimized linkage for SM_SM->SM_ASM[R517] */
  supertype->R517_subtype = subtype;
  supertype->R517_object_id = ooaofooa_SM_ASM_CLASS_NUMBER;
}


/*
 * UNRELATE SM_SM FROM SM_ASM ACROSS R517
 */
void
ooaofooa_SM_ASM_R517_Unlink( ooaofooa_SM_SM * supertype, ooaofooa_SM_ASM * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SM_SM_R517 = 0;
  supertype->R517_subtype = 0;
  supertype->R517_object_id = 0;
}


/*
 * RELATE O_OBJ TO SM_ASM ACROSS R519
 */
void
ooaofooa_SM_ASM_R519_Link( ooaofooa_O_OBJ * part, ooaofooa_SM_ASM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = part->Obj_ID;
  form->O_OBJ_R519 = part;
  part->SM_ASM_R519 = form;
}

/*
 * UNRELATE O_OBJ FROM SM_ASM ACROSS R519
 */
void
ooaofooa_SM_ASM_R519_Unlink( ooaofooa_O_OBJ * part, ooaofooa_SM_ASM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = 0;
  form->O_OBJ_R519 = 0;
  part->SM_ASM_R519 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_ASM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_ASM * self = (ooaofooa_SM_ASM *) instance;
  printf( "INSERT INTO SM_ASM VALUES ( %ld,%ld );\n",
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_ASM_container[ ooaofooa_SM_ASM_MAX_EXTENT_SIZE ];
static ooaofooa_SM_ASM ooaofooa_SM_ASM_instances[ ooaofooa_SM_ASM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_ASM_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_ASM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_ASM_instances,
  sizeof( ooaofooa_SM_ASM ), 0, ooaofooa_SM_ASM_MAX_EXTENT_SIZE
  };


