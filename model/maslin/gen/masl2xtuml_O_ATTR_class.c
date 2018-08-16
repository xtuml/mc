/*----------------------------------------------------------------------------
 * File:  masl2xtuml_O_ATTR_class.c
 *
 * Class:       Attribute  (O_ATTR)
 * Component:   masl2xtuml
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "maslin_sys_types.h"
#include "IDLINK_bridge.h"
#include "LOG_bridge.h"
#include "STRING_bridge.h"
#include "TRACE_bridge.h"
#include "masl2xtuml_classes.h"

/*
 * Instance Loader (from string data).
 */
Escher_UniqueID_t
masl2xtuml_O_ATTR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_UniqueID_t return_identifier = 0;
  masl2xtuml_O_ATTR * self = (masl2xtuml_O_ATTR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Attr_ID = Escher_uuidtou128( avlstring[ 1 ] );
  return_identifier = self->Attr_ID;
  self->Obj_ID = Escher_uuidtou128( avlstring[ 2 ] );
  self->PAttr_ID = Escher_uuidtou128( avlstring[ 3 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 4 ] );
  {i_t i = avlstring[ 5 + 1 ] - avlstring[ 5 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 5 ][ i ]; }
  }
  self->Prefix = Escher_strcpy( self->Prefix, avlstring[ 6 ] );
  self->Root_Nam = Escher_strcpy( self->Root_Nam, avlstring[ 7 ] );
  self->Pfx_Mode = Escher_atoi( avlstring[ 8 ] );
  self->DT_ID = Escher_uuidtou128( avlstring[ 9 ] );
  self->Dimensions = Escher_strcpy( self->Dimensions, avlstring[ 10 ] );
  self->DefaultValue = Escher_strcpy( self->DefaultValue, avlstring[ 11 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void masl2xtuml_O_ATTR_batch_relate( Escher_iHandle_t instance )
{
  masl2xtuml_O_ATTR * masl2xtuml_O_ATTR_instance = (masl2xtuml_O_ATTR *) instance;
  masl2xtuml_O_OBJ * masl2xtuml_O_OBJrelated_instance1 = masl2xtuml_O_OBJ_AnyWhere1( masl2xtuml_O_ATTR_instance->Obj_ID );
  if ( masl2xtuml_O_OBJrelated_instance1 ) {
    masl2xtuml_O_ATTR_R102_Link_has_characteristics_abstracted_by( masl2xtuml_O_OBJrelated_instance1, masl2xtuml_O_ATTR_instance );
  }
  {
  masl2xtuml_O_ATTR * masl2xtuml_O_ATTRrelated_instance1 = masl2xtuml_O_ATTR_AnyWhere1( masl2xtuml_O_ATTR_instance->PAttr_ID, masl2xtuml_O_ATTR_instance->Obj_ID );
  if ( masl2xtuml_O_ATTRrelated_instance1 ) {
    masl2xtuml_O_ATTR_R103_Link_precedes( masl2xtuml_O_ATTRrelated_instance1, masl2xtuml_O_ATTR_instance );
  }
  }
  {
  masl2xtuml_S_DT * masl2xtuml_S_DTrelated_instance1 = masl2xtuml_S_DT_AnyWhere1( masl2xtuml_O_ATTR_instance->DT_ID );
  if ( masl2xtuml_S_DTrelated_instance1 ) {
    masl2xtuml_O_ATTR_R114_Link_is_defined_by( masl2xtuml_S_DTrelated_instance1, masl2xtuml_O_ATTR_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
masl2xtuml_O_ATTR *
masl2xtuml_O_ATTR_AnyWhere1( Escher_UniqueID_t w_Attr_ID, Escher_UniqueID_t w_Obj_ID )
{
  masl2xtuml_O_ATTR * w; 
  Escher_Iterator_s iter_O_ATTR;
  Escher_IteratorReset( &iter_O_ATTR, &pG_masl2xtuml_O_ATTR_extent.active );
  while ( (w = (masl2xtuml_O_ATTR *) Escher_IteratorNext( &iter_O_ATTR )) != 0 ) {
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
masl2xtuml_O_ATTR_R102_Link_has_characteristics_abstracted_by( masl2xtuml_O_OBJ * part, masl2xtuml_O_ATTR * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "O_ATTR", "masl2xtuml_O_ATTR_R102_Link_has_characteristics_abstracted_by" );
    return;
  }
  form->Obj_ID = part->Obj_ID;
  form->O_OBJ_R102_abstracts_characteristics_of = part;
  Escher_SetInsertElement( &part->O_ATTR_R102_has_characteristics_abstracted_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_OBJ FROM O_ATTR ACROSS R102
 */
void
masl2xtuml_O_ATTR_R102_Unlink_has_characteristics_abstracted_by( masl2xtuml_O_OBJ * part, masl2xtuml_O_ATTR * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "O_ATTR", "masl2xtuml_O_ATTR_R102_Unlink_has_characteristics_abstracted_by" );
    return;
  }
  form->O_OBJ_R102_abstracts_characteristics_of = 0;
  Escher_SetRemoveElement( &part->O_ATTR_R102_has_characteristics_abstracted_by, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> O_ATTR TO <right> O_ATTR ACROSS R103.'succeeds'
 */
void
masl2xtuml_O_ATTR_R103_Link_succeeds( masl2xtuml_O_ATTR * left, masl2xtuml_O_ATTR * right )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "O_ATTR", "masl2xtuml_O_ATTR_R103_Link_succeeds" );
    return;
  }
  left->PAttr_ID = right->Attr_ID;
  left->Obj_ID = right->Obj_ID;
  left->O_ATTR_R103_succeeds = right; /* SR L1 */
  right->O_ATTR_R103_precedes = left; /* SR L2 */
}

/*
 * UNRELATE <left> O_ATTR FROM <right> O_ATTR ACROSS R103.'succeeds'
 */
void
masl2xtuml_O_ATTR_R103_Unlink_succeeds( masl2xtuml_O_ATTR * left, masl2xtuml_O_ATTR * right )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "O_ATTR", "masl2xtuml_O_ATTR_R103_Unlink_succeeds" );
    return;
  }
  left->PAttr_ID = 0;
  left->O_ATTR_R103_succeeds = 0; /* SR U1 */
  right->O_ATTR_R103_precedes = 0; /* SR U2 */
}

/*
 * RELATE <left> O_ATTR TO <right> O_ATTR ACROSS R103.'precedes'
 */
void
masl2xtuml_O_ATTR_R103_Link_precedes( masl2xtuml_O_ATTR * left, masl2xtuml_O_ATTR * right )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "O_ATTR", "masl2xtuml_O_ATTR_R103_Link_precedes" );
    return;
  }
  right->PAttr_ID = left->Attr_ID;
  right->Obj_ID = left->Obj_ID;
  right->O_ATTR_R103_succeeds = left; /* SR L4 */
  left->O_ATTR_R103_precedes = right; /* SR L5 */
}

