/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_REF_class.c
 *
 * Class:       Attribute Reference in Class  (O_REF)
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
ooaofooa_O_REF_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_O_REF * self = (ooaofooa_O_REF *) instance;
  /* Initialize application analysis class attributes.  */
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->RObj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->ROid_ID = Escher_atoi( avlstring[ 3 ] );
  self->RAttr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->Rel_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->OIR_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  self->ROIR_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  self->Attr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 8 ] );
  self->ARef_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 9 ] );
  self->PARef_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 10 ] );
  self->Is_Cstrd = ( '0' != *avlstring[ 11 ] );
  {i_t i = avlstring[ 12 + 1 ] - avlstring[ 12 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 12 ][ i ]; }
  }
  Escher_strcpy( self->RObj_Name, avlstring[ 13 ] );
  Escher_strcpy( self->RAttr_Name, avlstring[ 14 ] );
  Escher_strcpy( self->Rel_Name, avlstring[ 15 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_O_REF_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_O_REF * ooaofooa_O_REF_instance = (ooaofooa_O_REF *) instance;
  ooaofooa_O_RTIDA * ooaofooa_O_RTIDArelated_instance1 = ooaofooa_O_RTIDA_AnyWhere1( ooaofooa_O_REF_instance->RAttr_ID, ooaofooa_O_REF_instance->RObj_ID, ooaofooa_O_REF_instance->ROid_ID, ooaofooa_O_REF_instance->Rel_ID, ooaofooa_O_REF_instance->ROIR_ID );
  ooaofooa_R_RGO * ooaofooa_R_RGOrelated_instance2 = ooaofooa_R_RGO_AnyWhere1( ooaofooa_O_REF_instance->Obj_ID, ooaofooa_O_REF_instance->Rel_ID, ooaofooa_O_REF_instance->OIR_ID );
  if ( ooaofooa_O_RTIDArelated_instance1 && ooaofooa_R_RGOrelated_instance2 ) {
    ooaofooa_O_REF_R111_Link( ooaofooa_R_RGOrelated_instance2, ooaofooa_O_RTIDArelated_instance1, ooaofooa_O_REF_instance );
  }
  {
  ooaofooa_O_RATTR * ooaofooa_O_RATTRrelated_instance1 = ooaofooa_O_RATTR_AnyWhere1( ooaofooa_O_REF_instance->Attr_ID, ooaofooa_O_REF_instance->Obj_ID );
  if ( ooaofooa_O_RATTRrelated_instance1 ) {
    ooaofooa_O_REF_R108_Link_resolves_( ooaofooa_O_RATTRrelated_instance1, ooaofooa_O_REF_instance );
  }
  }
  {
  ooaofooa_O_REF * ooaofooa_O_REFrelated_instance1 = ooaofooa_O_REF_AnyWhere2( ooaofooa_O_REF_instance->PARef_ID );
  if ( ooaofooa_O_REFrelated_instance1 ) {
    ooaofooa_O_REF_R112_Link_succeeds( ooaofooa_O_REFrelated_instance1, ooaofooa_O_REF_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_O_REF *
ooaofooa_O_REF_AnyWhere2( Escher_UniqueID_t w_ARef_ID )
{
  ooaofooa_O_REF * w; 
  Escher_Iterator_s iter_O_REF;
  Escher_IteratorReset( &iter_O_REF, &pG_ooaofooa_O_REF_extent.active );
  while ( (w = (ooaofooa_O_REF *) Escher_IteratorNext( &iter_O_REF )) != 0 ) {
    if ( w->ARef_ID == w_ARef_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE O_RATTR TO O_REF ACROSS R108
 */
void
ooaofooa_O_REF_R108_Link_resolves_( ooaofooa_O_RATTR * part, ooaofooa_O_REF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Attr_ID = part->Attr_ID;
  form->Obj_ID = part->Obj_ID;
  form->O_RATTR_R108_is_resolved_by = part;
  Escher_SetInsertElement( &part->O_REF_R108_resolves_, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_RATTR FROM O_REF ACROSS R108
 */
void
ooaofooa_O_REF_R108_Unlink_resolves_( ooaofooa_O_RATTR * part, ooaofooa_O_REF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Attr_ID = 0;
  form->O_RATTR_R108_is_resolved_by = 0;
  Escher_SetRemoveElement( &part->O_REF_R108_resolves_, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE R_RGO TO O_RTIDA ACROSS R111 USING O_REF
 */
void
ooaofooa_O_REF_R111_Link( ooaofooa_R_RGO * aone, ooaofooa_O_RTIDA * aoth, ooaofooa_O_REF * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->OIR_ID = aone->OIR_ID;
  assr->Obj_ID = aone->Obj_ID;
  assr->Rel_ID = aone->Rel_ID;
  assr->RAttr_ID = aoth->Attr_ID;
  assr->ROIR_ID = aoth->OIR_ID;
  assr->ROid_ID = aoth->Oid_ID;
  assr->RObj_ID = aoth->Obj_ID;
  assr->Rel_ID = aoth->Rel_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->R_RGO_R111_is_used_to_refer_class_by = aone;
  assr->O_RTIDA_R111_refers_across_association_via = aoth;
  Escher_SetInsertElement( &aone->O_REF_R111, assr );
  Escher_SetInsertElement( &aoth->O_REF_R111, assr );
}

/*
 * UNRELATE R_RGO FROM O_RTIDA ACROSS R111 USING O_REF
 */
void
ooaofooa_O_REF_R111_Unlink( ooaofooa_R_RGO * aone, ooaofooa_O_RTIDA * aoth, ooaofooa_O_REF * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->R_RGO_R111_is_used_to_refer_class_by = 0;
  assr->O_RTIDA_R111_refers_across_association_via = 0;
  Escher_SetRemoveElement( &aone->O_REF_R111, assr );
  Escher_SetRemoveElement( &aoth->O_REF_R111, assr );
}

/*
 * RELATE <left> O_REF TO <right> O_REF ACROSS R112.'succeeds'
 */
void
ooaofooa_O_REF_R112_Link_succeeds( ooaofooa_O_REF * left, ooaofooa_O_REF * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->PARef_ID = left->ARef_ID;
  left->O_REF_R112_succeeds = right; /* SR L1 */
  right->O_REF_R112_precedes = left; /* SR L2 */
}

/*
 * UNRELATE <left> O_REF FROM <right> O_REF ACROSS R112.'succeeds'
 */
void
ooaofooa_O_REF_R112_Unlink_succeeds( ooaofooa_O_REF * left, ooaofooa_O_REF * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->PARef_ID = 0;
  left->O_REF_R112_succeeds = 0; /* SR U1 */
  right->O_REF_R112_precedes = 0; /* SR U2 */
}

/*
 * RELATE <left> O_REF TO <right> O_REF ACROSS R112.'precedes'
 */
void
ooaofooa_O_REF_R112_Link_precedes( ooaofooa_O_REF * left, ooaofooa_O_REF * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->PARef_ID = right->ARef_ID;
  right->O_REF_R112_succeeds = left; /* SR L4 */
  left->O_REF_R112_precedes = right; /* SR L5 */
}

/*
 * UNRELATE <left> O_REF FROM <right> O_REF ACROSS R112.'precedes'
 */
void
ooaofooa_O_REF_R112_Unlink_precedes( ooaofooa_O_REF * left, ooaofooa_O_REF * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->PARef_ID = 0;
  right->O_REF_R112_succeeds = 0; /* SR U4 */
  left->O_REF_R112_precedes = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_O_REF_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_O_REF * self = (ooaofooa_O_REF *) instance;
  printf( "INSERT INTO O_REF VALUES ( %ld,%ld,%d,%ld,%ld,%ld,%ld,%ld,%ld,%ld,%d,'%s','%s','%s','%s' );\n",
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    ((long)self->RObj_ID & ESCHER_IDDUMP_MASK),
    self->ROid_ID,
    ((long)self->RAttr_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Rel_ID & ESCHER_IDDUMP_MASK),
    ((long)self->OIR_ID & ESCHER_IDDUMP_MASK),
    ((long)self->ROIR_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Attr_ID & ESCHER_IDDUMP_MASK),
    ((long)self->ARef_ID & ESCHER_IDDUMP_MASK),
    ((long)self->PARef_ID & ESCHER_IDDUMP_MASK),
    self->Is_Cstrd,
    self->Descrip,
    self->RObj_Name,
    self->RAttr_Name,
    self->Rel_Name );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_O_REF_container[ ooaofooa_O_REF_MAX_EXTENT_SIZE ];
static ooaofooa_O_REF ooaofooa_O_REF_instances[ ooaofooa_O_REF_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_O_REF_extent = {
  {0,0}, {0,0}, &ooaofooa_O_REF_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_O_REF_instances,
  sizeof( ooaofooa_O_REF ), 0, ooaofooa_O_REF_MAX_EXTENT_SIZE
  };


