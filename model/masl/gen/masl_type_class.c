/*----------------------------------------------------------------------------
 * File:  masl_type_class.c
 *
 * Class:       type  (type)
 * Component:   masl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "masl_sys_types.h"
#include "LOG_bridge.h"
#include "out_bridge.h"
#include "STRING_bridge.h"
#include "T_bridge.h"
#include "TRACE_bridge.h"
#include "typeminer_bridge.h"
#include "masl_classes.h"

/*
 * Instance Loader (from string data).
 */
Escher_UniqueID_t
masl_type_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_UniqueID_t return_identifier = 0;
  masl_type * self = (masl_type *) instance;
  /* Initialize application analysis class attributes.  */
  self->name = Escher_strcpy( self->name, avlstring[ 1 ] );
  self->visibility = Escher_strcpy( self->visibility, avlstring[ 2 ] );
  self->body = Escher_strcpy( self->body, avlstring[ 3 ] );
  //self->labels = Escher_strcpy( self->labels, avlstring[ 4 ] );
  self->lcount = Escher_atoi( avlstring[ 5 ] );
  self->rendered = ( '0' != *avlstring[ 6 ] );
  self->declared_forward = ( '0' != *avlstring[ 7 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void masl_type_batch_relate( Escher_iHandle_t instance )
{
  masl_type * masl_type_instance = (masl_type *) instance;
  {
  }
}

/*
 * Scan the extent for a matching instance.
 */
masl_type *
masl_type_AnyWhere1( c_t * w_name )
{
  masl_type * w; 
  Escher_Iterator_s iter_type;
  Escher_IteratorReset( &iter_type, &pG_masl_type_extent.active );
  while ( (w = (masl_type *) Escher_IteratorNext( &iter_type )) != 0 ) {
    if ( !Escher_strcmp(w->name, w_name) ) {
      return w;
    }
  }
  return 0;
}

/*
 * instance operation:  render_masl
 */
void
masl_type_op_render_masl( masl_type * self)
{
  masl_reference * reference=0;masl_description * descrip=0;masl_markable * markable=0;Escher_ObjectSet_s references_space={0}; Escher_ObjectSet_s * references = &references_space;Escher_ObjectSet_s descrips_space={0}; Escher_ObjectSet_s * descrips = &descrips_space;
  /* SELECT many descrips RELATED BY self->markable[R3783]->element[R3786]->description[R3796] */
  Escher_ClearSet( descrips );
  {  if ( 0 != self ) {
  masl_markable * markable_R3783 = self->markable_R3783;
  if ( 0 != markable_R3783 ) {
  masl_element * element_R3786 = markable_R3783->element_R3786;
  if ( 0 != element_R3786 ) {
  masl_description * description_R3796;
  Escher_Iterator_s idescription_R3796;
  Escher_IteratorReset( &idescription_R3796, &element_R3786->description_R3796 );
  while ( 0 != ( description_R3796 = (masl_description *) Escher_IteratorNext( &idescription_R3796 ) ) ) {
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) descrips, description_R3796 ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) descrips, description_R3796 );
  }}}}}}
  /* FOR EACH descrip IN descrips */
  { Escher_Iterator_s iterdescrip;
  masl_description * iidescrip;
  Escher_IteratorReset( &iterdescrip, descrips );
  while ( (iidescrip = (masl_description *)Escher_IteratorNext( &iterdescrip )) != 0 ) {
    descrip = iidescrip; {
    /* descrip.render_masl() */
    masl_description_op_render_masl( descrip );
  }}}
  /* ASSIGN self.rendered = TRUE */
  ((masl_type *)xtUML_detect_empty_handle( self, "type", "self.rendered" ))->rendered = TRUE;
  /* SELECT many references RELATED BY self->reference[R3777.is_referenced_by] */
  Escher_ClearSet( references );
  if ( 0 != self ) {
    Escher_CopySet( references, &self->reference_R3777_is_referenced_by );
  }
  /* FOR EACH reference IN references */
  { Escher_Iterator_s iterreference;
  masl_reference * iireference;
  Escher_IteratorReset( &iterreference, references );
  while ( (iireference = (masl_reference *)Escher_IteratorNext( &iterreference )) != 0 ) {
    reference = iireference; {
    /* ASSIGN reference.resolved = TRUE */
    ((masl_reference *)xtUML_detect_empty_handle( reference, "reference", "reference.resolved" ))->resolved = TRUE;
  }}}
  /* SELECT one markable RELATED BY self->markable[R3783] */
  markable = ( 0 != self ) ? self->markable_R3783 : 0;
  /* T::include( file:masl/t.type_begin.masl ) */
