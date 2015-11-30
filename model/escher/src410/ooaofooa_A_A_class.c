/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_A_class.c
 *
 * Class:       Activity  (A_A)
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
ooaofooa_A_A_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_A_A * self = (ooaofooa_A_A *) instance;
  /* Initialize application analysis class attributes.  */
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  {i_t i = avlstring[ 3 + 1 ] - avlstring[ 3 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 3 ][ i ]; }
  }
  self->Dom_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->SS_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->Parent_Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  self->Sys_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  self->Component_Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 8 ] );
  self->Component_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 9 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_A_A_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_A_A * ooaofooa_A_A_instance = (ooaofooa_A_A *) instance;
  ooaofooa_EP_SPKG * ooaofooa_EP_SPKGrelated_instance1 = (ooaofooa_EP_SPKG *) Escher_instance_cache[ (intptr_t) ooaofooa_A_A_instance->Package_ID ];
  if ( ooaofooa_EP_SPKGrelated_instance1 ) {
    ooaofooa_A_A_R1402_Link( ooaofooa_EP_SPKGrelated_instance1, ooaofooa_A_A_instance );
  }
  {
  ooaofooa_S_SYS * ooaofooa_S_SYSrelated_instance1 = (ooaofooa_S_SYS *) Escher_instance_cache[ (intptr_t) ooaofooa_A_A_instance->Sys_ID ];
  if ( ooaofooa_S_SYSrelated_instance1 ) {
    ooaofooa_A_A_R1113_Link_contains( ooaofooa_S_SYSrelated_instance1, ooaofooa_A_A_instance );
  }
  }
  {
  ooaofooa_S_SS * ooaofooa_S_SSrelated_instance1 = (ooaofooa_S_SS *) Escher_instance_cache[ (intptr_t) ooaofooa_A_A_instance->SS_ID ];
  if ( ooaofooa_S_SSrelated_instance1 ) {
    ooaofooa_A_A_R1108_Link_contains( ooaofooa_S_SSrelated_instance1, ooaofooa_A_A_instance );
  }
  }
  {
  ooaofooa_S_DOM * ooaofooa_S_DOMrelated_instance1 = (ooaofooa_S_DOM *) Escher_instance_cache[ (intptr_t) ooaofooa_A_A_instance->Dom_ID ];
  if ( ooaofooa_S_DOMrelated_instance1 ) {
    ooaofooa_A_A_R1100_Link_contains( ooaofooa_S_DOMrelated_instance1, ooaofooa_A_A_instance );
  }
  }
  {
  ooaofooa_C_C * ooaofooa_C_Crelated_instance1 = ooaofooa_C_C_AnyWhere1( ooaofooa_A_A_instance->Component_Id );
  if ( ooaofooa_C_Crelated_instance1 ) {
    ooaofooa_A_A_R1115_Link_contains( ooaofooa_C_Crelated_instance1, ooaofooa_A_A_instance );
  }
  }
  {
  ooaofooa_CP_CP * ooaofooa_CP_CPrelated_instance1 = ooaofooa_CP_CP_AnyWhere1( ooaofooa_A_A_instance->Component_Package_ID );
  if ( ooaofooa_CP_CPrelated_instance1 ) {
    ooaofooa_A_A_R1114_Link_contains( ooaofooa_CP_CPrelated_instance1, ooaofooa_A_A_instance );
  }
  }
  {
  ooaofooa_A_AIA * ooaofooa_A_AIArelated_instance1 = ooaofooa_A_AIA_AnyWhere1( ooaofooa_A_A_instance->Parent_Package_ID );
  if ( ooaofooa_A_AIArelated_instance1 ) {
    ooaofooa_A_A_R1110_Link_has_children( ooaofooa_A_AIArelated_instance1, ooaofooa_A_A_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_A_A *
ooaofooa_A_A_AnyWhere1( Escher_UniqueID_t w_Package_ID )
{
  ooaofooa_A_A * w; 
  Escher_Iterator_s iter_A_A;
  Escher_IteratorReset( &iter_A_A, &pG_ooaofooa_A_A_extent.active );
  while ( (w = (ooaofooa_A_A *) Escher_IteratorNext( &iter_A_A )) != 0 ) {
    if ( w->Package_ID == w_Package_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_DOM TO A_A ACROSS R1100
 */
void
ooaofooa_A_A_R1100_Link_contains( ooaofooa_S_DOM * part, ooaofooa_A_A * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = part->Dom_ID;
  form->S_DOM_R1100 = part;
  Escher_SetInsertElement( &part->A_A_R1100_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DOM FROM A_A ACROSS R1100
 */
void
ooaofooa_A_A_R1100_Unlink_contains( ooaofooa_S_DOM * part, ooaofooa_A_A * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = 0;
  form->S_DOM_R1100 = 0;
  Escher_SetRemoveElement( &part->A_A_R1100_contains, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_SS TO A_A ACROSS R1108
 */
void
ooaofooa_A_A_R1108_Link_contains( ooaofooa_S_SS * part, ooaofooa_A_A * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SS_ID = part->SS_ID;
  form->S_SS_R1108 = part;
  Escher_SetInsertElement( &part->A_A_R1108_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SS FROM A_A ACROSS R1108
 */
void
ooaofooa_A_A_R1108_Unlink_contains( ooaofooa_S_SS * part, ooaofooa_A_A * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SS_ID = 0;
  form->S_SS_R1108 = 0;
  Escher_SetRemoveElement( &part->A_A_R1108_contains, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE A_AIA TO A_A ACROSS R1110
 */
void
ooaofooa_A_A_R1110_Link_has_children( ooaofooa_A_AIA * part, ooaofooa_A_A * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parent_Package_ID = part->Package_ID;
  form->A_AIA_R1110 = part;
  Escher_SetInsertElement( &part->A_A_R1110_has_children, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE A_AIA FROM A_A ACROSS R1110
 */
void
ooaofooa_A_A_R1110_Unlink_has_children( ooaofooa_A_AIA * part, ooaofooa_A_A * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parent_Package_ID = 0;
  form->A_AIA_R1110 = 0;
  Escher_SetRemoveElement( &part->A_A_R1110_has_children, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_SYS TO A_A ACROSS R1113
 */
void
ooaofooa_A_A_R1113_Link_contains( ooaofooa_S_SYS * part, ooaofooa_A_A * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sys_ID = part->Sys_ID;
  form->S_SYS_R1113 = part;
  Escher_SetInsertElement( &part->A_A_R1113_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SYS FROM A_A ACROSS R1113
 */
void
ooaofooa_A_A_R1113_Unlink_contains( ooaofooa_S_SYS * part, ooaofooa_A_A * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sys_ID = 0;
  form->S_SYS_R1113 = 0;
  Escher_SetRemoveElement( &part->A_A_R1113_contains, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE CP_CP TO A_A ACROSS R1114
 */
void
ooaofooa_A_A_R1114_Link_contains( ooaofooa_CP_CP * part, ooaofooa_A_A * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Package_ID = part->Package_ID;
  form->CP_CP_R1114 = part;
  Escher_SetInsertElement( &part->A_A_R1114_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE CP_CP FROM A_A ACROSS R1114
 */
void
ooaofooa_A_A_R1114_Unlink_contains( ooaofooa_CP_CP * part, ooaofooa_A_A * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Package_ID = 0;
  form->CP_CP_R1114 = 0;
  Escher_SetRemoveElement( &part->A_A_R1114_contains, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE C_C TO A_A ACROSS R1115
 */
void
ooaofooa_A_A_R1115_Link_contains( ooaofooa_C_C * part, ooaofooa_A_A * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Id = part->Id;
  form->C_C_R1115 = part;
  Escher_SetInsertElement( &part->A_A_R1115_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_C FROM A_A ACROSS R1115
 */
void
ooaofooa_A_A_R1115_Unlink_contains( ooaofooa_C_C * part, ooaofooa_A_A * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Id = 0;
  form->C_C_R1115 = 0;
  Escher_SetRemoveElement( &part->A_A_R1115_contains, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE EP_SPKG TO A_A ACROSS R1402
 */
void
ooaofooa_A_A_R1402_Link( ooaofooa_EP_SPKG * supertype, ooaofooa_A_A * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Package_ID = supertype->Package_ID;
  /* Optimized linkage for A_A->EP_SPKG[R1402] */
  subtype->EP_SPKG_R1402 = supertype;
  /* Optimized linkage for EP_SPKG->A_A[R1402] */
  supertype->R1402_subtype = subtype;
  supertype->R1402_object_id = ooaofooa_A_A_CLASS_NUMBER;
}


/*
 * UNRELATE EP_SPKG FROM A_A ACROSS R1402
 */
void
ooaofooa_A_A_R1402_Unlink( ooaofooa_EP_SPKG * supertype, ooaofooa_A_A * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->EP_SPKG_R1402 = 0;
  supertype->R1402_subtype = 0;
  supertype->R1402_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_A_A_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_A_A * self = (ooaofooa_A_A *) instance;
  printf( "INSERT INTO A_A VALUES ( %ld,'%s','%s',%ld,%ld,%ld,%ld,%ld,%ld );\n",
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip,
    ((long)self->Dom_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SS_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Parent_Package_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Sys_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Component_Package_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Component_Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_A_A_container[ ooaofooa_A_A_MAX_EXTENT_SIZE ];
static ooaofooa_A_A ooaofooa_A_A_instances[ ooaofooa_A_A_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_A_A_extent = {
  {0,0}, {0,0}, &ooaofooa_A_A_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_A_A_instances,
  sizeof( ooaofooa_A_A ), 0, ooaofooa_A_A_MAX_EXTENT_SIZE
  };


