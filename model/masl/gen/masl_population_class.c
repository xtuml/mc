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
  else if ( ( ( Escher_strcmp( "service", element ) == 0 ) || ( Escher_strcmp( "function", element ) == 0 ) ) ) {
    /* IF ( (  == value[0] ) ) */
    if ( ( Escher_strcmp( "", value[0] ) == 0 ) ) {
      masl_activity * empty_activity=0;
      /* SELECT any empty_activity FROM INSTANCES OF activity WHERE FALSE */
      empty_activity = 0;
      /* ASSIGN population.activity = empty_activity */
      population->activity = empty_activity;
    }
    else {
      masl_object * parent_object;masl_terminator * parent_terminator;masl_domain * parent_domain;
      /* ASSIGN parent_domain = population.domain */
      parent_domain = population->domain;
      /* ASSIGN parent_terminator = population.terminator */
      parent_terminator = population->terminator;
      /* ASSIGN parent_object = population.object */
      parent_object = population->object;
      /* IF ( ( not_empty parent_domain and empty parent_terminator ) ) */
      if ( ( ( 0 != parent_domain ) && ( 0 == parent_terminator ) ) ) {
        /* SELECT any parent_terminator FROM INSTANCES OF terminator WHERE FALSE */
        parent_terminator = 0;
        /* SELECT any parent_object FROM INSTANCES OF object WHERE FALSE */
        parent_object = 0;
      }
      else if ( ( 0 != parent_terminator ) ) {
        /* SELECT any parent_domain FROM INSTANCES OF domain WHERE FALSE */
        parent_domain = 0;
        /* SELECT any parent_object FROM INSTANCES OF object WHERE FALSE */
        parent_object = 0;
      }
      else if ( ( 0 != parent_object ) ) {
        /* SELECT any parent_domain FROM INSTANCES OF domain WHERE FALSE */
        parent_domain = 0;
        /* SELECT any parent_terminator FROM INSTANCES OF terminator WHERE FALSE */
        parent_terminator = 0;
      }
      else {
        /* TRACE::log( flavor:failure, id:39, message:no parent for activity found ) */
        TRACE_log( "failure", 39, "no parent for activity found" );
      }
      /* IF ( ( service == element ) ) */
      if ( ( Escher_strcmp( "service", element ) == 0 ) ) {
        /* ASSIGN population.activity = service::populate(deferred_relationship:value[3], instance:value[2], name:value[1], parent_domain:parent_domain, parent_object:parent_object, parent_terminator:parent_terminator, visibility:value[0]) */
        population->activity = masl_service_op_populate(value[3], value[2], value[1], parent_domain, parent_object, parent_terminator, value[0]);
      }
      else if ( ( Escher_strcmp( "function", element ) == 0 ) ) {
        /* ASSIGN population.activity = function::populate(deferred_relationship:value[3], instance:value[2], name:value[1], parent_domain:parent_domain, parent_object:parent_object, parent_terminator:parent_terminator, visibility:value[0]) */
        population->activity = masl_function_op_populate(value[3], value[2], value[1], parent_domain, parent_object, parent_terminator, value[0]);
      }
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
      masl_parameter * sibling_parameter;masl_activity * parent_activity;
      /* ASSIGN parent_activity = population.activity */
      parent_activity = population->activity;
      /* ASSIGN sibling_parameter = population.parameter */
      sibling_parameter = population->parameter;
      /* IF ( not_empty sibling_parameter ) */
      if ( ( 0 != sibling_parameter ) ) {
        /* SELECT any parent_activity FROM INSTANCES OF activity WHERE FALSE */
        parent_activity = 0;
      }
      else if ( ( 0 != parent_activity ) ) {
        /* SELECT any sibling_parameter FROM INSTANCES OF parameter WHERE FALSE */
        sibling_parameter = 0;
      }
      /* ASSIGN population.parameter = parameter::populate(direction:value[1], name:value[0], parent_activity:parent_activity, sibling_parameter:sibling_parameter) */
      population->parameter = masl_parameter_op_populate(value[1], value[0], parent_activity, sibling_parameter);
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
  else if ( ( Escher_strcmp( "referential", element ) == 0 ) ) {
    /* IF ( (  == value[0] ) ) */
    if ( ( Escher_strcmp( "", value[0] ) == 0 ) ) {
    }
    else {
      masl_referential * p;c_t rolephrase[ESCHER_SYS_MAX_STRING_LEN];masl_object * current_object;c_t attr[ESCHER_SYS_MAX_STRING_LEN];c_t obj[ESCHER_SYS_MAX_STRING_LEN];c_t roleOrObj[ESCHER_SYS_MAX_STRING_LEN];c_t relationship_name[ESCHER_SYS_MAX_STRING_LEN];c_t domain_name[ESCHER_SYS_MAX_STRING_LEN];masl_attribute * referred_to=0;masl_object * target_object=0;masl_relationship * relationship=0;masl_domain * parent_domain=0;
      /* ASSIGN domain_name = value[1] */
      Escher_strcpy( domain_name, value[1] );
      /* ASSIGN relationship_name = value[0] */
      Escher_strcpy( relationship_name, value[0] );
      /* ASSIGN roleOrObj = value[2] */
      Escher_strcpy( roleOrObj, value[2] );
      /* ASSIGN obj = value[3] */
      Escher_strcpy( obj, value[3] );
      /* ASSIGN attr = value[4] */
      Escher_strcpy( attr, value[4] );
      /* ASSIGN current_object = population.object */
      current_object = population->object;
      /* SELECT any parent_domain FROM INSTANCES OF domain WHERE FALSE */
      parent_domain = 0;
      /* IF ( (  == domain_name ) ) */
      if ( ( Escher_strcmp( "", domain_name ) == 0 ) ) {
        /* ASSIGN parent_domain = population.domain */
        parent_domain = population->domain;
      }
      else {
        /* SELECT any parent_domain FROM INSTANCES OF domain WHERE ( SELECTED.name == domain_name ) */
        parent_domain = 0;
        { masl_domain * selected;
          Escher_Iterator_s iterparent_domainmasl_domain;
          Escher_IteratorReset( &iterparent_domainmasl_domain, &pG_masl_domain_extent.active );
          while ( (selected = (masl_domain *) Escher_IteratorNext( &iterparent_domainmasl_domain )) != 0 ) {
            if ( ( Escher_strcmp( selected->name, domain_name ) == 0 ) ) {
              parent_domain = selected;
              break;
            }
          }
        }
      }
      /* SELECT any relationship FROM INSTANCES OF relationship WHERE FALSE */
      relationship = 0;
      /* IF ( not_empty parent_domain ) */
      if ( ( 0 != parent_domain ) ) {
        /* SELECT any relationship RELATED BY parent_domain->relationship[R3712] WHERE ( ( SELECTED.name == relationship_name ) ) */
        relationship = 0;
        if ( 0 != parent_domain ) {
          masl_relationship * selected;
          Escher_Iterator_s irelationship_R3712;
          Escher_IteratorReset( &irelationship_R3712, &parent_domain->relationship_R3712 );
          while ( 0 != ( selected = (masl_relationship *) Escher_IteratorNext( &irelationship_R3712 ) ) ) {
            if ( ( Escher_strcmp( selected->name, relationship_name ) == 0 ) ) {
              relationship = selected;
              break;
        }}}
      }
      /* ASSIGN rolephrase =  */
      Escher_strcpy( rolephrase, "" );
      /* SELECT any target_object FROM INSTANCES OF object WHERE FALSE */
      target_object = 0;
      /* IF ( not_empty relationship ) */
      if ( ( 0 != relationship ) ) {
        masl_participation * participation=0;
        /* SELECT one participation RELATED BY relationship->participation[R3713] */
        participation = ( 0 != relationship ) ? relationship->participation_R3713_engages : 0;
        /* IF ( ( (  == roleOrObj ) and (  == obj ) ) ) */
        if ( ( ( Escher_strcmp( "", roleOrObj ) == 0 ) && ( Escher_strcmp( "", obj ) == 0 ) ) ) {
          /* SELECT one target_object RELATED BY participation->object[R3714] */
          target_object = ( 0 != participation ) ? participation->object_R3714_one : 0;
          /* IF ( ( target_object == current_object ) ) */
          if ( ( target_object == current_object ) ) {
            /* SELECT any target_object RELATED BY participation->object[R3720] */
            target_object = ( 0 != participation ) ? (masl_object *) Escher_SetGetAny( &participation->object_R3720_other ) : 0;
          }
        }
        else if ( ( Escher_strcmp( "", roleOrObj ) != 0 ) ) {
          /* IF ( ( participation.otherphrase == roleOrObj ) ) */
          if ( ( Escher_strcmp( participation->otherphrase, roleOrObj ) == 0 ) ) {
            /* ASSIGN rolephrase = participation.otherphrase */
            Escher_strcpy( rolephrase, participation->otherphrase );
            /* SELECT one target_object RELATED BY participation->object[R3714] */
            target_object = ( 0 != participation ) ? participation->object_R3714_one : 0;
          }
          else if ( ( Escher_strcmp( participation->onephrase, roleOrObj ) == 0 ) ) {
            /* ASSIGN rolephrase = participation.onephrase */
            Escher_strcpy( rolephrase, participation->onephrase );
            /* IF ( (  != obj ) ) */
            if ( ( Escher_strcmp( "", obj ) != 0 ) ) {
              /* SELECT any target_object RELATED BY participation->object[R3720] WHERE ( ( SELECTED.name == obj ) ) */
              target_object = 0;
              if ( 0 != participation ) {
                masl_object * selected;
                Escher_Iterator_s iobject_R3720_other;
                Escher_IteratorReset( &iobject_R3720_other, &participation->object_R3720_other );
                while ( 0 != ( selected = (masl_object *) Escher_IteratorNext( &iobject_R3720_other ) ) ) {
                  if ( ( Escher_strcmp( selected->name, obj ) == 0 ) ) {
                    target_object = selected;
                    break;
              }}}
            }
            else {
              /* SELECT any target_object RELATED BY participation->object[R3720] */
              target_object = ( 0 != participation ) ? (masl_object *) Escher_SetGetAny( &participation->object_R3720_other ) : 0;
            }
          }
          else {
            /* SELECT one target_object RELATED BY participation->object[R3714] WHERE ( ( SELECTED.name == roleOrObj ) ) */
            {target_object = 0;
            {masl_object * selected = ( 0 != participation ) ? participation->object_R3714_one : 0;
            if ( ( 0 != selected ) && ( Escher_strcmp( selected->name, roleOrObj ) == 0 ) ) {
              target_object = selected;
            }}}
            /* IF ( empty target_object ) */
            if ( ( 0 == target_object ) ) {
              /* SELECT any target_object RELATED BY participation->object[R3720] WHERE ( ( SELECTED.name == roleOrObj ) ) */
              target_object = 0;
              if ( 0 != participation ) {
                masl_object * selected;
                Escher_Iterator_s iobject_R3720_other;
                Escher_IteratorReset( &iobject_R3720_other, &participation->object_R3720_other );
                while ( 0 != ( selected = (masl_object *) Escher_IteratorNext( &iobject_R3720_other ) ) ) {
                  if ( ( Escher_strcmp( selected->name, roleOrObj ) == 0 ) ) {
                    target_object = selected;
                    break;
              }}}
            }
          }
        }
        else {
        }
      }
      /* SELECT any referred_to FROM INSTANCES OF attribute WHERE FALSE */
      referred_to = 0;
      /* IF ( not_empty target_object ) */
      if ( ( 0 != target_object ) ) {
        /* SELECT any referred_to RELATED BY target_object->attribute[R3709] WHERE ( ( SELECTED.name == attr ) ) */
        referred_to = 0;
        if ( 0 != target_object ) {
          masl_attribute * selected;
          Escher_Iterator_s iattribute_R3709_is_characterized_by;
          Escher_IteratorReset( &iattribute_R3709_is_characterized_by, &target_object->attribute_R3709_is_characterized_by );
          while ( 0 != ( selected = (masl_attribute *) Escher_IteratorNext( &iattribute_R3709_is_characterized_by ) ) ) {
            if ( ( Escher_strcmp( selected->name, attr ) == 0 ) ) {
              referred_to = selected;
              break;
        }}}
      }
      /* IF ( empty referred_to ) */
      if ( ( 0 == referred_to ) ) {
        /* ASSIGN referred_to = attribute::populate(defaultvalue:, name:attr, object:target_object, preferred:, unique:) */
        referred_to = masl_attribute_op_populate("", attr, target_object, "", "");
      }
      /* ASSIGN p = referential::populate(referred_to:referred_to, referring:population.attribute, relationship:relationship, rolephrase:rolephrase) */
      p = masl_referential_op_populate(referred_to, population->attribute, relationship, rolephrase);
    }
  }
  else if ( ( Escher_strcmp( "typeref", element ) == 0 ) ) {
    /* IF ( (  == value[0] ) ) */
    if ( ( Escher_strcmp( "", value[0] ) == 0 ) ) {
    }
    else {
      masl_typeref * p;masl_attribute * parent_attribute;masl_parameter * parent_parameter;masl_activity * parent_activity;masl_function * parent_function=0;
      /* ASSIGN parent_activity = population.activity */
      parent_activity = population->activity;
      /* SELECT one parent_function RELATED BY parent_activity->function[R3704] */
      parent_function = 0;
      if ( ( 0 != parent_activity ) && ( masl_function_CLASS_NUMBER == parent_activity->R3704_object_id ) )      parent_function = ( 0 != parent_activity ) ? (masl_function *) parent_activity->R3704_subtype : 0;
      /* ASSIGN parent_parameter = population.parameter */
      parent_parameter = population->parameter;
      /* ASSIGN parent_attribute = population.attribute */
      parent_attribute = population->attribute;
      /* IF ( ( not_empty parent_function and empty parent_parameter ) ) */
      if ( ( ( 0 != parent_function ) && ( 0 == parent_parameter ) ) ) {
        /* SELECT any parent_parameter FROM INSTANCES OF parameter WHERE FALSE */
        parent_parameter = 0;
        /* SELECT any parent_attribute FROM INSTANCES OF attribute WHERE FALSE */
        parent_attribute = 0;
      }
      else if ( ( 0 != parent_parameter ) ) {
        /* SELECT any parent_attribute FROM INSTANCES OF attribute WHERE FALSE */
        parent_attribute = 0;
        /* SELECT any parent_function FROM INSTANCES OF function WHERE FALSE */
        parent_function = 0;
      }
      else if ( ( 0 != parent_attribute ) ) {
        /* SELECT any parent_parameter FROM INSTANCES OF parameter WHERE FALSE */
        parent_parameter = 0;
        /* SELECT any parent_function FROM INSTANCES OF function WHERE FALSE */
        parent_function = 0;
      }
      else {
        /* TRACE::log( flavor:failure, id:39, message:no parent for typeref ) */
        TRACE_log( "failure", 39, "no parent for typeref" );
      }
      /* ASSIGN p = typeref::populate(body:value[0], domain:population.domain, name:, parent_attribute:parent_attribute, parent_function:parent_function, parent_parameter:parent_parameter) */
      p = masl_typeref_op_populate(value[0], population->domain, "", parent_attribute, parent_function, parent_parameter);
    }
  }
  else if ( ( Escher_strcmp( "transitiontable", element ) == 0 ) ) {
    /* IF ( (  == value[0] ) ) */
    if ( ( Escher_strcmp( "", value[0] ) == 0 ) ) {
      masl_state_machine * empty_state_machine=0;
      /* SELECT any empty_state_machine FROM INSTANCES OF state_machine WHERE FALSE */
      empty_state_machine = 0;
      /* ASSIGN population.state_machine = empty_state_machine */
      population->state_machine = empty_state_machine;
    }
    else {
      /* ASSIGN population.state_machine = state_machine::populate(object:population.object, type:value[0]) */
      population->state_machine = masl_state_machine_op_populate(population->object, value[0]);
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
      /* ASSIGN population.state = state::populate(name:value[0], object:population.object, type:value[1]) */
      population->state = masl_state_op_populate(value[0], population->object, value[1]);
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
      /* ASSIGN population.event = event::populate(name:value[0], object:population.object, type:value[1]) */
      population->event = masl_event_op_populate(value[0], population->object, value[1]);
    }
  }
  else if ( ( Escher_strcmp( "transition", element ) == 0 ) ) {
    masl_cell * c;
    /* ASSIGN c = cell::populate(endstate:value[2], event:value[1], startstate:value[0], statemachine:population.state_machine) */
    c = masl_cell_op_populate(value[2], value[1], value[0], population->state_machine);
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
      /* ASSIGN population.participation = participation::populate(conditionality:value[2], fromobject:value[0], multiplicity:value[3], participation:population.participation, phrase:value[1], relationship:population.relationship, toobject:value[4]) */
      population->participation = masl_participation_op_populate(value[2], value[0], value[3], population->participation, value[1], population->relationship, value[4]);
    }
  }
  else if ( ( Escher_strcmp( "type", element ) == 0 ) ) {
    /* IF ( (  == value[0] ) ) */
    if ( ( Escher_strcmp( "", value[0] ) == 0 ) ) {
      masl_type * empty_type=0;
      /* SELECT any empty_type FROM INSTANCES OF type WHERE FALSE */
      empty_type = 0;
      /* ASSIGN population.type = empty_type */
      population->type = empty_type;
    }
    else {
      /* ASSIGN population.type = type::populate(body:value[2], domain:population.domain, name:value[0], visibility:value[1]) */
      population->type = masl_type_op_populate(value[2], population->domain, value[0], value[1]);
    }
  }
  else if ( ( Escher_strcmp( "pragma", element ) == 0 ) ) {
  }
  else if ( ( Escher_strcmp( "pragmaitem", element ) == 0 ) ) {
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

