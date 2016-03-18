/*----------------------------------------------------------------------------
 * File:  masl2xtuml_ooaelement_class.c
 *
 * Class:       ooaelement  (ooaelement)
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
masl2xtuml_ooaelement_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  masl2xtuml_ooaelement * self = (masl2xtuml_ooaelement *) instance;
  /* Initialize application analysis class attributes.  */
  self->type = Escher_strcpy( self->type, avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void masl2xtuml_ooaelement_batch_relate( Escher_iHandle_t instance )
{
  masl2xtuml_ooaelement * masl2xtuml_ooaelement_instance = (masl2xtuml_ooaelement *) instance;
  {
  }
}

/*
 * class operation:  populate
 */
void
masl2xtuml_ooaelement_op_populate( masl2xtuml_ooapopulation * p_population, c_t * p_type )
{
  c_t * type=0;masl2xtuml_ooapopulation * population;masl2xtuml_ooaelement * current_element=0;
  /* ASSIGN population = PARAM.population */
  population = p_population;
  /* ASSIGN type = PARAM.type */
  type = Escher_strcpy( type, p_type );
  /* SELECT one current_element RELATED BY population->ooaelement[R3801] */
  current_element = ( 0 != population ) ? population->ooaelement_R3801_has_current : 0;
  /* IF ( ( ( not_empty current_element and ( ( associative == type ) or ( participation == type ) ) ) and ( type == current_element.type ) ) ) */
  if ( ( ( ( 0 != current_element ) && ( ( Escher_strcmp( "associative", type ) == 0 ) || ( Escher_strcmp( "participation", type ) == 0 ) ) ) && ( Escher_strcmp( type, current_element->type ) == 0 ) ) ) {
  }
  else {
    masl2xtuml_ooaelement * element;
    /* CREATE OBJECT INSTANCE element OF ooaelement */
    element = (masl2xtuml_ooaelement *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_ooaelement_CLASS_NUMBER );
    /* ASSIGN element.type = type */
    element->type = Escher_strcpy( element->type, type );
    /* IF ( empty current_element ) */
    if ( ( 0 == current_element ) ) {
      /* RELATE population TO element ACROSS R3801 */
      masl2xtuml_ooaelement_R3801_Link_has_current( population, element );
    }
    else {
      /* UNRELATE population FROM current_element ACROSS R3801 */
      masl2xtuml_ooaelement_R3801_Unlink_has_current( population, current_element );
      /* RELATE element TO current_element ACROSS R3805 */
      masl2xtuml_ooaelement_R3805_Link_child_of( element, current_element );
      /* RELATE population TO element ACROSS R3801 */
      masl2xtuml_ooaelement_R3801_Link_has_current( population, element );
    }
    /* IF ( ooaelement::ismarkable(type:PARAM.type) ) */
    if ( masl2xtuml_ooaelement_op_ismarkable(p_type) ) {
      /* ooamarkable::populate( element:element ) */
      masl2xtuml_ooamarkable_op_populate( element );
    }
    else {
      /* ooaunmarkable::populate( element:element ) */
      masl2xtuml_ooaunmarkable_op_populate( element );
    }
  }
}

/*
 * class operation:  ismarkable
 */
bool
masl2xtuml_ooaelement_op_ismarkable( c_t * p_type )
{
  /* IF ( ( ( object == PARAM.type ) or ( domain == PARAM.type ) ) ) */
  if ( ( ( Escher_strcmp( "object", p_type ) == 0 ) || ( Escher_strcmp( "domain", p_type ) == 0 ) ) ) {
    /* RETURN TRUE */
    {bool xtumlOALrv = TRUE;
    return xtumlOALrv;}
  }
  else {
    /* RETURN FALSE */
    {bool xtumlOALrv = FALSE;
    return xtumlOALrv;}
  }
}

/*
 * instance operation:  pop_stack
 */
void
masl2xtuml_ooaelement_op_pop_stack( masl2xtuml_ooaelement * self)
{
  masl2xtuml_ooapopulation * population=0;
  /* SELECT one population RELATED BY self->ooapopulation[R3801] */
  population = ( 0 != self ) ? self->ooapopulation_R3801 : 0;
  /* IF ( not_empty population ) */
  if ( ( 0 != population ) ) {
    masl2xtuml_ooaelement * parent_element=0;
    /* SELECT one parent_element RELATED BY self->ooaelement[R3805.child of] */
    parent_element = ( 0 != self ) ? self->ooaelement_R3805_child_of : 0;
    /* UNRELATE population FROM self ACROSS R3801 */
    masl2xtuml_ooaelement_R3801_Unlink_has_current( population, self );
    /* IF ( not_empty parent_element ) */
    if ( ( 0 != parent_element ) ) {
      /* RELATE population TO parent_element ACROSS R3801 */
      masl2xtuml_ooaelement_R3801_Link_has_current( population, parent_element );
      /* UNRELATE self FROM parent_element ACROSS R3805 */
      masl2xtuml_ooaelement_R3805_Unlink_child_of( self, parent_element );
    }
  }
}

/*
 * class operation:  trace
 */
void
masl2xtuml_ooaelement_op_trace( masl2xtuml_ooapopulation * p_population )
{
  i_t c;masl2xtuml_ooapopulation * population;masl2xtuml_ooaelement * current_element=0;
  /* ASSIGN population = PARAM.population */
  population = p_population;
  /* TRACE::log( flavor:stack_trace, id:82, message:outputting element stack: ) */
  TRACE_log( "stack_trace", 82, "outputting element stack:" );
  /* SELECT one current_element RELATED BY population->ooaelement[R3801] */
  current_element = ( 0 != population ) ? population->ooaelement_R3801_has_current : 0;
  /* ASSIGN c = 0 */
  c = 0;
  /* WHILE ( ( not_empty current_element and ( c < 100 ) ) ) */
  while ( ( ( 0 != current_element ) && ( c < 100 ) ) ) {
    /* TRACE::log( flavor:stack_trace, id:82, message:current_element.type ) */
    TRACE_log( "stack_trace", 82, current_element->type );
    /* SELECT one current_element RELATED BY current_element->ooaelement[R3805.child of] */
    current_element = ( 0 != current_element ) ? current_element->ooaelement_R3805_child_of : 0;
    /* ASSIGN c = ( c + 1 ) */
    c = ( c + 1 );
  }
  /* TRACE::log( flavor:stack_trace, id:82, message:done. ) */
  TRACE_log( "stack_trace", 82, "done." );
}

/*
 * instance operation:  destruct
 */
void
masl2xtuml_ooaelement_op_destruct( masl2xtuml_ooaelement * self)
{
  masl2xtuml_ooaunmarkable * unmarkable=0;masl2xtuml_ooamarkable * markable=0;
  /* SELECT one markable RELATED BY self->ooamarkable[R3806] */
  markable = 0;
  if ( ( 0 != self ) && ( masl2xtuml_ooamarkable_CLASS_NUMBER == self->R3806_object_id ) )  markable = ( 0 != self ) ? (masl2xtuml_ooamarkable *) self->R3806_subtype : 0;
  /* markable.destruct() */
  masl2xtuml_ooamarkable_op_destruct( markable );
  /* SELECT one unmarkable RELATED BY self->ooaunmarkable[R3806] */
  unmarkable = 0;
  if ( ( 0 != self ) && ( masl2xtuml_ooaunmarkable_CLASS_NUMBER == self->R3806_object_id ) )  unmarkable = ( 0 != self ) ? (masl2xtuml_ooaunmarkable *) self->R3806_subtype : 0;
  /* unmarkable.destruct() */
  masl2xtuml_ooaunmarkable_op_destruct( unmarkable );
  /* DELETE OBJECT INSTANCE self */
  if ( 0 == self ) {
    XTUML_EMPTY_HANDLE_TRACE( "ooaelement", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) self, masl2xtuml_DOMAIN_ID, masl2xtuml_ooaelement_CLASS_NUMBER );
}

/*
 * RELATE ooapopulation TO ooaelement ACROSS R3801
 */
void
masl2xtuml_ooaelement_R3801_Link_has_current( masl2xtuml_ooapopulation * part, masl2xtuml_ooaelement * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "ooaelement", "masl2xtuml_ooaelement_R3801_Link_has_current" );
    return;
  }
  form->ooapopulation_R3801 = part;
  part->ooaelement_R3801_has_current = form;
}

