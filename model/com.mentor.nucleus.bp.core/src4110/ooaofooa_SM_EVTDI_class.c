/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_EVTDI_class.c
 *
 * Class:       State Machine Event Data Item  (SM_EVTDI)
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
ooaofooa_SM_EVTDI_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_EVTDI * self = (ooaofooa_SM_EVTDI *) instance;
  /* Initialize application analysis class attributes.  */
  self->SMedi_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->SMedi_ID;
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 3 ] );
  {i_t i = avlstring[ 4 + 1 ] - avlstring[ 4 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 4 ][ i ]; }
  }
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->Dimensions = Escher_strcpy( self->Dimensions, avlstring[ 6 ] );
  self->SMevt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  self->Previous_SMedi_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 8 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_EVTDI_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_EVTDI * ooaofooa_SM_EVTDI_instance = (ooaofooa_SM_EVTDI *) instance;
  ooaofooa_SM_SM * ooaofooa_SM_SMrelated_instance1 = (ooaofooa_SM_SM *) Escher_instance_cache[ (intptr_t) ooaofooa_SM_EVTDI_instance->SM_ID ];
  if ( ooaofooa_SM_SMrelated_instance1 ) {
    ooaofooa_SM_EVTDI_R516_Link_can_asynchronously_communicate_via( ooaofooa_SM_SMrelated_instance1, ooaofooa_SM_EVTDI_instance );
  }
  {
  ooaofooa_SM_EVT * ooaofooa_SM_EVTrelated_instance1 = (ooaofooa_SM_EVT *) Escher_instance_cache[ (intptr_t) ooaofooa_SM_EVTDI_instance->SMevt_ID ];
  if ( ooaofooa_SM_EVTrelated_instance1 ) {
    ooaofooa_SM_EVTDI_R532_Link_carries( ooaofooa_SM_EVTrelated_instance1, ooaofooa_SM_EVTDI_instance );
  }
  }
  {
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_SM_EVTDI_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_SM_EVTDI_R524_Link_defines_the_type_of( ooaofooa_S_DTrelated_instance1, ooaofooa_SM_EVTDI_instance );
  }
  }
  {
  ooaofooa_SM_EVTDI * ooaofooa_SM_EVTDIrelated_instance1 = ooaofooa_SM_EVTDI_AnyWhere1( ooaofooa_SM_EVTDI_instance->Previous_SMedi_ID, ooaofooa_SM_EVTDI_instance->SM_ID );
  if ( ooaofooa_SM_EVTDIrelated_instance1 ) {
    ooaofooa_SM_EVTDI_R533_Link_precedes( ooaofooa_SM_EVTDIrelated_instance1, ooaofooa_SM_EVTDI_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SM_EVTDI *
ooaofooa_SM_EVTDI_AnyWhere1( Escher_UniqueID_t w_SMedi_ID, Escher_UniqueID_t w_SM_ID )
{
  ooaofooa_SM_EVTDI * w; 
  Escher_Iterator_s iter_SM_EVTDI;
  Escher_IteratorReset( &iter_SM_EVTDI, &pG_ooaofooa_SM_EVTDI_extent.active );
  while ( (w = (ooaofooa_SM_EVTDI *) Escher_IteratorNext( &iter_SM_EVTDI )) != 0 ) {
    if ( w->SMedi_ID == w_SMedi_ID && w->SM_ID == w_SM_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SM_SM TO SM_EVTDI ACROSS R516
 */
void
ooaofooa_SM_EVTDI_R516_Link_can_asynchronously_communicate_via( ooaofooa_SM_SM * part, ooaofooa_SM_EVTDI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->SM_SM_R516_is_carried_on_events_into = part;
  Escher_SetInsertElement( &part->SM_EVTDI_R516_can_asynchronously_communicate_via, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_SM FROM SM_EVTDI ACROSS R516
 */
void
ooaofooa_SM_EVTDI_R516_Unlink_can_asynchronously_communicate_via( ooaofooa_SM_SM * part, ooaofooa_SM_EVTDI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_SM_R516_is_carried_on_events_into = 0;
  Escher_SetRemoveElement( &part->SM_EVTDI_R516_can_asynchronously_communicate_via, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_DT TO SM_EVTDI ACROSS R524
 */
void
ooaofooa_SM_EVTDI_R524_Link_defines_the_type_of( ooaofooa_S_DT * part, ooaofooa_SM_EVTDI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = part->DT_ID;
  form->S_DT_R524_is_defined_by = part;
  Escher_SetInsertElement( &part->SM_EVTDI_R524_defines_the_type_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DT FROM SM_EVTDI ACROSS R524
 */
void
ooaofooa_SM_EVTDI_R524_Unlink_defines_the_type_of( ooaofooa_S_DT * part, ooaofooa_SM_EVTDI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = 0;
  form->S_DT_R524_is_defined_by = 0;
  Escher_SetRemoveElement( &part->SM_EVTDI_R524_defines_the_type_of, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SM_EVT TO SM_EVTDI ACROSS R532
 */
void
ooaofooa_SM_EVTDI_R532_Link_carries( ooaofooa_SM_EVT * part, ooaofooa_SM_EVTDI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SMevt_ID = part->SMevt_ID;
  form->SM_EVT_R532_carried_by = part;
  Escher_SetInsertElement( &part->SM_EVTDI_R532_carries, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_EVT FROM SM_EVTDI ACROSS R532
 */
void
ooaofooa_SM_EVTDI_R532_Unlink_carries( ooaofooa_SM_EVT * part, ooaofooa_SM_EVTDI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SMevt_ID = 0;
  form->SM_EVT_R532_carried_by = 0;
  Escher_SetRemoveElement( &part->SM_EVTDI_R532_carries, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> SM_EVTDI TO <right> SM_EVTDI ACROSS R533.'succeeds'
 */
void
ooaofooa_SM_EVTDI_R533_Link_succeeds( ooaofooa_SM_EVTDI * left, ooaofooa_SM_EVTDI * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->SM_ID = right->SM_ID;
  left->Previous_SMedi_ID = right->SMedi_ID;
  left->SM_EVTDI_R533_succeeds = right; /* SR L1 */
  right->SM_EVTDI_R533_precedes = left; /* SR L2 */
}

/*
 * UNRELATE <left> SM_EVTDI FROM <right> SM_EVTDI ACROSS R533.'succeeds'
 */
void
ooaofooa_SM_EVTDI_R533_Unlink_succeeds( ooaofooa_SM_EVTDI * left, ooaofooa_SM_EVTDI * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_SMedi_ID = 0;
  left->SM_EVTDI_R533_succeeds = 0; /* SR U1 */
  right->SM_EVTDI_R533_precedes = 0; /* SR U2 */
}

/*
 * RELATE <left> SM_EVTDI TO <right> SM_EVTDI ACROSS R533.'precedes'
 */
void
ooaofooa_SM_EVTDI_R533_Link_precedes( ooaofooa_SM_EVTDI * left, ooaofooa_SM_EVTDI * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->SM_ID = left->SM_ID;
  right->Previous_SMedi_ID = left->SMedi_ID;
  right->SM_EVTDI_R533_succeeds = left; /* SR L4 */
  left->SM_EVTDI_R533_precedes = right; /* SR L5 */
}

/*
 * UNRELATE <left> SM_EVTDI FROM <right> SM_EVTDI ACROSS R533.'precedes'
 */
void
ooaofooa_SM_EVTDI_R533_Unlink_precedes( ooaofooa_SM_EVTDI * left, ooaofooa_SM_EVTDI * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_SMedi_ID = 0;
  right->SM_EVTDI_R533_succeeds = 0; /* SR U4 */
  left->SM_EVTDI_R533_precedes = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_EVTDI_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_EVTDI * self = (ooaofooa_SM_EVTDI *) instance;
  printf( "INSERT INTO SM_EVTDI VALUES ( %ld,%ld,'%s','%s',%ld,'%s',%ld,%ld );\n",
    ((long)self->SMedi_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->Descrip ) ? self->Descrip : "",
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Dimensions ) ? self->Dimensions : "",
    ((long)self->SMevt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Previous_SMedi_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_EVTDI_container[ ooaofooa_SM_EVTDI_MAX_EXTENT_SIZE ];
static ooaofooa_SM_EVTDI ooaofooa_SM_EVTDI_instances[ ooaofooa_SM_EVTDI_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_EVTDI_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_EVTDI_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_EVTDI_instances,
  sizeof( ooaofooa_SM_EVTDI ), 0, ooaofooa_SM_EVTDI_MAX_EXTENT_SIZE
  };