#include "masl/t.type_begin.masl"
  /* T::include( file:masl/t.type_end.masl ) */
#include "masl/t.type_end.masl"
  /* markable.render_marking( list:default ) */
  masl_markable_op_render_marking( markable,  "default" );
  Escher_ClearSet( references ); Escher_ClearSet( descrips ); 
}

/*
 * class operation:  populate
 */
masl_type *
masl_type_op_populate( c_t * p_body, masl_domain * p_domain, c_t * p_name, c_t * p_visibility )
{
  masl_domain * domain;masl_type * type=0;
  /* ASSIGN domain = PARAM.domain */
  domain = p_domain;
  /* SELECT any type RELATED BY domain->type[R3719] WHERE ( SELECTED.name == PARAM.name ) */
  type = 0;
  if ( 0 != domain ) {
    masl_type * selected;
    Escher_Iterator_s itype_R3719_defines;
    Escher_IteratorReset( &itype_R3719_defines, &domain->type_R3719_defines );
    while ( 0 != ( selected = (masl_type *) Escher_IteratorNext( &itype_R3719_defines ) ) ) {
      if ( Escher_strcmp( ((masl_type *)xtUML_detect_empty_handle( selected, "type", "SELECTED.name" ))->name, p_name ) == 0 ) {
        type = selected;
        break;
  }}}
  /* IF ( empty type ) */
  if ( ( 0 == type ) ) {
    masl_markable * markable;
    /* CREATE OBJECT INSTANCE type OF type */
    type = (masl_type *) Escher_CreateInstance( masl_DOMAIN_ID, masl_type_CLASS_NUMBER );
    /* ASSIGN type.name = PARAM.name */
    ((masl_type *)xtUML_detect_empty_handle( type, "type", "type.name" ))->name = Escher_strcpy( ((masl_type *)xtUML_detect_empty_handle( type, "type", "type.name" ))->name, p_name );
    /* ASSIGN type.visibility = PARAM.visibility */
    ((masl_type *)xtUML_detect_empty_handle( type, "type", "type.visibility" ))->visibility = Escher_strcpy( ((masl_type *)xtUML_detect_empty_handle( type, "type", "type.visibility" ))->visibility, p_visibility );
    /* ASSIGN type.body = PARAM.body */
    ((masl_type *)xtUML_detect_empty_handle( type, "type", "type.body" ))->body = Escher_strcpy( ((masl_type *)xtUML_detect_empty_handle( type, "type", "type.body" ))->body, p_body );
    /* ASSIGN type.rendered = FALSE */
    ((masl_type *)xtUML_detect_empty_handle( type, "type", "type.rendered" ))->rendered = FALSE;
    /* ASSIGN type.declared_forward = FALSE */
    ((masl_type *)xtUML_detect_empty_handle( type, "type", "type.declared_forward" ))->declared_forward = FALSE;
    /* ASSIGN type.lcount = typeminer::referreds(body:type.body, labels:type.labels, name:type.name) */
    ((masl_type *)xtUML_detect_empty_handle( type, "type", "type.lcount" ))->lcount = typeminer_referreds( ((masl_type *)xtUML_detect_empty_handle( type, "type", "type.body" ))->body, ((masl_type *)xtUML_detect_empty_handle( type, "type", "type.labels" ))->labels, ((masl_type *)xtUML_detect_empty_handle( type, "type", "type.name" ))->name );
    /* RELATE type TO domain ACROSS R3719 */
    masl_type_R3719_Link_defines( domain, type );
    /* ASSIGN markable = markable::populate(name:type) */
    markable = masl_markable_op_populate("type");
    /* RELATE type TO markable ACROSS R3783 */
    masl_type_R3783_Link( markable, type );
  }
  /* RETURN type */
  {masl_type * xtumlOALrv = type;
  return xtumlOALrv;}
}

/*
 * instance operation:  validate
 */