/*
 * UNRELATE <left> O_ATTR FROM <right> O_ATTR ACROSS R103.'precedes'
 */
void
masl2xtuml_O_ATTR_R103_Unlink_precedes( masl2xtuml_O_ATTR * left, masl2xtuml_O_ATTR * right )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "O_ATTR", "masl2xtuml_O_ATTR_R103_Unlink_precedes" );
    return;
  }
  right->PAttr_ID = 0;
  right->O_ATTR_R103_succeeds = 0; /* SR U4 */
  left->O_ATTR_R103_precedes = 0; /* SR U5 */
}

/* Accessors to O_ATTR[R106] subtypes */


/*
 * RELATE S_DT TO O_ATTR ACROSS R114
 */
void
masl2xtuml_O_ATTR_R114_Link_is_defined_by( masl2xtuml_S_DT * part, masl2xtuml_O_ATTR * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "O_ATTR", "masl2xtuml_O_ATTR_R114_Link_is_defined_by" );
    return;
  }
  form->DT_ID = part->DT_ID;
  form->S_DT_R114_defines_type_of = part;
  /* Note:  S_DT->O_ATTR[R114] not navigated */
}

/*
 * UNRELATE S_DT FROM O_ATTR ACROSS R114
 */
void
masl2xtuml_O_ATTR_R114_Unlink_is_defined_by( masl2xtuml_S_DT * part, masl2xtuml_O_ATTR * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "O_ATTR", "masl2xtuml_O_ATTR_R114_Unlink_is_defined_by" );
    return;
  }
  form->DT_ID = 0;
  form->S_DT_R114_defines_type_of = 0;
  /* Note:  S_DT->O_ATTR[R114] not navigated */
}
/*
 * Dump instances in SQL format.
 */
