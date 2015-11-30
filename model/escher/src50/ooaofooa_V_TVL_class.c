/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_TVL_class.c
 *
 * Class:       Transient Value Reference  (V_TVL)
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
ooaofooa_V_TVL_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_V_TVL * self = (ooaofooa_V_TVL *) instance;
  /* Initialize application analysis class attributes.  */
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Var_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_V_TVL_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_V_TVL * ooaofooa_V_TVL_instance = (ooaofooa_V_TVL *) instance;
  ooaofooa_V_VAR * ooaofooa_V_VARrelated_instance1 = (ooaofooa_V_VAR *) Escher_instance_cache[ (intptr_t) ooaofooa_V_TVL_instance->Var_ID ];
  if ( ooaofooa_V_VARrelated_instance1 ) {
    ooaofooa_V_TVL_R805_Link( ooaofooa_V_VARrelated_instance1, ooaofooa_V_TVL_instance );
  }
  {
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_V_TVL_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_V_TVL_R801_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_V_TVL_instance );
  }
  }
}


/*
 * RELATE V_VAL TO V_TVL ACROSS R801
 */
void
ooaofooa_V_TVL_R801_Link( ooaofooa_V_VAL * supertype, ooaofooa_V_TVL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Value_ID = supertype->Value_ID;
  /* Optimized linkage for V_TVL->V_VAL[R801] */
  subtype->V_VAL_R801 = supertype;
  /* Optimized linkage for V_VAL->V_TVL[R801] */
  supertype->R801_subtype = subtype;
  supertype->R801_object_id = ooaofooa_V_TVL_CLASS_NUMBER;
}


/*
 * UNRELATE V_VAL FROM V_TVL ACROSS R801
 */
void
ooaofooa_V_TVL_R801_Unlink( ooaofooa_V_VAL * supertype, ooaofooa_V_TVL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->V_VAL_R801 = 0;
  supertype->R801_subtype = 0;
  supertype->R801_object_id = 0;
}


/*
 * RELATE V_VAR TO V_TVL ACROSS R805
 */
void
ooaofooa_V_TVL_R805_Link( ooaofooa_V_VAR * part, ooaofooa_V_TVL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = part->Var_ID;
  form->V_VAR_R805_references = part;
  Escher_SetInsertElement( &part->V_TVL_R805, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_VAR FROM V_TVL ACROSS R805
 */
void
ooaofooa_V_TVL_R805_Unlink( ooaofooa_V_VAR * part, ooaofooa_V_TVL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = 0;
  form->V_VAR_R805_references = 0;
  Escher_SetRemoveElement( &part->V_TVL_R805, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_V_TVL_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_V_TVL * self = (ooaofooa_V_TVL *) instance;
  printf( "INSERT INTO V_TVL VALUES ( %ld,%ld );\n",
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Var_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_V_TVL_container[ ooaofooa_V_TVL_MAX_EXTENT_SIZE ];
static ooaofooa_V_TVL ooaofooa_V_TVL_instances[ ooaofooa_V_TVL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_V_TVL_extent = {
  {0,0}, {0,0}, &ooaofooa_V_TVL_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_V_TVL_instances,
  sizeof( ooaofooa_V_TVL ), 0, ooaofooa_V_TVL_MAX_EXTENT_SIZE
  };


