/*----------------------------------------------------------------------------
 * File:  ooaofooa_COMM_COMM_class.c
 *
 * Class:       Communication  (COMM_COMM)
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
ooaofooa_COMM_COMM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_COMM_COMM * self = (ooaofooa_COMM_COMM *) instance;
  /* Initialize application analysis class attributes.  */
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Dom_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->SS_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->CIC_Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  Escher_strcpy( self->Name, avlstring[ 5 ] );
  {i_t i = avlstring[ 6 + 1 ] - avlstring[ 6 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 6 ][ i ]; }
  }
  self->Sys_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  self->Component_Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 8 ] );
  self->Component_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 9 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_COMM_COMM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_COMM_COMM * ooaofooa_COMM_COMM_instance = (ooaofooa_COMM_COMM *) instance;
  ooaofooa_EP_SPKG * ooaofooa_EP_SPKGrelated_instance1 = (ooaofooa_EP_SPKG *) Escher_instance_cache[ (intptr_t) ooaofooa_COMM_COMM_instance->Package_ID ];
  if ( ooaofooa_EP_SPKGrelated_instance1 ) {
    ooaofooa_COMM_COMM_R1402_Link( ooaofooa_EP_SPKGrelated_instance1, ooaofooa_COMM_COMM_instance );
  }
  {
  ooaofooa_S_SYS * ooaofooa_S_SYSrelated_instance1 = (ooaofooa_S_SYS *) Escher_instance_cache[ (intptr_t) ooaofooa_COMM_COMM_instance->Sys_ID ];
  if ( ooaofooa_S_SYSrelated_instance1 ) {
    ooaofooa_COMM_COMM_R1136_Link_is_displayed_in( ooaofooa_S_SYSrelated_instance1, ooaofooa_COMM_COMM_instance );
  }
  }
  {
  ooaofooa_S_SS * ooaofooa_S_SSrelated_instance1 = (ooaofooa_S_SS *) Escher_instance_cache[ (intptr_t) ooaofooa_COMM_COMM_instance->SS_ID ];
  if ( ooaofooa_S_SSrelated_instance1 ) {
    ooaofooa_COMM_COMM_R1131_Link_can_display( ooaofooa_S_SSrelated_instance1, ooaofooa_COMM_COMM_instance );
  }
  }
  {
  ooaofooa_S_DOM * ooaofooa_S_DOMrelated_instance1 = (ooaofooa_S_DOM *) Escher_instance_cache[ (intptr_t) ooaofooa_COMM_COMM_instance->Dom_ID ];
  if ( ooaofooa_S_DOMrelated_instance1 ) {
    ooaofooa_COMM_COMM_R1132_Link_can_display( ooaofooa_S_DOMrelated_instance1, ooaofooa_COMM_COMM_instance );
  }
  }
  {
  ooaofooa_C_C * ooaofooa_C_Crelated_instance1 = ooaofooa_C_C_AnyWhere1( ooaofooa_COMM_COMM_instance->Component_Id );
  if ( ooaofooa_C_Crelated_instance1 ) {
    ooaofooa_COMM_COMM_R1138_Link_is_displayed_in( ooaofooa_C_Crelated_instance1, ooaofooa_COMM_COMM_instance );
  }
  }
  {
  ooaofooa_CP_CP * ooaofooa_CP_CPrelated_instance1 = ooaofooa_CP_CP_AnyWhere1( ooaofooa_COMM_COMM_instance->Component_Package_ID );
  if ( ooaofooa_CP_CPrelated_instance1 ) {
    ooaofooa_COMM_COMM_R1137_Link_is_displayed_in( ooaofooa_CP_CPrelated_instance1, ooaofooa_COMM_COMM_instance );
  }
  }
  {
  ooaofooa_COMM_CIC * ooaofooa_COMM_CICrelated_instance1 = ooaofooa_COMM_CIC_AnyWhere1( ooaofooa_COMM_COMM_instance->CIC_Package_ID );
  if ( ooaofooa_COMM_CICrelated_instance1 ) {
    ooaofooa_COMM_COMM_R1129_Link_has_children( ooaofooa_COMM_CICrelated_instance1, ooaofooa_COMM_COMM_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_COMM_COMM *
ooaofooa_COMM_COMM_AnyWhere1( Escher_UniqueID_t w_Package_ID )
{
  ooaofooa_COMM_COMM * w; 
  Escher_Iterator_s iter_COMM_COMM;
  Escher_IteratorReset( &iter_COMM_COMM, &pG_ooaofooa_COMM_COMM_extent.active );
  while ( (w = (ooaofooa_COMM_COMM *) Escher_IteratorNext( &iter_COMM_COMM )) != 0 ) {
    if ( w->Package_ID == w_Package_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE COMM_CIC TO COMM_COMM ACROSS R1129
 */
void
ooaofooa_COMM_COMM_R1129_Link_has_children( ooaofooa_COMM_CIC * part, ooaofooa_COMM_COMM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->CIC_Package_ID = part->Package_ID;
  form->COMM_CIC_R1129_is_connection_to_parent = part;
  Escher_SetInsertElement( &part->COMM_COMM_R1129_has_children, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE COMM_CIC FROM COMM_COMM ACROSS R1129
 */
void
ooaofooa_COMM_COMM_R1129_Unlink_has_children( ooaofooa_COMM_CIC * part, ooaofooa_COMM_COMM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->CIC_Package_ID = 0;
  form->COMM_CIC_R1129_is_connection_to_parent = 0;
  Escher_SetRemoveElement( &part->COMM_COMM_R1129_has_children, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_SS TO COMM_COMM ACROSS R1131
 */
void
ooaofooa_COMM_COMM_R1131_Link_can_display( ooaofooa_S_SS * part, ooaofooa_COMM_COMM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SS_ID = part->SS_ID;
  form->S_SS_R1131_can_be_displayed_in = part;
  Escher_SetInsertElement( &part->COMM_COMM_R1131_can_display, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SS FROM COMM_COMM ACROSS R1131
 */
void
ooaofooa_COMM_COMM_R1131_Unlink_can_display( ooaofooa_S_SS * part, ooaofooa_COMM_COMM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SS_ID = 0;
  form->S_SS_R1131_can_be_displayed_in = 0;
  Escher_SetRemoveElement( &part->COMM_COMM_R1131_can_display, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_DOM TO COMM_COMM ACROSS R1132
 */
void
ooaofooa_COMM_COMM_R1132_Link_can_display( ooaofooa_S_DOM * part, ooaofooa_COMM_COMM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = part->Dom_ID;
  form->S_DOM_R1132_can_be_displayed_in = part;
  Escher_SetInsertElement( &part->COMM_COMM_R1132_can_display, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DOM FROM COMM_COMM ACROSS R1132
 */
void
ooaofooa_COMM_COMM_R1132_Unlink_can_display( ooaofooa_S_DOM * part, ooaofooa_COMM_COMM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = 0;
  form->S_DOM_R1132_can_be_displayed_in = 0;
  Escher_SetRemoveElement( &part->COMM_COMM_R1132_can_display, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_SYS TO COMM_COMM ACROSS R1136
 */
void
ooaofooa_COMM_COMM_R1136_Link_is_displayed_in( ooaofooa_S_SYS * part, ooaofooa_COMM_COMM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sys_ID = part->Sys_ID;
  form->S_SYS_R1136 = part;
  Escher_SetInsertElement( &part->COMM_COMM_R1136_is_displayed_in, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SYS FROM COMM_COMM ACROSS R1136
 */
void
ooaofooa_COMM_COMM_R1136_Unlink_is_displayed_in( ooaofooa_S_SYS * part, ooaofooa_COMM_COMM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sys_ID = 0;
  form->S_SYS_R1136 = 0;
  Escher_SetRemoveElement( &part->COMM_COMM_R1136_is_displayed_in, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE CP_CP TO COMM_COMM ACROSS R1137
 */
void
ooaofooa_COMM_COMM_R1137_Link_is_displayed_in( ooaofooa_CP_CP * part, ooaofooa_COMM_COMM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Package_ID = part->Package_ID;
  form->CP_CP_R1137 = part;
  Escher_SetInsertElement( &part->COMM_COMM_R1137_is_displayed_in, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE CP_CP FROM COMM_COMM ACROSS R1137
 */
void
ooaofooa_COMM_COMM_R1137_Unlink_is_displayed_in( ooaofooa_CP_CP * part, ooaofooa_COMM_COMM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Package_ID = 0;
  form->CP_CP_R1137 = 0;
  Escher_SetRemoveElement( &part->COMM_COMM_R1137_is_displayed_in, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE C_C TO COMM_COMM ACROSS R1138
 */
void
ooaofooa_COMM_COMM_R1138_Link_is_displayed_in( ooaofooa_C_C * part, ooaofooa_COMM_COMM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Id = part->Id;
  form->C_C_R1138 = part;
  Escher_SetInsertElement( &part->COMM_COMM_R1138_is_displayed_in, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_C FROM COMM_COMM ACROSS R1138
 */
void
ooaofooa_COMM_COMM_R1138_Unlink_is_displayed_in( ooaofooa_C_C * part, ooaofooa_COMM_COMM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Id = 0;
  form->C_C_R1138 = 0;
  Escher_SetRemoveElement( &part->COMM_COMM_R1138_is_displayed_in, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE EP_SPKG TO COMM_COMM ACROSS R1402
 */
void
ooaofooa_COMM_COMM_R1402_Link( ooaofooa_EP_SPKG * supertype, ooaofooa_COMM_COMM * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Package_ID = supertype->Package_ID;
  /* Optimized linkage for COMM_COMM->EP_SPKG[R1402] */
  subtype->EP_SPKG_R1402 = supertype;
  /* Optimized linkage for EP_SPKG->COMM_COMM[R1402] */
  supertype->R1402_subtype = subtype;
  supertype->R1402_object_id = ooaofooa_COMM_COMM_CLASS_NUMBER;
}


/*
 * UNRELATE EP_SPKG FROM COMM_COMM ACROSS R1402
 */
void
ooaofooa_COMM_COMM_R1402_Unlink( ooaofooa_EP_SPKG * supertype, ooaofooa_COMM_COMM * subtype )
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
ooaofooa_COMM_COMM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_COMM_COMM * self = (ooaofooa_COMM_COMM *) instance;
  printf( "INSERT INTO COMM_COMM VALUES ( %ld,%ld,%ld,%ld,'%s','%s',%ld,%ld,%ld );\n",
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Dom_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SS_ID & ESCHER_IDDUMP_MASK),
    ((long)self->CIC_Package_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip,
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
static Escher_SetElement_s ooaofooa_COMM_COMM_container[ ooaofooa_COMM_COMM_MAX_EXTENT_SIZE ];
static ooaofooa_COMM_COMM ooaofooa_COMM_COMM_instances[ ooaofooa_COMM_COMM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_COMM_COMM_extent = {
  {0,0}, {0,0}, &ooaofooa_COMM_COMM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_COMM_COMM_instances,
  sizeof( ooaofooa_COMM_COMM ), 0, ooaofooa_COMM_COMM_MAX_EXTENT_SIZE
  };