void
masl2xtuml_O_ATTR_instancedumper( Escher_iHandle_t instance )
{
  masl2xtuml_O_ATTR * self = (masl2xtuml_O_ATTR *) instance;

  if ( ( Escher_strcmp( "current_state", self->Root_Nam ) == 0 ) && ( Escher_strcmp( "void", self->S_DT_R114_defines_type_of->Name ) == 0 ) ) {
	  printf( "INSERT INTO O_ATTR VALUES ( %s,%s,%s,'%s','%s','%s','%s',%d,\"%s\",'%s','%s' );\n",
	    Escher_itoa( self->Attr_ID ),
	    Escher_itoa( self->Obj_ID ),
	    Escher_itoa( self->PAttr_ID ),
	    ( 0 != self->Name ) ? self->Name : "",
	    ( 0 != self->Descrip ) ? self->Descrip : "",
	    ( 0 != self->Prefix ) ? self->Prefix : "",
	    ( 0 != self->Root_Nam ) ? self->Root_Nam : "",
	    self->Pfx_Mode,
		"ba5eda7a-def5-0000-0000-000000000006",
	    ( 0 != self->Dimensions ) ? self->Dimensions : "",
	    ( 0 != self->DefaultValue ) ? self->DefaultValue : "" );

  } else if ( masl2xtuml_O_RATTR_CLASS_NUMBER == self->R106_object_id && ( self->R106_subtype ? ((masl2xtuml_O_RATTR*)self->R106_subtype)->O_BATTR_R113_navigates_back_to : NULL ) ) {
  printf( "INSERT INTO O_ATTR VALUES ( %s,%s,%s,'%s','%s','%s','%s',%d,\"%s\",'%s','%s' );\n",
    Escher_itoa( self->Attr_ID ),
    Escher_itoa( self->Obj_ID ),
    Escher_itoa( self->PAttr_ID ),
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->Descrip ) ? self->Descrip : "",
    ( 0 != self->Prefix ) ? self->Prefix : "",
    ( 0 != self->Root_Nam ) ? self->Root_Nam : "",
    self->Pfx_Mode,
    "ba5eda7a-def5-0000-0000-000000000007",
    ( 0 != self->Dimensions ) ? self->Dimensions : "",
    ( 0 != self->DefaultValue ) ? self->DefaultValue : "" );
  } else {
  printf( "INSERT INTO O_ATTR VALUES ( %s,%s,%s,'%s','%s','%s','%s',%d,%s,'%s','%s' );\n",
    Escher_itoa( self->Attr_ID ),
    Escher_itoa( self->Obj_ID ),
    Escher_itoa( self->PAttr_ID ),
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->Descrip ) ? self->Descrip : "",
    ( 0 != self->Prefix ) ? self->Prefix : "",
    ( 0 != self->Root_Nam ) ? self->Root_Nam : "",
    self->Pfx_Mode,
    Escher_itoa( self->DT_ID ),
    ( 0 != self->Dimensions ) ? self->Dimensions : "",
    ( 0 != self->DefaultValue ) ? self->DefaultValue : "" );
  }
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s masl2xtuml_O_ATTR_container[ masl2xtuml_O_ATTR_MAX_EXTENT_SIZE ];
static masl2xtuml_O_ATTR masl2xtuml_O_ATTR_instances[ masl2xtuml_O_ATTR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_masl2xtuml_O_ATTR_extent = {
  {0,0}, {0,0}, &masl2xtuml_O_ATTR_container[ 0 ],
  (Escher_iHandle_t) &masl2xtuml_O_ATTR_instances,
  sizeof( masl2xtuml_O_ATTR ), 0, masl2xtuml_O_ATTR_MAX_EXTENT_SIZE
  };