bool
masl_type_op_validate( masl_type * self)
{
  masl_pragma_list * pragma_list=0;bool valid;Escher_ObjectSet_s child_pragma_lists_space={0}; Escher_ObjectSet_s * child_pragma_lists = &child_pragma_lists_space;
  /* ASSIGN valid = TRUE */
  valid = TRUE;
  /* IF (  == self.name ) */
  if ( Escher_strcmp( "", ((masl_type *)xtUML_detect_empty_handle( self, "type", "self.name" ))->name ) == 0 ) {
    /* TRACE::log( flavor:failure, id:101, message:type has no name. ) */
    TRACE_log( "failure", 101, "type has no name." );
    /* ASSIGN valid = FALSE */
    valid = FALSE;
    /* RETURN valid */
    {bool xtumlOALrv = valid;
    Escher_ClearSet( child_pragma_lists ); 
    return xtumlOALrv;}
  }
  /* IF ( ( public != self.visibility ) and ( private != self.visibility ) ) */
  if ( ( Escher_strcmp( "public", ((masl_type *)xtUML_detect_empty_handle( self, "type", "self.visibility" ))->visibility ) != 0 ) && ( Escher_strcmp( "private", ((masl_type *)xtUML_detect_empty_handle( self, "type", "self.visibility" ))->visibility ) != 0 ) ) {
    /* TRACE::log( flavor:failure, id:101, message:( invalid visibility for routine:  + self.visibility ) ) */
    TRACE_log( "failure", 101, ( Escher_stradd( "invalid visibility for routine: ", ((masl_type *)xtUML_detect_empty_handle( self, "type", "self.visibility" ))->visibility ) ) );
    /* ASSIGN valid = FALSE */
    valid = FALSE;
    /* RETURN valid */
    {bool xtumlOALrv = valid;
    Escher_ClearSet( child_pragma_lists ); 
    return xtumlOALrv;}
  }
  /* IF (  == self.body ) */
  if ( Escher_strcmp( "", ((masl_type *)xtUML_detect_empty_handle( self, "type", "self.body" ))->body ) == 0 ) {
    /* TRACE::log( flavor:failure, id:101, message:type has no body. ) */
    TRACE_log( "failure", 101, "type has no body." );
    /* ASSIGN valid = FALSE */
    valid = FALSE;
    /* RETURN valid */
    {bool xtumlOALrv = valid;
    Escher_ClearSet( child_pragma_lists ); 
    return xtumlOALrv;}
  }
  /* SELECT many child_pragma_lists RELATED BY self->markable[R3783]->pragma_list[R3782] */
  Escher_ClearSet( child_pragma_lists );
  {  if ( 0 != self ) {
  masl_markable * markable_R3783 = self->markable_R3783;
  if ( 0 != markable_R3783 ) {
  masl_pragma_list * pragma_list_R3782;
  Escher_Iterator_s ipragma_list_R3782;
  Escher_IteratorReset( &ipragma_list_R3782, &markable_R3783->pragma_list_R3782 );
  while ( 0 != ( pragma_list_R3782 = (masl_pragma_list *) Escher_IteratorNext( &ipragma_list_R3782 ) ) ) {
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) child_pragma_lists, pragma_list_R3782 ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) child_pragma_lists, pragma_list_R3782 );
  }}}}}
  /* FOR EACH pragma_list IN child_pragma_lists */
  { Escher_Iterator_s iterpragma_list;
  masl_pragma_list * iipragma_list;
  Escher_IteratorReset( &iterpragma_list, child_pragma_lists );
  while ( (iipragma_list = (masl_pragma_list *)Escher_IteratorNext( &iterpragma_list )) != 0 ) {
    pragma_list = iipragma_list; {
    /* ASSIGN valid = pragma_list.validate() */
    valid = masl_pragma_list_op_validate(pragma_list);
    /* IF ( FALSE == valid ) */
    if ( FALSE == valid ) {
      /* RETURN valid */
      {bool xtumlOALrv = valid;
      Escher_ClearSet( child_pragma_lists ); 
      return xtumlOALrv;}
    }
  }}}
  /* RETURN valid */
  {bool xtumlOALrv = valid;
  Escher_ClearSet( child_pragma_lists ); 
  return xtumlOALrv;}
  Escher_ClearSet( child_pragma_lists ); 
}

/*
 * instance operation:  tostring
 */
void
masl_type_op_tostring( masl_type * self)
{
  c_t * emptyvalue[8]={0};c_t * value[8]={0};
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN value[0] = self.name */
  value[0] = Escher_strcpy( value[0], ((masl_type *)xtUML_detect_empty_handle( self, "type", "self.name" ))->name );
  /* ASSIGN value[1] = self.visibility */
  value[1] = Escher_strcpy( value[1], ((masl_type *)xtUML_detect_empty_handle( self, "type", "self.visibility" ))->visibility );
  /* ASSIGN value[2] = self.body */
  value[2] = Escher_strcpy( value[2], ((masl_type *)xtUML_detect_empty_handle( self, "type", "self.body" ))->body );
  /* out::tostring( element:type, value:value ) */
  out_tostring( "type", value );
  /* out::tostring( element:type, value:emptyvalue ) */
  out_tostring( "type", emptyvalue );
}

/*
 * instance operation:  populate_references
 */
