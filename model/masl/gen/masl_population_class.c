/*----------------------------------------------------------------------------
 * File:  masl_population_class.c
 *
 * Class:       population  (population)
 * Component:   masl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "masl_sys_types.h"
#include "LOG_bridge.h"
#include "STRING_bridge.h"
#include "T_bridge.h"
#include "TRACE_bridge.h"
#include "masl_classes.h"

/*
 * class operation:  populate
 */
void
masl_population_op_populate( c_t p_element[ESCHER_SYS_MAX_STRING_LEN], c_t p_value[8][ESCHER_SYS_MAX_STRING_LEN] )
{
  c_t * value[8]={0,0,0,0,0,0,0,0};c_t element[ESCHER_SYS_MAX_STRING_LEN];masl_population * population=0;
  /* ASSIGN element = PARAM.element */
  Escher_strcpy( element, p_element );
  /* ASSIGN value = PARAM.value */
  value[0] = p_value[0];
  value[1] = p_value[1];
  value[2] = p_value[2];
  value[3] = p_value[3];
  value[4] = p_value[4];
  value[5] = p_value[5];
  value[6] = p_value[6];
  value[7] = p_value[7];
  /* SELECT any population FROM INSTANCES OF population */
  population = (masl_population *) Escher_SetGetAny( &pG_masl_population_extent.active );
  /* IF ( empty population ) */
  if ( ( 0 == population ) ) {
    /* CREATE OBJECT INSTANCE population OF population */
    population = (masl_population *) Escher_CreateInstance( masl_DOMAIN_ID, masl_population_CLASS_NUMBER );
  }
  /* IF ( ( project == element ) ) */
  if ( ( Escher_strcmp( "project", element ) == 0 ) ) {
    /* IF ( (  == value[0] ) ) */
    if ( ( Escher_strcmp( "", value[0] ) == 0 ) ) {
      masl_project * empty_project=0;
      /* SELECT any empty_project FROM INSTANCES OF project WHERE FALSE */
      empty_project = 0;
      /* ASSIGN population.project = empty_project */
      population->project = empty_project;
    }
    else {
      /* ASSIGN population.project = project::populate(name:value[0]) */
      population->project = masl_project_op_populate(value[0]);
    }
  }
  else if ( ( Escher_strcmp( "domain", element ) == 0 ) ) {
    /* IF ( (  == value[0] ) ) */
    if ( ( Escher_strcmp( "", value[0] ) == 0 ) ) {
      masl_domain * empty_domain=0;
      /* SELECT any empty_domain FROM INSTANCES OF domain WHERE FALSE */
      empty_domain = 0;
      /* ASSIGN population.domain = empty_domain */
      population->domain = empty_domain;
    }
    else {
      /* ASSIGN population.domain = domain::populate(name:value[0], project:population.project) */
      population->domain = masl_domain_op_populate(value[0], population->project);
    }
  }
  else if ( ( Escher_strcmp( "object", element ) == 0 ) ) {
    /* IF ( (  == value[0] ) ) */
    if ( ( Escher_strcmp( "", value[0] ) == 0 ) ) {
      masl_object * empty_object=0;
      /* SELECT any empty_object FROM INSTANCES OF object WHERE FALSE */
      empty_object = 0;
      /* ASSIGN population.object = empty_object */
      population->object = empty_object;
    }
    else {
      /* ASSIGN population.object = object::populate(domain:population.domain, name:value[0]) */
      population->object = masl_object_op_populate(population->domain, value[0]);
    }
  }
  else if ( ( Escher_strcmp( "terminator", element ) == 0 ) ) {
    /* IF ( (  == value[0] ) ) */
    if ( ( Escher_strcmp( "", value[0] ) == 0 ) ) {
      masl_terminator * empty_terminator=0;
      /* SELECT any empty_terminator FROM INSTANCES OF terminator WHERE FALSE */
      empty_terminator = 0;
      /* ASSIGN population.terminator = empty_terminator */
      population->terminator = empty_terminator;
    }
    else {
      /* ASSIGN population.terminator = terminator::populate(domain:population.domain, name:value[0]) */
      population->terminator = masl_terminator_op_populate(population->domain, value[0]);
    }
  }
  else if ( ( Escher_strcmp( "service", element ) == 0 ) ) {
    /* IF ( (  == value[0] ) ) */
    if ( ( Escher_strcmp( "", value[0] ) == 0 ) ) {
      masl_activity * empty_activity=0;
      /* SELECT any empty_activity FROM INSTANCES OF activity WHERE FALSE */
      empty_activity = 0;
      /* ASSIGN population.activity = empty_activity */
      population->activity = empty_activity;
    }
    else {
      /* ASSIGN population.activity = service::populate(deferred_relationship:value[3], instance:value[2], name:value[1], visibility:value[0]) */
      population->activity = masl_service_op_populate(value[3], value[2], value[1], value[0]);
    }
  }
  else if ( ( Escher_strcmp( "function", element ) == 0 ) ) {
    /* IF ( (  == value[0] ) ) */
    if ( ( Escher_strcmp( "", value[0] ) == 0 ) ) {
      masl_activity * empty_activity=0;
      /* SELECT any empty_activity FROM INSTANCES OF activity WHERE FALSE */
      empty_activity = 0;
      /* ASSIGN population.activity = empty_activity */
      population->activity = empty_activity;
    }
    else {
      /* ASSIGN population.activity = function::populate(deferred_relationship:value[3], instance:value[2], name:value[1], visibility:value[0]) */
      population->activity = masl_function_op_populate(value[3], value[2], value[1], value[0]);
    }
  }
  else if ( ( Escher_strcmp( "parameter", element ) == 0 ) ) {
    /* IF ( (  == value[0] ) ) */
    if ( ( Escher_strcmp( "", value[0] ) == 0 ) ) {
      masl_parameter * empty_parameter=0;
      /* SELECT any empty_parameter FROM INSTANCES OF parameter WHERE FALSE */
      empty_parameter = 0;
      /* ASSIGN population.parameter = empty_parameter */
      population->parameter = empty_parameter;
    }
    else {
      /* ASSIGN population.parameter = parameter::populate(direction:value[1], name:value[0]) */
      population->parameter = masl_parameter_op_populate(value[1], value[0]);
    }
  }
  else if ( ( Escher_strcmp( "attribute", element ) == 0 ) ) {
    /* IF ( (  == value[0] ) ) */
    if ( ( Escher_strcmp( "", value[0] ) == 0 ) ) {
      masl_attribute * empty_attribute=0;
      /* SELECT any empty_attribute FROM INSTANCES OF attribute WHERE FALSE */
      empty_attribute = 0;
      /* ASSIGN population.attribute = empty_attribute */
      population->attribute = empty_attribute;
    }
    else {
      /* ASSIGN population.attribute = attribute::populate(defaultvalue:value[3], name:value[0], object:population.object, preferred:value[1], unique:value[2]) */
      population->attribute = masl_attribute_op_populate(value[3], value[0], population->object, value[1], value[2]);
    }
  }
  else if ( ( Escher_strcmp( "transitiontable", element ) == 0 ) ) {
    /* IF ( (  == value[0] ) ) */
    if ( ( Escher_strcmp( "", value[0] ) == 0 ) ) {
      masl_state_machine * empty_transitiontable=0;
      /* SELECT any empty_transitiontable FROM INSTANCES OF state_machine WHERE FALSE */
      empty_transitiontable = 0;
      /* ASSIGN population.transitiontable = empty_transitiontable */
      population->transitiontable = empty_transitiontable;
    }
    else {
      /* ASSIGN population.transitiontable = state_machine::populate(object:population.object, type:value[0]) */
      population->transitiontable = masl_state_machine_op_populate(population->object, value[0]);
    }
  }
  else if ( ( Escher_strcmp( "state", element ) == 0 ) ) {
    /* IF ( (  == value[0] ) ) */
    if ( ( Escher_strcmp( "", value[0] ) == 0 ) ) {
      masl_state * empty_state=0;
      /* SELECT any empty_state FROM INSTANCES OF state WHERE FALSE */
      empty_state = 0;
      /* ASSIGN population.state = empty_state */
      population->state = empty_state;
    }
    else {
      /* ASSIGN population.state = state::populate(name:value[0], state_machine:population.transitiontable, type:value[1]) */
      population->state = masl_state_op_populate(value[0], population->transitiontable, value[1]);
    }
  }
  else if ( ( Escher_strcmp( "event", element ) == 0 ) ) {
    /* IF ( (  == value[0] ) ) */
    if ( ( Escher_strcmp( "", value[0] ) == 0 ) ) {
      masl_event * empty_event=0;
      /* SELECT any empty_event FROM INSTANCES OF event WHERE FALSE */
      empty_event = 0;
      /* ASSIGN population.event = empty_event */
      population->event = empty_event;
    }
    else {
      /* ASSIGN population.event = event::populate(name:value[0], state_machine:population.transitiontable, type:value[1]) */
      population->event = masl_event_op_populate(value[0], population->transitiontable, value[1]);
    }
  }
  else if ( ( Escher_strcmp( "transition", element ) == 0 ) ) {
    /* IF ( (  == value[0] ) ) */
    if ( ( Escher_strcmp( "", value[0] ) == 0 ) ) {
      masl_transition_rule * empty_transition=0;
      /* SELECT any empty_transition FROM INSTANCES OF transition_rule WHERE FALSE */
      empty_transition = 0;
      /* ASSIGN population.transition = empty_transition */
      population->transition = empty_transition;
    }
    else {
      /* IF ( (  == value[3] ) ) */
      if ( ( Escher_strcmp( "", value[3] ) == 0 ) ) {
        masl_transition_rule * empty_transition=0;
        /* SELECT any empty_transition FROM INSTANCES OF transition_rule WHERE FALSE */
        empty_transition = 0;
        /* ASSIGN population.transition = transition_rule::populate(event:population.event, previous_rule:empty_transition, result:value[0], state:population.state) */
        population->transition = masl_transition_rule_op_populate(population->event, empty_transition, value[0], population->state);
      }
      else {
        /* ASSIGN population.transition = transition_rule::populate(event:population.event, previous_rule:population.transition, result:value[0], state:population.state) */
        population->transition = masl_transition_rule_op_populate(population->event, population->transition, value[0], population->state);
      }
    }
  }
  else if ( ( Escher_strcmp( "regularrel", element ) == 0 ) ) {
    /* IF ( (  == value[0] ) ) */
    if ( ( Escher_strcmp( "", value[0] ) == 0 ) ) {
      masl_relationship * empty_relationship=0;
      /* SELECT any empty_relationship FROM INSTANCES OF relationship WHERE FALSE */
      empty_relationship = 0;
      /* ASSIGN population.relationship = empty_relationship */
      population->relationship = empty_relationship;
    }
    else {
      /* ASSIGN population.relationship = regularrel::populate(domain:population.domain, name:value[0]) */
      population->relationship = masl_regularrel_op_populate(population->domain, value[0]);
    }
  }
  else if ( ( Escher_strcmp( "associative", element ) == 0 ) ) {
    /* IF ( (  == value[0] ) ) */
    if ( ( Escher_strcmp( "", value[0] ) == 0 ) ) {
      masl_relationship * empty_relationship=0;
      /* SELECT any empty_relationship FROM INSTANCES OF relationship WHERE FALSE */
      empty_relationship = 0;
      /* ASSIGN population.relationship = empty_relationship */
      population->relationship = empty_relationship;
    }
    else {
      /* ASSIGN population.relationship = associative::populate(domain:population.domain, name:value[0], using:value[1]) */
      population->relationship = masl_associative_op_populate(population->domain, value[0], value[1]);
    }
  }
  else if ( ( Escher_strcmp( "subsuper", element ) == 0 ) ) {
    /* IF ( (  == value[0] ) ) */
    if ( ( Escher_strcmp( "", value[0] ) == 0 ) ) {
      masl_relationship * empty_relationship=0;
      /* SELECT any empty_relationship FROM INSTANCES OF relationship WHERE FALSE */
      empty_relationship = 0;
      /* ASSIGN population.relationship = empty_relationship */
      population->relationship = empty_relationship;
    }
    else {
      /* ASSIGN population.relationship = subsuper::populate(domain:population.domain, name:value[0]) */
      population->relationship = masl_subsuper_op_populate(population->domain, value[0]);
    }
  }
  else if ( ( Escher_strcmp( "participation", element ) == 0 ) ) {
    /* IF ( (  == value[0] ) ) */
    if ( ( Escher_strcmp( "", value[0] ) == 0 ) ) {
      masl_participation * empty_participation=0;
      /* SELECT any empty_participation FROM INSTANCES OF participation WHERE FALSE */
      empty_participation = 0;
      /* ASSIGN population.participation = empty_participation */
      population->participation = empty_participation;
    }
    else {
      masl_participation * p;
      /* ASSIGN p = participation::populate(conditionality:value[2], fromobject:value[0], multiplicity:value[3], phrase:value[1], relationship:population.relationship, toobject:value[4]) */
      p = masl_participation_op_populate(value[2], value[0], value[3], value[1], population->relationship, value[4]);
    }
  }
  else {
    /* TRACE::log( flavor:failure, id:39, message:( unrecognized element:   + element ) ) */
    TRACE_log( "failure", 39, Escher_stradd( "unrecognized element:  ", element ) );
  }
}


/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      population  (population)
 * Component:  masl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s masl_population_container[ masl_population_MAX_EXTENT_SIZE ];
static masl_population masl_population_instances[ masl_population_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_masl_population_extent = {
  {0}, {0}, &masl_population_container[ 0 ],
  (Escher_iHandle_t) &masl_population_instances,
  sizeof( masl_population ), 0, masl_population_MAX_EXTENT_SIZE
  };

