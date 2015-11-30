/*----------------------------------------------------------------------------
 * File:  ooaofooa_CSME_CIE_class.c
 *
 * Class:       Class In Engine  (CSME_CIE)
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
ooaofooa_CSME_CIE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CSME_CIE * self = (ooaofooa_CSME_CIE *) instance;
  /* Initialize application analysis class attributes.  */
  self->CIE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->CIE_ID;
  self->Execution_Engine_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->Label = Escher_strcpy( self->Label, avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CSME_CIE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CSME_CIE * ooaofooa_CSME_CIE_instance = (ooaofooa_CSME_CIE *) instance;
  ooaofooa_O_OBJ * ooaofooa_O_OBJrelated_instance1 = ooaofooa_O_OBJ_AnyWhere1( ooaofooa_CSME_CIE_instance->Obj_ID );
  if ( ooaofooa_O_OBJrelated_instance1 ) {
    ooaofooa_CSME_CIE_R2961_Link_is_represented_in_engine_by( ooaofooa_O_OBJrelated_instance1, ooaofooa_CSME_CIE_instance );
  }
  {
  ooaofooa_I_EXE * ooaofooa_I_EXErelated_instance1 = (ooaofooa_I_EXE *) Escher_instance_cache[ (intptr_t) ooaofooa_CSME_CIE_instance->Execution_Engine_ID ];
  if ( ooaofooa_I_EXErelated_instance1 ) {
    ooaofooa_CSME_CIE_R2960_Link_executes( ooaofooa_I_EXErelated_instance1, ooaofooa_CSME_CIE_instance );
  }
  }
  {
  ooaofooa_EP_PKG * ooaofooa_EP_PKGrelated_instance1 = ooaofooa_EP_PKG_AnyWhere1( ooaofooa_CSME_CIE_instance->Package_ID );
  if ( ooaofooa_EP_PKGrelated_instance1 ) {
    ooaofooa_CSME_CIE_R2971_Link_provides_execution_context_for( ooaofooa_EP_PKGrelated_instance1, ooaofooa_CSME_CIE_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_CSME_CIE *
ooaofooa_CSME_CIE_AnyWhere1( Escher_UniqueID_t w_CIE_ID )
{
  ooaofooa_CSME_CIE * w; 
  Escher_Iterator_s iter_CSME_CIE;
  Escher_IteratorReset( &iter_CSME_CIE, &pG_ooaofooa_CSME_CIE_extent.active );
  while ( (w = (ooaofooa_CSME_CIE *) Escher_IteratorNext( &iter_CSME_CIE )) != 0 ) {
    if ( w->CIE_ID == w_CIE_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE I_EXE TO CSME_CIE ACROSS R2960
 */
void
ooaofooa_CSME_CIE_R2960_Link_executes( ooaofooa_I_EXE * part, ooaofooa_CSME_CIE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Execution_Engine_ID = part->Execution_Engine_ID;
  form->I_EXE_R2960_is_executed_by = part;
  Escher_SetInsertElement( &part->CSME_CIE_R2960_executes, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE I_EXE FROM CSME_CIE ACROSS R2960
 */
void
ooaofooa_CSME_CIE_R2960_Unlink_executes( ooaofooa_I_EXE * part, ooaofooa_CSME_CIE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Execution_Engine_ID = 0;
  form->I_EXE_R2960_is_executed_by = 0;
  Escher_SetRemoveElement( &part->CSME_CIE_R2960_executes, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE O_OBJ TO CSME_CIE ACROSS R2961
 */
void
ooaofooa_CSME_CIE_R2961_Link_is_represented_in_engine_by( ooaofooa_O_OBJ * part, ooaofooa_CSME_CIE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = part->Obj_ID;
  form->O_OBJ_R2961_represents_class_in_engine = part;
  Escher_SetInsertElement( &part->CSME_CIE_R2961_is_represented_in_engine_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_OBJ FROM CSME_CIE ACROSS R2961
 */
void
ooaofooa_CSME_CIE_R2961_Unlink_is_represented_in_engine_by( ooaofooa_O_OBJ * part, ooaofooa_CSME_CIE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = 0;
  form->O_OBJ_R2961_represents_class_in_engine = 0;
  Escher_SetRemoveElement( &part->CSME_CIE_R2961_is_represented_in_engine_by, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE EP_PKG TO CSME_CIE ACROSS R2971
 */
void
ooaofooa_CSME_CIE_R2971_Link_provides_execution_context_for( ooaofooa_EP_PKG * part, ooaofooa_CSME_CIE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = part->Package_ID;
  form->EP_PKG_R2971_executes_in_context_of = part;
  Escher_SetInsertElement( &part->CSME_CIE_R2971_provides_execution_context_for, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE EP_PKG FROM CSME_CIE ACROSS R2971
 */
void
ooaofooa_CSME_CIE_R2971_Unlink_provides_execution_context_for( ooaofooa_EP_PKG * part, ooaofooa_CSME_CIE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = 0;
  form->EP_PKG_R2971_executes_in_context_of = 0;
  Escher_SetRemoveElement( &part->CSME_CIE_R2971_provides_execution_context_for, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CSME_CIE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CSME_CIE * self = (ooaofooa_CSME_CIE *) instance;
  printf( "INSERT INTO CSME_CIE VALUES ( %ld,%ld,%ld,%ld,'%s' );\n",
    ((long)self->CIE_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Execution_Engine_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Label ) ? self->Label : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CSME_CIE_container[ ooaofooa_CSME_CIE_MAX_EXTENT_SIZE ];
static ooaofooa_CSME_CIE ooaofooa_CSME_CIE_instances[ ooaofooa_CSME_CIE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CSME_CIE_extent = {
  {0,0}, {0,0}, &ooaofooa_CSME_CIE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CSME_CIE_instances,
  sizeof( ooaofooa_CSME_CIE ), 0, ooaofooa_CSME_CIE_MAX_EXTENT_SIZE
  };


