/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_EXE_class.c
 *
 * Class:       Component Instance  (I_EXE)
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
ooaofooa_I_EXE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_I_EXE * self = (ooaofooa_I_EXE *) instance;
  /* Initialize application analysis class attributes.  */
  self->Running = ( '0' != *avlstring[ 1 ] );
  self->Execution_Engine_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return_identifier = self->Execution_Engine_ID;
  self->Dom_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Component_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->Next_Unique_ID = Escher_atoi( avlstring[ 6 ] );
  self->Next_Instance_ID = Escher_atoi( avlstring[ 7 ] );
  self->ImportedComponent_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 8 ] );
  Escher_strcpy( self->Label, avlstring[ 9 ] );
  self->EQE_Lock = Escher_atoi( avlstring[ 10 ] );
  self->SQE_Lock = Escher_atoi( avlstring[ 11 ] );
  self->Container_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 12 ] );
  self->RealizedBy = Escher_atoi( avlstring[ 13 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_I_EXE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_I_EXE * ooaofooa_I_EXE_instance = (ooaofooa_I_EXE *) instance;
  ooaofooa_S_DOM * ooaofooa_S_DOMrelated_instance1 = (ooaofooa_S_DOM *) Escher_instance_cache[ (intptr_t) ooaofooa_I_EXE_instance->Dom_ID ];
  if ( ooaofooa_S_DOMrelated_instance1 ) {
    ooaofooa_I_EXE_R2948_Link_is_being_verified_by( ooaofooa_S_DOMrelated_instance1, ooaofooa_I_EXE_instance );
  }
  {
  ooaofooa_C_C * ooaofooa_C_Crelated_instance1 = ooaofooa_C_C_AnyWhere1( ooaofooa_I_EXE_instance->Component_Id );
  if ( ooaofooa_C_Crelated_instance1 ) {
    ooaofooa_I_EXE_R2955_Link_instance_being_verified_by( ooaofooa_C_Crelated_instance1, ooaofooa_I_EXE_instance );
  }
  }
  {
  ooaofooa_CL_IC * ooaofooa_CL_ICrelated_instance1 = ooaofooa_CL_IC_AnyWhere1( ooaofooa_I_EXE_instance->ImportedComponent_Id );
  if ( ooaofooa_CL_ICrelated_instance1 ) {
    ooaofooa_I_EXE_R2963_Link_instance_being_verified_by( ooaofooa_CL_ICrelated_instance1, ooaofooa_I_EXE_instance );
  }
  }
  {
  ooaofooa_EP_PKG * ooaofooa_EP_PKGrelated_instance1 = ooaofooa_EP_PKG_AnyWhere1( ooaofooa_I_EXE_instance->Package_ID );
  if ( ooaofooa_EP_PKGrelated_instance1 ) {
    ooaofooa_I_EXE_R2970_Link_is_being_verified_by( ooaofooa_EP_PKGrelated_instance1, ooaofooa_I_EXE_instance );
  }
  }
  {
  ooaofooa_I_CIN * ooaofooa_I_CINrelated_instance1 = ooaofooa_I_CIN_AnyWhere1( ooaofooa_I_EXE_instance->Container_ID );
  if ( ooaofooa_I_CINrelated_instance1 ) {
    ooaofooa_I_EXE_R2975_Link( ooaofooa_I_CINrelated_instance1, ooaofooa_I_EXE_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_I_EXE *
ooaofooa_I_EXE_AnyWhere1( Escher_UniqueID_t w_Execution_Engine_ID )
{
  ooaofooa_I_EXE * w; 
  Escher_Iterator_s iter_I_EXE;
  Escher_IteratorReset( &iter_I_EXE, &pG_ooaofooa_I_EXE_extent.active );
  while ( (w = (ooaofooa_I_EXE *) Escher_IteratorNext( &iter_I_EXE )) != 0 ) {
    if ( w->Execution_Engine_ID == w_Execution_Engine_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_DOM TO I_EXE ACROSS R2948
 */
void
ooaofooa_I_EXE_R2948_Link_is_being_verified_by( ooaofooa_S_DOM * part, ooaofooa_I_EXE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = part->Dom_ID;
  form->S_DOM_R2948_is_verifying = part;
  part->I_EXE_R2948_is_being_verified_by = form;
}

/*
 * UNRELATE S_DOM FROM I_EXE ACROSS R2948
 */
void
ooaofooa_I_EXE_R2948_Unlink_is_being_verified_by( ooaofooa_S_DOM * part, ooaofooa_I_EXE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = 0;
  form->S_DOM_R2948_is_verifying = 0;
  part->I_EXE_R2948_is_being_verified_by = 0;
}

/*
 * RELATE C_C TO I_EXE ACROSS R2955
 */
void
ooaofooa_I_EXE_R2955_Link_instance_being_verified_by( ooaofooa_C_C * part, ooaofooa_I_EXE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Id = part->Id;
  form->C_C_R2955_is_verifying_instance_of = part;
  Escher_SetInsertElement( &part->I_EXE_R2955_instance_being_verified_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_C FROM I_EXE ACROSS R2955
 */
void
ooaofooa_I_EXE_R2955_Unlink_instance_being_verified_by( ooaofooa_C_C * part, ooaofooa_I_EXE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Id = 0;
  form->C_C_R2955_is_verifying_instance_of = 0;
  Escher_SetRemoveElement( &part->I_EXE_R2955_instance_being_verified_by, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE CL_IC TO I_EXE ACROSS R2963
 */
void
ooaofooa_I_EXE_R2963_Link_instance_being_verified_by( ooaofooa_CL_IC * part, ooaofooa_I_EXE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->ImportedComponent_Id = part->Id;
  form->CL_IC_R2963_is_verifying_instance_of = part;
  Escher_SetInsertElement( &part->I_EXE_R2963_instance_being_verified_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE CL_IC FROM I_EXE ACROSS R2963
 */
void
ooaofooa_I_EXE_R2963_Unlink_instance_being_verified_by( ooaofooa_CL_IC * part, ooaofooa_I_EXE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->ImportedComponent_Id = 0;
  form->CL_IC_R2963_is_verifying_instance_of = 0;
  Escher_SetRemoveElement( &part->I_EXE_R2963_instance_being_verified_by, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE EP_PKG TO I_EXE ACROSS R2970
 */
void
ooaofooa_I_EXE_R2970_Link_is_being_verified_by( ooaofooa_EP_PKG * part, ooaofooa_I_EXE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = part->Package_ID;
  form->EP_PKG_R2970_is_verifying = part;
  part->I_EXE_R2970_is_being_verified_by = form;
}

/*
 * UNRELATE EP_PKG FROM I_EXE ACROSS R2970
 */
void
ooaofooa_I_EXE_R2970_Unlink_is_being_verified_by( ooaofooa_EP_PKG * part, ooaofooa_I_EXE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = 0;
  form->EP_PKG_R2970_is_verifying = 0;
  part->I_EXE_R2970_is_being_verified_by = 0;
}

/*
 * RELATE I_CIN TO I_EXE ACROSS R2975
 */
void
ooaofooa_I_EXE_R2975_Link( ooaofooa_I_CIN * part, ooaofooa_I_EXE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Container_ID = part->Container_ID;
  form->I_CIN_R2975 = part;
  Escher_SetInsertElement( &part->I_EXE_R2975, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE I_CIN FROM I_EXE ACROSS R2975
 */
void
ooaofooa_I_EXE_R2975_Unlink( ooaofooa_I_CIN * part, ooaofooa_I_EXE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Container_ID = 0;
  form->I_CIN_R2975 = 0;
  Escher_SetRemoveElement( &part->I_EXE_R2975, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_I_EXE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_I_EXE * self = (ooaofooa_I_EXE *) instance;
  printf( "INSERT INTO I_EXE VALUES ( %d,%ld,%ld,%ld,%ld,%d,%d,%ld,'%s',%d,%d,%ld,%d );\n",
    self->Running,
    ((long)self->Execution_Engine_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Dom_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Component_Id & ESCHER_IDDUMP_MASK),
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    self->Next_Unique_ID,
    self->Next_Instance_ID,
    ((long)self->ImportedComponent_Id & ESCHER_IDDUMP_MASK),
    self->Label,
    self->EQE_Lock,
    self->SQE_Lock,
    ((long)self->Container_ID & ESCHER_IDDUMP_MASK),
    self->RealizedBy );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_I_EXE_container[ ooaofooa_I_EXE_MAX_EXTENT_SIZE ];
static ooaofooa_I_EXE ooaofooa_I_EXE_instances[ ooaofooa_I_EXE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_I_EXE_extent = {
  {0,0}, {0,0}, &ooaofooa_I_EXE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_I_EXE_instances,
  sizeof( ooaofooa_I_EXE ), 0, ooaofooa_I_EXE_MAX_EXTENT_SIZE
  };


