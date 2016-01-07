/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_EVT_class.c
 *
 * Class:       State Machine Event  (SM_EVT)
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
ooaofooa_SM_EVT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_EVT * self = (ooaofooa_SM_EVT *) instance;
  /* Initialize application analysis class attributes.  */
  self->SMevt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->SMevt_ID;
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->SMspd_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Numb = Escher_atoi( avlstring[ 4 ] );
  self->Mning = Escher_strcpy( self->Mning, avlstring[ 5 ] );
  self->Is_Lbl_U = Escher_atoi( avlstring[ 6 ] );
  self->Unq_Lbl = Escher_strcpy( self->Unq_Lbl, avlstring[ 7 ] );
  self->Drv_Lbl = Escher_strcpy( self->Drv_Lbl, avlstring[ 8 ] );
  {i_t i = avlstring[ 9 + 1 ] - avlstring[ 9 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 9 ][ i ]; }
  }
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_EVT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_EVT * ooaofooa_SM_EVT_instance = (ooaofooa_SM_EVT *) instance;
  ooaofooa_SM_SM * ooaofooa_SM_SMrelated_instance1 = (ooaofooa_SM_SM *) Escher_instance_cache[ (intptr_t) ooaofooa_SM_EVT_instance->SM_ID ];
  if ( ooaofooa_SM_SMrelated_instance1 ) {
    ooaofooa_SM_EVT_R502_Link_can_be_communicated_to_via( ooaofooa_SM_SMrelated_instance1, ooaofooa_SM_EVT_instance );
  }
  {
  ooaofooa_SM_SUPDT * ooaofooa_SM_SUPDTrelated_instance1 = ooaofooa_SM_SUPDT_AnyWhere1( ooaofooa_SM_EVT_instance->SMspd_ID, ooaofooa_SM_EVT_instance->SM_ID );
  if ( ooaofooa_SM_SUPDTrelated_instance1 ) {
    ooaofooa_SM_EVT_R520_Link_defines_signature_of( ooaofooa_SM_SUPDTrelated_instance1, ooaofooa_SM_EVT_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SM_EVT *
ooaofooa_SM_EVT_AnyWhere1( Escher_UniqueID_t w_SMevt_ID )
{
  ooaofooa_SM_EVT * w; 
  Escher_Iterator_s iter_SM_EVT;
  Escher_IteratorReset( &iter_SM_EVT, &pG_ooaofooa_SM_EVT_extent.active );
  while ( (w = (ooaofooa_SM_EVT *) Escher_IteratorNext( &iter_SM_EVT )) != 0 ) {
    if ( w->SMevt_ID == w_SMevt_ID ) {
      return w;
    }
  }
  return 0;
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SM_EVT *
ooaofooa_SM_EVT_AnyWhere2( Escher_UniqueID_t w_SMevt_ID, Escher_UniqueID_t w_SM_ID, Escher_UniqueID_t w_SMspd_ID )
{
  ooaofooa_SM_EVT * w; 
  Escher_Iterator_s iter_SM_EVT;
  Escher_IteratorReset( &iter_SM_EVT, &pG_ooaofooa_SM_EVT_extent.active );
  while ( (w = (ooaofooa_SM_EVT *) Escher_IteratorNext( &iter_SM_EVT )) != 0 ) {
    if ( w->SMevt_ID == w_SMevt_ID && w->SM_ID == w_SM_ID && w->SMspd_ID == w_SMspd_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SM_SM TO SM_EVT ACROSS R502
 */
void
ooaofooa_SM_EVT_R502_Link_can_be_communicated_to_via( ooaofooa_SM_SM * part, ooaofooa_SM_EVT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->SM_SM_R502 = part;
  Escher_SetInsertElement( &part->SM_EVT_R502_can_be_communicated_to_via, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_SM FROM SM_EVT ACROSS R502
 */
void
ooaofooa_SM_EVT_R502_Unlink_can_be_communicated_to_via( ooaofooa_SM_SM * part, ooaofooa_SM_EVT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_SM_R502 = 0;
  Escher_SetRemoveElement( &part->SM_EVT_R502_can_be_communicated_to_via, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SM_SUPDT TO SM_EVT ACROSS R520
 */
void
ooaofooa_SM_EVT_R520_Link_defines_signature_of( ooaofooa_SM_SUPDT * part, ooaofooa_SM_EVT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SMspd_ID = part->SMspd_ID;
  form->SM_ID = part->SM_ID;
  form->SM_SUPDT_R520_carries = part;
  Escher_SetInsertElement( &part->SM_EVT_R520_defines_signature_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_SUPDT FROM SM_EVT ACROSS R520
 */
void
ooaofooa_SM_EVT_R520_Unlink_defines_signature_of( ooaofooa_SM_SUPDT * part, ooaofooa_SM_EVT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_SUPDT_R520_carries = 0;
  Escher_SetRemoveElement( &part->SM_EVT_R520_defines_signature_of, (Escher_ObjectSet_s *) form );
}

/* Accessors to SM_EVT[R525] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_EVT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_EVT * self = (ooaofooa_SM_EVT *) instance;
  printf( "INSERT INTO SM_EVT VALUES ( %ld,%ld,%ld,%d,'%s',%d,'%s','%s','%s' );\n",
    ((long)self->SMevt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMspd_ID & ESCHER_IDDUMP_MASK),
    self->Numb,
    ( 0 != self->Mning ) ? self->Mning : "",
    self->Is_Lbl_U,
    ( 0 != self->Unq_Lbl ) ? self->Unq_Lbl : "",
    ( 0 != self->Drv_Lbl ) ? self->Drv_Lbl : "",
    ( 0 != self->Descrip ) ? self->Descrip : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_EVT_container[ ooaofooa_SM_EVT_MAX_EXTENT_SIZE ];
static ooaofooa_SM_EVT ooaofooa_SM_EVT_instances[ ooaofooa_SM_EVT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_EVT_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_EVT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_EVT_instances,
  sizeof( ooaofooa_SM_EVT ), 0, ooaofooa_SM_EVT_MAX_EXTENT_SIZE
  };