void
masl_type_op_populate_references( masl_type * self)
{
  i_t i;
  /* ASSIGN i = self.lcount */
  i = ((masl_type *)xtUML_detect_empty_handle( self, "type", "self.lcount" ))->lcount;
  /* WHILE ( i > 0 ) */
  while ( i > 0 ) {
    masl_type * referred_type=0;
    /* ASSIGN i = ( i - 1 ) */
    i = ( i - 1 );
    /* SELECT any referred_type RELATED BY self->domain[R3719]->type[R3719] WHERE ( SELECTED.name == self.labels[i] ) */
    referred_type = 0;
    {    if ( 0 != self ) {
    masl_domain * domain_R3719 = self->domain_R3719;
    if ( 0 != domain_R3719 ) {
    masl_type * selected;
    Escher_Iterator_s itype_R3719_defines;
    Escher_IteratorReset( &itype_R3719_defines, &domain_R3719->type_R3719_defines );
    while ( 0 != ( selected = (masl_type *) Escher_IteratorNext( &itype_R3719_defines ) ) ) {
      if ( Escher_strcmp( ((masl_type *)xtUML_detect_empty_handle( selected, "type", "SELECTED.name" ))->name, ((masl_type *)xtUML_detect_empty_handle( self, "type", "self.labels" ))->labels[i] ) == 0 ) {
        referred_type = selected;
        break;
    }}
}}}
    /* IF ( not_empty referred_type ) */
    if ( ( 0 != referred_type ) ) {
      masl_reference * r;
      /* ASSIGN r = reference::populate(child:referred_type, parent:self) */
      r = masl_reference_op_populate(referred_type, self);
    }
  }
}

/*
 * instance operation:  render_forward
 */
void
masl_type_op_render_forward( masl_type * self)
{
  masl_reference * reference=0;Escher_ObjectSet_s references_space={0}; Escher_ObjectSet_s * references = &references_space;
  /* IF ( not self.declared_forward ) */
  if ( !((masl_type *)xtUML_detect_empty_handle( self, "type", "self.declared_forward" ))->declared_forward ) {
    masl_markable * markable=0;
    /* SELECT one markable RELATED BY self->markable[R3783] */
    markable = ( 0 != self ) ? self->markable_R3783 : 0;
    /* T::include( file:masl/t.type_fwd_decl.masl ) */
#include "masl/t.type_fwd_decl.masl"
    /* markable.render_marking( list:declaration ) */
    masl_markable_op_render_marking( markable,  "declaration" );
    /* ASSIGN self.declared_forward = TRUE */
    ((masl_type *)xtUML_detect_empty_handle( self, "type", "self.declared_forward" ))->declared_forward = TRUE;
  }
  /* SELECT many references RELATED BY self->reference[R3777.is_referenced_by] */
  Escher_ClearSet( references );
  if ( 0 != self ) {
    Escher_CopySet( references, &self->reference_R3777_is_referenced_by );
  }
  /* FOR EACH reference IN references */
  { Escher_Iterator_s iterreference;
  masl_reference * iireference;
  Escher_IteratorReset( &iterreference, references );
  while ( (iireference = (masl_reference *)Escher_IteratorNext( &iterreference )) != 0 ) {
    reference = iireference; {
    /* ASSIGN reference.resolved = TRUE */
    ((masl_reference *)xtUML_detect_empty_handle( reference, "reference", "reference.resolved" ))->resolved = TRUE;
  }}}
  Escher_ClearSet( references ); 
}

/*
 * class operation:  render_leaves
 */
