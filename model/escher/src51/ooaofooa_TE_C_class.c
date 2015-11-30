/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_C_class.c
 *
 * Class:       Extended Component  (TE_C)
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
ooaofooa_TE_C_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_C * self = (ooaofooa_TE_C *) instance;
  /* Initialize application analysis class attributes.  */
  self->ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->ID;
  self->Name = Escher_strcpy( self->Name, avlstring[ 2 ] );
  {i_t i = avlstring[ 3 + 1 ] - avlstring[ 3 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 3 ][ i ]; }
  }
  self->number = Escher_atoi( avlstring[ 4 ] );
  self->StateTrace = ( '0' != *avlstring[ 5 ] );
  self->StmtTrace = ( '0' != *avlstring[ 6 ] );
  self->DetectEmpty = ( '0' != *avlstring[ 7 ] );
  self->OptDisabled = ( '0' != *avlstring[ 8 ] );
  self->RawComments = ( '0' != *avlstring[ 9 ] );
  self->CodeComments = ( '0' != *avlstring[ 10 ] );
  self->CollectionsFlavor = Escher_atoi( avlstring[ 11 ] );
  self->classes_file = Escher_strcpy( self->classes_file, avlstring[ 12 ] );
  self->functions_file = Escher_strcpy( self->functions_file, avlstring[ 13 ] );
  self->MaxObjExtent = Escher_atoi( avlstring[ 14 ] );
  self->MaxRelExtent = Escher_atoi( avlstring[ 15 ] );
  self->MaxSelectExtent = Escher_atoi( avlstring[ 16 ] );
  self->MaxSelfEvents = Escher_atoi( avlstring[ 17 ] );
  self->MaxNonSelfEvents = Escher_atoi( avlstring[ 18 ] );
  self->MaxPriorityEvents = Escher_atoi( avlstring[ 19 ] );
  self->MaxTimers = Escher_atoi( avlstring[ 20 ] );
  self->InterleavedBridges = Escher_atoi( avlstring[ 21 ] );
  self->PEIClassCount = Escher_atoi( avlstring[ 22 ] );
  self->PersistentClassCount = Escher_atoi( avlstring[ 23 ] );
  self->module_file = Escher_strcpy( self->module_file, avlstring[ 24 ] );
  self->port_file = Escher_strcpy( self->port_file, avlstring[ 25 ] );
  self->include_file = Escher_strcpy( self->include_file, avlstring[ 26 ] );
  self->included_in_build = ( '0' != *avlstring[ 27 ] );
  self->internal_behavior = ( '0' != *avlstring[ 28 ] );
  self->isRealized = ( '0' != *avlstring[ 29 ] );
  self->SystemID = Escher_atoi( avlstring[ 30 ] );
  self->next_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 31 ] );
  self->cId = (Escher_iHandle_t) Escher_atoi( avlstring[ 32 ] );
  self->first_eeID = (Escher_iHandle_t) Escher_atoi( avlstring[ 33 ] );
  self->first_syncID = (Escher_iHandle_t) Escher_atoi( avlstring[ 34 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_C_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_C * ooaofooa_TE_C_instance = (ooaofooa_TE_C *) instance;
  ooaofooa_TE_SYS * ooaofooa_TE_SYSrelated_instance1 = (ooaofooa_TE_SYS *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_C_instance->SystemID ];
  if ( ooaofooa_TE_SYSrelated_instance1 ) {
    ooaofooa_TE_C_R2065_Link( ooaofooa_TE_SYSrelated_instance1, ooaofooa_TE_C_instance );
  }
  {
  ooaofooa_C_C * ooaofooa_C_Crelated_instance1 = ooaofooa_C_C_AnyWhere1( ooaofooa_TE_C_instance->cId );
  if ( ooaofooa_C_Crelated_instance1 ) {
    ooaofooa_TE_C_R2054_Link( ooaofooa_C_Crelated_instance1, ooaofooa_TE_C_instance );
  }
  }
  {
  ooaofooa_TE_C * ooaofooa_TE_Crelated_instance1 = (ooaofooa_TE_C *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_C_instance->next_ID ];
  if ( ooaofooa_TE_Crelated_instance1 ) {
    ooaofooa_TE_C_R2017_Link_succeeds( ooaofooa_TE_Crelated_instance1, ooaofooa_TE_C_instance );
  }
  }
  {
  ooaofooa_TE_SYNC * ooaofooa_TE_SYNCrelated_instance1 = ooaofooa_TE_SYNC_AnyWhere2( ooaofooa_TE_C_instance->first_syncID );
  if ( ooaofooa_TE_SYNCrelated_instance1 ) {
    ooaofooa_TE_C_R2097_Link( ooaofooa_TE_SYNCrelated_instance1, ooaofooa_TE_C_instance );
  }
  }
  {
  ooaofooa_TE_EE * ooaofooa_TE_EErelated_instance1 = ooaofooa_TE_EE_AnyWhere2( ooaofooa_TE_C_instance->first_eeID );
  if ( ooaofooa_TE_EErelated_instance1 ) {
    ooaofooa_TE_C_R2098_Link( ooaofooa_TE_EErelated_instance1, ooaofooa_TE_C_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_C *
ooaofooa_TE_C_AnyWhere1( Escher_UniqueID_t w_ID )
{
  ooaofooa_TE_C * w; 
  Escher_Iterator_s iter_TE_C;
  Escher_IteratorReset( &iter_TE_C, &pG_ooaofooa_TE_C_extent.active );
  while ( (w = (ooaofooa_TE_C *) Escher_IteratorNext( &iter_TE_C )) != 0 ) {
    if ( w->ID == w_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE <left> TE_C TO <right> TE_C ACROSS R2017.'precedes'
 */
void
ooaofooa_TE_C_R2017_Link_precedes( ooaofooa_TE_C * left, ooaofooa_TE_C * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->next_ID = right->ID;
  left->TE_C_R2017_precedes = right; /* SR L1 */
  right->TE_C_R2017_succeeds = left; /* SR L2 */
}

/*
 * UNRELATE <left> TE_C FROM <right> TE_C ACROSS R2017.'precedes'
 */
void
ooaofooa_TE_C_R2017_Unlink_precedes( ooaofooa_TE_C * left, ooaofooa_TE_C * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->next_ID = 0;
  left->TE_C_R2017_precedes = 0; /* SR U1 */
  right->TE_C_R2017_succeeds = 0; /* SR U2 */
}

/*
 * RELATE <left> TE_C TO <right> TE_C ACROSS R2017.'succeeds'
 */
void
ooaofooa_TE_C_R2017_Link_succeeds( ooaofooa_TE_C * left, ooaofooa_TE_C * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->next_ID = left->ID;
  right->TE_C_R2017_precedes = left; /* SR L4 */
  left->TE_C_R2017_succeeds = right; /* SR L5 */
}

/*
 * UNRELATE <left> TE_C FROM <right> TE_C ACROSS R2017.'succeeds'
 */
void
ooaofooa_TE_C_R2017_Unlink_succeeds( ooaofooa_TE_C * left, ooaofooa_TE_C * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->next_ID = 0;
  right->TE_C_R2017_precedes = 0; /* SR U4 */
  left->TE_C_R2017_succeeds = 0; /* SR U5 */
}

/*
 * RELATE C_C TO TE_C ACROSS R2054
 */
void
ooaofooa_TE_C_R2054_Link( ooaofooa_C_C * part, ooaofooa_TE_C * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->cId = part->Id;
  form->C_C_R2054 = part;
  part->TE_C_R2054 = form;
}

/*
 * UNRELATE C_C FROM TE_C ACROSS R2054
 */
void
ooaofooa_TE_C_R2054_Unlink( ooaofooa_C_C * part, ooaofooa_TE_C * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->C_C_R2054 = 0;
  part->TE_C_R2054 = 0;
}

/*
 * RELATE TE_SYS TO TE_C ACROSS R2065
 */
void
ooaofooa_TE_C_R2065_Link( ooaofooa_TE_SYS * part, ooaofooa_TE_C * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SystemID = part->SystemID;
  form->TE_SYS_R2065 = part;
  Escher_SetInsertElement( &part->TE_C_R2065, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_SYS FROM TE_C ACROSS R2065
 */
void
ooaofooa_TE_C_R2065_Unlink( ooaofooa_TE_SYS * part, ooaofooa_TE_C * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SystemID = 0;
  form->TE_SYS_R2065 = 0;
  Escher_SetRemoveElement( &part->TE_C_R2065, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE TE_SYNC TO TE_C ACROSS R2097
 */
void
ooaofooa_TE_C_R2097_Link( ooaofooa_TE_SYNC * part, ooaofooa_TE_C * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->first_syncID = part->ID;
  form->TE_SYNC_R2097_has_first = part;
  part->TE_C_R2097 = form;
}

/*
 * UNRELATE TE_SYNC FROM TE_C ACROSS R2097
 */
void
ooaofooa_TE_C_R2097_Unlink( ooaofooa_TE_SYNC * part, ooaofooa_TE_C * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->first_syncID = 0;
  form->TE_SYNC_R2097_has_first = 0;
  part->TE_C_R2097 = 0;
}

/*
 * RELATE TE_EE TO TE_C ACROSS R2098
 */
void
ooaofooa_TE_C_R2098_Link( ooaofooa_TE_EE * part, ooaofooa_TE_C * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->first_eeID = part->ID;
  form->TE_EE_R2098_has_first = part;
  part->TE_C_R2098 = form;
}

/*
 * UNRELATE TE_EE FROM TE_C ACROSS R2098
 */
void
ooaofooa_TE_C_R2098_Unlink( ooaofooa_TE_EE * part, ooaofooa_TE_C * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->first_eeID = 0;
  form->TE_EE_R2098_has_first = 0;
  part->TE_C_R2098 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_C_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_C * self = (ooaofooa_TE_C *) instance;
  printf( "INSERT INTO TE_C VALUES ( %ld,'%s','%s',%d,%d,%d,%d,%d,%d,%d,%d,'%s','%s',%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,'%s','%s','%s',%d,%d,%d,%d,%ld,%ld,%ld,%ld );\n",
    ((long)self->ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->Descrip ) ? self->Descrip : "",
    self->number,
    self->StateTrace,
    self->StmtTrace,
    self->DetectEmpty,
    self->OptDisabled,
    self->RawComments,
    self->CodeComments,
    self->CollectionsFlavor,
    ( 0 != self->classes_file ) ? self->classes_file : "",
    ( 0 != self->functions_file ) ? self->functions_file : "",
    self->MaxObjExtent,
    self->MaxRelExtent,
    self->MaxSelectExtent,
    self->MaxSelfEvents,
    self->MaxNonSelfEvents,
    self->MaxPriorityEvents,
    self->MaxTimers,
    self->InterleavedBridges,
    self->PEIClassCount,
    self->PersistentClassCount,
    ( 0 != self->module_file ) ? self->module_file : "",
    ( 0 != self->port_file ) ? self->port_file : "",
    ( 0 != self->include_file ) ? self->include_file : "",
    self->included_in_build,
    self->internal_behavior,
    self->isRealized,
    self->SystemID,
    ((long)self->next_ID & ESCHER_IDDUMP_MASK),
    ((long)self->cId & ESCHER_IDDUMP_MASK),
    ((long)self->first_eeID & ESCHER_IDDUMP_MASK),
    ((long)self->first_syncID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_C_container[ ooaofooa_TE_C_MAX_EXTENT_SIZE ];
static ooaofooa_TE_C ooaofooa_TE_C_instances[ ooaofooa_TE_C_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_C_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_C_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_C_instances,
  sizeof( ooaofooa_TE_C ), 0, ooaofooa_TE_C_MAX_EXTENT_SIZE
  };


