/*----------------------------------------------------------------------------
 * File:  ooaofooa_UC_UCC_class.c
 *
 * Class:       Use Case Diagram  (UC_UCC)
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
ooaofooa_UC_UCC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_UC_UCC * self = (ooaofooa_UC_UCC *) instance;
  /* Initialize application analysis class attributes.  */
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Dom_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->SS_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Parent_Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
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
void ooaofooa_UC_UCC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_UC_UCC * ooaofooa_UC_UCC_instance = (ooaofooa_UC_UCC *) instance;
  ooaofooa_UC_UIU * ooaofooa_UC_UIUrelated_instance1 = ooaofooa_UC_UIU_AnyWhere1( ooaofooa_UC_UCC_instance->Parent_Package_ID );
  if ( ooaofooa_UC_UIUrelated_instance1 ) {
    ooaofooa_UC_UCC_R1209_Link_has_children( ooaofooa_UC_UIUrelated_instance1, ooaofooa_UC_UCC_instance );
  }
  {
  ooaofooa_EP_SPKG * ooaofooa_EP_SPKGrelated_instance1 = (ooaofooa_EP_SPKG *) Escher_instance_cache[ (intptr_t) ooaofooa_UC_UCC_instance->Package_ID ];
  if ( ooaofooa_EP_SPKGrelated_instance1 ) {
    ooaofooa_UC_UCC_R1402_Link( ooaofooa_EP_SPKGrelated_instance1, ooaofooa_UC_UCC_instance );
  }
  }
  {
  ooaofooa_S_DOM * ooaofooa_S_DOMrelated_instance1 = (ooaofooa_S_DOM *) Escher_instance_cache[ (intptr_t) ooaofooa_UC_UCC_instance->Dom_ID ];
  if ( ooaofooa_S_DOMrelated_instance1 ) {
    ooaofooa_UC_UCC_R1201_Link_can_display( ooaofooa_S_DOMrelated_instance1, ooaofooa_UC_UCC_instance );
  }
  }
  {
  ooaofooa_S_SS * ooaofooa_S_SSrelated_instance1 = (ooaofooa_S_SS *) Escher_instance_cache[ (intptr_t) ooaofooa_UC_UCC_instance->SS_ID ];
  if ( ooaofooa_S_SSrelated_instance1 ) {
    ooaofooa_UC_UCC_R1202_Link_can_display( ooaofooa_S_SSrelated_instance1, ooaofooa_UC_UCC_instance );
  }
  }
  {
  ooaofooa_S_SYS * ooaofooa_S_SYSrelated_instance1 = (ooaofooa_S_SYS *) Escher_instance_cache[ (intptr_t) ooaofooa_UC_UCC_instance->Sys_ID ];
  if ( ooaofooa_S_SYSrelated_instance1 ) {
    ooaofooa_UC_UCC_R1211_Link_can_display( ooaofooa_S_SYSrelated_instance1, ooaofooa_UC_UCC_instance );
  }
  }
  {
  ooaofooa_CP_CP * ooaofooa_CP_CPrelated_instance1 = ooaofooa_CP_CP_AnyWhere1( ooaofooa_UC_UCC_instance->Component_Package_ID );
  if ( ooaofooa_CP_CPrelated_instance1 ) {
    ooaofooa_UC_UCC_R1212_Link_can_display( ooaofooa_CP_CPrelated_instance1, ooaofooa_UC_UCC_instance );
  }
  }
  {
  ooaofooa_C_C * ooaofooa_C_Crelated_instance1 = ooaofooa_C_C_AnyWhere1( ooaofooa_UC_UCC_instance->Component_Id );
  if ( ooaofooa_C_Crelated_instance1 ) {
    ooaofooa_UC_UCC_R1213_Link_can_display( ooaofooa_C_Crelated_instance1, ooaofooa_UC_UCC_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_UC_UCC *
ooaofooa_UC_UCC_AnyWhere1( Escher_UniqueID_t w_Package_ID )
{
  ooaofooa_UC_UCC * w; 
  Escher_Iterator_s iter_UC_UCC;
  Escher_IteratorReset( &iter_UC_UCC, &pG_ooaofooa_UC_UCC_extent.active );
  while ( (w = (ooaofooa_UC_UCC *) Escher_IteratorNext( &iter_UC_UCC )) != 0 ) {
    if ( w->Package_ID == w_Package_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_DOM TO UC_UCC ACROSS R1201
 */
void
ooaofooa_UC_UCC_R1201_Link_can_display( ooaofooa_S_DOM * part, ooaofooa_UC_UCC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = part->Dom_ID;
  form->S_DOM_R1201_can_be_displayed_in = part;
  Escher_SetInsertElement( &part->UC_UCC_R1201_can_display, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DOM FROM UC_UCC ACROSS R1201
 */
void
ooaofooa_UC_UCC_R1201_Unlink_can_display( ooaofooa_S_DOM * part, ooaofooa_UC_UCC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = 0;
  form->S_DOM_R1201_can_be_displayed_in = 0;
  Escher_SetRemoveElement( &part->UC_UCC_R1201_can_display, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_SS TO UC_UCC ACROSS R1202
 */
void
ooaofooa_UC_UCC_R1202_Link_can_display( ooaofooa_S_SS * part, ooaofooa_UC_UCC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SS_ID = part->SS_ID;
  form->S_SS_R1202_can_be_displayed_in = part;
  Escher_SetInsertElement( &part->UC_UCC_R1202_can_display, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SS FROM UC_UCC ACROSS R1202
 */
void
ooaofooa_UC_UCC_R1202_Unlink_can_display( ooaofooa_S_SS * part, ooaofooa_UC_UCC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SS_ID = 0;
  form->S_SS_R1202_can_be_displayed_in = 0;
  Escher_SetRemoveElement( &part->UC_UCC_R1202_can_display, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE UC_UIU TO UC_UCC ACROSS R1209
 */
void
ooaofooa_UC_UCC_R1209_Link_has_children( ooaofooa_UC_UIU * part, ooaofooa_UC_UCC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parent_Package_ID = part->Package_ID;
  form->UC_UIU_R1209_is_connection_to_parent = part;
  Escher_SetInsertElement( &part->UC_UCC_R1209_has_children, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE UC_UIU FROM UC_UCC ACROSS R1209
 */
void
ooaofooa_UC_UCC_R1209_Unlink_has_children( ooaofooa_UC_UIU * part, ooaofooa_UC_UCC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parent_Package_ID = 0;
  form->UC_UIU_R1209_is_connection_to_parent = 0;
  Escher_SetRemoveElement( &part->UC_UCC_R1209_has_children, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_SYS TO UC_UCC ACROSS R1211
 */
void
ooaofooa_UC_UCC_R1211_Link_can_display( ooaofooa_S_SYS * part, ooaofooa_UC_UCC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sys_ID = part->Sys_ID;
  form->S_SYS_R1211 = part;
  Escher_SetInsertElement( &part->UC_UCC_R1211_can_display, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SYS FROM UC_UCC ACROSS R1211
 */
void
ooaofooa_UC_UCC_R1211_Unlink_can_display( ooaofooa_S_SYS * part, ooaofooa_UC_UCC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sys_ID = 0;
  form->S_SYS_R1211 = 0;
  Escher_SetRemoveElement( &part->UC_UCC_R1211_can_display, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE CP_CP TO UC_UCC ACROSS R1212
 */
void
ooaofooa_UC_UCC_R1212_Link_can_display( ooaofooa_CP_CP * part, ooaofooa_UC_UCC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Package_ID = part->Package_ID;
  form->CP_CP_R1212 = part;
  Escher_SetInsertElement( &part->UC_UCC_R1212_can_display, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE CP_CP FROM UC_UCC ACROSS R1212
 */
void
ooaofooa_UC_UCC_R1212_Unlink_can_display( ooaofooa_CP_CP * part, ooaofooa_UC_UCC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Package_ID = 0;
  form->CP_CP_R1212 = 0;
  Escher_SetRemoveElement( &part->UC_UCC_R1212_can_display, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE C_C TO UC_UCC ACROSS R1213
 */
void
ooaofooa_UC_UCC_R1213_Link_can_display( ooaofooa_C_C * part, ooaofooa_UC_UCC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Id = part->Id;
  form->C_C_R1213 = part;
  Escher_SetInsertElement( &part->UC_UCC_R1213_can_display, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_C FROM UC_UCC ACROSS R1213
 */
void
ooaofooa_UC_UCC_R1213_Unlink_can_display( ooaofooa_C_C * part, ooaofooa_UC_UCC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Id = 0;
  form->C_C_R1213 = 0;
  Escher_SetRemoveElement( &part->UC_UCC_R1213_can_display, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE EP_SPKG TO UC_UCC ACROSS R1402
 */
void
ooaofooa_UC_UCC_R1402_Link( ooaofooa_EP_SPKG * supertype, ooaofooa_UC_UCC * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Package_ID = supertype->Package_ID;
  /* Optimized linkage for UC_UCC->EP_SPKG[R1402] */
  subtype->EP_SPKG_R1402 = supertype;
  /* Optimized linkage for EP_SPKG->UC_UCC[R1402] */
  supertype->R1402_subtype = subtype;
  supertype->R1402_object_id = ooaofooa_UC_UCC_CLASS_NUMBER;
}


/*
 * UNRELATE EP_SPKG FROM UC_UCC ACROSS R1402
 */
void
ooaofooa_UC_UCC_R1402_Unlink( ooaofooa_EP_SPKG * supertype, ooaofooa_UC_UCC * subtype )
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
ooaofooa_UC_UCC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_UC_UCC * self = (ooaofooa_UC_UCC *) instance;
  printf( "INSERT INTO UC_UCC VALUES ( %ld,%ld,%ld,%ld,'%s','%s',%ld,%ld,%ld );\n",
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Dom_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SS_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Parent_Package_ID & ESCHER_IDDUMP_MASK),
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
static Escher_SetElement_s ooaofooa_UC_UCC_container[ ooaofooa_UC_UCC_MAX_EXTENT_SIZE ];
static ooaofooa_UC_UCC ooaofooa_UC_UCC_instances[ ooaofooa_UC_UCC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_UC_UCC_extent = {
  {0,0}, {0,0}, &ooaofooa_UC_UCC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_UC_UCC_instances,
  sizeof( ooaofooa_UC_UCC ), 0, ooaofooa_UC_UCC_MAX_EXTENT_SIZE
  };


