/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_E_class.c
 *
 * Class:       Activity Edge  (A_E)
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
ooaofooa_A_E_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_A_E * self = (ooaofooa_A_E *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  Escher_strcpy( self->Guard, avlstring[ 3 ] );
  {i_t i = avlstring[ 4 + 1 ] - avlstring[ 4 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 4 ][ i ]; }
  }
  self->TargetId = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->SourceId = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_A_E_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_A_E * ooaofooa_A_E_instance = (ooaofooa_A_E *) instance;
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_A_E_instance->Id ];
  if ( ooaofooa_PE_PErelated_instance1 ) {
    ooaofooa_A_E_R8001_Link( ooaofooa_PE_PErelated_instance1, ooaofooa_A_E_instance );
  }
  {
  ooaofooa_A_A * ooaofooa_A_Arelated_instance1 = ooaofooa_A_A_AnyWhere1( ooaofooa_A_E_instance->Package_ID );
  if ( ooaofooa_A_Arelated_instance1 ) {
    ooaofooa_A_E_R1102_Link_contained_edge( ooaofooa_A_Arelated_instance1, ooaofooa_A_E_instance );
  }
  }
  {
  ooaofooa_A_N * ooaofooa_A_Nrelated_instance1 = ooaofooa_A_N_AnyWhere1( ooaofooa_A_E_instance->TargetId );
  if ( ooaofooa_A_Nrelated_instance1 ) {
    ooaofooa_A_E_R1103_Link_incoming( ooaofooa_A_Nrelated_instance1, ooaofooa_A_E_instance );
  }
  }
  {
  ooaofooa_A_N * ooaofooa_A_Nrelated_instance1 = ooaofooa_A_N_AnyWhere1( ooaofooa_A_E_instance->SourceId );
  if ( ooaofooa_A_Nrelated_instance1 ) {
    ooaofooa_A_E_R1104_Link_outgoing( ooaofooa_A_Nrelated_instance1, ooaofooa_A_E_instance );
  }
  }
}


/*
 * RELATE A_A TO A_E ACROSS R1102
 */
void
ooaofooa_A_E_R1102_Link_contained_edge( ooaofooa_A_A * part, ooaofooa_A_E * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = part->Package_ID;
  form->A_A_R1102 = part;
  Escher_SetInsertElement( &part->A_E_R1102_contained_edge, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE A_A FROM A_E ACROSS R1102
 */
void
ooaofooa_A_E_R1102_Unlink_contained_edge( ooaofooa_A_A * part, ooaofooa_A_E * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = 0;
  form->A_A_R1102 = 0;
  Escher_SetRemoveElement( &part->A_E_R1102_contained_edge, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE A_N TO A_E ACROSS R1103
 */
void
ooaofooa_A_E_R1103_Link_incoming( ooaofooa_A_N * part, ooaofooa_A_E * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->TargetId = part->Id;
  form->A_N_R1103_target = part;
  Escher_SetInsertElement( &part->A_E_R1103_incoming, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE A_N FROM A_E ACROSS R1103
 */
void
ooaofooa_A_E_R1103_Unlink_incoming( ooaofooa_A_N * part, ooaofooa_A_E * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->TargetId = 0;
  form->A_N_R1103_target = 0;
  Escher_SetRemoveElement( &part->A_E_R1103_incoming, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE A_N TO A_E ACROSS R1104
 */
void
ooaofooa_A_E_R1104_Link_outgoing( ooaofooa_A_N * part, ooaofooa_A_E * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SourceId = part->Id;
  form->A_N_R1104_source = part;
  Escher_SetInsertElement( &part->A_E_R1104_outgoing, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE A_N FROM A_E ACROSS R1104
 */
void
ooaofooa_A_E_R1104_Unlink_outgoing( ooaofooa_A_N * part, ooaofooa_A_E * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SourceId = 0;
  form->A_N_R1104_source = 0;
  Escher_SetRemoveElement( &part->A_E_R1104_outgoing, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE PE_PE TO A_E ACROSS R8001
 */
void
ooaofooa_A_E_R8001_Link( ooaofooa_PE_PE * supertype, ooaofooa_A_E * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Element_ID;
  /* Optimized linkage for A_E->PE_PE[R8001] */
  subtype->PE_PE_R8001 = supertype;
  /* Optimized linkage for PE_PE->A_E[R8001] */
  supertype->R8001_subtype = subtype;
  supertype->R8001_object_id = ooaofooa_A_E_CLASS_NUMBER;
}


/*
 * UNRELATE PE_PE FROM A_E ACROSS R8001
 */
void
ooaofooa_A_E_R8001_Unlink( ooaofooa_PE_PE * supertype, ooaofooa_A_E * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->PE_PE_R8001 = 0;
  supertype->R8001_subtype = 0;
  supertype->R8001_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_A_E_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_A_E * self = (ooaofooa_A_E *) instance;
  printf( "INSERT INTO A_E VALUES ( %ld,%ld,'%s','%s',%ld,%ld );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    self->Guard,
    self->Descrip,
    ((long)self->TargetId & ESCHER_IDDUMP_MASK),
    ((long)self->SourceId & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_A_E_container[ ooaofooa_A_E_MAX_EXTENT_SIZE ];
static ooaofooa_A_E ooaofooa_A_E_instances[ ooaofooa_A_E_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_A_E_extent = {
  {0,0}, {0,0}, &ooaofooa_A_E_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_A_E_instances,
  sizeof( ooaofooa_A_E ), 0, ooaofooa_A_E_MAX_EXTENT_SIZE
  };


