/*----------------------------------------------------------------------------
 * File:  masl2xtuml_ooaunmarkable_class.c
 *
 * Class:       ooaunmarkable  (ooaunmarkable)
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
masl2xtuml_ooaunmarkable_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  masl2xtuml_ooaunmarkable * self = (masl2xtuml_ooaunmarkable *) instance;
  /* Initialize application analysis class attributes.  */
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void masl2xtuml_ooaunmarkable_batch_relate( Escher_iHandle_t instance )
{
  masl2xtuml_ooaunmarkable * masl2xtuml_ooaunmarkable_instance = (masl2xtuml_ooaunmarkable *) instance;
}

/*
 * class operation:  populate
 */
void
masl2xtuml_ooaunmarkable_op_populate( masl2xtuml_ooaelement * p_element )
{
  masl2xtuml_ooaelement * element;masl2xtuml_ooaunmarkable * unmarkable;
  /* ASSIGN element = PARAM.element */
  element = p_element;
  /* CREATE OBJECT INSTANCE unmarkable OF ooaunmarkable */
  unmarkable = (masl2xtuml_ooaunmarkable *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_ooaunmarkable_CLASS_NUMBER );
  /* RELATE unmarkable TO element ACROSS R3806 */
  masl2xtuml_ooaunmarkable_R3806_Link( element, unmarkable );
}

/*
 * instance operation:  destruct
 */
void
masl2xtuml_ooaunmarkable_op_destruct( masl2xtuml_ooaunmarkable * self)
{
  /* DELETE OBJECT INSTANCE self */
  if ( 0 == self ) {
    XTUML_EMPTY_HANDLE_TRACE( "ooaunmarkable", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) self, masl2xtuml_DOMAIN_ID, masl2xtuml_ooaunmarkable_CLASS_NUMBER );
}

/*
 * RELATE ooaelement TO ooaunmarkable ACROSS R3806
 */
void
masl2xtuml_ooaunmarkable_R3806_Link( masl2xtuml_ooaelement * supertype, masl2xtuml_ooaunmarkable * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "ooaunmarkable", "masl2xtuml_ooaunmarkable_R3806_Link" );
    return;
  }
  /* Optimized linkage for ooaunmarkable->ooaelement[R3806] */
  subtype->ooaelement_R3806 = supertype;
  /* Optimized linkage for ooaelement->ooaunmarkable[R3806] */
  supertype->R3806_subtype = subtype;
  supertype->R3806_object_id = masl2xtuml_ooaunmarkable_CLASS_NUMBER;
}

/*
 * Dump instances in SQL format.
 */
void
masl2xtuml_ooaunmarkable_instancedumper( Escher_iHandle_t instance )
{
  masl2xtuml_ooaunmarkable * self = (masl2xtuml_ooaunmarkable *) instance;
}

/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      ooaunmarkable  (ooaunmarkable)
 * Component:  masl2xtuml
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s masl2xtuml_ooaunmarkable_container[ masl2xtuml_ooaunmarkable_MAX_EXTENT_SIZE ];
static masl2xtuml_ooaunmarkable masl2xtuml_ooaunmarkable_instances[ masl2xtuml_ooaunmarkable_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_masl2xtuml_ooaunmarkable_extent = {
  {0,0}, {0,0}, &masl2xtuml_ooaunmarkable_container[ 0 ],
  (Escher_iHandle_t) &masl2xtuml_ooaunmarkable_instances,
  sizeof( masl2xtuml_ooaunmarkable ), 0, masl2xtuml_ooaunmarkable_MAX_EXTENT_SIZE
  };

