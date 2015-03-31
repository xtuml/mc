/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_IR_class.c
 *
 * Class:       Interface Reference  (C_IR)
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
ooaofooa_C_IR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_C_IR * self = (ooaofooa_C_IR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Id;
  self->Formal_Interface_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Delegation_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Port_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_C_IR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_C_IR * ooaofooa_C_IR_instance = (ooaofooa_C_IR *) instance;
  ooaofooa_C_PO * ooaofooa_C_POrelated_instance1 = (ooaofooa_C_PO *) Escher_instance_cache[ (intptr_t) ooaofooa_C_IR_instance->Port_Id ];
  if ( ooaofooa_C_POrelated_instance1 ) {
    ooaofooa_C_IR_R4016_Link_exposes( ooaofooa_C_POrelated_instance1, ooaofooa_C_IR_instance );
  }
  {
  ooaofooa_C_I * ooaofooa_C_Irelated_instance1 = ooaofooa_C_I_AnyWhere1( ooaofooa_C_IR_instance->Formal_Interface_Id );
  if ( ooaofooa_C_Irelated_instance1 ) {
    ooaofooa_C_IR_R4012_Link_is_formal_definition( ooaofooa_C_Irelated_instance1, ooaofooa_C_IR_instance );
  }
  }
  {
  ooaofooa_C_DG * ooaofooa_C_DGrelated_instance1 = ooaofooa_C_DG_AnyWhere1( ooaofooa_C_IR_instance->Delegation_Id );
  if ( ooaofooa_C_DGrelated_instance1 ) {
    ooaofooa_C_IR_R4014_Link_provides_delegation_to( ooaofooa_C_DGrelated_instance1, ooaofooa_C_IR_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_C_IR *
ooaofooa_C_IR_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_C_IR * w; 
  Escher_Iterator_s iter_C_IR;
  Escher_IteratorReset( &iter_C_IR, &pG_ooaofooa_C_IR_extent.active );
  while ( (w = (ooaofooa_C_IR *) Escher_IteratorNext( &iter_C_IR )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/* Accessors to C_IR[R4009] subtypes */


/*
 * RELATE C_I TO C_IR ACROSS R4012
 */
void
ooaofooa_C_IR_R4012_Link_is_formal_definition( ooaofooa_C_I * part, ooaofooa_C_IR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Formal_Interface_Id = part->Id;
  form->C_I_R4012_may_be_defined_by = part;
  Escher_SetInsertElement( &part->C_IR_R4012_is_formal_definition, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_I FROM C_IR ACROSS R4012
 */
void
ooaofooa_C_IR_R4012_Unlink_is_formal_definition( ooaofooa_C_I * part, ooaofooa_C_IR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Formal_Interface_Id = 0;
  form->C_I_R4012_may_be_defined_by = 0;
  Escher_SetRemoveElement( &part->C_IR_R4012_is_formal_definition, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE C_DG TO C_IR ACROSS R4014
 */
void
ooaofooa_C_IR_R4014_Link_provides_delegation_to( ooaofooa_C_DG * part, ooaofooa_C_IR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Delegation_Id = part->Id;
  form->C_DG_R4014_receives_delegation_via = part;
  Escher_SetInsertElement( &part->C_IR_R4014_provides_delegation_to, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_DG FROM C_IR ACROSS R4014
 */
void
ooaofooa_C_IR_R4014_Unlink_provides_delegation_to( ooaofooa_C_DG * part, ooaofooa_C_IR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Delegation_Id = 0;
  form->C_DG_R4014_receives_delegation_via = 0;
  Escher_SetRemoveElement( &part->C_IR_R4014_provides_delegation_to, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE C_PO TO C_IR ACROSS R4016
 */
void
ooaofooa_C_IR_R4016_Link_exposes( ooaofooa_C_PO * part, ooaofooa_C_IR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Port_Id = part->Id;
  form->C_PO_R4016_originates_from = part;
  Escher_SetInsertElement( &part->C_IR_R4016_exposes, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_PO FROM C_IR ACROSS R4016
 */
void
ooaofooa_C_IR_R4016_Unlink_exposes( ooaofooa_C_PO * part, ooaofooa_C_IR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Port_Id = 0;
  form->C_PO_R4016_originates_from = 0;
  Escher_SetRemoveElement( &part->C_IR_R4016_exposes, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_C_IR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_C_IR * self = (ooaofooa_C_IR *) instance;
  printf( "INSERT INTO C_IR VALUES ( %ld,%ld,%ld,%ld );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->Formal_Interface_Id & ESCHER_IDDUMP_MASK),
    ((long)self->Delegation_Id & ESCHER_IDDUMP_MASK),
    ((long)self->Port_Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_C_IR_container[ ooaofooa_C_IR_MAX_EXTENT_SIZE ];
static ooaofooa_C_IR ooaofooa_C_IR_instances[ ooaofooa_C_IR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_C_IR_extent = {
  {0,0}, {0,0}, &ooaofooa_C_IR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_C_IR_instances,
  sizeof( ooaofooa_C_IR ), 0, ooaofooa_C_IR_MAX_EXTENT_SIZE
  };


