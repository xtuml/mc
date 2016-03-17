/*----------------------------------------------------------------------------
 * File:  masl2xtuml_ooapragma_class.c
 *
 * Class:       ooapragma  (ooapragma)
 * Component:   masl2xtuml
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "maslin_sys_types.h"
#include "LOG_bridge.h"
#include "STRING_bridge.h"
#include "TRACE_bridge.h"
#include "masl2xtuml_classes.h"

/*
 * Instance Loader (from string data).
 */
Escher_iHandle_t
masl2xtuml_ooapragma_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  masl2xtuml_ooapragma * self = (masl2xtuml_ooapragma *) instance;
  /* Initialize application analysis class attributes.  */
  self->name = Escher_strcpy( self->name, avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void masl2xtuml_ooapragma_batch_relate( Escher_iHandle_t instance )
{
  masl2xtuml_ooapragma * masl2xtuml_ooapragma_instance = (masl2xtuml_ooapragma *) instance;
}

/*
 * instance operation:  render
 */
c_t *
masl2xtuml_ooapragma_op_render( masl2xtuml_ooapragma * self)
{
  masl2xtuml_ooapragma_item * item=0;c_t * separator=0;c_t * ret=0;Escher_ObjectSet_s pragma_items_space={0}; Escher_ObjectSet_s * pragma_items = &pragma_items_space;
  /* ASSIGN ret = ( ( pragma  + self.name ) + (  ) */
  ret = Escher_strcpy( ret, Escher_stradd( Escher_stradd( "pragma ", self->name ), "( " ) );
  /* ASSIGN separator =  */
  separator = Escher_strcpy( separator, "" );
  /* SELECT many pragma_items RELATED BY self->ooapragma_item[R3804] */
  Escher_ClearSet( pragma_items );
  if ( 0 != self ) {
    Escher_CopySet( pragma_items, &self->ooapragma_item_R3804 );
  }
  /* FOR EACH item IN pragma_items */
  { Escher_Iterator_s iteritem;
  masl2xtuml_ooapragma_item * iiitem;
  Escher_IteratorReset( &iteritem, pragma_items );
  while ( (iiitem = (masl2xtuml_ooapragma_item *)Escher_IteratorNext( &iteritem )) != 0 ) {
    item = iiitem; {
    /* ASSIGN ret = ( ( ret + separator ) + item.render() ) */
    ret = Escher_strcpy( ret, Escher_stradd( Escher_stradd( ret, separator ), masl2xtuml_ooapragma_item_op_render(item) ) );
    /* ASSIGN separator = ,  */
    separator = Escher_strcpy( separator, ", " );
  }}}
  /* ASSIGN ret = ( ret +  );\n ) */
  ret = Escher_strcpy( ret, Escher_stradd( ret, " );\n" ) );
  /* RETURN ret */
  {c_t * xtumlOALrv = ret;
  Escher_ClearSet( pragma_items ); 
  return xtumlOALrv;}
  Escher_ClearSet( pragma_items ); 
}

/*
 * class operation:  populate
 */
masl2xtuml_ooapragma *
masl2xtuml_ooapragma_op_populate( c_t * p_list, masl2xtuml_ooamarkable * p_markable, c_t * p_name )
{
  c_t * list_name=0;masl2xtuml_ooamarkable * markable;masl2xtuml_ooapragma * pragma;masl2xtuml_ooapragma_list * pragma_list=0;
  /* ASSIGN markable = PARAM.markable */
  markable = p_markable;
  /* ASSIGN list_name =  */
  list_name = Escher_strcpy( list_name, "" );
  /* IF ( (  == PARAM.list ) ) */
  if ( ( Escher_strcmp( "", p_list ) == 0 ) ) {
    /* ASSIGN list_name = default */
    list_name = Escher_strcpy( list_name, "default" );
  }
  else {
    /* ASSIGN list_name = PARAM.list */
    list_name = Escher_strcpy( list_name, p_list );
  }
  /* SELECT any pragma_list RELATED BY markable->ooapragma_list[R3802] WHERE ( ( SELECTED.name == list_name ) ) */
  pragma_list = 0;
  if ( 0 != markable ) {
    masl2xtuml_ooapragma_list * selected;
    Escher_Iterator_s iooapragma_list_R3802;
    Escher_IteratorReset( &iooapragma_list_R3802, &markable->ooapragma_list_R3802 );
    while ( 0 != ( selected = (masl2xtuml_ooapragma_list *) Escher_IteratorNext( &iooapragma_list_R3802 ) ) ) {
      if ( ( Escher_strcmp( selected->name, list_name ) == 0 ) ) {
        pragma_list = selected;
        break;
  }}}
  /* IF ( empty pragma_list ) */
  if ( ( 0 == pragma_list ) ) {
    /* ASSIGN pragma_list = ooapragma_list::populate(markable:markable, name:list_name) */
    pragma_list = masl2xtuml_ooapragma_list_op_populate(markable, list_name);
  }
  /* CREATE OBJECT INSTANCE pragma OF ooapragma */
  pragma = (masl2xtuml_ooapragma *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_ooapragma_CLASS_NUMBER );
  /* ASSIGN pragma.name = PARAM.name */
  pragma->name = Escher_strcpy( pragma->name, p_name );
  /* RELATE pragma TO pragma_list ACROSS R3803 */
  masl2xtuml_ooapragma_R3803_Link_groups( pragma_list, pragma );
  /* RETURN pragma */
  {masl2xtuml_ooapragma * xtumlOALrv = pragma;
  return xtumlOALrv;}
}

/*
 * instance operation:  destruct
 */
void
masl2xtuml_ooapragma_op_destruct( masl2xtuml_ooapragma * self)
{
  masl2xtuml_ooapragma_item * pi=0;Escher_ObjectSet_s pis_space={0}; Escher_ObjectSet_s * pis = &pis_space;
  /* SELECT many pis RELATED BY self->ooapragma_item[R3804] */
  Escher_ClearSet( pis );
  if ( 0 != self ) {
    Escher_CopySet( pis, &self->ooapragma_item_R3804 );
  }
  /* FOR EACH pi IN pis */
  { Escher_Iterator_s iterpi;
  masl2xtuml_ooapragma_item * iipi;
  Escher_IteratorReset( &iterpi, pis );
  while ( (iipi = (masl2xtuml_ooapragma_item *)Escher_IteratorNext( &iterpi )) != 0 ) {
    pi = iipi; {
    /* pi.destruct() */
    masl2xtuml_ooapragma_item_op_destruct( pi );
  }}}
  /* DELETE OBJECT INSTANCE self */
  if ( 0 == self ) {
    XTUML_EMPTY_HANDLE_TRACE( "ooapragma", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) self, masl2xtuml_DOMAIN_ID, masl2xtuml_ooapragma_CLASS_NUMBER );
  Escher_ClearSet( pis ); 
}

/*
 * RELATE ooapragma_list TO ooapragma ACROSS R3803
 */
void
masl2xtuml_ooapragma_R3803_Link_groups( masl2xtuml_ooapragma_list * part, masl2xtuml_ooapragma * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "ooapragma", "masl2xtuml_ooapragma_R3803_Link_groups" );
    return;
  }
  /* Note:  ooapragma->ooapragma_list[R3803] not navigated */
  Escher_SetInsertElement( &part->ooapragma_R3803_groups, (Escher_ObjectSet_s *) form );
}
/*
 * Dump instances in SQL format.
 */
void
masl2xtuml_ooapragma_instancedumper( Escher_iHandle_t instance )
{
  masl2xtuml_ooapragma * self = (masl2xtuml_ooapragma *) instance;
}

/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      ooapragma  (ooapragma)
 * Component:  masl2xtuml
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s masl2xtuml_ooapragma_container[ masl2xtuml_ooapragma_MAX_EXTENT_SIZE ];
static masl2xtuml_ooapragma masl2xtuml_ooapragma_instances[ masl2xtuml_ooapragma_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_masl2xtuml_ooapragma_extent = {
  {0,0}, {0,0}, &masl2xtuml_ooapragma_container[ 0 ],
  (Escher_iHandle_t) &masl2xtuml_ooapragma_instances,
  sizeof( masl2xtuml_ooapragma ), 0, masl2xtuml_ooapragma_MAX_EXTENT_SIZE
  };