i_t
masl_type_op_render_leaves( masl_domain * p_domain, c_t * p_scope )
{
  i_t prev_count;i_t count;masl_domain * domain;Escher_ObjectSet_s types_space={0}; Escher_ObjectSet_s * types = &types_space;
  /* ASSIGN domain = PARAM.domain */
  domain = p_domain;
  /* ASSIGN count = 1 */
  count = 1;
  /* SELECT many types RELATED BY domain->type[R3719] WHERE ( not SELECTED.rendered ) */
  Escher_ClearSet( types );
  if ( 0 != domain ) {
  {masl_type * selected;
  Escher_Iterator_s itype_R3719_defines;
  Escher_IteratorReset( &itype_R3719_defines, &domain->type_R3719_defines );
  while ( 0 != ( selected = (masl_type *) Escher_IteratorNext( &itype_R3719_defines ) ) ) {
    if ( !((masl_type *)xtUML_detect_empty_handle( selected, "type", "SELECTED.rendered" ))->rendered ) {
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) types, selected ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) types, selected );
  }}}}}
  /* IF ( public == PARAM.scope ) */
  if ( Escher_strcmp( "public", p_scope ) == 0 ) {
    /* SELECT many types RELATED BY domain->type[R3719] WHERE ( not SELECTED.rendered and ( SELECTED.visibility == PARAM.scope ) ) */
    Escher_ClearSet( types );
    if ( 0 != domain ) {
    {masl_type * selected;
    Escher_Iterator_s itype_R3719_defines;
    Escher_IteratorReset( &itype_R3719_defines, &domain->type_R3719_defines );
    while ( 0 != ( selected = (masl_type *) Escher_IteratorNext( &itype_R3719_defines ) ) ) {
      if ( !((masl_type *)xtUML_detect_empty_handle( selected, "type", "SELECTED.rendered" ))->rendered && ( Escher_strcmp( ((masl_type *)xtUML_detect_empty_handle( selected, "type", "SELECTED.visibility" ))->visibility, p_scope ) == 0 ) ) {
        if ( ! Escher_SetContains( (Escher_ObjectSet_s *) types, selected ) ) {
          Escher_SetInsertElement( (Escher_ObjectSet_s *) types, selected );
    }}}}}
  }
  /* ASSIGN count = cardinality types */
  count = Escher_SetCardinality( types );
  /* ASSIGN prev_count = ( count + 1 ) */
  prev_count = ( count + 1 );
  /* WHILE ( count < prev_count ) */
  while ( count < prev_count ) {
    masl_type * type=0;
    /* ASSIGN prev_count = count */
    prev_count = count;
    /* FOR EACH type IN types */
    { Escher_Iterator_s itertype;
    masl_type * iitype;
    Escher_IteratorReset( &itertype, types );
    while ( (iitype = (masl_type *)Escher_IteratorNext( &itertype )) != 0 ) {
      type = iitype; {
      masl_reference * reference=0;
      /* SELECT any reference RELATED BY type->reference[R3777.refers_to] WHERE ( not SELECTED.resolved ) */
      reference = 0;
      if ( 0 != type ) {
        masl_reference * selected;
        Escher_Iterator_s ireference_R3777_refers_to;
        Escher_IteratorReset( &ireference_R3777_refers_to, &type->reference_R3777_refers_to );
        while ( 0 != ( selected = (masl_reference *) Escher_IteratorNext( &ireference_R3777_refers_to ) ) ) {
          if ( !((masl_reference *)xtUML_detect_empty_handle( selected, "reference", "SELECTED.resolved" ))->resolved ) {
            reference = selected;
            break;
      }}}
      /* IF ( empty reference ) */
      if ( ( 0 == reference ) ) {
        /* IF ( ( public == type.visibility ) or ( private == PARAM.scope ) ) */
        if ( ( Escher_strcmp( "public", ((masl_type *)xtUML_detect_empty_handle( type, "type", "type.visibility" ))->visibility ) == 0 ) || ( Escher_strcmp( "private", p_scope ) == 0 ) ) {
          /* type.render_masl() */
          masl_type_op_render_masl( type );
        }
      }
    }}}
    /* SELECT many types RELATED BY domain->type[R3719] WHERE ( not SELECTED.rendered ) */
    Escher_ClearSet( types );
    if ( 0 != domain ) {
    {masl_type * selected;
    Escher_Iterator_s itype_R3719_defines;
    Escher_IteratorReset( &itype_R3719_defines, &domain->type_R3719_defines );
    while ( 0 != ( selected = (masl_type *) Escher_IteratorNext( &itype_R3719_defines ) ) ) {
      if ( !((masl_type *)xtUML_detect_empty_handle( selected, "type", "SELECTED.rendered" ))->rendered ) {
        if ( ! Escher_SetContains( (Escher_ObjectSet_s *) types, selected ) ) {
          Escher_SetInsertElement( (Escher_ObjectSet_s *) types, selected );
    }}}}}
    /* IF ( public == PARAM.scope ) */
    if ( Escher_strcmp( "public", p_scope ) == 0 ) {
      /* SELECT many types RELATED BY domain->type[R3719] WHERE ( not SELECTED.rendered and ( SELECTED.visibility == PARAM.scope ) ) */
      Escher_ClearSet( types );
      if ( 0 != domain ) {
      {masl_type * selected;
      Escher_Iterator_s itype_R3719_defines;
      Escher_IteratorReset( &itype_R3719_defines, &domain->type_R3719_defines );
      while ( 0 != ( selected = (masl_type *) Escher_IteratorNext( &itype_R3719_defines ) ) ) {
        if ( !((masl_type *)xtUML_detect_empty_handle( selected, "type", "SELECTED.rendered" ))->rendered && ( Escher_strcmp( ((masl_type *)xtUML_detect_empty_handle( selected, "type", "SELECTED.visibility" ))->visibility, p_scope ) == 0 ) ) {
          if ( ! Escher_SetContains( (Escher_ObjectSet_s *) types, selected ) ) {
            Escher_SetInsertElement( (Escher_ObjectSet_s *) types, selected );
      }}}}}
    }
    /* ASSIGN count = cardinality types */
    count = Escher_SetCardinality( types );
  }
  /* RETURN count */
  {i_t xtumlOALrv = count;
  Escher_ClearSet( types ); 
  return xtumlOALrv;}
  Escher_ClearSet( types ); 
}

