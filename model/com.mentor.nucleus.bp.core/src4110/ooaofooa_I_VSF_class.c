/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_VSF_class.c
 *
 * Class:       Value in Stack Frame  (I_VSF)
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
ooaofooa_I_VSF_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_I_VSF * self = (ooaofooa_I_VSF *) instance;
  /* Initialize application analysis class attributes.  */
  self->ValueInStackFrame_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->ValueInStackFrame_ID;
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Stack_Frame_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_I_VSF_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_I_VSF * ooaofooa_I_VSF_instance = (ooaofooa_I_VSF *) instance;
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_I_VSF_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_I_VSF_R2978_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_I_VSF_instance );
  }
  {
  ooaofooa_I_STF * ooaofooa_I_STFrelated_instance1 = (ooaofooa_I_STF *) Escher_instance_cache[ (intptr_t) ooaofooa_I_VSF_instance->Stack_Frame_ID ];
  if ( ooaofooa_I_STFrelated_instance1 ) {
    ooaofooa_I_VSF_R2951_Link( ooaofooa_I_STFrelated_instance1, ooaofooa_I_VSF_instance );
  }
  }
}


/*
 * RELATE I_STF TO I_VSF ACROSS R2951
 */
void
ooaofooa_I_VSF_R2951_Link( ooaofooa_I_STF * part, ooaofooa_I_VSF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Stack_Frame_ID = part->Stack_Frame_ID;
  form->I_STF_R2951 = part;
  Escher_SetInsertElement( &part->I_VSF_R2951, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE I_STF FROM I_VSF ACROSS R2951
 */
void
ooaofooa_I_VSF_R2951_Unlink( ooaofooa_I_STF * part, ooaofooa_I_VSF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Stack_Frame_ID = 0;
  form->I_STF_R2951 = 0;
  Escher_SetRemoveElement( &part->I_VSF_R2951, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE V_VAL TO I_VSF ACROSS R2978
 */
void
ooaofooa_I_VSF_R2978_Link( ooaofooa_V_VAL * part, ooaofooa_I_VSF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_ID = part->Value_ID;
  form->V_VAL_R2978 = part;
  Escher_SetInsertElement( &part->I_VSF_R2978, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_VAL FROM I_VSF ACROSS R2978
 */
void
ooaofooa_I_VSF_R2978_Unlink( ooaofooa_V_VAL * part, ooaofooa_I_VSF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_ID = 0;
  form->V_VAL_R2978 = 0;
  Escher_SetRemoveElement( &part->I_VSF_R2978, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_I_VSF_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_I_VSF * self = (ooaofooa_I_VSF *) instance;
  printf( "INSERT INTO I_VSF VALUES ( %ld,%ld,%ld );\n",
    ((long)self->ValueInStackFrame_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Stack_Frame_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_I_VSF_container[ ooaofooa_I_VSF_MAX_EXTENT_SIZE ];
static ooaofooa_I_VSF ooaofooa_I_VSF_instances[ ooaofooa_I_VSF_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_I_VSF_extent = {
  {0,0}, {0,0}, &ooaofooa_I_VSF_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_I_VSF_instances,
  sizeof( ooaofooa_I_VSF ), 0, ooaofooa_I_VSF_MAX_EXTENT_SIZE
  };