/*
 * UNRELATE ooapopulation FROM ooaelement ACROSS R3801
 */
void
masl2xtuml_ooaelement_R3801_Unlink_has_current( masl2xtuml_ooapopulation * part, masl2xtuml_ooaelement * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "ooaelement", "masl2xtuml_ooaelement_R3801_Unlink_has_current" );
    return;
  }
  form->ooapopulation_R3801 = 0;
  part->ooaelement_R3801_has_current = 0;
}

/*
 * RELATE <left> ooaelement TO <right> ooaelement ACROSS R3805.'child of'
 */
void
masl2xtuml_ooaelement_R3805_Link_child_of( masl2xtuml_ooaelement * left, masl2xtuml_ooaelement * right )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "ooaelement", "masl2xtuml_ooaelement_R3805_Link_child_of" );
    return;
  }
  left->ooaelement_R3805_child_of = right; /* SR L1 */
  right->ooaelement_R3805_parent_to = left; /* SR L2 */
}

/*
 * UNRELATE <left> ooaelement FROM <right> ooaelement ACROSS R3805.'child of'
 */
void
masl2xtuml_ooaelement_R3805_Unlink_child_of( masl2xtuml_ooaelement * left, masl2xtuml_ooaelement * right )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "ooaelement", "masl2xtuml_ooaelement_R3805_Unlink_child_of" );
    return;
  }
  left->ooaelement_R3805_child_of = 0; /* SR U1 */
  right->ooaelement_R3805_parent_to = 0; /* SR U2 */
}