/*
 * class operation:  render_all
 */
void
masl_type_op_render_all( masl_domain * p_domain, c_t * p_scope )
{
  masl_type * type=0;masl_reference * reference=0;i_t guard;masl_domain * domain;Escher_ObjectSet_s types_space={0}; Escher_ObjectSet_s * types = &types_space;Escher_ObjectSet_s references_space={0}; Escher_ObjectSet_s * references = &references_space;
  /* ASSIGN domain = PARAM.domain */
  domain = p_domain;
  /* SELECT many references RELATED BY domain->reference[R3776.contains] */
  Escher_ClearSet( references );
  if ( 0 != domain ) {
    Escher_CopySet( references, &domain->reference_R3776_contains );
  }
  /* FOR EACH reference IN references */
  { Escher_Iterator_s iterreference;
  masl_reference * iireference;
  Escher_IteratorReset( &iterreference, references );
  while ( (iireference = (masl_reference *)Escher_IteratorNext( &iterreference )) != 0 ) {
    reference = iireference; {
    /* ASSIGN reference.resolved = FALSE */
    ((masl_reference *)xtUML_detect_empty_handle( reference, "reference", "reference.resolved" ))->resolved = FALSE;
  }}}
  /* ASSIGN guard = cardinality references */
  guard = Escher_SetCardinality( references );
  /* SELECT many types RELATED BY domain->type[R3719] */
  Escher_ClearSet( types );
  if ( 0 != domain ) {
    Escher_CopySet( types, &domain->type_R3719_defines );
  }
  /* IF ( public == PARAM.scope ) */
  if ( Escher_strcmp( "public", p_scope ) == 0 ) {
    /* SELECT many types RELATED BY domain->type[R3719] WHERE ( SELECTED.visibility == PARAM.scope ) */
    Escher_ClearSet( types );
    if ( 0 != domain ) {
    {masl_type * selected;
    Escher_Iterator_s itype_R3719_defines;
    Escher_IteratorReset( &itype_R3719_defines, &domain->type_R3719_defines );
    while ( 0 != ( selected = (masl_type *) Escher_IteratorNext( &itype_R3719_defines ) ) ) {
      if ( Escher_strcmp( ((masl_type *)xtUML_detect_empty_handle( selected, "type", "SELECTED.visibility" ))->visibility, p_scope ) == 0 ) {
        if ( ! Escher_SetContains( (Escher_ObjectSet_s *) types, selected ) ) {
          Escher_SetInsertElement( (Escher_ObjectSet_s *) types, selected );
    }}}}}
  }
  /* FOR EACH type IN types */
  { Escher_Iterator_s itertype;
  masl_type * iitype;
  Escher_IteratorReset( &itertype, types );
  while ( (iitype = (masl_type *)Escher_IteratorNext( &itertype )) != 0 ) {
    type = iitype; {
    /* ASSIGN type.rendered = FALSE */
    ((masl_type *)xtUML_detect_empty_handle( type, "type", "type.rendered" ))->rendered = FALSE;
    /* ASSIGN type.declared_forward = FALSE */
    ((masl_type *)xtUML_detect_empty_handle( type, "type", "type.declared_forward" ))->declared_forward = FALSE;
    /* type.populate_references() */
    masl_type_op_populate_references( type );
  }}}
  /* SELECT many references RELATED BY domain->reference[R3776.contains] WHERE ( SELECTED.parent_name == SELECTED.child_name ) */
  Escher_ClearSet( references );
  if ( 0 != domain ) {
  {masl_reference * selected;
  Escher_Iterator_s ireference_R3776_contains;
  Escher_IteratorReset( &ireference_R3776_contains, &domain->reference_R3776_contains );
  while ( 0 != ( selected = (masl_reference *) Escher_IteratorNext( &ireference_R3776_contains ) ) ) {
    if ( Escher_strcmp( ((masl_reference *)xtUML_detect_empty_handle( selected, "reference", "SELECTED.parent_name" ))->parent_name, ((masl_reference *)xtUML_detect_empty_handle( selected, "reference", "SELECTED.child_name" ))->child_name ) == 0 ) {
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) references, selected ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) references, selected );
  }}}}}
  /* FOR EACH reference IN references */
  { Escher_Iterator_s iterreference;
  masl_reference * iireference;
  Escher_IteratorReset( &iterreference, references );
  while ( (iireference = (masl_reference *)Escher_IteratorNext( &iterreference )) != 0 ) {
    reference = iireference; {
    /* SELECT one type RELATED BY reference->type[R3777.refers_to] */
    type = ( 0 != reference ) ? reference->type_R3777_refers_to : 0;
    /* IF ( not type.rendered and ( ( public == type.visibility ) or ( private == PARAM.scope ) ) ) */
    if ( !((masl_type *)xtUML_detect_empty_handle( type, "type", "type.rendered" ))->rendered && ( ( Escher_strcmp( "public", ((masl_type *)xtUML_detect_empty_handle( type, "type", "type.visibility" ))->visibility ) == 0 ) || ( Escher_strcmp( "private", p_scope ) == 0 ) ) ) {
      /* type.render_forward() */
      masl_type_op_render_forward( type );
    }
  }}}
  /* WHILE ( 0 < type::render_leaves(domain, PARAM.scope) ) */
  while ( 0 < masl_type_op_render_leaves(domain, p_scope) ) {
    /* SELECT any reference RELATED BY domain->reference[R3776] WHERE ( not SELECTED.resolved ) */
    reference = 0;
    if ( 0 != domain ) {
      masl_reference * selected;
      Escher_Iterator_s ireference_R3776_contains;
      Escher_IteratorReset( &ireference_R3776_contains, &domain->reference_R3776_contains );
      while ( 0 != ( selected = (masl_reference *) Escher_IteratorNext( &ireference_R3776_contains ) ) ) {
        if ( !((masl_reference *)xtUML_detect_empty_handle( selected, "reference", "SELECTED.resolved" ))->resolved ) {
          reference = selected;
          break;
    }}}
    /* SELECT one type RELATED BY reference->type[R3777.refers_to] */
    type = ( 0 != reference ) ? reference->type_R3777_refers_to : 0;
    /* IF ( not_empty type ) */
    if ( ( 0 != type ) ) {
      /* IF ( ( public == type.visibility ) or ( private == PARAM.scope ) ) */
      if ( ( Escher_strcmp( "public", ((masl_type *)xtUML_detect_empty_handle( type, "type", "type.visibility" ))->visibility ) == 0 ) || ( Escher_strcmp( "private", p_scope ) == 0 ) ) {
        /* type.render_forward() */
        masl_type_op_render_forward( type );
      }
    }
    else {
      /* TRACE::log( flavor:failure, id:121, message:did not find cyclic unresolved type ) */
      TRACE_log( "failure", 121, "did not find cyclic unresolved type" );
    }
    /* ASSIGN guard = ( guard - 1 ) */
    guard = ( guard - 1 );
    /* IF ( 0 == guard ) */
    if ( 0 == guard ) {
      /* TRACE::log( flavor:failure, id:122, message:did not break cycles ) */
      TRACE_log( "failure", 122, "did not break cycles" );
      /* BREAK */
      break;
    }
  }
  Escher_ClearSet( types ); Escher_ClearSet( references ); 
}

