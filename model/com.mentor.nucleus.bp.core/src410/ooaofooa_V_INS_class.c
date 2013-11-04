/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_INS_class.c
 *
 * Class:       Instance Set  (V_INS)
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
ooaofooa_V_INS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_V_INS * self = (ooaofooa_V_INS *) instance;
  /* Initialize application analysis class attributes.  */
  self->Var_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_V_INS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_V_INS * ooaofooa_V_INS_instance = (ooaofooa_V_INS *) instance;
  ooaofooa_V_VAR * ooaofooa_V_VARrelated_instance1 = (ooaofooa_V_VAR *) Escher_instance_cache[ (intptr_t) ooaofooa_V_INS_instance->Var_ID ];
  if ( ooaofooa_V_VARrelated_instance1 ) {
    ooaofooa_V_INS_R814_Link( ooaofooa_V_VARrelated_instance1, ooaofooa_V_INS_instance );
  }
  {
  ooaofooa_O_OBJ * ooaofooa_O_OBJrelated_instance1 = ooaofooa_O_OBJ_AnyWhere1( ooaofooa_V_INS_instance->Obj_ID );
  if ( ooaofooa_O_OBJrelated_instance1 ) {
    ooaofooa_V_INS_R819_Link( ooaofooa_O_OBJrelated_instance1, ooaofooa_V_INS_instance );
  }
  }
}


/*
 * RELATE V_VAR TO V_INS ACROSS R814
 */
void
ooaofooa_V_INS_R814_Link( ooaofooa_V_VAR * supertype, ooaofooa_V_INS * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Var_ID = supertype->Var_ID;
  /* Optimized linkage for V_INS->V_VAR[R814] */
  subtype->V_VAR_R814 = supertype;
  /* Optimized linkage for V_VAR->V_INS[R814] */
  supertype->R814_subtype = subtype;
  supertype->R814_object_id = ooaofooa_V_INS_CLASS_NUMBER;
}


/*
 * UNRELATE V_VAR FROM V_INS ACROSS R814
 */
void
ooaofooa_V_INS_R814_Unlink( ooaofooa_V_VAR * supertype, ooaofooa_V_INS * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->V_VAR_R814 = 0;
  supertype->R814_subtype = 0;
  supertype->R814_object_id = 0;
}


/*
 * RELATE O_OBJ TO V_INS ACROSS R819
 */
void
ooaofooa_V_INS_R819_Link( ooaofooa_O_OBJ * part, ooaofooa_V_INS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = part->Obj_ID;
  form->O_OBJ_R819_refers_to = part;
  Escher_SetInsertElement( &part->V_INS_R819, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_OBJ FROM V_INS ACROSS R819
 */
void
ooaofooa_V_INS_R819_Unlink( ooaofooa_O_OBJ * part, ooaofooa_V_INS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = 0;
  form->O_OBJ_R819_refers_to = 0;
  Escher_SetRemoveElement( &part->V_INS_R819, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_V_INS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_V_INS * self = (ooaofooa_V_INS *) instance;
  printf( "INSERT INTO V_INS VALUES ( %ld,%ld );\n",
    ((long)self->Var_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_V_INS_container[ ooaofooa_V_INS_MAX_EXTENT_SIZE ];
static ooaofooa_V_INS ooaofooa_V_INS_instances[ ooaofooa_V_INS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_V_INS_extent = {
  {0,0}, {0,0}, &ooaofooa_V_INS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_V_INS_instances,
  sizeof( ooaofooa_V_INS ), 0, ooaofooa_V_INS_MAX_EXTENT_SIZE
  };


