/*----------------------------------------------------------------------------
 * File:  masl2xtuml_ooapragma_list_class.c
 *
 * Class:       ooapragma_list  (ooapragma_list)
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
masl2xtuml_ooapragma_list_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  masl2xtuml_ooapragma_list * self = (masl2xtuml_ooapragma_list *) instance;
  /* Initialize application analysis class attributes.  */
  self->name = Escher_strcpy( self->name, avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void masl2xtuml_ooapragma_list_batch_relate( Escher_iHandle_t instance )
{
  masl2xtuml_ooapragma_list * masl2xtuml_ooapragma_list_instance = (masl2xtuml_ooapragma_list *) instance;
}

/*
 * instance operation:  render
 */
c_t *
masl2xtuml_ooapragma_list_op_render( masl2xtuml_ooapragma_list * self)
{
  masl2xtuml_ooapragma * pragma=0;c_t * ret=0;Escher_ObjectSet_s pragmas_space={0}; Escher_ObjectSet_s * pragmas = &pragmas_space;
  /* ASSIGN ret =  */
  ret = Escher_strcpy( ret, "" );
  /* SELECT many pragmas RELATED BY self->ooapragma[R3803] */
  Escher_ClearSet( pragmas );
  if ( 0 != self ) {
    Escher_CopySet( pragmas, &self->ooapragma_R3803_groups );
  }
  /* FOR EACH pragma IN pragmas */
  { Escher_Iterator_s iterpragma;
  masl2xtuml_ooapragma * iipragma;
  Escher_IteratorReset( &iterpragma, pragmas );
  while ( (iipragma = (masl2xtuml_ooapragma *)Escher_IteratorNext( &iterpragma )) != 0 ) {
    pragma = iipragma; {
    /* ASSIGN ret = ( ret + pragma.render() ) */
    ret = Escher_strcpy( ret, Escher_stradd( ret, masl2xtuml_ooapragma_op_render(pragma) ) );
  }}}
  /* RETURN ret */
  {c_t * xtumlOALrv = ret;
  Escher_ClearSet( pragmas ); 
  return xtumlOALrv;}
  Escher_ClearSet( pragmas ); 
}

/*
 * class operation:  populate
 */
masl2xtuml_ooapragma_list *
masl2xtuml_ooapragma_list_op_populate( masl2xtuml_ooamarkable * p_markable, c_t * p_name )
{
  masl2xtuml_ooamarkable * markable;masl2xtuml_ooapragma_list * pragma_list;
  /* ASSIGN markable = PARAM.markable */
  markable = p_markable;
  /* CREATE OBJECT INSTANCE pragma_list OF ooapragma_list */
  pragma_list = (masl2xtuml_ooapragma_list *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_ooapragma_list_CLASS_NUMBER );
  /* ASSIGN pragma_list.name = PARAM.name */
  pragma_list->name = Escher_strcpy( pragma_list->name, p_name );
  /* RELATE pragma_list TO markable ACROSS R3802 */
  masl2xtuml_ooapragma_list_R3802_Link( markable, pragma_list );
  /* RETURN pragma_list */
  {masl2xtuml_ooapragma_list * xtumlOALrv = pragma_list;
  return xtumlOALrv;}
}

/*
 * instance operation:  destruct
 */
void
masl2xtuml_ooapragma_list_op_destruct( masl2xtuml_ooapragma_list * self)
{
  masl2xtuml_ooapragma * p=0;Escher_ObjectSet_s ps_space={0}; Escher_ObjectSet_s * ps = &ps_space;
  /* SELECT many ps RELATED BY self->ooapragma[R3803] */
  Escher_ClearSet( ps );
  if ( 0 != self ) {
    Escher_CopySet( ps, &self->ooapragma_R3803_groups );
  }
  /* FOR EACH p IN ps */
  { Escher_Iterator_s iterp;
  masl2xtuml_ooapragma * iip;
  Escher_IteratorReset( &iterp, ps );
  while ( (iip = (masl2xtuml_ooapragma *)Escher_IteratorNext( &iterp )) != 0 ) {
    p = iip; {
    /* p.destruct() */
    masl2xtuml_ooapragma_op_destruct( p );
  }}}
  /* DELETE OBJECT INSTANCE self */
  if ( 0 == self ) {
    XTUML_EMPTY_HANDLE_TRACE( "ooapragma_list", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) self, masl2xtuml_DOMAIN_ID, masl2xtuml_ooapragma_list_CLASS_NUMBER );
  Escher_ClearSet( ps ); 
}

/*
 * RELATE ooamarkable TO ooapragma_list ACROSS R3802
 */
void
masl2xtuml_ooapragma_list_R3802_Link( masl2xtuml_ooamarkable * part, masl2xtuml_ooapragma_list * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "ooapragma_list", "masl2xtuml_ooapragma_list_R3802_Link" );
    return;
  }
  /* Note:  ooapragma_list->ooamarkable[R3802] not navigated */
  Escher_SetInsertElement( &part->ooapragma_list_R3802, (Escher_ObjectSet_s *) form );
}
/*
 * Dump instances in SQL format.
 */
void
masl2xtuml_ooapragma_list_instancedumper( Escher_iHandle_t instance )
{
  masl2xtuml_ooapragma_list * self = (masl2xtuml_ooapragma_list *) instance;
}

/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      ooapragma_list  (ooapragma_list)
 * Component:  masl2xtuml
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s masl2xtuml_ooapragma_list_container[ masl2xtuml_ooapragma_list_MAX_EXTENT_SIZE ];
static masl2xtuml_ooapragma_list masl2xtuml_ooapragma_list_instances[ masl2xtuml_ooapragma_list_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_masl2xtuml_ooapragma_list_extent = {
  {0,0}, {0,0}, &masl2xtuml_ooapragma_list_container[ 0 ],
  (Escher_iHandle_t) &masl2xtuml_ooapragma_list_instances,
  sizeof( masl2xtuml_ooapragma_list ), 0, masl2xtuml_ooapragma_list_MAX_EXTENT_SIZE
  };

