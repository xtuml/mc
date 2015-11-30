/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_IRF_class.c
 *
 * Class:       Instance Reference  (V_IRF)
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
ooaofooa_V_IRF_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_V_IRF * self = (ooaofooa_V_IRF *) instance;
  /* Initialize application analysis class attributes.  */
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Var_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_V_IRF_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_V_IRF * ooaofooa_V_IRF_instance = (ooaofooa_V_IRF *) instance;
  ooaofooa_V_VAR * ooaofooa_V_VARrelated_instance1 = (ooaofooa_V_VAR *) Escher_instance_cache[ (intptr_t) ooaofooa_V_IRF_instance->Var_ID ];
  if ( ooaofooa_V_VARrelated_instance1 ) {
    ooaofooa_V_IRF_R808_Link( ooaofooa_V_VARrelated_instance1, ooaofooa_V_IRF_instance );
  }
  {
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_V_IRF_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_V_IRF_R801_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_V_IRF_instance );
  }
  }
}


/*
 * RELATE V_VAL TO V_IRF ACROSS R801
 */
void
ooaofooa_V_IRF_R801_Link( ooaofooa_V_VAL * supertype, ooaofooa_V_IRF * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Value_ID = supertype->Value_ID;
  /* Optimized linkage for V_IRF->V_VAL[R801] */
  subtype->V_VAL_R801 = supertype;
  /* Optimized linkage for V_VAL->V_IRF[R801] */
  supertype->R801_subtype = subtype;
  supertype->R801_object_id = ooaofooa_V_IRF_CLASS_NUMBER;
}


/*
 * UNRELATE V_VAL FROM V_IRF ACROSS R801
 */
void
ooaofooa_V_IRF_R801_Unlink( ooaofooa_V_VAL * supertype, ooaofooa_V_IRF * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->V_VAL_R801 = 0;
  supertype->R801_subtype = 0;
  supertype->R801_object_id = 0;
}


/*
 * RELATE V_VAR TO V_IRF ACROSS R808
 */
void
ooaofooa_V_IRF_R808_Link( ooaofooa_V_VAR * part, ooaofooa_V_IRF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = part->Var_ID;
  form->V_VAR_R808_refers_to = part;
  Escher_SetInsertElement( &part->V_IRF_R808, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_VAR FROM V_IRF ACROSS R808
 */
void
ooaofooa_V_IRF_R808_Unlink( ooaofooa_V_VAR * part, ooaofooa_V_IRF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = 0;
  form->V_VAR_R808_refers_to = 0;
  Escher_SetRemoveElement( &part->V_IRF_R808, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_V_IRF_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_V_IRF * self = (ooaofooa_V_IRF *) instance;
  printf( "INSERT INTO V_IRF VALUES ( %ld,%ld );\n",
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Var_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_V_IRF_container[ ooaofooa_V_IRF_MAX_EXTENT_SIZE ];
static ooaofooa_V_IRF ooaofooa_V_IRF_instances[ ooaofooa_V_IRF_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_V_IRF_extent = {
  {0,0}, {0,0}, &ooaofooa_V_IRF_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_V_IRF_instances,
  sizeof( ooaofooa_V_IRF ), 0, ooaofooa_V_IRF_MAX_EXTENT_SIZE
  };


