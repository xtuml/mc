/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_MACT_class.c
 *
 * Class:       Extended Message Action  (TE_MACT)
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
ooaofooa_TE_MACT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_MACT * self = (ooaofooa_TE_MACT *) instance;
  /* Initialize application analysis class attributes.  */
  self->AbaID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  Escher_strcpy( self->Name, avlstring[ 3 ] );
  {i_t i = avlstring[ 4 + 1 ] - avlstring[ 4 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 4 ][ i ]; }
  }
  Escher_strcpy( self->GeneratedName, avlstring[ 5 ] );
  Escher_strcpy( self->ComponentName, avlstring[ 6 ] );
  Escher_strcpy( self->OALParamBuffer, avlstring[ 7 ] );
  Escher_strcpy( self->PortName, avlstring[ 8 ] );
  Escher_strcpy( self->InterfaceName, avlstring[ 9 ] );
  Escher_strcpy( self->MessageName, avlstring[ 10 ] );
  self->Direction = Escher_atoi( avlstring[ 11 ] );
  self->Provision = ( '0' != *avlstring[ 12 ] );
  Escher_strcpy( self->subtypeKL, avlstring[ 13 ] );
  self->polymorphic = ( '0' != *avlstring[ 14 ] );
  self->trace = ( '0' != *avlstring[ 15 ] );
  self->Order = Escher_atoi( avlstring[ 16 ] );
  self->SPR_POId = (Escher_iHandle_t) Escher_atoi( avlstring[ 17 ] );
  self->SPR_PSId = (Escher_iHandle_t) Escher_atoi( avlstring[ 18 ] );
  self->SPR_ROId = (Escher_iHandle_t) Escher_atoi( avlstring[ 19 ] );
  self->SPR_RSId = (Escher_iHandle_t) Escher_atoi( avlstring[ 20 ] );
  self->te_cID = (Escher_iHandle_t) Escher_atoi( avlstring[ 21 ] );
  self->te_poID = (Escher_iHandle_t) Escher_atoi( avlstring[ 22 ] );
  self->te_evtID = (Escher_iHandle_t) Escher_atoi( avlstring[ 23 ] );
  self->nextID = (Escher_iHandle_t) Escher_atoi( avlstring[ 24 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_MACT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_MACT * ooaofooa_TE_MACT_instance = (ooaofooa_TE_MACT *) instance;
  ooaofooa_TE_PO * ooaofooa_TE_POrelated_instance1 = (ooaofooa_TE_PO *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_MACT_instance->te_poID ];
  if ( ooaofooa_TE_POrelated_instance1 ) {
    ooaofooa_TE_MACT_R2006_Link( ooaofooa_TE_POrelated_instance1, ooaofooa_TE_MACT_instance );
  }
  {
  ooaofooa_TE_ABA * ooaofooa_TE_ABArelated_instance1 = (ooaofooa_TE_ABA *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_MACT_instance->AbaID ];
  if ( ooaofooa_TE_ABArelated_instance1 ) {
    ooaofooa_TE_MACT_R2010_Link( ooaofooa_TE_ABArelated_instance1, ooaofooa_TE_MACT_instance );
  }
  }
  {
  ooaofooa_SPR_PO * ooaofooa_SPR_POrelated_instance1 = ooaofooa_SPR_PO_AnyWhere1( ooaofooa_TE_MACT_instance->SPR_POId );
  if ( ooaofooa_SPR_POrelated_instance1 ) {
    ooaofooa_TE_MACT_R2050_Link( ooaofooa_SPR_POrelated_instance1, ooaofooa_TE_MACT_instance );
  }
  }
  {
  ooaofooa_SPR_PS * ooaofooa_SPR_PSrelated_instance1 = ooaofooa_SPR_PS_AnyWhere1( ooaofooa_TE_MACT_instance->SPR_PSId );
  if ( ooaofooa_SPR_PSrelated_instance1 ) {
    ooaofooa_TE_MACT_R2051_Link( ooaofooa_SPR_PSrelated_instance1, ooaofooa_TE_MACT_instance );
  }
  }
  {
  ooaofooa_SPR_RO * ooaofooa_SPR_ROrelated_instance1 = ooaofooa_SPR_RO_AnyWhere1( ooaofooa_TE_MACT_instance->SPR_ROId );
  if ( ooaofooa_SPR_ROrelated_instance1 ) {
    ooaofooa_TE_MACT_R2052_Link( ooaofooa_SPR_ROrelated_instance1, ooaofooa_TE_MACT_instance );
  }
  }
  {
  ooaofooa_SPR_RS * ooaofooa_SPR_RSrelated_instance1 = ooaofooa_SPR_RS_AnyWhere1( ooaofooa_TE_MACT_instance->SPR_RSId );
  if ( ooaofooa_SPR_RSrelated_instance1 ) {
    ooaofooa_TE_MACT_R2053_Link( ooaofooa_SPR_RSrelated_instance1, ooaofooa_TE_MACT_instance );
  }
  }
  {
  ooaofooa_TE_C * ooaofooa_TE_Crelated_instance1 = (ooaofooa_TE_C *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_MACT_instance->te_cID ];
  if ( ooaofooa_TE_Crelated_instance1 ) {
    ooaofooa_TE_MACT_R2002_Link( ooaofooa_TE_Crelated_instance1, ooaofooa_TE_MACT_instance );
  }
  }
  {
  ooaofooa_TE_EVT * ooaofooa_TE_EVTrelated_instance1 = (ooaofooa_TE_EVT *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_MACT_instance->te_evtID ];
  if ( ooaofooa_TE_EVTrelated_instance1 ) {
    ooaofooa_TE_MACT_R2082_Link( ooaofooa_TE_EVTrelated_instance1, ooaofooa_TE_MACT_instance );
  }
  }
  {
  ooaofooa_TE_MACT * ooaofooa_TE_MACTrelated_instance1 = ooaofooa_TE_MACT_AnyWhere2( ooaofooa_TE_MACT_instance->nextID );
  if ( ooaofooa_TE_MACTrelated_instance1 ) {
    ooaofooa_TE_MACT_R2083_Link_precedes( ooaofooa_TE_MACTrelated_instance1, ooaofooa_TE_MACT_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_MACT *
ooaofooa_TE_MACT_AnyWhere2( Escher_UniqueID_t w_ID )
{
  ooaofooa_TE_MACT * w; 
  Escher_Iterator_s iter_TE_MACT;
  Escher_IteratorReset( &iter_TE_MACT, &pG_ooaofooa_TE_MACT_extent.active );
  while ( (w = (ooaofooa_TE_MACT *) Escher_IteratorNext( &iter_TE_MACT )) != 0 ) {
    if ( w->ID == w_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE TE_C TO TE_MACT ACROSS R2002
 */
void
ooaofooa_TE_MACT_R2002_Link( ooaofooa_TE_C * part, ooaofooa_TE_MACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_cID = part->ID;
  form->TE_C_R2002 = part;
  Escher_SetInsertElement( &part->TE_MACT_R2002, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_C FROM TE_MACT ACROSS R2002
 */
void
ooaofooa_TE_MACT_R2002_Unlink( ooaofooa_TE_C * part, ooaofooa_TE_MACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_cID = 0;
  form->TE_C_R2002 = 0;
  Escher_SetRemoveElement( &part->TE_MACT_R2002, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE TE_PO TO TE_MACT ACROSS R2006
 */
void
ooaofooa_TE_MACT_R2006_Link( ooaofooa_TE_PO * part, ooaofooa_TE_MACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_poID = part->ID;
  form->TE_PO_R2006 = part;
  Escher_SetInsertElement( &part->TE_MACT_R2006, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_PO FROM TE_MACT ACROSS R2006
 */
void
ooaofooa_TE_MACT_R2006_Unlink( ooaofooa_TE_PO * part, ooaofooa_TE_MACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_poID = 0;
  form->TE_PO_R2006 = 0;
  Escher_SetRemoveElement( &part->TE_MACT_R2006, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE TE_ABA TO TE_MACT ACROSS R2010
 */
void
ooaofooa_TE_MACT_R2010_Link( ooaofooa_TE_ABA * supertype, ooaofooa_TE_MACT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->AbaID = supertype->AbaID;
  /* Optimized linkage for TE_MACT->TE_ABA[R2010] */
  subtype->TE_ABA_R2010 = supertype;
  /* Optimized linkage for TE_ABA->TE_MACT[R2010] */
  supertype->R2010_subtype = subtype;
  supertype->R2010_object_id = ooaofooa_TE_MACT_CLASS_NUMBER;
}


/*
 * UNRELATE TE_ABA FROM TE_MACT ACROSS R2010
 */
void
ooaofooa_TE_MACT_R2010_Unlink( ooaofooa_TE_ABA * supertype, ooaofooa_TE_MACT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->TE_ABA_R2010 = 0;
  supertype->R2010_subtype = 0;
  supertype->R2010_object_id = 0;
}


/*
 * RELATE SPR_PO TO TE_MACT ACROSS R2050
 */
void
ooaofooa_TE_MACT_R2050_Link( ooaofooa_SPR_PO * part, ooaofooa_TE_MACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SPR_POId = part->Id;
  form->SPR_PO_R2050 = part;
  part->TE_MACT_R2050 = form;
}

/*
 * UNRELATE SPR_PO FROM TE_MACT ACROSS R2050
 */
void
ooaofooa_TE_MACT_R2050_Unlink( ooaofooa_SPR_PO * part, ooaofooa_TE_MACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SPR_POId = 0;
  form->SPR_PO_R2050 = 0;
  part->TE_MACT_R2050 = 0;
}

/*
 * RELATE SPR_PS TO TE_MACT ACROSS R2051
 */
void
ooaofooa_TE_MACT_R2051_Link( ooaofooa_SPR_PS * part, ooaofooa_TE_MACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SPR_PSId = part->Id;
  form->SPR_PS_R2051 = part;
  part->TE_MACT_R2051 = form;
}

/*
 * UNRELATE SPR_PS FROM TE_MACT ACROSS R2051
 */
void
ooaofooa_TE_MACT_R2051_Unlink( ooaofooa_SPR_PS * part, ooaofooa_TE_MACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SPR_PSId = 0;
  form->SPR_PS_R2051 = 0;
  part->TE_MACT_R2051 = 0;
}

/*
 * RELATE SPR_RO TO TE_MACT ACROSS R2052
 */
void
ooaofooa_TE_MACT_R2052_Link( ooaofooa_SPR_RO * part, ooaofooa_TE_MACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SPR_ROId = part->Id;
  form->SPR_RO_R2052 = part;
  part->TE_MACT_R2052 = form;
}

/*
 * UNRELATE SPR_RO FROM TE_MACT ACROSS R2052
 */
void
ooaofooa_TE_MACT_R2052_Unlink( ooaofooa_SPR_RO * part, ooaofooa_TE_MACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SPR_ROId = 0;
  form->SPR_RO_R2052 = 0;
  part->TE_MACT_R2052 = 0;
}

/*
 * RELATE SPR_RS TO TE_MACT ACROSS R2053
 */
void
ooaofooa_TE_MACT_R2053_Link( ooaofooa_SPR_RS * part, ooaofooa_TE_MACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SPR_RSId = part->Id;
  form->SPR_RS_R2053 = part;
  part->TE_MACT_R2053 = form;
}

/*
 * UNRELATE SPR_RS FROM TE_MACT ACROSS R2053
 */
void
ooaofooa_TE_MACT_R2053_Unlink( ooaofooa_SPR_RS * part, ooaofooa_TE_MACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SPR_RSId = 0;
  form->SPR_RS_R2053 = 0;
  part->TE_MACT_R2053 = 0;
}

/*
 * RELATE TE_EVT TO TE_MACT ACROSS R2082
 */
void
ooaofooa_TE_MACT_R2082_Link( ooaofooa_TE_EVT * part, ooaofooa_TE_MACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_evtID = part->ID;
  form->TE_EVT_R2082 = part;
  Escher_SetInsertElement( &part->TE_MACT_R2082, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_EVT FROM TE_MACT ACROSS R2082
 */
void
ooaofooa_TE_MACT_R2082_Unlink( ooaofooa_TE_EVT * part, ooaofooa_TE_MACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_evtID = 0;
  form->TE_EVT_R2082 = 0;
  Escher_SetRemoveElement( &part->TE_MACT_R2082, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> TE_MACT TO <right> TE_MACT ACROSS R2083.'precedes'
 */
void
ooaofooa_TE_MACT_R2083_Link_precedes( ooaofooa_TE_MACT * left, ooaofooa_TE_MACT * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->nextID = left->ID;
  left->TE_MACT_R2083_precedes = right; /* SR L1 */
  right->TE_MACT_R2083_succeeds = left; /* SR L2 */
}

/*
 * UNRELATE <left> TE_MACT FROM <right> TE_MACT ACROSS R2083.'precedes'
 */
void
ooaofooa_TE_MACT_R2083_Unlink_precedes( ooaofooa_TE_MACT * left, ooaofooa_TE_MACT * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->nextID = 0;
  left->TE_MACT_R2083_precedes = 0; /* SR U1 */
  right->TE_MACT_R2083_succeeds = 0; /* SR U2 */
}

/*
 * RELATE <left> TE_MACT TO <right> TE_MACT ACROSS R2083.'succeeds'
 */
void
ooaofooa_TE_MACT_R2083_Link_succeeds( ooaofooa_TE_MACT * left, ooaofooa_TE_MACT * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->nextID = right->ID;
  right->TE_MACT_R2083_precedes = left; /* SR L4 */
  left->TE_MACT_R2083_succeeds = right; /* SR L5 */
}

/*
 * UNRELATE <left> TE_MACT FROM <right> TE_MACT ACROSS R2083.'succeeds'
 */
void
ooaofooa_TE_MACT_R2083_Unlink_succeeds( ooaofooa_TE_MACT * left, ooaofooa_TE_MACT * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->nextID = 0;
  right->TE_MACT_R2083_precedes = 0; /* SR U4 */
  left->TE_MACT_R2083_succeeds = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_MACT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_MACT * self = (ooaofooa_TE_MACT *) instance;
  printf( "INSERT INTO TE_MACT VALUES ( %ld,%ld,'%s','%s','%s','%s','%s','%s','%s','%s',%d,%d,'%s',%d,%d,%d,%ld,%ld,%ld,%ld,%ld,%ld,%ld,%ld );\n",
    ((long)self->AbaID & ESCHER_IDDUMP_MASK),
    ((long)self->ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip,
    self->GeneratedName,
    self->ComponentName,
    self->OALParamBuffer,
    self->PortName,
    self->InterfaceName,
    self->MessageName,
    self->Direction,
    self->Provision,
    self->subtypeKL,
    self->polymorphic,
    self->trace,
    self->Order,
    ((long)self->SPR_POId & ESCHER_IDDUMP_MASK),
    ((long)self->SPR_PSId & ESCHER_IDDUMP_MASK),
    ((long)self->SPR_ROId & ESCHER_IDDUMP_MASK),
    ((long)self->SPR_RSId & ESCHER_IDDUMP_MASK),
    ((long)self->te_cID & ESCHER_IDDUMP_MASK),
    ((long)self->te_poID & ESCHER_IDDUMP_MASK),
    ((long)self->te_evtID & ESCHER_IDDUMP_MASK),
    ((long)self->nextID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_MACT_container[ ooaofooa_TE_MACT_MAX_EXTENT_SIZE ];
static ooaofooa_TE_MACT ooaofooa_TE_MACT_instances[ ooaofooa_TE_MACT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_MACT_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_MACT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_MACT_instances,
  sizeof( ooaofooa_TE_MACT ), 0, ooaofooa_TE_MACT_MAX_EXTENT_SIZE
  };


