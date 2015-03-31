/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_RCH_class.c
 *
 * Class:       Runtime Channel  (I_RCH)
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
ooaofooa_I_RCH_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_I_RCH * self = (ooaofooa_I_RCH *) instance;
  /* Initialize application analysis class attributes.  */
  self->Channel_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Channel_Id;
  self->Execution_Engine_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->other_Execution_Engine_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Satisfaction_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->Delegation_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->Next_provider_Channel_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_I_RCH_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_I_RCH * ooaofooa_I_RCH_instance = (ooaofooa_I_RCH *) instance;
  ooaofooa_I_EXE * ooaofooa_I_EXErelated_instance1 = (ooaofooa_I_EXE *) Escher_instance_cache[ (intptr_t) ooaofooa_I_RCH_instance->Execution_Engine_ID ];
  ooaofooa_I_EXE * ooaofooa_I_EXErelated_instance2 = (ooaofooa_I_EXE *) Escher_instance_cache[ (intptr_t) ooaofooa_I_RCH_instance->other_Execution_Engine_ID ];
  if ( ooaofooa_I_EXErelated_instance1 && ooaofooa_I_EXErelated_instance2 ) {
    ooaofooa_I_RCH_R2968_Link_is_interface_requirer_of( ooaofooa_I_EXErelated_instance1, ooaofooa_I_EXErelated_instance2, ooaofooa_I_RCH_instance );
  }
  {
  ooaofooa_C_SF * ooaofooa_C_SFrelated_instance1 = ooaofooa_C_SF_AnyWhere1( ooaofooa_I_RCH_instance->Satisfaction_Id );
  if ( ooaofooa_C_SFrelated_instance1 ) {
    ooaofooa_I_RCH_R2969_Link_is_implemented_at_runtime_by( ooaofooa_C_SFrelated_instance1, ooaofooa_I_RCH_instance );
  }
  }
  {
  ooaofooa_I_RCH * ooaofooa_I_RCHrelated_instance1 = (ooaofooa_I_RCH *) Escher_instance_cache[ (intptr_t) ooaofooa_I_RCH_instance->Next_provider_Channel_Id ];
  if ( ooaofooa_I_RCHrelated_instance1 ) {
    ooaofooa_I_RCH_R2973_Link_provider( ooaofooa_I_RCHrelated_instance1, ooaofooa_I_RCH_instance );
  }
  }
  {
  ooaofooa_C_DG * ooaofooa_C_DGrelated_instance1 = ooaofooa_C_DG_AnyWhere1( ooaofooa_I_RCH_instance->Delegation_Id );
  if ( ooaofooa_C_DGrelated_instance1 ) {
    ooaofooa_I_RCH_R2972_Link_is_implemented_at_runtime_by( ooaofooa_C_DGrelated_instance1, ooaofooa_I_RCH_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_I_RCH *
ooaofooa_I_RCH_AnyWhere1( Escher_UniqueID_t w_Channel_Id )
{
  ooaofooa_I_RCH * w; 
  Escher_Iterator_s iter_I_RCH;
  Escher_IteratorReset( &iter_I_RCH, &pG_ooaofooa_I_RCH_extent.active );
  while ( (w = (ooaofooa_I_RCH *) Escher_IteratorNext( &iter_I_RCH )) != 0 ) {
    if ( w->Channel_Id == w_Channel_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE <left> I_EXE TO <right> I_EXE ACROSS R2968.'is interface provider to' USING I_RCH
 */
void
ooaofooa_I_RCH_R2968_Link_is_interface_provider_to( ooaofooa_I_EXE * left, ooaofooa_I_EXE * right, ooaofooa_I_RCH * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Execution_Engine_ID = right->Execution_Engine_ID;
  assr->other_Execution_Engine_ID = left->Execution_Engine_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->I_EXE_R2968_is_interface_provider_to = right; /* RAL 3 */
  assr->I_EXE_R2968_is_interface_requirer_of = left;  /* RAL 4 */
  Escher_SetInsertElement( &left->I_RCH_R2968_is_interface_provider_to, assr ); /* RAL 7 */
  Escher_SetInsertElement( &right->I_RCH_R2968_is_interface_requirer_of, assr ); /* RAL 11 */
}

/*
 * UNRELATE <left> I_EXE FROM <right> I_EXE ACROSS R2968.'is interface provider to' USING I_RCH
 */
void
ooaofooa_I_RCH_R2968_Unlink_is_interface_provider_to( ooaofooa_I_EXE * left, ooaofooa_I_EXE * right, ooaofooa_I_RCH * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->I_EXE_R2968_is_interface_provider_to = 0; /* RAU 3 */
  assr->I_EXE_R2968_is_interface_requirer_of = 0; /* RAU 4 */
  Escher_SetRemoveElement( &left->I_RCH_R2968_is_interface_provider_to, assr ); /* RAU 7 */
  Escher_SetRemoveElement( &right->I_RCH_R2968_is_interface_provider_to, assr ); /* RAU 11 */
}

/*
 * RELATE <left> I_EXE TO <right> I_EXE ACROSS R2968.'is interface requirer of' USING I_RCH
 */
void
ooaofooa_I_RCH_R2968_Link_is_interface_requirer_of( ooaofooa_I_EXE * left, ooaofooa_I_EXE * right, ooaofooa_I_RCH * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Execution_Engine_ID = left->Execution_Engine_ID;
  assr->other_Execution_Engine_ID = right->Execution_Engine_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->I_EXE_R2968_is_interface_provider_to = left;  /* RAL 1 */
  assr->I_EXE_R2968_is_interface_requirer_of = right; /* RAL 2 */
  Escher_SetInsertElement( &right->I_RCH_R2968_is_interface_provider_to, assr ); /* RAL 8 */
  Escher_SetInsertElement( &left->I_RCH_R2968_is_interface_requirer_of, assr ); /* RAL 12 */
}

/*
 * UNRELATE <left> I_EXE FROM <right> I_EXE ACROSS R2968.'is interface requirer of' USING I_RCH
 */
void
ooaofooa_I_RCH_R2968_Unlink_is_interface_requirer_of( ooaofooa_I_EXE * left, ooaofooa_I_EXE * right, ooaofooa_I_RCH * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->I_EXE_R2968_is_interface_provider_to = 0; /* RAU 1 */
  assr->I_EXE_R2968_is_interface_requirer_of = 0; /* RAU 2 */
  Escher_SetRemoveElement( &right->I_RCH_R2968_is_interface_provider_to, assr ); /* RAU 8 */
  Escher_SetRemoveElement( &left->I_RCH_R2968_is_interface_provider_to, assr ); /* RAU 12 */
}

/*
 * RELATE C_SF TO I_RCH ACROSS R2969
 */
void
ooaofooa_I_RCH_R2969_Link_is_implemented_at_runtime_by( ooaofooa_C_SF * part, ooaofooa_I_RCH * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Satisfaction_Id = part->Id;
  form->C_SF_R2969_implements = part;
  Escher_SetInsertElement( &part->I_RCH_R2969_is_implemented_at_runtime_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_SF FROM I_RCH ACROSS R2969
 */
void
ooaofooa_I_RCH_R2969_Unlink_is_implemented_at_runtime_by( ooaofooa_C_SF * part, ooaofooa_I_RCH * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->C_SF_R2969_implements = 0;
  Escher_SetRemoveElement( &part->I_RCH_R2969_is_implemented_at_runtime_by, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE C_DG TO I_RCH ACROSS R2972
 */
void
ooaofooa_I_RCH_R2972_Link_is_implemented_at_runtime_by( ooaofooa_C_DG * part, ooaofooa_I_RCH * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Delegation_Id = part->Id;
  form->C_DG_R2972_implements = part;
  Escher_SetInsertElement( &part->I_RCH_R2972_is_implemented_at_runtime_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_DG FROM I_RCH ACROSS R2972
 */
void
ooaofooa_I_RCH_R2972_Unlink_is_implemented_at_runtime_by( ooaofooa_C_DG * part, ooaofooa_I_RCH * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Delegation_Id = 0;
  form->C_DG_R2972_implements = 0;
  Escher_SetRemoveElement( &part->I_RCH_R2972_is_implemented_at_runtime_by, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> I_RCH TO <right> I_RCH ACROSS R2973.'requirer'
 */
void
ooaofooa_I_RCH_R2973_Link_requirer( ooaofooa_I_RCH * left, ooaofooa_I_RCH * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Next_provider_Channel_Id = right->Channel_Id;
  left->I_RCH_R2973_requirer = right; /* SR L1 */
  right->I_RCH_R2973_provider = left; /* SR L2 */
}

/*
 * UNRELATE <left> I_RCH FROM <right> I_RCH ACROSS R2973.'requirer'
 */
void
ooaofooa_I_RCH_R2973_Unlink_requirer( ooaofooa_I_RCH * left, ooaofooa_I_RCH * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Next_provider_Channel_Id = 0;
  left->I_RCH_R2973_requirer = 0; /* SR U1 */
  right->I_RCH_R2973_provider = 0; /* SR U2 */
}

/*
 * RELATE <left> I_RCH TO <right> I_RCH ACROSS R2973.'provider'
 */
void
ooaofooa_I_RCH_R2973_Link_provider( ooaofooa_I_RCH * left, ooaofooa_I_RCH * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Next_provider_Channel_Id = left->Channel_Id;
  right->I_RCH_R2973_requirer = left; /* SR L4 */
  left->I_RCH_R2973_provider = right; /* SR L5 */
}

/*
 * UNRELATE <left> I_RCH FROM <right> I_RCH ACROSS R2973.'provider'
 */
void
ooaofooa_I_RCH_R2973_Unlink_provider( ooaofooa_I_RCH * left, ooaofooa_I_RCH * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Next_provider_Channel_Id = 0;
  right->I_RCH_R2973_requirer = 0; /* SR U4 */
  left->I_RCH_R2973_provider = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_I_RCH_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_I_RCH * self = (ooaofooa_I_RCH *) instance;
  printf( "INSERT INTO I_RCH VALUES ( %ld,%ld,%ld,%ld,%ld,%ld );\n",
    ((long)self->Channel_Id & ESCHER_IDDUMP_MASK),
    ((long)self->Execution_Engine_ID & ESCHER_IDDUMP_MASK),
    ((long)self->other_Execution_Engine_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Satisfaction_Id & ESCHER_IDDUMP_MASK),
    ((long)self->Delegation_Id & ESCHER_IDDUMP_MASK),
    ((long)self->Next_provider_Channel_Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_I_RCH_container[ ooaofooa_I_RCH_MAX_EXTENT_SIZE ];
static ooaofooa_I_RCH ooaofooa_I_RCH_instances[ ooaofooa_I_RCH_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_I_RCH_extent = {
  {0,0}, {0,0}, &ooaofooa_I_RCH_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_I_RCH_instances,
  sizeof( ooaofooa_I_RCH ), 0, ooaofooa_I_RCH_MAX_EXTENT_SIZE
  };