/*
 * instance operation:  render_wasl
 */
void
masl_type_op_render_wasl( masl_type * self)
{
  masl_reference * reference=0;masl_description * descrip=0;masl_markable * markable=0;Escher_ObjectSet_s references_space={0}; Escher_ObjectSet_s * references = &references_space;Escher_ObjectSet_s descrips_space={0}; Escher_ObjectSet_s * descrips = &descrips_space;
  /* SELECT many descrips RELATED BY self->markable[R3783]->element[R3786]->description[R3796] */
  Escher_ClearSet( descrips );
  {  if ( 0 != self ) {
  masl_markable * markable_R3783 = self->markable_R3783;
  if ( 0 != markable_R3783 ) {
  masl_element * element_R3786 = markable_R3783->element_R3786;
  if ( 0 != element_R3786 ) {
  masl_description * description_R3796;
  Escher_Iterator_s idescription_R3796;
  Escher_IteratorReset( &idescription_R3796, &element_R3786->description_R3796 );
  while ( 0 != ( description_R3796 = (masl_description *) Escher_IteratorNext( &idescription_R3796 ) ) ) {
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) descrips, description_R3796 ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) descrips, description_R3796 );
  }}}}}}
  /* FOR EACH descrip IN descrips */
  { Escher_Iterator_s iterdescrip;
  masl_description * iidescrip;
  Escher_IteratorReset( &iterdescrip, descrips );
  while ( (iidescrip = (masl_description *)Escher_IteratorNext( &iterdescrip )) != 0 ) {
    descrip = iidescrip; {
    /* descrip.render_wasl() */
    masl_description_op_render_wasl( descrip );
  }}}
  /* ASSIGN self.rendered = TRUE */
  ((masl_type *)xtUML_detect_empty_handle( self, "type", "self.rendered" ))->rendered = TRUE;
  /* SELECT many references RELATED BY self->reference[R3777.is_referenced_by] */
  Escher_ClearSet( references );
  if ( 0 != self ) {
    Escher_CopySet( references, &self->reference_R3777_is_referenced_by );
  }
  /* FOR EACH reference IN references */
  { Escher_Iterator_s iterreference;
  masl_reference * iireference;
  Escher_IteratorReset( &iterreference, references );
  while ( (iireference = (masl_reference *)Escher_IteratorNext( &iterreference )) != 0 ) {
    reference = iireference; {
    /* ASSIGN reference.resolved = TRUE */
    ((masl_reference *)xtUML_detect_empty_handle( reference, "reference", "reference.resolved" ))->resolved = TRUE;
  }}}
  /* SELECT one markable RELATED BY self->markable[R3783] */
  markable = ( 0 != self ) ? self->markable_R3783 : 0;
  /* IF ( - 1 != STRING::indexof(self.body, ,) ) */
  if ( -1 != STRING_indexof( ((masl_type *)xtUML_detect_empty_handle( self, "type", "self.body" ))->body, "," ) ) {
    /* ASSIGN self.body = ( ( Enumeration,{ + self.body ) + } ) */
    ((masl_type *)xtUML_detect_empty_handle( self, "type", "self.body" ))->body = Escher_strcpy( ((masl_type *)xtUML_detect_empty_handle( self, "type", "self.body" ))->body, ( Escher_stradd( ( Escher_stradd( "Enumeration,{", ((masl_type *)xtUML_detect_empty_handle( self, "type", "self.body" ))->body ) ), "}" ) ) );
  }
  /* T::include( file:wasl/t.type_begin.wasl ) */
