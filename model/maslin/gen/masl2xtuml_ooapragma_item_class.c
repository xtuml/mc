/*----------------------------------------------------------------------------
 * File:  masl2xtuml_ooapragma_item_class.c
 *
 * Class:       ooapragma_item  (ooapragma_item)
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
masl2xtuml_ooapragma_item_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  masl2xtuml_ooapragma_item * self = (masl2xtuml_ooapragma_item *) instance;
  /* Initialize application analysis class attributes.  */
  self->value = Escher_strcpy( self->value, avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void masl2xtuml_ooapragma_item_batch_relate( Escher_iHandle_t instance )
{
  masl2xtuml_ooapragma_item * masl2xtuml_ooapragma_item_instance = (masl2xtuml_ooapragma_item *) instance;
}

/*
 * instance operation:  render
 */
c_t *
masl2xtuml_ooapragma_item_op_render( masl2xtuml_ooapragma_item * self)
{
  /* RETURN self.value */
  {c_t * xtumlOALrv = self->value;
  return xtumlOALrv;}
}

/*
 * class operation:  populate
 */
void
masl2xtuml_ooapragma_item_op_populate( masl2xtuml_ooapragma * p_pragma, c_t * p_value )
{
  masl2xtuml_ooapragma * pragma;masl2xtuml_ooapragma_item * pragma_item;
  /* ASSIGN pragma = PARAM.pragma */
  pragma = p_pragma;
  /* CREATE OBJECT INSTANCE pragma_item OF ooapragma_item */
  pragma_item = (masl2xtuml_ooapragma_item *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_ooapragma_item_CLASS_NUMBER );
  /* ASSIGN pragma_item.value = PARAM.value */
  pragma_item->value = Escher_strcpy( pragma_item->value, p_value );
  /* RELATE pragma_item TO pragma ACROSS R3804 */
  masl2xtuml_ooapragma_item_R3804_Link( pragma, pragma_item );
}

/*
 * instance operation:  destruct
 */
void
masl2xtuml_ooapragma_item_op_destruct( masl2xtuml_ooapragma_item * self)
{
  /* DELETE OBJECT INSTANCE self */
  if ( 0 == self ) {
    XTUML_EMPTY_HANDLE_TRACE( "ooapragma_item", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) self, masl2xtuml_DOMAIN_ID, masl2xtuml_ooapragma_item_CLASS_NUMBER );
}

/*
 * RELATE ooapragma TO ooapragma_item ACROSS R3804
 */
void
masl2xtuml_ooapragma_item_R3804_Link( masl2xtuml_ooapragma * part, masl2xtuml_ooapragma_item * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "ooapragma_item", "masl2xtuml_ooapragma_item_R3804_Link" );
    return;
  }
  /* Note:  ooapragma_item->ooapragma[R3804] not navigated */
  Escher_SetInsertElement( &part->ooapragma_item_R3804, (Escher_ObjectSet_s *) form );
}
/*
 * Dump instances in SQL format.
 */
void
masl2xtuml_ooapragma_item_instancedumper( Escher_iHandle_t instance )
{
  masl2xtuml_ooapragma_item * self = (masl2xtuml_ooapragma_item *) instance;
}

/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      ooapragma_item  (ooapragma_item)
 * Component:  masl2xtuml
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s masl2xtuml_ooapragma_item_container[ masl2xtuml_ooapragma_item_MAX_EXTENT_SIZE ];
static masl2xtuml_ooapragma_item masl2xtuml_ooapragma_item_instances[ masl2xtuml_ooapragma_item_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_masl2xtuml_ooapragma_item_extent = {
  {0,0}, {0,0}, &masl2xtuml_ooapragma_item_container[ 0 ],
  (Escher_iHandle_t) &masl2xtuml_ooapragma_item_instances,
  sizeof( masl2xtuml_ooapragma_item ), 0, masl2xtuml_ooapragma_item_MAX_EXTENT_SIZE
  };