/*
 * RELATE <left> ooaelement TO <right> ooaelement ACROSS R3805.'parent to'
 */
void
masl2xtuml_ooaelement_R3805_Link_parent_to( masl2xtuml_ooaelement * left, masl2xtuml_ooaelement * right )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "ooaelement", "masl2xtuml_ooaelement_R3805_Link_parent_to" );
    return;
  }
  right->ooaelement_R3805_child_of = left; /* SR L4 */
  left->ooaelement_R3805_parent_to = right; /* SR L5 */
}

/*
 * UNRELATE <left> ooaelement FROM <right> ooaelement ACROSS R3805.'parent to'
 */
void
masl2xtuml_ooaelement_R3805_Unlink_parent_to( masl2xtuml_ooaelement * left, masl2xtuml_ooaelement * right )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "ooaelement", "masl2xtuml_ooaelement_R3805_Unlink_parent_to" );
    return;
  }
  right->ooaelement_R3805_child_of = 0; /* SR U4 */
  left->ooaelement_R3805_parent_to = 0; /* SR U5 */
}

/* Accessors to ooaelement[R3806] subtypes */

/*
 * Dump instances in SQL format.
 */
void
masl2xtuml_ooaelement_instancedumper( Escher_iHandle_t instance )
{
  masl2xtuml_ooaelement * self = (masl2xtuml_ooaelement *) instance;
}

/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      ooaelement  (ooaelement)
 * Component:  masl2xtuml
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s masl2xtuml_ooaelement_container[ masl2xtuml_ooaelement_MAX_EXTENT_SIZE ];
static masl2xtuml_ooaelement masl2xtuml_ooaelement_instances[ masl2xtuml_ooaelement_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_masl2xtuml_ooaelement_extent = {
  {0,0}, {0,0}, &masl2xtuml_ooaelement_container[ 0 ],
  (Escher_iHandle_t) &masl2xtuml_ooaelement_instances,
  sizeof( masl2xtuml_ooaelement ), 0, masl2xtuml_ooaelement_MAX_EXTENT_SIZE
  };

