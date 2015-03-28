/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_EEEVT_class.c
 *
 * Class:       External Entity Event  (S_EEEVT)
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
ooaofooa_S_EEEVT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_EEEVT * self = (ooaofooa_S_EEEVT *) instance;
  /* Initialize application analysis class attributes.  */
  self->EEevt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->EEevt_ID;
  self->EE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Numb = Escher_atoi( avlstring[ 3 ] );
  self->Mning = Escher_strcpy( self->Mning, avlstring[ 4 ] );
  self->Is_Lbl_U = Escher_atoi( avlstring[ 5 ] );
  self->Unq_Lbl = Escher_strcpy( self->Unq_Lbl, avlstring[ 6 ] );
  self->Drv_Lbl = Escher_strcpy( self->Drv_Lbl, avlstring[ 7 ] );
  {i_t i = avlstring[ 8 + 1 ] - avlstring[ 8 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 8 ][ i ]; }
  }
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_EEEVT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_EEEVT * ooaofooa_S_EEEVT_instance = (ooaofooa_S_EEEVT *) instance;
  ooaofooa_S_EE * ooaofooa_S_EErelated_instance1 = ooaofooa_S_EE_AnyWhere1( ooaofooa_S_EEEVT_instance->EE_ID );
  if ( ooaofooa_S_EErelated_instance1 ) {
    ooaofooa_S_EEEVT_R10_Link_can_receive_asynchronous_communication_via( ooaofooa_S_EErelated_instance1, ooaofooa_S_EEEVT_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_EEEVT *
ooaofooa_S_EEEVT_AnyWhere1( Escher_UniqueID_t w_EEevt_ID, Escher_UniqueID_t w_EE_ID )
{
  ooaofooa_S_EEEVT * w; 
  Escher_Iterator_s iter_S_EEEVT;
  Escher_IteratorReset( &iter_S_EEEVT, &pG_ooaofooa_S_EEEVT_extent.active );
  while ( (w = (ooaofooa_S_EEEVT *) Escher_IteratorNext( &iter_S_EEEVT )) != 0 ) {
    if ( w->EEevt_ID == w_EEevt_ID && w->EE_ID == w_EE_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_EE TO S_EEEVT ACROSS R10
 */
void
ooaofooa_S_EEEVT_R10_Link_can_receive_asynchronous_communication_via( ooaofooa_S_EE * part, ooaofooa_S_EEEVT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EE_ID = part->EE_ID;
  form->S_EE_R10_is_vehicle_of_communication_for = part;
  Escher_SetInsertElement( &part->S_EEEVT_R10_can_receive_asynchronous_communication_via, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_EE FROM S_EEEVT ACROSS R10
 */
void
ooaofooa_S_EEEVT_R10_Unlink_can_receive_asynchronous_communication_via( ooaofooa_S_EE * part, ooaofooa_S_EEEVT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->S_EE_R10_is_vehicle_of_communication_for = 0;
  Escher_SetRemoveElement( &part->S_EEEVT_R10_can_receive_asynchronous_communication_via, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_EEEVT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_EEEVT * self = (ooaofooa_S_EEEVT *) instance;
  printf( "INSERT INTO S_EEEVT VALUES ( %ld,%ld,%d,'%s',%d,'%s','%s','%s' );\n",
    ((long)self->EEevt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EE_ID & ESCHER_IDDUMP_MASK),
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
static Escher_SetElement_s ooaofooa_S_EEEVT_container[ ooaofooa_S_EEEVT_MAX_EXTENT_SIZE ];
static ooaofooa_S_EEEVT ooaofooa_S_EEEVT_instances[ ooaofooa_S_EEEVT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_EEEVT_extent = {
  {0,0}, {0,0}, &ooaofooa_S_EEEVT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_EEEVT_instances,
  sizeof( ooaofooa_S_EEEVT ), 0, ooaofooa_S_EEEVT_MAX_EXTENT_SIZE
  };


