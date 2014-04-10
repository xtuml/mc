/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_ATTR_class.c
 *
 * Class:       Attribute  (O_ATTR)
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
ooaofooa_O_ATTR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_O_ATTR * self = (ooaofooa_O_ATTR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Attr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Attr_ID;
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->PAttr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 4 ] );
  {i_t i = avlstring[ 5 + 1 ] - avlstring[ 5 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 5 ][ i ]; }
  }
  self->Prefix = Escher_strcpy( self->Prefix, avlstring[ 6 ] );
  self->Root_Nam = Escher_strcpy( self->Root_Nam, avlstring[ 7 ] );
  self->Pfx_Mode = Escher_atoi( avlstring[ 8 ] );
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 9 ] );
  self->Dimensions = Escher_strcpy( self->Dimensions, avlstring[ 10 ] );
  self->DefaultValue = Escher_strcpy( self->DefaultValue, avlstring[ 11 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_O_ATTR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_O_ATTR * ooaofooa_O_ATTR_instance = (ooaofooa_O_ATTR *) instance;
  ooaofooa_O_OBJ * ooaofooa_O_OBJrelated_instance1 = ooaofooa_O_OBJ_AnyWhere1( ooaofooa_O_ATTR_instance->Obj_ID );
  if ( ooaofooa_O_OBJrelated_instance1 ) {
    ooaofooa_O_ATTR_R102_Link_has_characteristics_abstracted_by( ooaofooa_O_OBJrelated_instance1, ooaofooa_O_ATTR_instance );
  }
  {
  ooaofooa_O_ATTR * ooaofooa_O_ATTRrelated_instance1 = ooaofooa_O_ATTR_AnyWhere1( ooaofooa_O_ATTR_instance->PAttr_ID, ooaofooa_O_ATTR_instance->Obj_ID );
  if ( ooaofooa_O_ATTRrelated_instance1 ) {
    ooaofooa_O_ATTR_R103_Link_precedes( ooaofooa_O_ATTRrelated_instance1, ooaofooa_O_ATTR_instance );
  }
  }
  {
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_O_ATTR_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_O_ATTR_R114_Link_is_defined_by( ooaofooa_S_DTrelated_instance1, ooaofooa_O_ATTR_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_O_ATTR *
ooaofooa_O_ATTR_AnyWhere1( Escher_UniqueID_t w_Attr_ID, Escher_UniqueID_t w_Obj_ID )
{
  ooaofooa_O_ATTR * w; 
  Escher_Iterator_s iter_O_ATTR;
  Escher_IteratorReset( &iter_O_ATTR, &pG_ooaofooa_O_ATTR_extent.active );
  while ( (w = (ooaofooa_O_ATTR *) Escher_IteratorNext( &iter_O_ATTR )) != 0 ) {
    if ( w->Attr_ID == w_Attr_ID && w->Obj_ID == w_Obj_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE O_OBJ TO O_ATTR ACROSS R102
 */
void
ooaofooa_O_ATTR_R102_Link_has_characteristics_abstracted_by( ooaofooa_O_OBJ * part, ooaofooa_O_ATTR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = part->Obj_ID;
  form->O_OBJ_R102_abstracts_characteristics_of = part;
  Escher_SetInsertElement( &part->O_ATTR_R102_has_characteristics_abstracted_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_OBJ FROM O_ATTR ACROSS R102
 */
void
ooaofooa_O_ATTR_R102_Unlink_has_characteristics_abstracted_by( ooaofooa_O_OBJ * part, ooaofooa_O_ATTR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->O_OBJ_R102_abstracts_characteristics_of = 0;
  Escher_SetRemoveElement( &part->O_ATTR_R102_has_characteristics_abstracted_by, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> O_ATTR TO <right> O_ATTR ACROSS R103.'succeeds'
 */
void
ooaofooa_O_ATTR_R103_Link_succeeds( ooaofooa_O_ATTR * left, ooaofooa_O_ATTR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->PAttr_ID = right->Attr_ID;
  left->Obj_ID = right->Obj_ID;
  left->O_ATTR_R103_succeeds = right; /* SR L1 */
  right->O_ATTR_R103_precedes = left; /* SR L2 */
}

/*
 * UNRELATE <left> O_ATTR FROM <right> O_ATTR ACROSS R103.'succeeds'
 */
void
ooaofooa_O_ATTR_R103_Unlink_succeeds( ooaofooa_O_ATTR * left, ooaofooa_O_ATTR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->PAttr_ID = 0;
  left->O_ATTR_R103_succeeds = 0; /* SR U1 */
  right->O_ATTR_R103_precedes = 0; /* SR U2 */
}

/*
 * RELATE <left> O_ATTR TO <right> O_ATTR ACROSS R103.'precedes'
 */
void
ooaofooa_O_ATTR_R103_Link_precedes( ooaofooa_O_ATTR * left, ooaofooa_O_ATTR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->PAttr_ID = left->Attr_ID;
  right->Obj_ID = left->Obj_ID;
  right->O_ATTR_R103_succeeds = left; /* SR L4 */
  left->O_ATTR_R103_precedes = right; /* SR L5 */
}

/*
 * UNRELATE <left> O_ATTR FROM <right> O_ATTR ACROSS R103.'precedes'
 */
void
ooaofooa_O_ATTR_R103_Unlink_precedes( ooaofooa_O_ATTR * left, ooaofooa_O_ATTR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->PAttr_ID = 0;
  right->O_ATTR_R103_succeeds = 0; /* SR U4 */
  left->O_ATTR_R103_precedes = 0; /* SR U5 */
}

/* Accessors to O_ATTR[R106] subtypes */


/*
 * RELATE S_DT TO O_ATTR ACROSS R114
 */
void
ooaofooa_O_ATTR_R114_Link_is_defined_by( ooaofooa_S_DT * part, ooaofooa_O_ATTR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = part->DT_ID;
  form->S_DT_R114_defines_type_of = part;
  Escher_SetInsertElement( &part->O_ATTR_R114_is_defined_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DT FROM O_ATTR ACROSS R114
 */
void
ooaofooa_O_ATTR_R114_Unlink_is_defined_by( ooaofooa_S_DT * part, ooaofooa_O_ATTR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = 0;
  form->S_DT_R114_defines_type_of = 0;
  Escher_SetRemoveElement( &part->O_ATTR_R114_is_defined_by, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_O_ATTR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_O_ATTR * self = (ooaofooa_O_ATTR *) instance;
  printf( "INSERT INTO O_ATTR VALUES ( %ld,%ld,%ld,'%s','%s','%s','%s',%d,%ld,'%s','%s' );\n",
    ((long)self->Attr_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    ((long)self->PAttr_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->Descrip ) ? self->Descrip : "",
    ( 0 != self->Prefix ) ? self->Prefix : "",
    ( 0 != self->Root_Nam ) ? self->Root_Nam : "",
    self->Pfx_Mode,
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Dimensions ) ? self->Dimensions : "",
    ( 0 != self->DefaultValue ) ? self->DefaultValue : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_O_ATTR_container[ ooaofooa_O_ATTR_MAX_EXTENT_SIZE ];
static ooaofooa_O_ATTR ooaofooa_O_ATTR_instances[ ooaofooa_O_ATTR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_O_ATTR_extent = {
  {0,0}, {0,0}, &ooaofooa_O_ATTR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_O_ATTR_instances,
  sizeof( ooaofooa_O_ATTR ), 0, ooaofooa_O_ATTR_MAX_EXTENT_SIZE
  };


