/*----------------------------------------------------------------------------
 * File:  masl2xtuml_ooamarkable_class.c
 *
 * Class:       ooamarkable  (ooamarkable)
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
masl2xtuml_ooamarkable_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  masl2xtuml_ooamarkable * self = (masl2xtuml_ooamarkable *) instance;
  /* Initialize application analysis class attributes.  */
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void masl2xtuml_ooamarkable_batch_relate( Escher_iHandle_t instance )
{
  masl2xtuml_ooamarkable * masl2xtuml_ooamarkable_instance = (masl2xtuml_ooamarkable *) instance;
}

/*
 * class operation:  populate
 */
void
masl2xtuml_ooamarkable_op_populate( masl2xtuml_ooaelement * p_element )
{
  masl2xtuml_ooaelement * element;masl2xtuml_ooamarkable * markable;
  /* ASSIGN element = PARAM.element */
  element = p_element;
  /* CREATE OBJECT INSTANCE markable OF ooamarkable */
  markable = (masl2xtuml_ooamarkable *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_ooamarkable_CLASS_NUMBER );
  /* RELATE markable TO element ACROSS R3806 */
  masl2xtuml_ooamarkable_R3806_Link( element, markable );
}

/*
 * instance operation:  render_pragmas
 */
void
masl2xtuml_ooamarkable_op_render_pragmas( masl2xtuml_ooamarkable * self)
{
  masl2xtuml_ooapragma_list * list=0;c_t * pragma_string=0;masl2xtuml_ooapopulation * population=0;masl2xtuml_ooaelement * element=0;Escher_ObjectSet_s pragma_lists_space={0}; Escher_ObjectSet_s * pragma_lists = &pragma_lists_space;
  /* ASSIGN pragma_string =  */
  pragma_string = Escher_strcpy( pragma_string, "" );
  /* SELECT many pragma_lists RELATED BY self->ooapragma_list[R3802] */
  Escher_ClearSet( pragma_lists );
  if ( 0 != self ) {
    Escher_CopySet( pragma_lists, &self->ooapragma_list_R3802 );
  }
  /* FOR EACH list IN pragma_lists */
  { Escher_Iterator_s iterlist;
  masl2xtuml_ooapragma_list * iilist;
  Escher_IteratorReset( &iterlist, pragma_lists );
  while ( (iilist = (masl2xtuml_ooapragma_list *)Escher_IteratorNext( &iterlist )) != 0 ) {
    list = iilist; {
    /* ASSIGN pragma_string = ( pragma_string + list.render() ) */
    pragma_string = Escher_strcpy( pragma_string, Escher_stradd( pragma_string, masl2xtuml_ooapragma_list_op_render(list) ) );
  }}}
  /* SELECT one element RELATED BY self->ooaelement[R3806] */
  element = ( 0 != self ) ? self->ooaelement_R3806 : 0;
  /* SELECT one population RELATED BY self->ooaelement[R3806]->ooapopulation[R3801] */
  population = 0;
  {  if ( 0 != self ) {
  masl2xtuml_ooaelement * ooaelement_R3806 = self->ooaelement_R3806;
  if ( 0 != ooaelement_R3806 ) {
  population = ooaelement_R3806->ooapopulation_R3801;
}}}
  /* IF ( not_empty population ) */
  if ( ( 0 != population ) ) {
    /* IF ( (  != pragma_string ) ) */
    if ( ( Escher_strcmp( "", pragma_string ) != 0 ) ) {
      /* IF ( ( domain == element.type ) ) */
      if ( ( Escher_strcmp( "domain", element->type ) == 0 ) ) {
        masl2xtuml_C_C * domain;
        /* ASSIGN domain = population.current_component */
        domain = population->current_component;
        /* ASSIGN domain.Descrip = pragma_string */
        domain->Descrip = Escher_strcpy( domain->Descrip, pragma_string );
      }
      else if ( ( Escher_strcmp( "object", element->type ) == 0 ) ) {
        masl2xtuml_O_OBJ * obj;
        /* ASSIGN obj = population.current_class */
        obj = population->current_class;
        /* ASSIGN obj.Descrip = pragma_string */
        obj->Descrip = Escher_strcpy( obj->Descrip, pragma_string );
      }
      else {
        /* TRACE::log( flavor:failure, id:79, message:( ( Unable to find current ' + element.type ) + ' ) ) */
        TRACE_log( "failure", 79, Escher_stradd( Escher_stradd( "Unable to find current '", element->type ), "'" ) );
      }
    }
  }
  Escher_ClearSet( pragma_lists ); 
}

/*
 * instance operation:  destruct
 */
void
masl2xtuml_ooamarkable_op_destruct( masl2xtuml_ooamarkable * self)
{
  masl2xtuml_ooapragma_list * pl=0;Escher_ObjectSet_s pls_space={0}; Escher_ObjectSet_s * pls = &pls_space;
  /* SELECT many pls RELATED BY self->ooapragma_list[R3802] */
  Escher_ClearSet( pls );
  if ( 0 != self ) {
    Escher_CopySet( pls, &self->ooapragma_list_R3802 );
  }
  /* FOR EACH pl IN pls */
  { Escher_Iterator_s iterpl;
  masl2xtuml_ooapragma_list * iipl;
  Escher_IteratorReset( &iterpl, pls );
  while ( (iipl = (masl2xtuml_ooapragma_list *)Escher_IteratorNext( &iterpl )) != 0 ) {
    pl = iipl; {
    /* pl.destruct() */
    masl2xtuml_ooapragma_list_op_destruct( pl );
  }}}
  /* DELETE OBJECT INSTANCE self */
  if ( 0 == self ) {
    XTUML_EMPTY_HANDLE_TRACE( "ooamarkable", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) self, masl2xtuml_DOMAIN_ID, masl2xtuml_ooamarkable_CLASS_NUMBER );
  Escher_ClearSet( pls ); 
}

/*
 * RELATE ooaelement TO ooamarkable ACROSS R3806
 */
void
masl2xtuml_ooamarkable_R3806_Link( masl2xtuml_ooaelement * supertype, masl2xtuml_ooamarkable * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "ooamarkable", "masl2xtuml_ooamarkable_R3806_Link" );
    return;
  }
  /* Optimized linkage for ooamarkable->ooaelement[R3806] */
  subtype->ooaelement_R3806 = supertype;
  /* Optimized linkage for ooaelement->ooamarkable[R3806] */
  supertype->R3806_subtype = subtype;
  supertype->R3806_object_id = masl2xtuml_ooamarkable_CLASS_NUMBER;
}

/*
 * Dump instances in SQL format.
 */
void
masl2xtuml_ooamarkable_instancedumper( Escher_iHandle_t instance )
{
  masl2xtuml_ooamarkable * self = (masl2xtuml_ooamarkable *) instance;
}

/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      ooamarkable  (ooamarkable)
 * Component:  masl2xtuml
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s masl2xtuml_ooamarkable_container[ masl2xtuml_ooamarkable_MAX_EXTENT_SIZE ];
static masl2xtuml_ooamarkable masl2xtuml_ooamarkable_instances[ masl2xtuml_ooamarkable_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_masl2xtuml_ooamarkable_extent = {
  {0,0}, {0,0}, &masl2xtuml_ooamarkable_container[ 0 ],
  (Escher_iHandle_t) &masl2xtuml_ooamarkable_instances,
  sizeof( masl2xtuml_ooamarkable ), 0, masl2xtuml_ooamarkable_MAX_EXTENT_SIZE
  };

