/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_ABA_class.c
 *
 * Class:       Action Block Anchor  (TE_ABA)
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
ooaofooa_TE_ABA_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_ABA * self = (ooaofooa_TE_ABA *) instance;
  /* Initialize application analysis class attributes.  */
  self->AbaID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->AbaID;
  self->subtypeKL = Escher_strcpy( self->subtypeKL, avlstring[ 2 ] );
  self->te_cID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->SelfEventCount = Escher_atoi( avlstring[ 4 ] );
  self->NonSelfEventCount = Escher_atoi( avlstring[ 5 ] );
  self->ParameterDeclaration = Escher_strcpy( self->ParameterDeclaration, avlstring[ 6 ] );
  self->ParameterDefinition = Escher_strcpy( self->ParameterDefinition, avlstring[ 7 ] );
  self->ParameterStructure = Escher_strcpy( self->ParameterStructure, avlstring[ 8 ] );
  self->ParameterTrace = Escher_strcpy( self->ParameterTrace, avlstring[ 9 ] );
  self->ParameterFormat = Escher_strcpy( self->ParameterFormat, avlstring[ 10 ] );
  self->ParameterInvocation = Escher_strcpy( self->ParameterInvocation, avlstring[ 11 ] );
  self->ParameterAssignment = Escher_strcpy( self->ParameterAssignment, avlstring[ 12 ] );
  self->ParameterAssignmentBase = Escher_strcpy( self->ParameterAssignmentBase, avlstring[ 13 ] );
  self->scope = Escher_strcpy( self->scope, avlstring[ 14 ] );
  self->GeneratedName = Escher_strcpy( self->GeneratedName, avlstring[ 15 ] );
  self->ReturnDataType = Escher_strcpy( self->ReturnDataType, avlstring[ 16 ] );
  self->dimensions = Escher_atoi( avlstring[ 17 ] );
  self->te_dimID = (Escher_iHandle_t) Escher_atoi( avlstring[ 18 ] );
  self->array_spec = Escher_strcpy( self->array_spec, avlstring[ 19 ] );
  self->code = Escher_strcpy( self->code, avlstring[ 20 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_ABA_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_ABA * ooaofooa_TE_ABA_instance = (ooaofooa_TE_ABA *) instance;
  ooaofooa_TE_DIM * ooaofooa_TE_DIMrelated_instance1 = (ooaofooa_TE_DIM *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_ABA_instance->te_dimID ];
  if ( ooaofooa_TE_DIMrelated_instance1 ) {
    ooaofooa_TE_ABA_R2058_Link_diments( ooaofooa_TE_DIMrelated_instance1, ooaofooa_TE_ABA_instance );
  }
  {
  ooaofooa_TE_C * ooaofooa_TE_Crelated_instance1 = (ooaofooa_TE_C *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_ABA_instance->te_cID ];
  if ( ooaofooa_TE_Crelated_instance1 ) {
    ooaofooa_TE_ABA_R2088_Link( ooaofooa_TE_Crelated_instance1, ooaofooa_TE_ABA_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_ABA *
ooaofooa_TE_ABA_AnyWhere1( Escher_UniqueID_t w_AbaID )
{
  ooaofooa_TE_ABA * w; 
  Escher_Iterator_s iter_TE_ABA;
  Escher_IteratorReset( &iter_TE_ABA, &pG_ooaofooa_TE_ABA_extent.active );
  while ( (w = (ooaofooa_TE_ABA *) Escher_IteratorNext( &iter_TE_ABA )) != 0 ) {
    if ( w->AbaID == w_AbaID ) {
      return w;
    }
  }
  return 0;
}


/* Accessors to TE_ABA[R2010] subtypes */


/*
 * RELATE TE_DIM TO TE_ABA ACROSS R2058
 */
void
ooaofooa_TE_ABA_R2058_Link_diments( ooaofooa_TE_DIM * part, ooaofooa_TE_ABA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_dimID = part->te_dimID;
  form->TE_DIM_R2058_has_first = part;
  part->TE_ABA_R2058_diments = form;
}

/*
 * UNRELATE TE_DIM FROM TE_ABA ACROSS R2058
 */
void
ooaofooa_TE_ABA_R2058_Unlink_diments( ooaofooa_TE_DIM * part, ooaofooa_TE_ABA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_dimID = 0;
  form->TE_DIM_R2058_has_first = 0;
  part->TE_ABA_R2058_diments = 0;
}

/*
 * RELATE TE_C TO TE_ABA ACROSS R2088
 */
void
ooaofooa_TE_ABA_R2088_Link( ooaofooa_TE_C * part, ooaofooa_TE_ABA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_cID = part->ID;
  form->TE_C_R2088 = part;
  Escher_SetInsertElement( &part->TE_ABA_R2088, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_C FROM TE_ABA ACROSS R2088
 */
void
ooaofooa_TE_ABA_R2088_Unlink( ooaofooa_TE_C * part, ooaofooa_TE_ABA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_cID = 0;
  form->TE_C_R2088 = 0;
  Escher_SetRemoveElement( &part->TE_ABA_R2088, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_ABA_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_ABA * self = (ooaofooa_TE_ABA *) instance;
  printf( "INSERT INTO TE_ABA VALUES ( %ld,'%s',%ld,%d,%d,'%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s',%d,%ld,'%s','%s' );\n",
    ((long)self->AbaID & ESCHER_IDDUMP_MASK),
    ( 0 != self->subtypeKL ) ? self->subtypeKL : "",
    ((long)self->te_cID & ESCHER_IDDUMP_MASK),
    self->SelfEventCount,
    self->NonSelfEventCount,
    ( 0 != self->ParameterDeclaration ) ? self->ParameterDeclaration : "",
    ( 0 != self->ParameterDefinition ) ? self->ParameterDefinition : "",
    ( 0 != self->ParameterStructure ) ? self->ParameterStructure : "",
    ( 0 != self->ParameterTrace ) ? self->ParameterTrace : "",
    ( 0 != self->ParameterFormat ) ? self->ParameterFormat : "",
    ( 0 != self->ParameterInvocation ) ? self->ParameterInvocation : "",
    ( 0 != self->ParameterAssignment ) ? self->ParameterAssignment : "",
    ( 0 != self->ParameterAssignmentBase ) ? self->ParameterAssignmentBase : "",
    ( 0 != self->scope ) ? self->scope : "",
    ( 0 != self->GeneratedName ) ? self->GeneratedName : "",
    ( 0 != self->ReturnDataType ) ? self->ReturnDataType : "",
    self->dimensions,
    ((long)self->te_dimID & ESCHER_IDDUMP_MASK),
    ( 0 != self->array_spec ) ? self->array_spec : "",
    ( 0 != self->code ) ? self->code : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_ABA_container[ ooaofooa_TE_ABA_MAX_EXTENT_SIZE ];
static ooaofooa_TE_ABA ooaofooa_TE_ABA_instances[ ooaofooa_TE_ABA_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_ABA_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_ABA_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_ABA_instances,
  sizeof( ooaofooa_TE_ABA ), 0, ooaofooa_TE_ABA_MAX_EXTENT_SIZE
  };