#include "wasl/t.type_begin.wasl"
  /* T::include( file:wasl/t.type_end.wasl ) */
#include "wasl/t.type_end.wasl"
  /* markable.render_marking( list:default ) */
  masl_markable_op_render_marking( markable,  "default" );
  Escher_ClearSet( references ); Escher_ClearSet( descrips ); 
}

/*
 * RELATE domain TO type ACROSS R3719
 */
void
masl_type_R3719_Link_defines( masl_domain * part, masl_type * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "type", "masl_type_R3719_Link_defines" );
    return;
  }
  form->domain_R3719 = part;
  Escher_SetInsertElement( &part->type_R3719_defines, (Escher_ObjectSet_s *) form );
}

/* Accessors to type[R3751] subtypes */


/*
 * RELATE markable TO type ACROSS R3783
 */
void
masl_type_R3783_Link( masl_markable * supertype, masl_type * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "type", "masl_type_R3783_Link" );
    return;
  }
  /* Optimized linkage for type->markable[R3783] */
  subtype->markable_R3783 = supertype;
  /* Optimized linkage for markable->type[R3783] */
  supertype->R3783_subtype = subtype;
  supertype->R3783_object_id = masl_type_CLASS_NUMBER;
}

/*
 * Dump instances in SQL format.
 */
void
masl_type_instancedumper( Escher_iHandle_t instance )
{
  masl_type * self = (masl_type *) instance;
  printf( "INSERT INTO type VALUES ( '%s','%s','%s','%s',%d,%d,%d );\n",
    ( 0 != self->name ) ? self->name : "",
    ( 0 != self->visibility ) ? self->visibility : "",
    ( 0 != self->body ) ? self->body : "",
    ( 0 != self->labels ) ? self->labels[0] : "",
    self->lcount,
    self->rendered,
    self->declared_forward );
}

/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      type  (type)
 * Component:  masl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s masl_type_container[ masl_type_MAX_EXTENT_SIZE ];
static masl_type masl_type_instances[ masl_type_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_masl_type_extent = {
  {0,0}, {0,0}, &masl_type_container[ 0 ],
  (Escher_iHandle_t) &masl_type_instances,
  sizeof( masl_type ), 0, masl_type_MAX_EXTENT_SIZE
  };

