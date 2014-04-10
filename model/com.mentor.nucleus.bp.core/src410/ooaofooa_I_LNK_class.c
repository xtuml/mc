/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_LNK_class.c
 *
 * Class:       Link  (I_LNK)
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
ooaofooa_I_LNK_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_I_LNK * self = (ooaofooa_I_LNK *) instance;
  /* Initialize application analysis class attributes.  */
  self->Link_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Link_ID;
  self->Rel_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->fromInst_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->toInst_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->assocInst_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_I_LNK_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_I_LNK * ooaofooa_I_LNK_instance = (ooaofooa_I_LNK *) instance;
  ooaofooa_R_REL * ooaofooa_R_RELrelated_instance1 = ooaofooa_R_REL_AnyWhere1( ooaofooa_I_LNK_instance->Rel_ID );
  if ( ooaofooa_R_RELrelated_instance1 ) {
    ooaofooa_I_LNK_R2904_Link_has_instances( ooaofooa_R_RELrelated_instance1, ooaofooa_I_LNK_instance );
  }
  {
  ooaofooa_I_LIP * ooaofooa_I_LIPrelated_instance1 = ooaofooa_I_LIP_AnyWhere1( ooaofooa_I_LNK_instance->Rel_ID, ooaofooa_I_LNK_instance->fromInst_ID );
  if ( ooaofooa_I_LIPrelated_instance1 ) {
    ooaofooa_I_LNK_R2901_Link_is_origin_of( ooaofooa_I_LIPrelated_instance1, ooaofooa_I_LNK_instance );
  }
  }
  {
  ooaofooa_I_LIP * ooaofooa_I_LIPrelated_instance1 = ooaofooa_I_LIP_AnyWhere1( ooaofooa_I_LNK_instance->Rel_ID, ooaofooa_I_LNK_instance->toInst_ID );
  if ( ooaofooa_I_LIPrelated_instance1 ) {
    ooaofooa_I_LNK_R2902_Link_is_destination_of( ooaofooa_I_LIPrelated_instance1, ooaofooa_I_LNK_instance );
  }
  }
  {
  ooaofooa_I_LIP * ooaofooa_I_LIPrelated_instance1 = ooaofooa_I_LIP_AnyWhere1( ooaofooa_I_LNK_instance->Rel_ID, ooaofooa_I_LNK_instance->assocInst_ID );
  if ( ooaofooa_I_LIPrelated_instance1 ) {
    ooaofooa_I_LNK_R2903_Link_is_associator_for( ooaofooa_I_LIPrelated_instance1, ooaofooa_I_LNK_instance );
  }
  }
}


/*
 * RELATE I_LIP TO I_LNK ACROSS R2901
 */
void
ooaofooa_I_LNK_R2901_Link_is_origin_of( ooaofooa_I_LIP * part, ooaofooa_I_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->fromInst_ID = part->Inst_ID;
  form->Rel_ID = part->Rel_ID;
  form->I_LIP_R2901_originates_at = part;
  Escher_SetInsertElement( &part->I_LNK_R2901_is_origin_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE I_LIP FROM I_LNK ACROSS R2901
 */
void
ooaofooa_I_LNK_R2901_Unlink_is_origin_of( ooaofooa_I_LIP * part, ooaofooa_I_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->fromInst_ID = 0;
  form->I_LIP_R2901_originates_at = 0;
  Escher_SetRemoveElement( &part->I_LNK_R2901_is_origin_of, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE I_LIP TO I_LNK ACROSS R2902
 */
void
ooaofooa_I_LNK_R2902_Link_is_destination_of( ooaofooa_I_LIP * part, ooaofooa_I_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->toInst_ID = part->Inst_ID;
  form->Rel_ID = part->Rel_ID;
  form->I_LIP_R2902_ends_at = part;
  Escher_SetInsertElement( &part->I_LNK_R2902_is_destination_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE I_LIP FROM I_LNK ACROSS R2902
 */
void
ooaofooa_I_LNK_R2902_Unlink_is_destination_of( ooaofooa_I_LIP * part, ooaofooa_I_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->toInst_ID = 0;
  form->I_LIP_R2902_ends_at = 0;
  Escher_SetRemoveElement( &part->I_LNK_R2902_is_destination_of, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE I_LIP TO I_LNK ACROSS R2903
 */
void
ooaofooa_I_LNK_R2903_Link_is_associator_for( ooaofooa_I_LIP * part, ooaofooa_I_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->assocInst_ID = part->Inst_ID;
  form->Rel_ID = part->Rel_ID;
  form->I_LIP_R2903_has_associator = part;
  Escher_SetInsertElement( &part->I_LNK_R2903_is_associator_for, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE I_LIP FROM I_LNK ACROSS R2903
 */
void
ooaofooa_I_LNK_R2903_Unlink_is_associator_for( ooaofooa_I_LIP * part, ooaofooa_I_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->assocInst_ID = 0;
  form->I_LIP_R2903_has_associator = 0;
  Escher_SetRemoveElement( &part->I_LNK_R2903_is_associator_for, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE R_REL TO I_LNK ACROSS R2904
 */
void
ooaofooa_I_LNK_R2904_Link_has_instances( ooaofooa_R_REL * part, ooaofooa_I_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Rel_ID = part->Rel_ID;
  form->R_REL_R2904_is_instance_of = part;
  Escher_SetInsertElement( &part->I_LNK_R2904_has_instances, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE R_REL FROM I_LNK ACROSS R2904
 */
void
ooaofooa_I_LNK_R2904_Unlink_has_instances( ooaofooa_R_REL * part, ooaofooa_I_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->R_REL_R2904_is_instance_of = 0;
  Escher_SetRemoveElement( &part->I_LNK_R2904_has_instances, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_I_LNK_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_I_LNK * self = (ooaofooa_I_LNK *) instance;
  printf( "INSERT INTO I_LNK VALUES ( %ld,%ld,%ld,%ld,%ld );\n",
    ((long)self->Link_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Rel_ID & ESCHER_IDDUMP_MASK),
    ((long)self->fromInst_ID & ESCHER_IDDUMP_MASK),
    ((long)self->toInst_ID & ESCHER_IDDUMP_MASK),
    ((long)self->assocInst_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_I_LNK_container[ ooaofooa_I_LNK_MAX_EXTENT_SIZE ];
static ooaofooa_I_LNK ooaofooa_I_LNK_instances[ ooaofooa_I_LNK_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_I_LNK_extent = {
  {0,0}, {0,0}, &ooaofooa_I_LNK_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_I_LNK_instances,
  sizeof( ooaofooa_I_LNK ), 0, ooaofooa_I_LNK_MAX_EXTENT_SIZE
  };


