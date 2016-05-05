/*----------------------------------------------------------------------------
 * File:  masl2xtuml_ooapopulation_class.c
 *
 * Class:       ooapopulation  (ooapopulation)
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
masl2xtuml_ooapopulation_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  masl2xtuml_ooapopulation * self = (masl2xtuml_ooapopulation *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_memset( &self->current_sys, avlstring[ 1 ], sizeof( self->current_sys ) );
  Escher_memset( &self->lib_pkg, avlstring[ 1 ], sizeof( self->lib_pkg ) );
  Escher_memset( &self->systypes_pkg, avlstring[ 1 ], sizeof( self->systypes_pkg ) );
  Escher_memset( &self->current_attribute, avlstring[ 1 ], sizeof( self->current_attribute ) );
  Escher_memset( &self->current_class, avlstring[ 1 ], sizeof( self->current_class ) );
  Escher_memset( &self->current_class_op, avlstring[ 1 ], sizeof( self->current_class_op ) );
  Escher_memset( &self->current_component, avlstring[ 1 ], sizeof( self->current_component ) );
  Escher_memset( &self->current_domain_function, avlstring[ 1 ], sizeof( self->current_domain_function ) );
  Escher_memset( &self->current_function_param, avlstring[ 1 ], sizeof( self->current_function_param ) );
  Escher_memset( &self->current_imported_component, avlstring[ 1 ], sizeof( self->current_imported_component ) );
  Escher_memset( &self->current_interface, avlstring[ 1 ], sizeof( self->current_interface ) );
  Escher_memset( &self->current_operation_param, avlstring[ 1 ], sizeof( self->current_operation_param ) );
  Escher_memset( &self->current_pragma, avlstring[ 1 ], sizeof( self->current_pragma ) );
  Escher_memset( &self->current_state, avlstring[ 1 ], sizeof( self->current_state ) );
  self->processingIdentifier = Escher_atoi( avlstring[ 1 ] );
  self->processingISM = ( '0' != *avlstring[ 2 ] );
  Escher_memset( &self->current_type, avlstring[ 3 ], sizeof( self->current_type ) );
  Escher_memset( &self->current_event, avlstring[ 3 ], sizeof( self->current_event ) );
  Escher_memset( &self->current_executable_property, avlstring[ 3 ], sizeof( self->current_executable_property ) );
  self->processingProject = ( '0' != *avlstring[ 3 ] );
  Escher_memset( &self->current_interface_param, avlstring[ 4 ], sizeof( self->current_interface_param ) );
  Escher_memset( &self->current_event_dataitem, avlstring[ 4 ], sizeof( self->current_event_dataitem ) );
  return return_identifier;
}

/*
 * class operation:  populate
 */
void
masl2xtuml_ooapopulation_op_populate( c_t * p_element, c_t p_value[8][ESCHER_SYS_MAX_STRING_LEN] )
{
  c_t * value[8]={0,0,0,0,0,0,0,0};c_t * element=0;masl2xtuml_ooapopulation * ooapopulation=0;
  /* ASSIGN element = PARAM.element */
  element = Escher_strcpy( element, p_element );
  /* ASSIGN value = PARAM.value */
  value[0] = p_value[0];
  value[1] = p_value[1];
  value[2] = p_value[2];
  value[3] = p_value[3];
  value[4] = p_value[4];
  value[5] = p_value[5];
  value[6] = p_value[6];
  value[7] = p_value[7];
  /* SELECT any ooapopulation FROM INSTANCES OF ooapopulation */
  ooapopulation = (masl2xtuml_ooapopulation *) Escher_SetGetAny( &pG_masl2xtuml_ooapopulation_extent.active );
  /* IF ( empty ooapopulation ) */
  if ( ( 0 == ooapopulation ) ) {
    /* CREATE OBJECT INSTANCE ooapopulation OF ooapopulation */
    ooapopulation = (masl2xtuml_ooapopulation *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_ooapopulation_CLASS_NUMBER );
    /* ASSIGN ooapopulation.processingIdentifier = 0 */
    ooapopulation->processingIdentifier = 0;
    /* ASSIGN ooapopulation.processingISM = TRUE */
    ooapopulation->processingISM = TRUE;
    /* ASSIGN ooapopulation.processingProject = FALSE */
    ooapopulation->processingProject = FALSE;
  }
  /* IF ( ( ( ( ( ( ( ( (  == value[0] ) and (  == value[1] ) ) and (  == value[2] ) ) and (  == value[3] ) ) and (  == value[4] ) ) and (  == value[5] ) ) and (  == value[6] ) ) and (  == value[7] ) ) ) */
  if ( ( ( ( ( ( ( ( ( Escher_strcmp( "", value[0] ) == 0 ) && ( Escher_strcmp( "", value[1] ) == 0 ) ) && ( Escher_strcmp( "", value[2] ) == 0 ) ) && ( Escher_strcmp( "", value[3] ) == 0 ) ) && ( Escher_strcmp( "", value[4] ) == 0 ) ) && ( Escher_strcmp( "", value[5] ) == 0 ) ) && ( Escher_strcmp( "", value[6] ) == 0 ) ) && ( Escher_strcmp( "", value[7] ) == 0 ) ) ) {
    masl2xtuml_ooaelement * current_element=0;
    /* SELECT one current_element RELATED BY ooapopulation->ooaelement[R3801] */
    current_element = ( 0 != ooapopulation ) ? ooapopulation->ooaelement_R3801_has_current : 0;
    /* IF ( not_empty current_element ) */
    if ( ( 0 != current_element ) ) {
      /* IF ( ooaelement::ismarkable(type:element) ) */
      if ( masl2xtuml_ooaelement_op_ismarkable(element) ) {
        masl2xtuml_ooamarkable * markable=0;
        /* SELECT one markable RELATED BY current_element->ooamarkable[R3806] */
        markable = 0;
        if ( ( 0 != current_element ) && ( masl2xtuml_ooamarkable_CLASS_NUMBER == current_element->R3806_object_id ) )        markable = ( 0 != current_element ) ? (masl2xtuml_ooamarkable *) current_element->R3806_subtype : 0;
        /* markable.render_pragmas() */
        masl2xtuml_ooamarkable_op_render_pragmas( markable );
      }
      /* current_element.pop_stack() */
      masl2xtuml_ooaelement_op_pop_stack( current_element );
    }
    else {
      /* TRACE::log( flavor:failure, id:55, message:Element stack is malformed. ) */
      TRACE_log( "failure", 55, "Element stack is malformed." );
      /* ooaelement::trace( population:ooapopulation ) */
      masl2xtuml_ooaelement_op_trace( ooapopulation );
    }
  }
  else if ( !( ( ( ( ( ( Escher_strcmp( "typeref", element ) == 0 ) || ( Escher_strcmp( "referential", element ) == 0 ) ) || ( Escher_strcmp( "pragmaitem", element ) == 0 ) ) || ( Escher_strcmp( "transition", element ) == 0 ) ) || ( Escher_strcmp( "expression", element ) == 0 ) ) || ( Escher_strcmp( "codeblock", element ) == 0 ) ) ) {
    /* ooaelement::populate( population:ooapopulation, type:element ) */
    masl2xtuml_ooaelement_op_populate( ooapopulation, element );
  }
  /* IF ( ( ( project == element ) or ooapopulation.processingProject ) ) */
  if ( ( ( Escher_strcmp( "project", element ) == 0 ) || ooapopulation->processingProject ) ) {
    /* ooapopulation::populate_project( element:PARAM.element, ooapopulation:ooapopulation, value:PARAM.value ) */
    masl2xtuml_ooapopulation_op_populate_project( p_element, ooapopulation, p_value );
    /* RETURN  */
    return;  }
  /* IF ( ( domain == element ) ) */
  if ( ( Escher_strcmp( "domain", element ) == 0 ) ) {
    /* IF ( (  == PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) == 0 ) ) {
      masl2xtuml_EP_PKG * lib_pkg;masl2xtuml_C_C * c_c;
      /* ASSIGN c_c = ooapopulation.current_component */
      c_c = ooapopulation->current_component;
      /* ASSIGN lib_pkg = ooapopulation.lib_pkg */
      lib_pkg = ooapopulation->lib_pkg;
      /* IF ( ( not_empty c_c and not_empty lib_pkg ) ) */
      if ( ( ( 0 != c_c ) && ( 0 != lib_pkg ) ) ) {
        c_t * comp_if_name=0;masl2xtuml_C_IR * new_ir=0;masl2xtuml_C_I * comp_if=0;masl2xtuml_EP_PKG * shared_pkg=0;
        /* SELECT any shared_pkg RELATED BY lib_pkg->PE_PE[R8000]->EP_PKG[R8001] WHERE ( ( SELECTED.Name == Shared ) ) */
        shared_pkg = 0;
        {        if ( 0 != lib_pkg ) {
        masl2xtuml_PE_PE * PE_PE_R8000_contains;
        Escher_Iterator_s iPE_PE_R8000_contains;
        Escher_IteratorReset( &iPE_PE_R8000_contains, &lib_pkg->PE_PE_R8000_contains );
        while ( ( 0 == shared_pkg ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
        if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_EP_PKG_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )        {masl2xtuml_EP_PKG * selected = (masl2xtuml_EP_PKG *) PE_PE_R8000_contains->R8001_subtype;
        if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "Shared" ) == 0 ) ) {
          shared_pkg = selected;
        }}
}}}
        /* ASSIGN comp_if_name = c_c.Name */
        comp_if_name = Escher_strcpy( comp_if_name, c_c->Name );
        /* SELECT any comp_if RELATED BY shared_pkg->PE_PE[R8000]->C_I[R8001] WHERE ( ( SELECTED.Name == comp_if_name ) ) */
        comp_if = 0;
        {        if ( 0 != shared_pkg ) {
        masl2xtuml_PE_PE * PE_PE_R8000_contains;
        Escher_Iterator_s iPE_PE_R8000_contains;
        Escher_IteratorReset( &iPE_PE_R8000_contains, &shared_pkg->PE_PE_R8000_contains );
        while ( ( 0 == comp_if ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
        if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_C_I_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )        {masl2xtuml_C_I * selected = (masl2xtuml_C_I *) PE_PE_R8000_contains->R8001_subtype;
        if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, comp_if_name ) == 0 ) ) {
          comp_if = selected;
        }}
}}}
        /* SELECT any new_ir RELATED BY comp_if->C_IR[R4012] */
        new_ir = ( 0 != comp_if ) ? (masl2xtuml_C_IR *) Escher_SetGetAny( &comp_if->C_IR_R4012_is_formal_definition ) : 0;
        /* ooapopulation.InterfaceReference_formalize( c_i:comp_if, c_ir:new_ir ) */
        masl2xtuml_ooapopulation_op_InterfaceReference_formalize( ooapopulation,  comp_if, new_ir );
      }
      /* SELECT any c_c FROM INSTANCES OF C_C WHERE FALSE */
      c_c = 0;
      /* ASSIGN ooapopulation.current_component = c_c */
      ooapopulation->current_component = c_c;
    }
    else {
      /* ooapopulation.transformDomain( name:PARAM.value[0] ) */
      masl2xtuml_ooapopulation_op_transformDomain( ooapopulation,  p_value[0] );
    }
  }
  else if ( ( Escher_strcmp( "object", element ) == 0 ) ) {
    /* IF ( (  == PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) == 0 ) ) {
      masl2xtuml_O_OBJ * o_obj=0;
      /* SELECT any o_obj FROM INSTANCES OF O_OBJ WHERE FALSE */
      o_obj = 0;
      /* ASSIGN ooapopulation.current_class = o_obj */
      ooapopulation->current_class = o_obj;
      /* ASSIGN ooapopulation.processingIdentifier = 0 */
      ooapopulation->processingIdentifier = 0;
    }
    else {
      /* ooapopulation.transformObject( name:PARAM.value[0] ) */
      masl2xtuml_ooapopulation_op_transformObject( ooapopulation,  p_value[0] );
    }
  }
  else if ( ( Escher_strcmp( "terminator", element ) == 0 ) ) {
    /* IF ( (  == PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) == 0 ) ) {
      masl2xtuml_C_I * comp_if;masl2xtuml_C_I * c_i=0;masl2xtuml_C_IR * new_ir=0;
      /* ASSIGN comp_if = ooapopulation.current_interface */
      comp_if = ooapopulation->current_interface;
      /* SELECT any new_ir RELATED BY comp_if->C_IR[R4012] */
      new_ir = ( 0 != comp_if ) ? (masl2xtuml_C_IR *) Escher_SetGetAny( &comp_if->C_IR_R4012_is_formal_definition ) : 0;
      /* ooapopulation.InterfaceReference_formalize( c_i:comp_if, c_ir:new_ir ) */
      masl2xtuml_ooapopulation_op_InterfaceReference_formalize( ooapopulation,  comp_if, new_ir );
      /* SELECT any c_i FROM INSTANCES OF C_I WHERE FALSE */
      c_i = 0;
      /* ASSIGN ooapopulation.current_interface = c_i */
      ooapopulation->current_interface = c_i;
    }
    else {
      /* ooapopulation.transformTerminator( name:PARAM.value[0] ) */
      masl2xtuml_ooapopulation_op_transformTerminator( ooapopulation,  p_value[0] );
    }
  }
  else if ( ( Escher_strcmp( "activity", element ) == 0 ) ) {
    /* IF ( (  != PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) != 0 ) ) {
      /* ooapopulation.transformActivity() */
      masl2xtuml_ooapopulation_op_transformActivity( ooapopulation );
    }
  }
  else if ( ( Escher_strcmp( "parameter", element ) == 0 ) ) {
    /* IF ( (  == PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) == 0 ) ) {
      masl2xtuml_SM_EVTDI * sm_evtdi=0;masl2xtuml_C_PP * c_pp=0;masl2xtuml_O_TPARM * o_tparm=0;masl2xtuml_S_SPARM * s_sparm=0;
      /* SELECT any s_sparm FROM INSTANCES OF S_SPARM WHERE FALSE */
      s_sparm = 0;
      /* ASSIGN ooapopulation.current_function_param = s_sparm */
      ooapopulation->current_function_param = s_sparm;
      /* SELECT any o_tparm FROM INSTANCES OF O_TPARM WHERE FALSE */
      o_tparm = 0;
      /* ASSIGN ooapopulation.current_operation_param = o_tparm */
      ooapopulation->current_operation_param = o_tparm;
      /* SELECT any c_pp FROM INSTANCES OF C_PP WHERE FALSE */
      c_pp = 0;
      /* ASSIGN ooapopulation.current_interface_param = c_pp */
      ooapopulation->current_interface_param = c_pp;
      /* SELECT any sm_evtdi FROM INSTANCES OF SM_EVTDI WHERE FALSE */
      sm_evtdi = 0;
      /* ASSIGN ooapopulation.current_event_dataitem = sm_evtdi */
      ooapopulation->current_event_dataitem = sm_evtdi;
    }
    else {
      /* ooapopulation.transformParameter( direction:PARAM.value[1], name:PARAM.value[0] ) */
      masl2xtuml_ooapopulation_op_transformParameter( ooapopulation,  p_value[1], p_value[0] );
    }
  }
  else if ( ( Escher_strcmp( "identifier", element ) == 0 ) ) {
    /* IF ( (  != PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) != 0 ) ) {
      /* ASSIGN ooapopulation.processingIdentifier = ( ooapopulation.processingIdentifier + 1 ) */
      ooapopulation->processingIdentifier = ( ooapopulation->processingIdentifier + 1 );
      /* IF ( ( 3 == ooapopulation.processingIdentifier ) ) */
      if ( ( 3 == ooapopulation->processingIdentifier ) ) {
        /* TRACE::log( flavor:warning, id:59, message:Maximum number of class identifiers reached.  Adding to I3. ) */
        TRACE_log( "warning", 59, "Maximum number of class identifiers reached.  Adding to I3." );
        /* ASSIGN ooapopulation.processingIdentifier = 2 */
        ooapopulation->processingIdentifier = 2;
      }
    }
  }
  else if ( ( Escher_strcmp( "attribute", element ) == 0 ) ) {
    /* IF ( (  == PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) == 0 ) ) {
      masl2xtuml_O_ATTR * o_attr=0;
      /* SELECT any o_attr FROM INSTANCES OF O_ATTR WHERE FALSE */
      o_attr = 0;
      /* ASSIGN ooapopulation.current_attribute = o_attr */
      ooapopulation->current_attribute = o_attr;
    }
    else {
      /* IF ( ( ooapopulation.processingIdentifier >= 1 ) ) */
      if ( ( ooapopulation->processingIdentifier >= 1 ) ) {
        masl2xtuml_O_OBJ * o_obj;masl2xtuml_referentialAttribute * ref_o_attr=0;
        /* ASSIGN o_obj = ooapopulation.current_class */
        o_obj = ooapopulation->current_class;
        /* SELECT any ref_o_attr FROM INSTANCES OF referentialAttribute WHERE ( ( SELECTED.o_attr.Root_Nam == PARAM.value[0] ) and ( SELECTED.o_obj == o_obj ) ) */
        ref_o_attr = 0;
        { masl2xtuml_referentialAttribute * selected;
          Escher_Iterator_s iterref_o_attrmasl2xtuml_referentialAttribute;
          Escher_IteratorReset( &iterref_o_attrmasl2xtuml_referentialAttribute, &pG_masl2xtuml_referentialAttribute_extent.active );
          while ( (selected = (masl2xtuml_referentialAttribute *) Escher_IteratorNext( &iterref_o_attrmasl2xtuml_referentialAttribute )) != 0 ) {
            if ( ( ( Escher_strcmp( selected->o_attr->Root_Nam, p_value[0] ) == 0 ) && ( selected->o_obj == o_obj ) ) ) {
              ref_o_attr = selected;
              break;
            }
          }
        }
        /* IF ( not_empty ref_o_attr ) */
        if ( ( 0 != ref_o_attr ) ) {
          /* IF ( ( 1 == ooapopulation.processingIdentifier ) ) */
          if ( ( 1 == ooapopulation->processingIdentifier ) ) {
            /* ASSIGN ref_o_attr.identifier2 = TRUE */
            ref_o_attr->identifier2 = TRUE;
          }
          else if ( ( 2 == ooapopulation->processingIdentifier ) ) {
            /* ASSIGN ref_o_attr.identifier3 = TRUE */
            ref_o_attr->identifier3 = TRUE;
          }
        }
        else {
          masl2xtuml_O_ATTR * o_attr=0;
          /* SELECT any o_attr RELATED BY o_obj->O_ATTR[R102] WHERE ( ( SELECTED.Root_Nam == PARAM.value[0] ) ) */
          o_attr = 0;
          if ( 0 != o_obj ) {
            masl2xtuml_O_ATTR * selected;
            Escher_Iterator_s iO_ATTR_R102_has_characteristics_abstracted_by;
            Escher_IteratorReset( &iO_ATTR_R102_has_characteristics_abstracted_by, &o_obj->O_ATTR_R102_has_characteristics_abstracted_by );
            while ( 0 != ( selected = (masl2xtuml_O_ATTR *) Escher_IteratorNext( &iO_ATTR_R102_has_characteristics_abstracted_by ) ) ) {
              if ( ( Escher_strcmp( selected->Root_Nam, p_value[0] ) == 0 ) ) {
                o_attr = selected;
                break;
          }}}
          /* ooapopulation.Attribute_addToIdentifier( o_attr:o_attr, oid:ooapopulation.processingIdentifier ) */
          masl2xtuml_ooapopulation_op_Attribute_addToIdentifier( ooapopulation,  o_attr, ooapopulation->processingIdentifier );
        }
      }
      else {
        /* ooapopulation.transformAttribute( name:PARAM.value[0], preferred:PARAM.value[1], unique:PARAM.value[2] ) */
        masl2xtuml_ooapopulation_op_transformAttribute( ooapopulation,  p_value[0], p_value[1], p_value[2] );
      }
    }
  }
  else if ( ( Escher_strcmp( "referential", element ) == 0 ) ) {
    /* ooapopulation.transformReferential( attrName:PARAM.value[4], objName:PARAM.value[3], relationship:PARAM.value[0], roleOrObj:PARAM.value[2] ) */
    masl2xtuml_ooapopulation_op_transformReferential( ooapopulation,  p_value[4], p_value[3], p_value[0], p_value[2] );
  }
  else if ( ( Escher_strcmp( "state", element ) == 0 ) ) {
    /* IF ( (  == PARAM.value[2] ) ) */
    if ( ( Escher_strcmp( "", p_value[2] ) == 0 ) ) {
      masl2xtuml_SM_STATE * sm_state=0;
      /* SELECT any sm_state FROM INSTANCES OF SM_STATE WHERE FALSE */
      sm_state = 0;
      /* ASSIGN ooapopulation.current_state = sm_state */
      ooapopulation->current_state = sm_state;
    }
    else {
      /* ooapopulation.transformState( domain:PARAM.value[0], name:PARAM.value[2], obj:PARAM.value[1], type:PARAM.value[3] ) */
      masl2xtuml_ooapopulation_op_transformState( ooapopulation,  p_value[0], p_value[2], p_value[1], p_value[3] );
    }
  }
  else if ( ( Escher_strcmp( "event", element ) == 0 ) ) {
    /* IF ( (  == PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) == 0 ) ) {
      masl2xtuml_SM_EVT * sm_evt=0;
      /* SELECT any sm_evt FROM INSTANCES OF SM_EVT WHERE FALSE */
      sm_evt = 0;
      /* ASSIGN ooapopulation.current_event = sm_evt */
      ooapopulation->current_event = sm_evt;
    }
    else {
      /* ooapopulation.transformEvent( name:PARAM.value[0], type:PARAM.value[1] ) */
      masl2xtuml_ooapopulation_op_transformEvent( ooapopulation,  p_value[0], p_value[1] );
    }
  }
  else if ( ( Escher_strcmp( "type", element ) == 0 ) ) {
    /* IF ( (  == PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) == 0 ) ) {
      masl2xtuml_S_DT * s_dt=0;
      /* SELECT any s_dt FROM INSTANCES OF S_DT WHERE FALSE */
      s_dt = 0;
      /* ASSIGN ooapopulation.current_type = s_dt */
      ooapopulation->current_type = s_dt;
    }
    else {
      /* ooapopulation.transformType( definition:PARAM.value[2], name:PARAM.value[0], visibility:PARAM.value[1] ) */
      masl2xtuml_ooapopulation_op_transformType( ooapopulation,  p_value[2], p_value[0], p_value[1] );
    }
  }
  else if ( ( Escher_strcmp( "typeref", element ) == 0 ) ) {
    /* IF ( (  != PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) != 0 ) ) {
      masl2xtuml_S_SYNC * s_sync;masl2xtuml_C_EP * c_ep;masl2xtuml_O_TFR * o_tfr;masl2xtuml_SM_EVTDI * sm_evtdi;masl2xtuml_C_PP * c_pp;masl2xtuml_O_TPARM * o_tparm;masl2xtuml_S_SPARM * s_sparm;masl2xtuml_O_ATTR * o_attr;masl2xtuml_C_IO * c_io=0;
      /* ooapopulation.transformType( definition:, name:PARAM.value[0], visibility:public ) */
      masl2xtuml_ooapopulation_op_transformType( ooapopulation,  "", p_value[0], "public" );
      /* ASSIGN o_attr = ooapopulation.current_attribute */
      o_attr = ooapopulation->current_attribute;
      /* ASSIGN s_sparm = ooapopulation.current_function_param */
      s_sparm = ooapopulation->current_function_param;
      /* ASSIGN o_tparm = ooapopulation.current_operation_param */
      o_tparm = ooapopulation->current_operation_param;
      /* ASSIGN c_pp = ooapopulation.current_interface_param */
      c_pp = ooapopulation->current_interface_param;
      /* ASSIGN sm_evtdi = ooapopulation.current_event_dataitem */
      sm_evtdi = ooapopulation->current_event_dataitem;
      /* ASSIGN o_tfr = ooapopulation.current_class_op */
      o_tfr = ooapopulation->current_class_op;
      /* ASSIGN c_ep = ooapopulation.current_executable_property */
      c_ep = ooapopulation->current_executable_property;
      /* ASSIGN s_sync = ooapopulation.current_domain_function */
      s_sync = ooapopulation->current_domain_function;
      /* SELECT one c_io RELATED BY c_ep->C_IO[R4004] */
      c_io = 0;
      if ( ( 0 != c_ep ) && ( masl2xtuml_C_IO_CLASS_NUMBER == c_ep->R4004_object_id ) )      c_io = ( 0 != c_ep ) ? (masl2xtuml_C_IO *) c_ep->R4004_subtype : 0;
      /* IF ( not_empty o_attr ) */
      if ( ( 0 != o_attr ) ) {
        /* ooapopulation.Attribute_setType( o_attr:ooapopulation.current_attribute, type_name:PARAM.value[0] ) */
        masl2xtuml_ooapopulation_op_Attribute_setType( ooapopulation,  ooapopulation->current_attribute, p_value[0] );
      }
      else if ( ( 0 != s_sparm ) ) {
        /* ooapopulation.FunctionParameter_setType( s_sparm:ooapopulation.current_function_param, type_name:PARAM.value[0] ) */
        masl2xtuml_ooapopulation_op_FunctionParameter_setType( ooapopulation,  ooapopulation->current_function_param, p_value[0] );
      }
      else if ( ( 0 != o_tparm ) ) {
        /* ooapopulation.OperationParameter_setType( o_tparm:ooapopulation.current_operation_param, type_name:PARAM.value[0] ) */
        masl2xtuml_ooapopulation_op_OperationParameter_setType( ooapopulation,  ooapopulation->current_operation_param, p_value[0] );
      }
      else if ( ( 0 != c_pp ) ) {
        /* ooapopulation.InterfaceParameter_setType( c_pp:ooapopulation.current_interface_param, type_name:PARAM.value[0] ) */
        masl2xtuml_ooapopulation_op_InterfaceParameter_setType( ooapopulation,  ooapopulation->current_interface_param, p_value[0] );
      }
      else if ( ( 0 != sm_evtdi ) ) {
        /* ooapopulation.StateMachineEventDataItem_setType( sm_evtdi:ooapopulation.current_event_dataitem, type_name:PARAM.value[0] ) */
        masl2xtuml_ooapopulation_op_StateMachineEventDataItem_setType( ooapopulation,  ooapopulation->current_event_dataitem, p_value[0] );
      }
      else if ( ( 0 != o_tfr ) ) {
        /* ooapopulation.Operation_setReturnType( o_tfr:o_tfr, type_name:PARAM.value[0] ) */
        masl2xtuml_ooapopulation_op_Operation_setReturnType( ooapopulation,  o_tfr, p_value[0] );
      }
      else if ( ( 0 != c_io ) ) {
        /* ooapopulation.InterfaceOperation_setReturnType( c_io:c_io, type_name:PARAM.value[0] ) */
        masl2xtuml_ooapopulation_op_InterfaceOperation_setReturnType( ooapopulation,  c_io, p_value[0] );
      }
      else if ( ( 0 != s_sync ) ) {
        /* ooapopulation.Function_setReturnType( s_sync:s_sync, type_name:PARAM.value[0] ) */
        masl2xtuml_ooapopulation_op_Function_setReturnType( ooapopulation,  s_sync, p_value[0] );
      }
    }
  }
  else if ( ( Escher_strcmp( "associative", element ) == 0 ) ) {
    /* IF ( (  == PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) == 0 ) ) {
      /* ooapopulation.transformAssociation() */
      masl2xtuml_ooapopulation_op_transformAssociation( ooapopulation );
      /* ooapopulation.clearRelationshipCache() */
      masl2xtuml_ooapopulation_op_clearRelationshipCache( ooapopulation );
    }
    else {
      /* ASSIGN ooapopulation.current_rel.type = ASSOCIATIVE */
      ooapopulation->current_rel.type = masl2xtuml_RELATIONSHIP_TYPE_ASSOCIATIVE_e;
      /* ASSIGN ooapopulation.current_rel.number = PARAM.value[0] */
      ooapopulation->current_rel.number = Escher_strcpy( ooapopulation->current_rel.number, p_value[0] );
      /* ASSIGN ooapopulation.current_rel.usingObj = PARAM.value[2] */
      ooapopulation->current_rel.usingObj = Escher_strcpy( ooapopulation->current_rel.usingObj, p_value[2] );
    }
  }
  else if ( ( Escher_strcmp( "regularrel", element ) == 0 ) ) {
    /* IF ( (  == PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) == 0 ) ) {
      /* ooapopulation.transformAssociation() */
      masl2xtuml_ooapopulation_op_transformAssociation( ooapopulation );
      /* ooapopulation.clearRelationshipCache() */
      masl2xtuml_ooapopulation_op_clearRelationshipCache( ooapopulation );
    }
    else {
      /* ASSIGN ooapopulation.current_rel.type = REGULAR */
      ooapopulation->current_rel.type = masl2xtuml_RELATIONSHIP_TYPE_REGULAR_e;
      /* ASSIGN ooapopulation.current_rel.number = PARAM.value[0] */
      ooapopulation->current_rel.number = Escher_strcpy( ooapopulation->current_rel.number, p_value[0] );
    }
  }
  else if ( ( Escher_strcmp( "subsuper", element ) == 0 ) ) {
    /* IF ( (  == PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) == 0 ) ) {
      /* ooapopulation.transformAssociation() */
      masl2xtuml_ooapopulation_op_transformAssociation( ooapopulation );
      /* ooapopulation.clearRelationshipCache() */
      masl2xtuml_ooapopulation_op_clearRelationshipCache( ooapopulation );
    }
    else {
      /* ASSIGN ooapopulation.current_rel.type = SUBSUPER */
      ooapopulation->current_rel.type = masl2xtuml_RELATIONSHIP_TYPE_SUBSUPER_e;
      /* ASSIGN ooapopulation.current_rel.number = PARAM.value[0] */
      ooapopulation->current_rel.number = Escher_strcpy( ooapopulation->current_rel.number, p_value[0] );
    }
  }
  else if ( ( Escher_strcmp( "participation", element ) == 0 ) ) {
    /* IF ( (  != PARAM.value[1] ) ) */
    if ( ( Escher_strcmp( "", p_value[1] ) != 0 ) ) {
      bool isFirst;masl2xtuml_ooaparticipation * part;masl2xtuml_ooaparticipation * firstPart=0;
      /* ASSIGN isFirst = FALSE */
      isFirst = FALSE;
      /* SELECT any firstPart FROM INSTANCES OF ooaparticipation WHERE ( SELECTED.isFirst == TRUE ) */
      firstPart = 0;
      { masl2xtuml_ooaparticipation * selected;
        Escher_Iterator_s iterfirstPartmasl2xtuml_ooaparticipation;
        Escher_IteratorReset( &iterfirstPartmasl2xtuml_ooaparticipation, &pG_masl2xtuml_ooaparticipation_extent.active );
        while ( (selected = (masl2xtuml_ooaparticipation *) Escher_IteratorNext( &iterfirstPartmasl2xtuml_ooaparticipation )) != 0 ) {
          if ( ( selected->isFirst == TRUE ) ) {
            firstPart = selected;
            break;
          }
        }
      }
      /* IF ( empty firstPart ) */
      if ( ( 0 == firstPart ) ) {
        /* ASSIGN isFirst = TRUE */
        isFirst = TRUE;
      }
      /* CREATE OBJECT INSTANCE part OF ooaparticipation */
      part = (masl2xtuml_ooaparticipation *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_ooaparticipation_CLASS_NUMBER );
      /* ASSIGN part.fromDomain = PARAM.value[0] */
      part->fromDomain = Escher_strcpy( part->fromDomain, p_value[0] );
      /* ASSIGN part.className = PARAM.value[1] */
      part->className = Escher_strcpy( part->className, p_value[1] );
      /* ASSIGN part.phrase = PARAM.value[2] */
      part->phrase = Escher_strcpy( part->phrase, p_value[2] );
      /* ASSIGN part.conditionality = ooaparticipation::getCond(text:PARAM.value[3]) */
      part->conditionality = masl2xtuml_ooaparticipation_op_getCond(p_value[3]);
      /* ASSIGN part.multiplicity = ooaparticipation::getMult(text:PARAM.value[4]) */
      part->multiplicity = masl2xtuml_ooaparticipation_op_getMult(p_value[4]);
      /* ASSIGN part.isFirst = isFirst */
      part->isFirst = isFirst;
    }
  }
  else if ( ( Escher_strcmp( "routine", element ) == 0 ) ) {
    /* IF ( (  == PARAM.value[3] ) ) */
    if ( ( Escher_strcmp( "", p_value[3] ) == 0 ) ) {
      masl2xtuml_C_EP * c_ep=0;masl2xtuml_S_SYNC * s_sync=0;
      /* SELECT any s_sync FROM INSTANCES OF S_SYNC WHERE FALSE */
      s_sync = 0;
      /* ASSIGN ooapopulation.current_domain_function = s_sync */
      ooapopulation->current_domain_function = s_sync;
      /* SELECT any c_ep FROM INSTANCES OF C_EP WHERE FALSE */
      c_ep = 0;
      /* ASSIGN ooapopulation.current_executable_property = c_ep */
      ooapopulation->current_executable_property = c_ep;
    }
    else {
      masl2xtuml_C_I * c_i;
      /* ASSIGN c_i = ooapopulation.current_interface */
      c_i = ooapopulation->current_interface;
      /* IF ( ( not_empty c_i or (  != PARAM.value[1] ) ) ) */
      if ( ( ( 0 != c_i ) || ( Escher_strcmp( "", p_value[1] ) != 0 ) ) ) {
        /* ooapopulation.transformTerminatorService( domain:PARAM.value[0], name:PARAM.value[3], terminator:PARAM.value[1], visibility:PARAM.value[2] ) */
        masl2xtuml_ooapopulation_op_transformTerminatorService( ooapopulation,  p_value[0], p_value[3], p_value[1], p_value[2] );
      }
      else {
        /* ooapopulation.transformDomainFunction( domain:PARAM.value[0], name:PARAM.value[3], terminator:PARAM.value[1], visibility:PARAM.value[2] ) */
        masl2xtuml_ooapopulation_op_transformDomainFunction( ooapopulation,  p_value[0], p_value[3], p_value[1], p_value[2] );
      }
    }
  }
  else if ( ( Escher_strcmp( "operation", element ) == 0 ) ) {
    /* IF ( (  == PARAM.value[3] ) ) */
    if ( ( Escher_strcmp( "", p_value[3] ) == 0 ) ) {
      masl2xtuml_O_TFR * o_tfr=0;
      /* SELECT any o_tfr FROM INSTANCES OF O_TFR WHERE FALSE */
      o_tfr = 0;
      /* ASSIGN ooapopulation.current_class_op = o_tfr */
      ooapopulation->current_class_op = o_tfr;
    }
    else {
      /* ooapopulation.transformObjectFunction( domain:PARAM.value[0], instance:PARAM.value[4], name:PARAM.value[3], obj:PARAM.value[1], relationship:PARAM.value[5], visibility:PARAM.value[2] ) */
      masl2xtuml_ooapopulation_op_transformObjectFunction( ooapopulation,  p_value[0], p_value[4], p_value[3], p_value[1], p_value[5], p_value[2] );
    }
  }
  else if ( ( Escher_strcmp( "transitiontable", element ) == 0 ) ) {
    /* IF ( ( assigner == PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "assigner", p_value[0] ) == 0 ) ) {
      /* ASSIGN ooapopulation.processingISM = FALSE */
      ooapopulation->processingISM = FALSE;
    }
    else {
      /* ASSIGN ooapopulation.processingISM = TRUE */
      ooapopulation->processingISM = TRUE;
    }
  }
  else if ( ( Escher_strcmp( "transition", element ) == 0 ) ) {
    /* ooapopulation.transformTransition( endState:PARAM.value[4], eventName:PARAM.value[3], startState:PARAM.value[0] ) */
    masl2xtuml_ooapopulation_op_transformTransition( ooapopulation,  p_value[4], p_value[3], p_value[0] );
  }
  else if ( ( Escher_strcmp( "codeblock", element ) == 0 ) ) {
    masl2xtuml_SM_STATE * sm_state;masl2xtuml_O_TFR * o_tfr;masl2xtuml_C_EP * c_ep;masl2xtuml_S_SYNC * s_sync;
    /* ASSIGN s_sync = ooapopulation.current_domain_function */
    s_sync = ooapopulation->current_domain_function;
    /* IF ( not_empty s_sync ) */
    if ( ( 0 != s_sync ) ) {
      /* ASSIGN s_sync.Action_Semantics_internal = ( ( ( s_sync.Action_Semantics_internal + codeblock: ) + PARAM.value[0] ) + \n ) */
      s_sync->Action_Semantics_internal = Escher_strcpy( s_sync->Action_Semantics_internal, Escher_stradd( Escher_stradd( Escher_stradd( s_sync->Action_Semantics_internal, "codeblock:" ), p_value[0] ), "\n" ) );
    }
    /* ASSIGN c_ep = ooapopulation.current_executable_property */
    c_ep = ooapopulation->current_executable_property;
    /* IF ( not_empty c_ep ) */
    if ( ( 0 != c_ep ) ) {
      masl2xtuml_SPR_RO * spr_ro=0;
      /* SELECT any spr_ro RELATED BY c_ep->SPR_REP[R4500]->SPR_RO[R4502] */
      spr_ro = 0;
      {      if ( 0 != c_ep ) {
      masl2xtuml_SPR_REP * SPR_REP_R4500;
      Escher_Iterator_s iSPR_REP_R4500;
      Escher_IteratorReset( &iSPR_REP_R4500, &c_ep->SPR_REP_R4500 );
      while ( ( 0 == spr_ro ) && ( 0 != ( SPR_REP_R4500 = (masl2xtuml_SPR_REP *) Escher_IteratorNext( &iSPR_REP_R4500 ) ) ) ) {
      if ( ( 0 != SPR_REP_R4500 ) && ( masl2xtuml_SPR_RO_CLASS_NUMBER == SPR_REP_R4500->R4502_object_id ) )      spr_ro = (masl2xtuml_SPR_RO *) SPR_REP_R4500->R4502_subtype;
}}}
      /* IF ( not_empty spr_ro ) */
      if ( ( 0 != spr_ro ) ) {
        /* ASSIGN spr_ro.Action_Semantics_internal = ( ( ( spr_ro.Action_Semantics_internal + codeblock: ) + PARAM.value[0] ) + \n ) */
        spr_ro->Action_Semantics_internal = Escher_strcpy( spr_ro->Action_Semantics_internal, Escher_stradd( Escher_stradd( Escher_stradd( spr_ro->Action_Semantics_internal, "codeblock:" ), p_value[0] ), "\n" ) );
      }
    }
    /* ASSIGN o_tfr = ooapopulation.current_class_op */
    o_tfr = ooapopulation->current_class_op;
    /* IF ( not_empty o_tfr ) */
    if ( ( 0 != o_tfr ) ) {
      /* ASSIGN o_tfr.Action_Semantics_internal = ( ( ( o_tfr.Action_Semantics_internal + codeblock: ) + PARAM.value[0] ) + \n ) */
      o_tfr->Action_Semantics_internal = Escher_strcpy( o_tfr->Action_Semantics_internal, Escher_stradd( Escher_stradd( Escher_stradd( o_tfr->Action_Semantics_internal, "codeblock:" ), p_value[0] ), "\n" ) );
    }
    /* ASSIGN sm_state = ooapopulation.current_state */
    sm_state = ooapopulation->current_state;
    /* IF ( not_empty sm_state ) */
    if ( ( 0 != sm_state ) ) {
      masl2xtuml_SM_ACT * sm_act=0;
      /* SELECT one sm_act RELATED BY sm_state->SM_MOAH[R511]->SM_AH[R513]->SM_ACT[R514] */
      sm_act = 0;
      {      if ( 0 != sm_state ) {
      masl2xtuml_SM_MOAH * SM_MOAH_R511 = sm_state->SM_MOAH_R511;
      if ( 0 != SM_MOAH_R511 ) {
      masl2xtuml_SM_AH * SM_AH_R513 = SM_MOAH_R511->SM_AH_R513;
      if ( 0 != SM_AH_R513 ) {
      sm_act = SM_AH_R513->SM_ACT_R514_houses;
}}}}
      /* IF ( not_empty sm_act ) */
      if ( ( 0 != sm_act ) ) {
        /* ASSIGN sm_act.Action_Semantics_internal = ( ( ( sm_act.Action_Semantics_internal + codeblock: ) + PARAM.value[0] ) + \n ) */
        sm_act->Action_Semantics_internal = Escher_strcpy( sm_act->Action_Semantics_internal, Escher_stradd( Escher_stradd( Escher_stradd( sm_act->Action_Semantics_internal, "codeblock:" ), p_value[0] ), "\n" ) );
      }
    }
  }
  else if ( ( Escher_strcmp( "pragma", element ) == 0 ) ) {
    /* IF ( (  == PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) == 0 ) ) {
      masl2xtuml_ooapragma * pragma=0;
      /* SELECT any pragma FROM INSTANCES OF ooapragma WHERE FALSE */
      pragma = 0;
      /* ASSIGN ooapopulation.current_pragma = pragma */
      ooapopulation->current_pragma = pragma;
    }
    else {
      masl2xtuml_ooaelement * parent_element=0;
      /* SELECT one parent_element RELATED BY ooapopulation->ooaelement[R3801]->ooaelement[R3805.child of] */
      parent_element = 0;
      {      if ( 0 != ooapopulation ) {
      masl2xtuml_ooaelement * ooaelement_R3801_has_current = ooapopulation->ooaelement_R3801_has_current;
      if ( 0 != ooaelement_R3801_has_current ) {
      parent_element = ooaelement_R3801_has_current->ooaelement_R3805_child_of;
}}}
      /* IF ( not_empty parent_element ) */
      if ( ( 0 != parent_element ) ) {
        /* IF ( ooaelement::ismarkable(type:parent_element.type) ) */
        if ( masl2xtuml_ooaelement_op_ismarkable(parent_element->type) ) {
          masl2xtuml_ooamarkable * markable=0;
          /* SELECT one markable RELATED BY parent_element->ooamarkable[R3806] */
          markable = 0;
          if ( ( 0 != parent_element ) && ( masl2xtuml_ooamarkable_CLASS_NUMBER == parent_element->R3806_object_id ) )          markable = ( 0 != parent_element ) ? (masl2xtuml_ooamarkable *) parent_element->R3806_subtype : 0;
          /* ASSIGN ooapopulation.current_pragma = ooapragma::populate(list:value[1], markable:markable, name:value[0]) */
          ooapopulation->current_pragma = masl2xtuml_ooapragma_op_populate(value[1], markable, value[0]);
        }
      }
      else {
        /* TRACE::log( flavor:failure, id:56, message:Element stack is malformed. ) */
        TRACE_log( "failure", 56, "Element stack is malformed." );
        /* ooaelement::trace( population:ooapopulation ) */
        masl2xtuml_ooaelement_op_trace( ooapopulation );
      }
    }
  }
  else if ( ( Escher_strcmp( "pragmaitem", element ) == 0 ) ) {
    masl2xtuml_ooaelement * current_element=0;
    /* SELECT one current_element RELATED BY ooapopulation->ooaelement[R3801] */
    current_element = ( 0 != ooapopulation ) ? ooapopulation->ooaelement_R3801_has_current : 0;
    /* IF ( not_empty current_element ) */
    if ( ( 0 != current_element ) ) {
      /* IF ( ( pragma == current_element.type ) ) */
      if ( ( Escher_strcmp( "pragma", current_element->type ) == 0 ) ) {
        /* ooapragma_item::populate( pragma:ooapopulation.current_pragma, value:value[0] ) */
        masl2xtuml_ooapragma_item_op_populate( ooapopulation->current_pragma, value[0] );
      }
    }
    else {
      /* TRACE::log( flavor:failure, id:57, message:Element stack is malformed. ) */
      TRACE_log( "failure", 57, "Element stack is malformed." );
      /* ooaelement::trace( population:ooapopulation ) */
      masl2xtuml_ooaelement_op_trace( ooapopulation );
    }
  }
  else {
    /* TRACE::log( flavor:failure, id:59, message:( masl2xtuml unrecognized element:   + element ) ) */
    // TRACE_log( "failure", 59, Escher_stradd( "masl2xtuml unrecognized element:  ", element ) );
  }
}

/*
 * instance operation:  transformProject
 */
void
masl2xtuml_ooapopulation_op_transformProject( masl2xtuml_ooapopulation * self, c_t * p_name )
{
  /* self.createSystem() */
  masl2xtuml_ooapopulation_op_createSystem( self );
  /* self.transformDomain( name:PARAM.name ) */
  masl2xtuml_ooapopulation_op_transformDomain( self,  p_name );
}

/*
 * instance operation:  SystemModel_newPackage
 */
masl2xtuml_EP_PKG *
masl2xtuml_ooapopulation_op_SystemModel_newPackage( masl2xtuml_ooapopulation * self, c_t * p_pkg_name, masl2xtuml_S_SYS * p_s_sys )
{
  masl2xtuml_S_SYS * s_sys;masl2xtuml_PE_PE * pe;masl2xtuml_EP_PKG * package;
  /* ASSIGN s_sys = PARAM.s_sys */
  s_sys = p_s_sys;
  /* CREATE OBJECT INSTANCE package OF EP_PKG */
  package = (masl2xtuml_EP_PKG *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_EP_PKG_CLASS_NUMBER );
  package->Package_ID = (Escher_UniqueID_t) package;
  /* CREATE OBJECT INSTANCE pe OF PE_PE */
  pe = (masl2xtuml_PE_PE *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_PE_PE_CLASS_NUMBER );
  pe->Element_ID = (Escher_UniqueID_t) pe;
  /* RELATE pe TO package ACROSS R8001 */
  masl2xtuml_EP_PKG_R8001_Link( pe, package );
  /* RELATE package TO s_sys ACROSS R1401 */
  masl2xtuml_EP_PKG_R1401_Link_contains( s_sys, package );
  /* RELATE package TO s_sys ACROSS R1405 */
  masl2xtuml_EP_PKG_R1405_Link_contains( s_sys, package );
  /* ASSIGN pe.type = PACKAGE */
  pe->type = masl2xtuml_ElementTypeConstants_PACKAGE_e;
  /* self.PackageableElement_initialize( pe_pe:pe ) */
  masl2xtuml_ooapopulation_op_PackageableElement_initialize( self,  pe );
  /* self.Package_initialize( ep_pkg:package, name:PARAM.pkg_name ) */
  masl2xtuml_ooapopulation_op_Package_initialize( self,  package, p_pkg_name );
  /* RETURN package */
  {masl2xtuml_EP_PKG * xtumlOALrv = package;
  return xtumlOALrv;}
}

/*
 * instance operation:  PackageableElement_initialize
 */
void
masl2xtuml_ooapopulation_op_PackageableElement_initialize( masl2xtuml_ooapopulation * self, masl2xtuml_PE_PE * p_pe_pe )
{
  masl2xtuml_PE_PE * pe_pe;
  /* ASSIGN pe_pe = PARAM.pe_pe */
  pe_pe = p_pe_pe;
  /* ASSIGN pe_pe.Visibility = Public */
  pe_pe->Visibility = masl2xtuml_Visibility_Public_e;
}

/*
 * instance operation:  Package_initialize
 */
void
masl2xtuml_ooapopulation_op_Package_initialize( masl2xtuml_ooapopulation * self, masl2xtuml_EP_PKG * p_ep_pkg, c_t * p_name )
{
  /* ASSIGN PARAM.ep_pkg.Name = PARAM.name */
  p_ep_pkg->Name = Escher_strcpy( p_ep_pkg->Name, p_name );
}

/*
 * instance operation:  transformDomain
 */
void
masl2xtuml_ooapopulation_op_transformDomain( masl2xtuml_ooapopulation * self, c_t * p_name )
{
  /* self.createSystem() */
  masl2xtuml_ooapopulation_op_createSystem( self );
  /* IF ( self.processingProject ) */
  if ( self->processingProject ) {
    masl2xtuml_C_IR * new_ir;masl2xtuml_EP_PKG * lib_pkg;
    /* ASSIGN lib_pkg = self.lib_pkg */
    lib_pkg = self->lib_pkg;
    /* IF ( not_empty lib_pkg ) */
    if ( ( 0 != lib_pkg ) ) {
      masl2xtuml_CL_IC * cl_ic;
      /* ASSIGN cl_ic = self.Package_newImportedComponent(ep_pkg:lib_pkg) */
      cl_ic = masl2xtuml_ooapopulation_op_Package_newImportedComponent(self, lib_pkg);
      /* ASSIGN cl_ic.Descrip = ( name: + PARAM.name ) */
      cl_ic->Descrip = Escher_strcpy( cl_ic->Descrip, Escher_stradd( "name:", p_name ) );
      /* ASSIGN cl_ic.Name = PARAM.name */
      cl_ic->Name = Escher_strcpy( cl_ic->Name, p_name );
      /* ASSIGN self.current_imported_component = cl_ic */
      self->current_imported_component = cl_ic;
    }
    /* ASSIGN new_ir = self.Component_initializeRequirement(c_c:self.current_component, if_name:PARAM.name, port_name:PARAM.name) */
    new_ir = masl2xtuml_ooapopulation_op_Component_initializeRequirement(self, self->current_component, p_name, p_name);
  }
  else {
    masl2xtuml_EP_PKG * lib_pkg;masl2xtuml_C_C * c_c=0;
    /* ASSIGN self.lib_pkg = self.SystemModel_newPackage(pkg_name:PARAM.name, s_sys:self.current_sys) */
    self->lib_pkg = masl2xtuml_ooapopulation_op_SystemModel_newPackage(self, p_name, self->current_sys);
    /* ASSIGN lib_pkg = self.lib_pkg */
    lib_pkg = self->lib_pkg;
    /* SELECT any c_c RELATED BY lib_pkg->PE_PE[R8000]->C_C[R8001] WHERE ( ( PARAM.name == SELECTED.Name ) ) */
    c_c = 0;
    {    if ( 0 != lib_pkg ) {
    masl2xtuml_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &lib_pkg->PE_PE_R8000_contains );
    while ( ( 0 == c_c ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_C_C_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    {masl2xtuml_C_C * selected = (masl2xtuml_C_C *) PE_PE_R8000_contains->R8001_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( p_name, selected->Name ) == 0 ) ) {
      c_c = selected;
    }}
}}}
    /* IF ( empty c_c ) */
    if ( ( 0 == c_c ) ) {
      masl2xtuml_EP_PKG * shared_pkg;masl2xtuml_EP_PKG * internal_bhv_pkg;
      /* ASSIGN c_c = self.Package_newComponent(component_name:PARAM.name, ep_pkg:self.lib_pkg) */
      c_c = masl2xtuml_ooapopulation_op_Package_newComponent(self, p_name, self->lib_pkg);
      /* ASSIGN internal_bhv_pkg = self.Component_newPackage(c_c:c_c, pkg_name:PARAM.name) */
      internal_bhv_pkg = masl2xtuml_ooapopulation_op_Component_newPackage(self, c_c, p_name);
      /* ASSIGN shared_pkg = self.Package_newPackage(ep_pkg:self.lib_pkg, package_name:Shared) */
      shared_pkg = masl2xtuml_ooapopulation_op_Package_newPackage(self, self->lib_pkg, "Shared");
    }
    /* ASSIGN self.current_component = c_c */
    self->current_component = c_c;
  }
}

/*
 * instance operation:  Package_newComponent
 */
masl2xtuml_C_C *
masl2xtuml_ooapopulation_op_Package_newComponent( masl2xtuml_ooapopulation * self, c_t * p_component_name, masl2xtuml_EP_PKG * p_ep_pkg )
{
  masl2xtuml_EP_PKG * ep_pkg;masl2xtuml_PE_PE * pe;masl2xtuml_C_C * component;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* CREATE OBJECT INSTANCE component OF C_C */
  component = (masl2xtuml_C_C *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_C_C_CLASS_NUMBER );
  component->Id = (Escher_UniqueID_t) component;
  /* CREATE OBJECT INSTANCE pe OF PE_PE */
  pe = (masl2xtuml_PE_PE *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_PE_PE_CLASS_NUMBER );
  pe->Element_ID = (Escher_UniqueID_t) pe;
  /* RELATE component TO pe ACROSS R8001 */
  masl2xtuml_C_C_R8001_Link( pe, component );
  /* RELATE pe TO ep_pkg ACROSS R8000 */
  masl2xtuml_PE_PE_R8000_Link_contains( ep_pkg, pe );
  /* ASSIGN pe.type = COMPONENT */
  pe->type = masl2xtuml_ElementTypeConstants_COMPONENT_e;
  /* self.PackageableElement_initialize( pe_pe:pe ) */
  masl2xtuml_ooapopulation_op_PackageableElement_initialize( self,  pe );
  /* self.Component_initialize( c_c:component, name:PARAM.component_name ) */
  masl2xtuml_ooapopulation_op_Component_initialize( self,  component, p_component_name );
  /* RETURN component */
  {masl2xtuml_C_C * xtumlOALrv = component;
  return xtumlOALrv;}
}

/*
 * instance operation:  Component_initialize
 */
void
masl2xtuml_ooapopulation_op_Component_initialize( masl2xtuml_ooapopulation * self, masl2xtuml_C_C * p_c_c, c_t * p_name )
{
  /* ASSIGN PARAM.c_c.Name = PARAM.name */
  p_c_c->Name = Escher_strcpy( p_c_c->Name, p_name );
}

/*
 * instance operation:  ComponentReference_assignToComp
 */
void
masl2xtuml_ooapopulation_op_ComponentReference_assignToComp( masl2xtuml_ooapopulation * self, masl2xtuml_C_C * p_c_c, masl2xtuml_CL_IC * p_cl_ic )
{
  masl2xtuml_C_C * comp;masl2xtuml_CL_IC * cl_ic;masl2xtuml_C_C * contComponent=0;masl2xtuml_EP_PKG * contPackage=0;masl2xtuml_PE_PE * packageableElem=0;
  /* ASSIGN cl_ic = PARAM.cl_ic */
  cl_ic = p_cl_ic;
  /* ASSIGN comp = PARAM.c_c */
  comp = p_c_c;
  /* SELECT one packageableElem RELATED BY cl_ic->PE_PE[R8001] */
  packageableElem = ( 0 != cl_ic ) ? cl_ic->PE_PE_R8001 : 0;
  /* SELECT one contPackage RELATED BY packageableElem->EP_PKG[R8000] */
  contPackage = ( 0 != packageableElem ) ? packageableElem->EP_PKG_R8000_contained_by : 0;
  /* SELECT one contComponent RELATED BY packageableElem->C_C[R8003] */
  contComponent = ( 0 != packageableElem ) ? packageableElem->C_C_R8003_contained_in : 0;
  /* IF ( not_empty comp ) */
  if ( ( 0 != comp ) ) {
    masl2xtuml_C_IR * formalInterface=0;Escher_ObjectSet_s formalInterfaces_space={0}; Escher_ObjectSet_s * formalInterfaces = &formalInterfaces_space;
    /* RELATE cl_ic TO comp ACROSS R4201 */
    masl2xtuml_CL_IC_R4201_Link_is_represented_by( comp, cl_ic );
    /* SELECT many formalInterfaces RELATED BY comp->C_PO[R4010]->C_IR[R4016] */
    Escher_ClearSet( formalInterfaces );
    {    if ( 0 != comp ) {
    masl2xtuml_C_PO * C_PO_R4010_communicates_through;
    Escher_Iterator_s iC_PO_R4010_communicates_through;
    Escher_IteratorReset( &iC_PO_R4010_communicates_through, &comp->C_PO_R4010_communicates_through );
    while ( 0 != ( C_PO_R4010_communicates_through = (masl2xtuml_C_PO *) Escher_IteratorNext( &iC_PO_R4010_communicates_through ) ) ) {
    masl2xtuml_C_IR * C_IR_R4016_exposes;
    Escher_Iterator_s iC_IR_R4016_exposes;
    Escher_IteratorReset( &iC_IR_R4016_exposes, &C_PO_R4010_communicates_through->C_IR_R4016_exposes );
    while ( 0 != ( C_IR_R4016_exposes = (masl2xtuml_C_IR *) Escher_IteratorNext( &iC_IR_R4016_exposes ) ) ) {
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) formalInterfaces, C_IR_R4016_exposes ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) formalInterfaces, C_IR_R4016_exposes );
    }}}}}
    /* FOR EACH formalInterface IN formalInterfaces */
    { Escher_Iterator_s iterformalInterface;
    masl2xtuml_C_IR * iiformalInterface;
    Escher_IteratorReset( &iterformalInterface, formalInterfaces );
    while ( (iiformalInterface = (masl2xtuml_C_IR *)Escher_IteratorNext( &iterformalInterface )) != 0 ) {
      formalInterface = iiformalInterface; {
      masl2xtuml_C_I * c_i=0;
      /* SELECT one c_i RELATED BY formalInterface->C_I[R4012] */
      c_i = ( 0 != formalInterface ) ? formalInterface->C_I_R4012_may_be_defined_by : 0;
      /* IF ( not_empty c_i ) */
      if ( ( 0 != c_i ) ) {
        masl2xtuml_C_IR * existingImportRef=0;
        /* SELECT any existingImportRef RELATED BY cl_ic->CL_POR[R4707]->CL_IIR[R4708]->C_IR[R4701] WHERE ( ( SELECTED.Id == formalInterface.Id ) ) */
        existingImportRef = 0;
        {        if ( 0 != cl_ic ) {
        masl2xtuml_CL_POR * CL_POR_R4707_communicates_through;
        Escher_Iterator_s iCL_POR_R4707_communicates_through;
        Escher_IteratorReset( &iCL_POR_R4707_communicates_through, &cl_ic->CL_POR_R4707_communicates_through );
        while ( ( 0 == existingImportRef ) && ( 0 != ( CL_POR_R4707_communicates_through = (masl2xtuml_CL_POR *) Escher_IteratorNext( &iCL_POR_R4707_communicates_through ) ) ) ) {
        masl2xtuml_CL_IIR * CL_IIR_R4708_exposes;
        Escher_Iterator_s iCL_IIR_R4708_exposes;
        Escher_IteratorReset( &iCL_IIR_R4708_exposes, &CL_POR_R4707_communicates_through->CL_IIR_R4708_exposes );
        while ( ( 0 == existingImportRef ) && ( 0 != ( CL_IIR_R4708_exposes = (masl2xtuml_CL_IIR *) Escher_IteratorNext( &iCL_IIR_R4708_exposes ) ) ) ) {
        {masl2xtuml_C_IR * selected = CL_IIR_R4708_exposes->C_IR_R4701_imports;
        if ( ( 0 != selected ) && ( selected->Id == formalInterface->Id ) ) {
          existingImportRef = selected;
        }}
}}}}
        /* IF ( empty existingImportRef ) */
        if ( ( 0 == existingImportRef ) ) {
          masl2xtuml_CL_POR * portRef;masl2xtuml_CL_IIR * newImportedRef;masl2xtuml_C_PO * existingPort=0;masl2xtuml_C_P * provision=0;
          /* SELECT one provision RELATED BY formalInterface->C_P[R4009] */
          provision = 0;
          if ( ( 0 != formalInterface ) && ( masl2xtuml_C_P_CLASS_NUMBER == formalInterface->R4009_object_id ) )          provision = ( 0 != formalInterface ) ? (masl2xtuml_C_P *) formalInterface->R4009_subtype : 0;
          /* CREATE OBJECT INSTANCE newImportedRef OF CL_IIR */
          newImportedRef = (masl2xtuml_CL_IIR *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_CL_IIR_CLASS_NUMBER );
          newImportedRef->Id = (Escher_UniqueID_t) newImportedRef;
          /* IF ( not_empty provision ) */
          if ( ( 0 != provision ) ) {
            masl2xtuml_CL_IP * importedPro;
            /* CREATE OBJECT INSTANCE importedPro OF CL_IP */
            importedPro = (masl2xtuml_CL_IP *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_CL_IP_CLASS_NUMBER );
            importedPro->Id = (Escher_UniqueID_t) importedPro;
            /* RELATE importedPro TO newImportedRef ACROSS R4703 */
            masl2xtuml_CL_IP_R4703_Link( newImportedRef, importedPro );
          }
          else {
            masl2xtuml_CL_IR * importedReq;
            /* CREATE OBJECT INSTANCE importedReq OF CL_IR */
            importedReq = (masl2xtuml_CL_IR *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_CL_IR_CLASS_NUMBER );
            importedReq->Id = (Escher_UniqueID_t) importedReq;
            /* RELATE importedReq TO newImportedRef ACROSS R4703 */
            masl2xtuml_CL_IR_R4703_Link( newImportedRef, importedReq );
          }
          /* CREATE OBJECT INSTANCE portRef OF CL_POR */
          portRef = (masl2xtuml_CL_POR *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_CL_POR_CLASS_NUMBER );
          portRef->Id = (Escher_UniqueID_t) portRef;
          /* SELECT one existingPort RELATED BY formalInterface->C_PO[R4016] */
          existingPort = ( 0 != formalInterface ) ? formalInterface->C_PO_R4016_originates_from : 0;
          /* RELATE existingPort TO portRef ACROSS R4709 */
          masl2xtuml_CL_POR_R4709_Link_is_referenced_by( existingPort, portRef );
          /* RELATE portRef TO cl_ic ACROSS R4707 */
          masl2xtuml_CL_POR_R4707_Link_communicates_through( cl_ic, portRef );
          /* RELATE portRef TO newImportedRef ACROSS R4708 */
          masl2xtuml_CL_IIR_R4708_Link_exposes( portRef, newImportedRef );
          /* RELATE newImportedRef TO formalInterface ACROSS R4701 */
          masl2xtuml_CL_IIR_R4701_Link_is_imported( formalInterface, newImportedRef );
        }
      }
    }}}
    Escher_ClearSet( formalInterfaces ); 
  }
}

/*
 * instance operation:  transformObject
 */
void
masl2xtuml_ooapopulation_op_transformObject( masl2xtuml_ooapopulation * self, c_t * p_name )
{
  masl2xtuml_C_C * current_component;masl2xtuml_O_OBJ * o_obj=0;masl2xtuml_EP_PKG * internals_pkg=0;
  /* ASSIGN current_component = self.current_component */
  current_component = self->current_component;
  /* SELECT any internals_pkg RELATED BY current_component->PE_PE[R8003]->EP_PKG[R8001] WHERE ( ( SELECTED.Name == current_component.Name ) ) */
  internals_pkg = 0;
  {  if ( 0 != current_component ) {
  masl2xtuml_PE_PE * PE_PE_R8003_contains;
  Escher_Iterator_s iPE_PE_R8003_contains;
  Escher_IteratorReset( &iPE_PE_R8003_contains, &current_component->PE_PE_R8003_contains );
  while ( ( 0 == internals_pkg ) && ( 0 != ( PE_PE_R8003_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8003_contains ) && ( masl2xtuml_EP_PKG_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) )  {masl2xtuml_EP_PKG * selected = (masl2xtuml_EP_PKG *) PE_PE_R8003_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, current_component->Name ) == 0 ) ) {
    internals_pkg = selected;
  }}
}}}
  /* SELECT any o_obj RELATED BY internals_pkg->PE_PE[R8000]->O_OBJ[R8001] WHERE ( ( SELECTED.Name == PARAM.name ) ) */
  o_obj = 0;
  {  if ( 0 != internals_pkg ) {
  masl2xtuml_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &internals_pkg->PE_PE_R8000_contains );
  while ( ( 0 == o_obj ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_O_OBJ_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {masl2xtuml_O_OBJ * selected = (masl2xtuml_O_OBJ *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, p_name ) == 0 ) ) {
    o_obj = selected;
  }}
}}}
  /* ASSIGN self.current_class = o_obj */
  self->current_class = o_obj;
  /* IF ( empty o_obj ) */
  if ( ( 0 == o_obj ) ) {
    /* ASSIGN self.current_class = self.Package_newClass(class_name:PARAM.name, ep_pkg:internals_pkg) */
    self->current_class = masl2xtuml_ooapopulation_op_Package_newClass(self, p_name, internals_pkg);
  }
}

/*
 * instance operation:  Component_newPackage
 */
masl2xtuml_EP_PKG *
masl2xtuml_ooapopulation_op_Component_newPackage( masl2xtuml_ooapopulation * self, masl2xtuml_C_C * p_c_c, c_t * p_pkg_name )
{
  Escher_UniqueID_t rootCompIdInPkg;masl2xtuml_C_C * c_c;masl2xtuml_PE_PE * pe;masl2xtuml_EP_PKG * package;masl2xtuml_C_C * rootComponent=0;masl2xtuml_S_SYS * system=0;
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* CREATE OBJECT INSTANCE package OF EP_PKG */
  package = (masl2xtuml_EP_PKG *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_EP_PKG_CLASS_NUMBER );
  package->Package_ID = (Escher_UniqueID_t) package;
  /* CREATE OBJECT INSTANCE pe OF PE_PE */
  pe = (masl2xtuml_PE_PE *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_PE_PE_CLASS_NUMBER );
  pe->Element_ID = (Escher_UniqueID_t) pe;
  /* RELATE package TO pe ACROSS R8001 */
  masl2xtuml_EP_PKG_R8001_Link( pe, package );
  /* ASSIGN rootCompIdInPkg = self.Component_getRootComponentId(c_c:c_c) */
  rootCompIdInPkg = masl2xtuml_ooapopulation_op_Component_getRootComponentId(self, c_c);
  /* SELECT any rootComponent FROM INSTANCES OF C_C WHERE ( SELECTED.Id == rootCompIdInPkg ) */
  rootComponent = 0;
  { masl2xtuml_C_C * selected;
    Escher_Iterator_s iterrootComponentmasl2xtuml_C_C;
    Escher_IteratorReset( &iterrootComponentmasl2xtuml_C_C, &pG_masl2xtuml_C_C_extent.active );
    while ( (selected = (masl2xtuml_C_C *) Escher_IteratorNext( &iterrootComponentmasl2xtuml_C_C )) != 0 ) {
      if ( ( selected->Id == rootCompIdInPkg ) ) {
        rootComponent = selected;
        break;
      }
    }
  }
  /* SELECT one system RELATED BY rootComponent->PE_PE[R8001]->EP_PKG[R8000]->S_SYS[R1405] */
  system = 0;
  {  if ( 0 != rootComponent ) {
  masl2xtuml_PE_PE * PE_PE_R8001 = rootComponent->PE_PE_R8001;
  if ( 0 != PE_PE_R8001 ) {
  masl2xtuml_EP_PKG * EP_PKG_R8000_contained_by = PE_PE_R8001->EP_PKG_R8000_contained_by;
  if ( 0 != EP_PKG_R8000_contained_by ) {
  system = EP_PKG_R8000_contained_by->S_SYS_R1405;
}}}}
  /* RELATE package TO system ACROSS R1405 */
  masl2xtuml_EP_PKG_R1405_Link_contains( system, package );
  /* RELATE c_c TO pe ACROSS R8003 */
  masl2xtuml_PE_PE_R8003_Link_contains( c_c, pe );
  /* self.Package_initialize( ep_pkg:package, name:PARAM.pkg_name ) */
  masl2xtuml_ooapopulation_op_Package_initialize( self,  package, p_pkg_name );
  /* ASSIGN pe.type = PACKAGE */
  pe->type = masl2xtuml_ElementTypeConstants_PACKAGE_e;
  /* self.PackageableElement_initialize( pe_pe:pe ) */
  masl2xtuml_ooapopulation_op_PackageableElement_initialize( self,  pe );
  /* RETURN package */
  {masl2xtuml_EP_PKG * xtumlOALrv = package;
  return xtumlOALrv;}
}

/*
 * instance operation:  Component_getRootComponentId
 */
Escher_UniqueID_t
masl2xtuml_ooapopulation_op_Component_getRootComponentId( masl2xtuml_ooapopulation * self, masl2xtuml_C_C * p_c_c )
{
  masl2xtuml_C_C * c_c;masl2xtuml_C_C * parentComponent=0;
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* SELECT one parentComponent RELATED BY c_c->PE_PE[R8001]->C_C[R8003] */
  parentComponent = 0;
  {  if ( 0 != c_c ) {
  masl2xtuml_PE_PE * PE_PE_R8001 = c_c->PE_PE_R8001;
  if ( 0 != PE_PE_R8001 ) {
  parentComponent = PE_PE_R8001->C_C_R8003_contained_in;
}}}
  /* IF ( not_empty parentComponent ) */
  if ( ( 0 != parentComponent ) ) {
    /* RETURN self.Component_getRootComponentId(c_c:parentComponent) */
    {Escher_UniqueID_t xtumlOALrv = masl2xtuml_ooapopulation_op_Component_getRootComponentId(self, parentComponent);
    return xtumlOALrv;}
  }
  /* RETURN c_c.Id */
  {Escher_UniqueID_t xtumlOALrv = c_c->Id;
  return xtumlOALrv;}
}

/*
 * instance operation:  createSystem
 */
void
masl2xtuml_ooapopulation_op_createSystem( masl2xtuml_ooapopulation * self)
{
  masl2xtuml_S_SYS * s_sys;
  /* ASSIGN s_sys = self.current_sys */
  s_sys = self->current_sys;
  /* IF ( empty s_sys ) */
  if ( ( 0 == s_sys ) ) {
    /* CREATE OBJECT INSTANCE s_sys OF S_SYS */
    s_sys = (masl2xtuml_S_SYS *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_S_SYS_CLASS_NUMBER );
    s_sys->Sys_ID = (Escher_UniqueID_t) s_sys;
    /* ASSIGN s_sys.Name = ConvertedModel */
    s_sys->Name = Escher_strcpy( s_sys->Name, "ConvertedModel" );
    /* ASSIGN self.current_sys = s_sys */
    self->current_sys = s_sys;
    /* ASSIGN self.systypes_pkg = self.SystemModel_newPackage(pkg_name:types, s_sys:s_sys) */
    self->systypes_pkg = masl2xtuml_ooapopulation_op_SystemModel_newPackage(self, "types", s_sys);
    /* self.Package_newDatatype( definition:, ep_pkg:self.systypes_pkg, type_name:void ) */
    masl2xtuml_ooapopulation_op_Package_newDatatype( self,  "", self->systypes_pkg, "void" );
    /* self.Package_newDatatype( definition:, ep_pkg:self.systypes_pkg, type_name:character ) */
    masl2xtuml_ooapopulation_op_Package_newDatatype( self,  "", self->systypes_pkg, "character" );
    /* self.Package_newDatatype( definition:, ep_pkg:self.systypes_pkg, type_name:wcharacter ) */
    masl2xtuml_ooapopulation_op_Package_newDatatype( self,  "", self->systypes_pkg, "wcharacter" );
    /* self.Package_newDatatype( definition:, ep_pkg:self.systypes_pkg, type_name:boolean ) */
    masl2xtuml_ooapopulation_op_Package_newDatatype( self,  "", self->systypes_pkg, "boolean" );
    /* self.Package_newDatatype( definition:, ep_pkg:self.systypes_pkg, type_name:byte ) */
    masl2xtuml_ooapopulation_op_Package_newDatatype( self,  "", self->systypes_pkg, "byte" );
    /* self.Package_newDatatype( definition:, ep_pkg:self.systypes_pkg, type_name:string ) */
    masl2xtuml_ooapopulation_op_Package_newDatatype( self,  "", self->systypes_pkg, "string" );
    /* self.Package_newDatatype( definition:, ep_pkg:self.systypes_pkg, type_name:wstring ) */
    masl2xtuml_ooapopulation_op_Package_newDatatype( self,  "", self->systypes_pkg, "wstring" );
    /* self.Package_newDatatype( definition:, ep_pkg:self.systypes_pkg, type_name:device ) */
    masl2xtuml_ooapopulation_op_Package_newDatatype( self,  "", self->systypes_pkg, "device" );
    /* self.Package_newDatatype( definition:, ep_pkg:self.systypes_pkg, type_name:enum ) */
    masl2xtuml_ooapopulation_op_Package_newDatatype( self,  "", self->systypes_pkg, "enum" );
    /* self.Package_newDatatype( definition:, ep_pkg:self.systypes_pkg, type_name:event ) */
    masl2xtuml_ooapopulation_op_Package_newDatatype( self,  "", self->systypes_pkg, "event" );
    /* self.Package_newDatatype( definition:, ep_pkg:self.systypes_pkg, type_name:instance ) */
    masl2xtuml_ooapopulation_op_Package_newDatatype( self,  "", self->systypes_pkg, "instance" );
  }
}

/*
 * instance operation:  InterfaceReference_isFormal
 */
bool
masl2xtuml_ooapopulation_op_InterfaceReference_isFormal( masl2xtuml_ooapopulation * self, c_t * p_c_ir )
{
  /* RETURN FALSE */
  {bool xtumlOALrv = FALSE;
  return xtumlOALrv;}
}

/*
 * instance operation:  transformTerminator
 */
void
masl2xtuml_ooapopulation_op_transformTerminator( masl2xtuml_ooapopulation * self, c_t * p_name )
{
  masl2xtuml_EP_PKG * lib_pkg;
  /* ASSIGN lib_pkg = self.lib_pkg */
  lib_pkg = self->lib_pkg;
  /* IF ( self.processingProject ) */
  if ( self->processingProject ) {
    masl2xtuml_CL_IC * current_imported;
    /* ASSIGN current_imported = self.current_imported_component */
    current_imported = self->current_imported_component;
    /* IF ( not_empty current_imported ) */
    if ( ( 0 != current_imported ) ) {
      c_t * clic_name=0;
      /* ASSIGN clic_name = current_imported.Name */
      clic_name = Escher_strcpy( clic_name, current_imported->Name );
      /* IF ( ( clic_name != PARAM.name ) ) */
      if ( ( Escher_strcmp( clic_name, p_name ) != 0 ) ) {
        masl2xtuml_C_IR * new_ir;c_t * comp_if_name=0;
        /* ASSIGN comp_if_name = ( clic_name + PARAM.name ) */
        comp_if_name = Escher_strcpy( comp_if_name, Escher_stradd( clic_name, p_name ) );
        /* ASSIGN new_ir = self.Component_initializeProvision(c_c:self.current_component, if_name:comp_if_name, port_name:comp_if_name) */
        new_ir = masl2xtuml_ooapopulation_op_Component_initializeProvision(self, self->current_component, comp_if_name, comp_if_name);
      }
    }
  }
  else {
    c_t * comp_if_name=0;masl2xtuml_C_I * comp_if=0;masl2xtuml_EP_PKG * shared_pkg=0;
    /* ASSIGN comp_if_name = ( self.current_component.Name + PARAM.name ) */
    comp_if_name = Escher_strcpy( comp_if_name, Escher_stradd( self->current_component->Name, p_name ) );
    /* SELECT any shared_pkg RELATED BY lib_pkg->PE_PE[R8000]->EP_PKG[R8001] WHERE ( ( SELECTED.Name == Shared ) ) */
    shared_pkg = 0;
    {    if ( 0 != lib_pkg ) {
    masl2xtuml_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &lib_pkg->PE_PE_R8000_contains );
    while ( ( 0 == shared_pkg ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_EP_PKG_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    {masl2xtuml_EP_PKG * selected = (masl2xtuml_EP_PKG *) PE_PE_R8000_contains->R8001_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "Shared" ) == 0 ) ) {
      shared_pkg = selected;
    }}
}}}
    /* SELECT any comp_if RELATED BY shared_pkg->PE_PE[R8000]->C_I[R8001] WHERE ( ( SELECTED.Name == comp_if_name ) ) */
    comp_if = 0;
    {    if ( 0 != shared_pkg ) {
    masl2xtuml_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &shared_pkg->PE_PE_R8000_contains );
    while ( ( 0 == comp_if ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_C_I_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    {masl2xtuml_C_I * selected = (masl2xtuml_C_I *) PE_PE_R8000_contains->R8001_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, comp_if_name ) == 0 ) ) {
      comp_if = selected;
    }}
}}}
    /* IF ( empty comp_if ) */
    if ( ( 0 == comp_if ) ) {
      masl2xtuml_C_IR * new_ir;c_t * comp_port_name=0;
      /* ASSIGN comp_if = self.Package_newInterface(ep_pkg:shared_pkg, interface_name:comp_if_name) */
      comp_if = masl2xtuml_ooapopulation_op_Package_newInterface(self, shared_pkg, comp_if_name);
      /* ASSIGN comp_port_name = PARAM.name */
      comp_port_name = Escher_strcpy( comp_port_name, p_name );
      /* ASSIGN new_ir = self.Component_initializeRequirement(c_c:self.current_component, if_name:, port_name:comp_port_name) */
      new_ir = masl2xtuml_ooapopulation_op_Component_initializeRequirement(self, self->current_component, "", comp_port_name);
      /* RELATE comp_if TO new_ir ACROSS R4012 */
      masl2xtuml_C_IR_R4012_Link_is_formal_definition( comp_if, new_ir );
    }
    /* ASSIGN self.current_interface = comp_if */
    self->current_interface = comp_if;
  }
}

/*
 * instance operation:  transformActivity
 */
void
masl2xtuml_ooapopulation_op_transformActivity( masl2xtuml_ooapopulation * self)
{

}

/*
 * instance operation:  transformParameter
 */
void
masl2xtuml_ooapopulation_op_transformParameter( masl2xtuml_ooapopulation * self, c_t * p_direction, c_t * p_name )
{
  masl2xtuml_SM_EVT * evt;masl2xtuml_C_EP * interface_message;masl2xtuml_S_SYNC * domain_function;masl2xtuml_O_TFR * class_op;
  /* ASSIGN class_op = self.current_class_op */
  class_op = self->current_class_op;
  /* ASSIGN domain_function = self.current_domain_function */
  domain_function = self->current_domain_function;
  /* ASSIGN interface_message = self.current_executable_property */
  interface_message = self->current_executable_property;
  /* ASSIGN evt = self.current_event */
  evt = self->current_event;
  /* IF ( not_empty class_op ) */
  if ( ( 0 != class_op ) ) {
    masl2xtuml_O_TPARM * o_tparm=0;
    /* SELECT any o_tparm RELATED BY class_op->O_TPARM[R117] WHERE ( ( SELECTED.Name == PARAM.name ) ) */
    o_tparm = 0;
    if ( 0 != class_op ) {
      masl2xtuml_O_TPARM * selected;
      Escher_Iterator_s iO_TPARM_R117_contains;
      Escher_IteratorReset( &iO_TPARM_R117_contains, &class_op->O_TPARM_R117_contains );
      while ( 0 != ( selected = (masl2xtuml_O_TPARM *) Escher_IteratorNext( &iO_TPARM_R117_contains ) ) ) {
        if ( ( Escher_strcmp( selected->Name, p_name ) == 0 ) ) {
          o_tparm = selected;
          break;
    }}}
    /* IF ( empty o_tparm ) */
    if ( ( 0 == o_tparm ) ) {
      /* ASSIGN self.current_operation_param = self.Operation_newParameter(o_tfr:class_op, parameter_name:PARAM.name) */
      self->current_operation_param = masl2xtuml_ooapopulation_op_Operation_newParameter(self, class_op, p_name);
      /* IF ( ( in == PARAM.direction ) ) */
      if ( ( Escher_strcmp( "in", p_direction ) == 0 ) ) {
        /* ASSIGN self.current_operation_param.By_Ref = 0 */
        self->current_operation_param->By_Ref = 0;
      }
      else if ( ( Escher_strcmp( "out", p_direction ) == 0 ) ) {
        /* ASSIGN self.current_operation_param.By_Ref = 1 */
        self->current_operation_param->By_Ref = 1;
      }
    }
    else {
      /* ASSIGN self.current_operation_param = o_tparm */
      self->current_operation_param = o_tparm;
    }
  }
  else if ( ( 0 != domain_function ) ) {
    masl2xtuml_S_SPARM * s_sparm=0;
    /* SELECT any s_sparm RELATED BY domain_function->S_SPARM[R24] WHERE ( ( SELECTED.Name == PARAM.name ) ) */
    s_sparm = 0;
    if ( 0 != domain_function ) {
      masl2xtuml_S_SPARM * selected;
      Escher_Iterator_s iS_SPARM_R24_defines;
      Escher_IteratorReset( &iS_SPARM_R24_defines, &domain_function->S_SPARM_R24_defines );
      while ( 0 != ( selected = (masl2xtuml_S_SPARM *) Escher_IteratorNext( &iS_SPARM_R24_defines ) ) ) {
        if ( ( Escher_strcmp( selected->Name, p_name ) == 0 ) ) {
          s_sparm = selected;
          break;
    }}}
    /* IF ( empty s_sparm ) */
    if ( ( 0 == s_sparm ) ) {
      /* ASSIGN self.current_function_param = self.Function_newParameter(parameter_name:PARAM.name, s_sync:domain_function) */
      self->current_function_param = masl2xtuml_ooapopulation_op_Function_newParameter(self, p_name, domain_function);
      /* IF ( ( in == PARAM.direction ) ) */
      if ( ( Escher_strcmp( "in", p_direction ) == 0 ) ) {
        /* ASSIGN self.current_function_param.By_Ref = 0 */
        self->current_function_param->By_Ref = 0;
      }
      else if ( ( Escher_strcmp( "out", p_direction ) == 0 ) ) {
        /* ASSIGN self.current_function_param.By_Ref = 1 */
        self->current_function_param->By_Ref = 1;
      }
    }
    else {
      /* ASSIGN self.current_function_param = s_sparm */
      self->current_function_param = s_sparm;
    }
  }
  else if ( ( 0 != interface_message ) ) {
    masl2xtuml_C_PP * c_pp=0;
    /* SELECT any c_pp RELATED BY interface_message->C_PP[R4006] WHERE ( ( SELECTED.Name == PARAM.name ) ) */
    c_pp = 0;
    if ( 0 != interface_message ) {
      masl2xtuml_C_PP * selected;
      Escher_Iterator_s iC_PP_R4006_is_parameter_to;
      Escher_IteratorReset( &iC_PP_R4006_is_parameter_to, &interface_message->C_PP_R4006_is_parameter_to );
      while ( 0 != ( selected = (masl2xtuml_C_PP *) Escher_IteratorNext( &iC_PP_R4006_is_parameter_to ) ) ) {
        if ( ( Escher_strcmp( selected->Name, p_name ) == 0 ) ) {
          c_pp = selected;
          break;
    }}}
    /* IF ( empty c_pp ) */
    if ( ( 0 == c_pp ) ) {
      /* ASSIGN self.current_interface_param = self.Interface_newParameter(c_ep:interface_message, parameter_name:PARAM.name) */
      self->current_interface_param = masl2xtuml_ooapopulation_op_Interface_newParameter(self, interface_message, p_name);
      /* IF ( ( in == PARAM.direction ) ) */
      if ( ( Escher_strcmp( "in", p_direction ) == 0 ) ) {
        /* ASSIGN self.current_interface_param.By_Ref = 0 */
        self->current_interface_param->By_Ref = 0;
      }
      else if ( ( Escher_strcmp( "out", p_direction ) == 0 ) ) {
        /* ASSIGN self.current_interface_param.By_Ref = 1 */
        self->current_interface_param->By_Ref = 1;
      }
    }
    else {
      /* ASSIGN self.current_interface_param = c_pp */
      self->current_interface_param = c_pp;
    }
  }
  else if ( ( 0 != evt ) ) {
    masl2xtuml_SM_EVTDI * sm_evtdi=0;
    /* SELECT any sm_evtdi RELATED BY evt->SM_EVTDI[R532] WHERE ( ( SELECTED.Name == PARAM.name ) ) */
    sm_evtdi = 0;
    if ( 0 != evt ) {
      masl2xtuml_SM_EVTDI * selected;
      Escher_Iterator_s iSM_EVTDI_R532_carries;
      Escher_IteratorReset( &iSM_EVTDI_R532_carries, &evt->SM_EVTDI_R532_carries );
      while ( 0 != ( selected = (masl2xtuml_SM_EVTDI *) Escher_IteratorNext( &iSM_EVTDI_R532_carries ) ) ) {
        if ( ( Escher_strcmp( selected->Name, p_name ) == 0 ) ) {
          sm_evtdi = selected;
          break;
    }}}
    /* IF ( empty sm_evtdi ) */
    if ( ( 0 == sm_evtdi ) ) {
      /* ASSIGN self.current_event_dataitem = self.StateMachineEvent_newParameter(parameter_name:PARAM.name, sm_evt:evt) */
      self->current_event_dataitem = masl2xtuml_ooapopulation_op_StateMachineEvent_newParameter(self, p_name, evt);
    }
    else {
      /* ASSIGN self.current_event_dataitem = sm_evtdi */
      self->current_event_dataitem = sm_evtdi;
    }
  }
}

/*
 * instance operation:  transformAttribute
 */
void
masl2xtuml_ooapopulation_op_transformAttribute( masl2xtuml_ooapopulation * self, c_t * p_name, c_t * p_preferred, c_t * p_unique )
{
  c_t * attr_name=0;
  /* ASSIGN attr_name = PARAM.name */
  attr_name = Escher_strcpy( attr_name, p_name );
  /* ASSIGN self.current_attribute = self.ModelClass_newAttribute(attr_name:attr_name, o_obj:self.current_class) */
  self->current_attribute = masl2xtuml_ooapopulation_op_ModelClass_newAttribute(self, attr_name, self->current_class);
  /* IF ( ( preferred == PARAM.preferred ) ) */
  if ( ( Escher_strcmp( "preferred", p_preferred ) == 0 ) ) {
    /* self.Attribute_addToIdentifier( o_attr:self.current_attribute, oid:0 ) */
    masl2xtuml_ooapopulation_op_Attribute_addToIdentifier( self,  self->current_attribute, 0 );
  }
  /* IF ( ( unique == PARAM.unique ) ) */
  if ( ( Escher_strcmp( "unique", p_unique ) == 0 ) ) {
    /* self.transformType( definition:, name:MASLunique, visibility:public ) */
    masl2xtuml_ooapopulation_op_transformType( self,  "", "MASLunique", "public" );
    /* self.Attribute_setType( o_attr:self.current_attribute, type_name:MASLunique ) */
    masl2xtuml_ooapopulation_op_Attribute_setType( self,  self->current_attribute, "MASLunique" );
  }
}

/*
 * instance operation:  transformState
 */
void
masl2xtuml_ooapopulation_op_transformState( masl2xtuml_ooapopulation * self, c_t * p_domain, c_t * p_name, c_t * p_obj, c_t * p_type )
{
  masl2xtuml_O_OBJ * current_class;
  /* ASSIGN current_class = self.current_class */
  current_class = self->current_class;
  /* IF ( not_empty current_class ) */
  if ( ( 0 != current_class ) ) {
    masl2xtuml_SM_SM * sm_sm=0;masl2xtuml_SM_STATE * sm_state=0;
    /* SELECT any sm_sm FROM INSTANCES OF SM_SM WHERE FALSE */
    sm_sm = 0;
    /* IF ( ( ( assigner == PARAM.type ) or ( assigner start == PARAM.type ) ) ) */
    if ( ( ( Escher_strcmp( "assigner", p_type ) == 0 ) || ( Escher_strcmp( "assigner start", p_type ) == 0 ) ) ) {
      /* ASSIGN sm_sm = self.ModelClass_create_sm(o_obj:current_class, sm_type:ASM) */
      sm_sm = masl2xtuml_ooapopulation_op_ModelClass_create_sm(self, current_class, "ASM");
    }
    else {
      /* ASSIGN sm_sm = self.ModelClass_create_sm(o_obj:current_class, sm_type:ISM) */
      sm_sm = masl2xtuml_ooapopulation_op_ModelClass_create_sm(self, current_class, "ISM");
    }
    /* self.StateMachine_newState( name:PARAM.name, sm_sm:sm_sm, type:PARAM.type ) */
    masl2xtuml_ooapopulation_op_StateMachine_newState( self,  p_name, sm_sm, p_type );
    /* SELECT any sm_state RELATED BY sm_sm->SM_STATE[R501] WHERE ( ( SELECTED.Name == PARAM.name ) ) */
    sm_state = 0;
    if ( 0 != sm_sm ) {
      masl2xtuml_SM_STATE * selected;
      Escher_Iterator_s iSM_STATE_R501_is_decomposed_into;
      Escher_IteratorReset( &iSM_STATE_R501_is_decomposed_into, &sm_sm->SM_STATE_R501_is_decomposed_into );
      while ( 0 != ( selected = (masl2xtuml_SM_STATE *) Escher_IteratorNext( &iSM_STATE_R501_is_decomposed_into ) ) ) {
        if ( ( Escher_strcmp( selected->Name, p_name ) == 0 ) ) {
          sm_state = selected;
          break;
    }}}
    /* ASSIGN self.current_state = sm_state */
    self->current_state = sm_state;
  }
  else {
    masl2xtuml_C_C * c_c=0;masl2xtuml_SM_STATE * sm_state=0;masl2xtuml_O_OBJ * o_obj=0;masl2xtuml_EP_PKG * ep_pkg=0;
    /* SELECT any c_c FROM INSTANCES OF C_C WHERE ( SELECTED.Name == PARAM.domain ) */
    c_c = 0;
    { masl2xtuml_C_C * selected;
      Escher_Iterator_s iterc_cmasl2xtuml_C_C;
      Escher_IteratorReset( &iterc_cmasl2xtuml_C_C, &pG_masl2xtuml_C_C_extent.active );
      while ( (selected = (masl2xtuml_C_C *) Escher_IteratorNext( &iterc_cmasl2xtuml_C_C )) != 0 ) {
        if ( ( Escher_strcmp( selected->Name, p_domain ) == 0 ) ) {
          c_c = selected;
          break;
        }
      }
    }
    /* SELECT any ep_pkg RELATED BY c_c->PE_PE[R8003]->EP_PKG[R8001] WHERE ( ( SELECTED.Name == PARAM.domain ) ) */
    ep_pkg = 0;
    {    if ( 0 != c_c ) {
    masl2xtuml_PE_PE * PE_PE_R8003_contains;
    Escher_Iterator_s iPE_PE_R8003_contains;
    Escher_IteratorReset( &iPE_PE_R8003_contains, &c_c->PE_PE_R8003_contains );
    while ( ( 0 == ep_pkg ) && ( 0 != ( PE_PE_R8003_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) ) {
    if ( ( 0 != PE_PE_R8003_contains ) && ( masl2xtuml_EP_PKG_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) )    {masl2xtuml_EP_PKG * selected = (masl2xtuml_EP_PKG *) PE_PE_R8003_contains->R8001_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, p_domain ) == 0 ) ) {
      ep_pkg = selected;
    }}
}}}
    /* SELECT any o_obj RELATED BY ep_pkg->PE_PE[R8000]->O_OBJ[R8001] WHERE ( ( SELECTED.Name == PARAM.obj ) ) */
    o_obj = 0;
    {    if ( 0 != ep_pkg ) {
    masl2xtuml_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
    while ( ( 0 == o_obj ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_O_OBJ_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    {masl2xtuml_O_OBJ * selected = (masl2xtuml_O_OBJ *) PE_PE_R8000_contains->R8001_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, p_obj ) == 0 ) ) {
      o_obj = selected;
    }}
}}}
    /* SELECT any sm_state RELATED BY o_obj->SM_ISM[R518]->SM_SM[R517]->SM_STATE[R501] WHERE ( ( SELECTED.Name == PARAM.name ) ) */
    sm_state = 0;
    {    if ( 0 != o_obj ) {
    masl2xtuml_SM_ISM * SM_ISM_R518 = o_obj->SM_ISM_R518;
    if ( 0 != SM_ISM_R518 ) {
    masl2xtuml_SM_SM * SM_SM_R517 = SM_ISM_R518->SM_SM_R517;
    if ( 0 != SM_SM_R517 ) {
    masl2xtuml_SM_STATE * selected;
    Escher_Iterator_s iSM_STATE_R501_is_decomposed_into;
    Escher_IteratorReset( &iSM_STATE_R501_is_decomposed_into, &SM_SM_R517->SM_STATE_R501_is_decomposed_into );
    while ( 0 != ( selected = (masl2xtuml_SM_STATE *) Escher_IteratorNext( &iSM_STATE_R501_is_decomposed_into ) ) ) {
      if ( ( Escher_strcmp( selected->Name, p_name ) == 0 ) ) {
        sm_state = selected;
        break;
    }}
}}}}
    /* IF ( empty sm_state ) */
    if ( ( 0 == sm_state ) ) {
      /* SELECT any sm_state RELATED BY o_obj->SM_ASM[R519]->SM_SM[R517]->SM_STATE[R501] WHERE ( ( SELECTED.Name == PARAM.name ) ) */
      sm_state = 0;
      {      if ( 0 != o_obj ) {
      masl2xtuml_SM_ASM * SM_ASM_R519 = o_obj->SM_ASM_R519;
      if ( 0 != SM_ASM_R519 ) {
      masl2xtuml_SM_SM * SM_SM_R517 = SM_ASM_R519->SM_SM_R517;
      if ( 0 != SM_SM_R517 ) {
      masl2xtuml_SM_STATE * selected;
      Escher_Iterator_s iSM_STATE_R501_is_decomposed_into;
      Escher_IteratorReset( &iSM_STATE_R501_is_decomposed_into, &SM_SM_R517->SM_STATE_R501_is_decomposed_into );
      while ( 0 != ( selected = (masl2xtuml_SM_STATE *) Escher_IteratorNext( &iSM_STATE_R501_is_decomposed_into ) ) ) {
        if ( ( Escher_strcmp( selected->Name, p_name ) == 0 ) ) {
          sm_state = selected;
          break;
      }}
}}}}
    }
    /* ASSIGN self.current_state = sm_state */
    self->current_state = sm_state;
  }
}

/*
 * instance operation:  transformEvent
 */
void
masl2xtuml_ooapopulation_op_transformEvent( masl2xtuml_ooapopulation * self, c_t * p_name, c_t * p_type )
{
  masl2xtuml_O_OBJ * current_class;masl2xtuml_SM_SM * sm_sm=0;masl2xtuml_SM_EVT * sm_evt=0;
  /* ASSIGN current_class = self.current_class */
  current_class = self->current_class;
  /* SELECT any sm_sm FROM INSTANCES OF SM_SM WHERE FALSE */
  sm_sm = 0;
  /* IF ( ( assigner == PARAM.type ) ) */
  if ( ( Escher_strcmp( "assigner", p_type ) == 0 ) ) {
    /* ASSIGN sm_sm = self.ModelClass_create_sm(o_obj:current_class, sm_type:ASM) */
    sm_sm = masl2xtuml_ooapopulation_op_ModelClass_create_sm(self, current_class, "ASM");
  }
  else {
    /* ASSIGN sm_sm = self.ModelClass_create_sm(o_obj:current_class, sm_type:ISM) */
    sm_sm = masl2xtuml_ooapopulation_op_ModelClass_create_sm(self, current_class, "ISM");
  }
  /* self.StateMachine_newEvent( name:PARAM.name, sm_sm:sm_sm ) */
  masl2xtuml_ooapopulation_op_StateMachine_newEvent( self,  p_name, sm_sm );
  /* SELECT any sm_evt RELATED BY sm_sm->SM_EVT[R502] WHERE ( ( SELECTED.Mning == PARAM.name ) ) */
  sm_evt = 0;
  if ( 0 != sm_sm ) {
    masl2xtuml_SM_EVT * selected;
    Escher_Iterator_s iSM_EVT_R502_can_be_communicated_to_via;
    Escher_IteratorReset( &iSM_EVT_R502_can_be_communicated_to_via, &sm_sm->SM_EVT_R502_can_be_communicated_to_via );
    while ( 0 != ( selected = (masl2xtuml_SM_EVT *) Escher_IteratorNext( &iSM_EVT_R502_can_be_communicated_to_via ) ) ) {
      if ( ( Escher_strcmp( selected->Mning, p_name ) == 0 ) ) {
        sm_evt = selected;
        break;
  }}}
  /* ASSIGN self.current_event = sm_evt */
  self->current_event = sm_evt;
}

/*
 * instance operation:  Package_newImportedComponent
 */
masl2xtuml_CL_IC *
masl2xtuml_ooapopulation_op_Package_newImportedComponent( masl2xtuml_ooapopulation * self, masl2xtuml_EP_PKG * p_ep_pkg )
{
  masl2xtuml_EP_PKG * ep_pkg;masl2xtuml_PE_PE * pe;masl2xtuml_CL_IC * importedComp;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* CREATE OBJECT INSTANCE importedComp OF CL_IC */
  importedComp = (masl2xtuml_CL_IC *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_CL_IC_CLASS_NUMBER );
  importedComp->Id = (Escher_UniqueID_t) importedComp;
  /* CREATE OBJECT INSTANCE pe OF PE_PE */
  pe = (masl2xtuml_PE_PE *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_PE_PE_CLASS_NUMBER );
  pe->Element_ID = (Escher_UniqueID_t) pe;
  /* RELATE importedComp TO pe ACROSS R8001 */
  masl2xtuml_CL_IC_R8001_Link( pe, importedComp );
  /* RELATE pe TO ep_pkg ACROSS R8000 */
  masl2xtuml_PE_PE_R8000_Link_contains( ep_pkg, pe );
  /* ASSIGN pe.type = COMPONENT_REFERENCE */
  pe->type = masl2xtuml_ElementTypeConstants_COMPONENT_REFERENCE_e;
  /* self.PackageableElement_initialize( pe_pe:pe ) */
  masl2xtuml_ooapopulation_op_PackageableElement_initialize( self,  pe );
  /* RETURN importedComp */
  {masl2xtuml_CL_IC * xtumlOALrv = importedComp;
  return xtumlOALrv;}
}

/*
 * instance operation:  Package_newClass
 */
masl2xtuml_O_OBJ *
masl2xtuml_ooapopulation_op_Package_newClass( masl2xtuml_ooapopulation * self, c_t * p_class_name, masl2xtuml_EP_PKG * p_ep_pkg )
{
  masl2xtuml_EP_PKG * ep_pkg;masl2xtuml_PE_PE * pe;masl2xtuml_O_OBJ * cl;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* CREATE OBJECT INSTANCE cl OF O_OBJ */
  cl = (masl2xtuml_O_OBJ *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_O_OBJ_CLASS_NUMBER );
  cl->Obj_ID = (Escher_UniqueID_t) cl;
  /* CREATE OBJECT INSTANCE pe OF PE_PE */
  pe = (masl2xtuml_PE_PE *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_PE_PE_CLASS_NUMBER );
  pe->Element_ID = (Escher_UniqueID_t) pe;
  /* RELATE cl TO pe ACROSS R8001 */
  masl2xtuml_O_OBJ_R8001_Link( pe, cl );
  /* ASSIGN pe.type = CLASS */
  pe->type = masl2xtuml_ElementTypeConstants_CLASS_e;
  /* self.PackageableElement_initialize( pe_pe:pe ) */
  masl2xtuml_ooapopulation_op_PackageableElement_initialize( self,  pe );
  /* RELATE ep_pkg TO pe ACROSS R8000 */
  masl2xtuml_PE_PE_R8000_Link_contains( ep_pkg, pe );
  /* self.ModelClass_initialize( name:PARAM.class_name, o_obj:cl ) */
  masl2xtuml_ooapopulation_op_ModelClass_initialize( self,  p_class_name, cl );
  /* RETURN cl */
  {masl2xtuml_O_OBJ * xtumlOALrv = cl;
  return xtumlOALrv;}
}

/*
 * instance operation:  ModelClass_initialize
 */
void
masl2xtuml_ooapopulation_op_ModelClass_initialize( masl2xtuml_ooapopulation * self, c_t * p_name, masl2xtuml_O_OBJ * p_o_obj )
{
  masl2xtuml_O_OBJ * clazz=0;masl2xtuml_O_OBJ * o_obj;Escher_ObjectSet_s classes_space={0}; Escher_ObjectSet_s * classes = &classes_space;masl2xtuml_C_C * component=0;masl2xtuml_EP_PKG * package=0;masl2xtuml_PE_PE * packageableElem=0;
  /* ASSIGN o_obj = PARAM.o_obj */
  o_obj = p_o_obj;
  /* ASSIGN o_obj.Name = PARAM.name */
  o_obj->Name = Escher_strcpy( o_obj->Name, p_name );
  /* SELECT one packageableElem RELATED BY o_obj->PE_PE[R8001] */
  packageableElem = ( 0 != o_obj ) ? o_obj->PE_PE_R8001 : 0;
  /* SELECT one package RELATED BY packageableElem->EP_PKG[R8000] */
  package = ( 0 != packageableElem ) ? packageableElem->EP_PKG_R8000_contained_by : 0;
  /* SELECT one component RELATED BY packageableElem->C_C[R8003] */
  component = ( 0 != packageableElem ) ? packageableElem->C_C_R8003_contained_in : 0;
  /* SELECT many classes RELATED BY package->PE_PE[R8000]->O_OBJ[R8001] */
  Escher_ClearSet( classes );
  {  if ( 0 != package ) {
  masl2xtuml_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &package->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_O_OBJ_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {masl2xtuml_O_OBJ * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) classes, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) classes, R8001_subtype );
  }}}}}
  /* IF ( not_empty package ) */
  if ( ( 0 != package ) ) {
    /* SELECT many classes RELATED BY package->PE_PE[R8000]->O_OBJ[R8001] */
    Escher_ClearSet( classes );
    {    if ( 0 != package ) {
    masl2xtuml_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &package->PE_PE_R8000_contains );
    while ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_O_OBJ_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    {masl2xtuml_O_OBJ * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) classes, R8001_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) classes, R8001_subtype );
    }}}}}
    /* IF ( ( package.Num_Rng == 0 ) ) */
    if ( ( package->Num_Rng == 0 ) ) {
      /* ASSIGN o_obj.Numb = 1 */
      o_obj->Numb = 1;
    }
    else {
      /* ASSIGN o_obj.Numb = package.Num_Rng */
      o_obj->Numb = package->Num_Rng;
    }
  }
  else {
    Escher_UniqueID_t rootCompIdInPkg;masl2xtuml_C_C * rootComponent=0;
    /* ASSIGN rootCompIdInPkg = self.Component_getRootComponentId(c_c:component) */
    rootCompIdInPkg = masl2xtuml_ooapopulation_op_Component_getRootComponentId(self, component);
    /* SELECT any rootComponent FROM INSTANCES OF C_C WHERE ( SELECTED.Id == rootCompIdInPkg ) */
    rootComponent = 0;
    { masl2xtuml_C_C * selected;
      Escher_Iterator_s iterrootComponentmasl2xtuml_C_C;
      Escher_IteratorReset( &iterrootComponentmasl2xtuml_C_C, &pG_masl2xtuml_C_C_extent.active );
      while ( (selected = (masl2xtuml_C_C *) Escher_IteratorNext( &iterrootComponentmasl2xtuml_C_C )) != 0 ) {
        if ( ( selected->Id == rootCompIdInPkg ) ) {
          rootComponent = selected;
          break;
        }
      }
    }
    /* SELECT one package RELATED BY rootComponent->PE_PE[R8001]->EP_PKG[R8000] */
    package = 0;
    {    if ( 0 != rootComponent ) {
    masl2xtuml_PE_PE * PE_PE_R8001 = rootComponent->PE_PE_R8001;
    if ( 0 != PE_PE_R8001 ) {
    package = PE_PE_R8001->EP_PKG_R8000_contained_by;
}}}
    /* IF ( ( package.Num_Rng == 0 ) ) */
    if ( ( package->Num_Rng == 0 ) ) {
      /* ASSIGN o_obj.Numb = 1 */
      o_obj->Numb = 1;
    }
    else {
      /* ASSIGN o_obj.Numb = package.Num_Rng */
      o_obj->Numb = package->Num_Rng;
    }
  }
  /* FOR EACH clazz IN classes */
  { Escher_Iterator_s iterclazz;
  masl2xtuml_O_OBJ * iiclazz;
  Escher_IteratorReset( &iterclazz, classes );
  while ( (iiclazz = (masl2xtuml_O_OBJ *)Escher_IteratorNext( &iterclazz )) != 0 ) {
    clazz = iiclazz; {
    /* IF ( ( clazz.Obj_ID == o_obj.Obj_ID ) ) */
    if ( ( clazz->Obj_ID == o_obj->Obj_ID ) ) {
      /* CONTINUE */
      continue;
    }
    /* IF ( ( clazz.Numb >= o_obj.Numb ) ) */
    if ( ( clazz->Numb >= o_obj->Numb ) ) {
      /* ASSIGN o_obj.Numb = ( clazz.Numb + 1 ) */
      o_obj->Numb = ( clazz->Numb + 1 );
    }
  }}}
  /* ASSIGN o_obj.Key_Lett = o_obj.Name */
  o_obj->Key_Lett = Escher_strcpy( o_obj->Key_Lett, o_obj->Name );
  /* self.ModelClass_addIdentifiers( o_obj:o_obj ) */
  masl2xtuml_ooapopulation_op_ModelClass_addIdentifiers( self,  o_obj );
  /* self.ModelClass_newInstanceReferenceDataType( o_obj:o_obj ) */
  masl2xtuml_ooapopulation_op_ModelClass_newInstanceReferenceDataType( self,  o_obj );
  Escher_ClearSet( classes ); 
}

/*
 * instance operation:  ModelClass_addIdentifiers
 */
void
masl2xtuml_ooapopulation_op_ModelClass_addIdentifiers( masl2xtuml_ooapopulation * self, masl2xtuml_O_OBJ * p_o_obj )
{
  masl2xtuml_O_OBJ * o_obj;masl2xtuml_O_ID * oid3=0;masl2xtuml_O_ID * oid2=0;masl2xtuml_O_ID * oid1=0;
  /* ASSIGN o_obj = PARAM.o_obj */
  o_obj = p_o_obj;
  /* SELECT any oid1 RELATED BY o_obj->O_ID[R104] WHERE ( ( SELECTED.Oid_ID == 0 ) ) */
  oid1 = 0;
  if ( 0 != o_obj ) {
    masl2xtuml_O_ID * selected;
    Escher_Iterator_s iO_ID_R104_is_identified_by;
    Escher_IteratorReset( &iO_ID_R104_is_identified_by, &o_obj->O_ID_R104_is_identified_by );
    while ( 0 != ( selected = (masl2xtuml_O_ID *) Escher_IteratorNext( &iO_ID_R104_is_identified_by ) ) ) {
      if ( ( selected->Oid_ID == 0 ) ) {
        oid1 = selected;
        break;
  }}}
  /* IF ( empty oid1 ) */
  if ( ( 0 == oid1 ) ) {
    /* CREATE OBJECT INSTANCE oid1 OF O_ID */
    oid1 = (masl2xtuml_O_ID *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_O_ID_CLASS_NUMBER );
    oid1->Obj_ID = (Escher_UniqueID_t) oid1;
    /* ASSIGN oid1.Oid_ID = 0 */
    oid1->Oid_ID = 0;
    /* RELATE oid1 TO o_obj ACROSS R104 */
    masl2xtuml_O_ID_R104_Link_is_identified_by( o_obj, oid1 );
  }
  /* SELECT any oid2 RELATED BY o_obj->O_ID[R104] WHERE ( ( SELECTED.Oid_ID == 1 ) ) */
  oid2 = 0;
  if ( 0 != o_obj ) {
    masl2xtuml_O_ID * selected;
    Escher_Iterator_s iO_ID_R104_is_identified_by;
    Escher_IteratorReset( &iO_ID_R104_is_identified_by, &o_obj->O_ID_R104_is_identified_by );
    while ( 0 != ( selected = (masl2xtuml_O_ID *) Escher_IteratorNext( &iO_ID_R104_is_identified_by ) ) ) {
      if ( ( selected->Oid_ID == 1 ) ) {
        oid2 = selected;
        break;
  }}}
  /* IF ( empty oid2 ) */
  if ( ( 0 == oid2 ) ) {
    /* CREATE OBJECT INSTANCE oid2 OF O_ID */
    oid2 = (masl2xtuml_O_ID *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_O_ID_CLASS_NUMBER );
    oid2->Obj_ID = (Escher_UniqueID_t) oid2;
    /* ASSIGN oid2.Oid_ID = 1 */
    oid2->Oid_ID = 1;
    /* RELATE oid2 TO o_obj ACROSS R104 */
    masl2xtuml_O_ID_R104_Link_is_identified_by( o_obj, oid2 );
  }
  /* SELECT any oid3 RELATED BY o_obj->O_ID[R104] WHERE ( ( SELECTED.Oid_ID == 2 ) ) */
  oid3 = 0;
  if ( 0 != o_obj ) {
    masl2xtuml_O_ID * selected;
    Escher_Iterator_s iO_ID_R104_is_identified_by;
    Escher_IteratorReset( &iO_ID_R104_is_identified_by, &o_obj->O_ID_R104_is_identified_by );
    while ( 0 != ( selected = (masl2xtuml_O_ID *) Escher_IteratorNext( &iO_ID_R104_is_identified_by ) ) ) {
      if ( ( selected->Oid_ID == 2 ) ) {
        oid3 = selected;
        break;
  }}}
  /* IF ( empty oid3 ) */
  if ( ( 0 == oid3 ) ) {
    /* CREATE OBJECT INSTANCE oid3 OF O_ID */
    oid3 = (masl2xtuml_O_ID *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_O_ID_CLASS_NUMBER );
    oid3->Obj_ID = (Escher_UniqueID_t) oid3;
    /* ASSIGN oid3.Oid_ID = 2 */
    oid3->Oid_ID = 2;
    /* RELATE oid3 TO o_obj ACROSS R104 */
    masl2xtuml_O_ID_R104_Link_is_identified_by( o_obj, oid3 );
  }
}

/*
 * instance operation:  ModelClass_newAttribute
 */
masl2xtuml_O_ATTR *
masl2xtuml_ooapopulation_op_ModelClass_newAttribute( masl2xtuml_ooapopulation * self, c_t * p_attr_name, masl2xtuml_O_OBJ * p_o_obj )
{
  masl2xtuml_O_OBJ * o_obj;masl2xtuml_O_ATTR * newAttr;
  /* ASSIGN o_obj = PARAM.o_obj */
  o_obj = p_o_obj;
  /* CREATE OBJECT INSTANCE newAttr OF O_ATTR */
  newAttr = (masl2xtuml_O_ATTR *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_O_ATTR_CLASS_NUMBER );
  newAttr->Attr_ID = (Escher_UniqueID_t) newAttr;
newAttr->Obj_ID = (Escher_UniqueID_t) newAttr;
  /* self.ModelClass_addAttributeToOrdering( newAttr:newAttr, o_obj:o_obj ) */
  masl2xtuml_ooapopulation_op_ModelClass_addAttributeToOrdering( self,  newAttr, o_obj );
  /* RELATE o_obj TO newAttr ACROSS R102 */
  masl2xtuml_O_ATTR_R102_Link_has_characteristics_abstracted_by( o_obj, newAttr );
  /* self.Attribute_initialize( name:PARAM.attr_name, o_attr:newAttr ) */
  masl2xtuml_ooapopulation_op_Attribute_initialize( self,  p_attr_name, newAttr );
  /* RETURN newAttr */
  {masl2xtuml_O_ATTR * xtumlOALrv = newAttr;
  return xtumlOALrv;}
}

/*
 * instance operation:  ModelClass_addAttributeToOrdering
 */
void
masl2xtuml_ooapopulation_op_ModelClass_addAttributeToOrdering( masl2xtuml_ooapopulation * self, masl2xtuml_O_ATTR * p_newAttr, masl2xtuml_O_OBJ * p_o_obj )
{
  masl2xtuml_O_ATTR * attr=0;masl2xtuml_O_ATTR * newAttr;masl2xtuml_O_OBJ * o_obj;Escher_ObjectSet_s attrs_space={0}; Escher_ObjectSet_s * attrs = &attrs_space;
  /* ASSIGN o_obj = PARAM.o_obj */
  o_obj = p_o_obj;
  /* ASSIGN newAttr = PARAM.newAttr */
  newAttr = p_newAttr;
  /* SELECT many attrs RELATED BY o_obj->O_ATTR[R102] */
  Escher_ClearSet( attrs );
  if ( 0 != o_obj ) {
    Escher_CopySet( attrs, &o_obj->O_ATTR_R102_has_characteristics_abstracted_by );
  }
  /* FOR EACH attr IN attrs */
  { Escher_Iterator_s iterattr;
  masl2xtuml_O_ATTR * iiattr;
  Escher_IteratorReset( &iterattr, attrs );
  while ( (iiattr = (masl2xtuml_O_ATTR *)Escher_IteratorNext( &iterattr )) != 0 ) {
    attr = iiattr; {
    masl2xtuml_O_ATTR * nextAttr=0;
    /* SELECT one nextAttr RELATED BY attr->O_ATTR[R103.precedes] */
    nextAttr = ( 0 != attr ) ? attr->O_ATTR_R103_precedes : 0;
    /* IF ( empty nextAttr ) */
    if ( ( 0 == nextAttr ) ) {
      /* BREAK */
      break;
    }
  }}}
  /* IF ( not_empty attr ) */
  if ( ( 0 != attr ) ) {
    /* RELATE attr TO newAttr ACROSS R103 */
    masl2xtuml_O_ATTR_R103_Link_precedes( attr, newAttr );
  }
  Escher_ClearSet( attrs ); 
}

/*
 * instance operation:  Attribute_initialize
 */
void
masl2xtuml_ooapopulation_op_Attribute_initialize( masl2xtuml_ooapopulation * self, c_t * p_name, masl2xtuml_O_ATTR * p_o_attr )
{
  masl2xtuml_EP_PKG * systypes_pkg;masl2xtuml_O_ATTR * o_attr;masl2xtuml_O_NBATTR * nba;masl2xtuml_O_BATTR * ba;masl2xtuml_S_DT * def_dt=0;
  /* ASSIGN o_attr = PARAM.o_attr */
  o_attr = p_o_attr;
  /* ASSIGN o_attr.Prefix =  */
  o_attr->Prefix = Escher_strcpy( o_attr->Prefix, "" );
  /* ASSIGN o_attr.Pfx_Mode = 0 */
  o_attr->Pfx_Mode = 0;
  /* ASSIGN o_attr.Root_Nam = PARAM.name */
  o_attr->Root_Nam = Escher_strcpy( o_attr->Root_Nam, p_name );
  /* ASSIGN systypes_pkg = self.systypes_pkg */
  systypes_pkg = self->systypes_pkg;
  /* SELECT any def_dt RELATED BY systypes_pkg->PE_PE[R8000]->S_DT[R8001] WHERE ( ( SELECTED.Name == string ) ) */
  def_dt = 0;
  {  if ( 0 != systypes_pkg ) {
  masl2xtuml_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &systypes_pkg->PE_PE_R8000_contains );
  while ( ( 0 == def_dt ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {masl2xtuml_S_DT * selected = (masl2xtuml_S_DT *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "string" ) == 0 ) ) {
    def_dt = selected;
  }}
}}}
  /* RELATE o_attr TO def_dt ACROSS R114 */
  masl2xtuml_O_ATTR_R114_Link_is_defined_by( def_dt, o_attr );
  /* CREATE OBJECT INSTANCE ba OF O_BATTR */
  ba = (masl2xtuml_O_BATTR *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_O_BATTR_CLASS_NUMBER );
  ba->Attr_ID = (Escher_UniqueID_t) ba;
ba->Obj_ID = (Escher_UniqueID_t) ba;
  /* RELATE o_attr TO ba ACROSS R106 */
  masl2xtuml_O_BATTR_R106_Link( o_attr, ba );
  /* CREATE OBJECT INSTANCE nba OF O_NBATTR */
  nba = (masl2xtuml_O_NBATTR *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_O_NBATTR_CLASS_NUMBER );
  nba->Attr_ID = (Escher_UniqueID_t) nba;
nba->Obj_ID = (Escher_UniqueID_t) nba;
  /* RELATE ba TO nba ACROSS R107 */
  masl2xtuml_O_NBATTR_R107_Link( ba, nba );
}

/*
 * instance operation:  transformType
 */
void
masl2xtuml_ooapopulation_op_transformType( masl2xtuml_ooapopulation * self, c_t * p_definition, c_t * p_name, c_t * p_visibility )
{
  masl2xtuml_EP_PKG * systypes_pkg;masl2xtuml_EP_PKG * lib_pkg;masl2xtuml_S_DT * s_dt=0;masl2xtuml_S_DT * sys_s_dt=0;masl2xtuml_EP_PKG * types_pkg=0;
  /* IF ( self.processingProject ) */
  if ( self->processingProject ) {
    /* RETURN  */
    return;  }
  /* ASSIGN lib_pkg = self.lib_pkg */
  lib_pkg = self->lib_pkg;
  /* SELECT any types_pkg RELATED BY lib_pkg->PE_PE[R8000]->EP_PKG[R8001] WHERE ( ( SELECTED.Name == Shared ) ) */
  types_pkg = 0;
  {  if ( 0 != lib_pkg ) {
  masl2xtuml_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &lib_pkg->PE_PE_R8000_contains );
  while ( ( 0 == types_pkg ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_EP_PKG_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {masl2xtuml_EP_PKG * selected = (masl2xtuml_EP_PKG *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "Shared" ) == 0 ) ) {
    types_pkg = selected;
  }}
}}}
  /* IF ( ( private == PARAM.visibility ) ) */
  if ( ( Escher_strcmp( "private", p_visibility ) == 0 ) ) {
    masl2xtuml_C_C * current_component;
    /* ASSIGN current_component = self.current_component */
    current_component = self->current_component;
    /* SELECT any types_pkg RELATED BY current_component->PE_PE[R8003]->EP_PKG[R8001] WHERE ( ( SELECTED.Name == types ) ) */
    types_pkg = 0;
    {    if ( 0 != current_component ) {
    masl2xtuml_PE_PE * PE_PE_R8003_contains;
    Escher_Iterator_s iPE_PE_R8003_contains;
    Escher_IteratorReset( &iPE_PE_R8003_contains, &current_component->PE_PE_R8003_contains );
    while ( ( 0 == types_pkg ) && ( 0 != ( PE_PE_R8003_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) ) {
    if ( ( 0 != PE_PE_R8003_contains ) && ( masl2xtuml_EP_PKG_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) )    {masl2xtuml_EP_PKG * selected = (masl2xtuml_EP_PKG *) PE_PE_R8003_contains->R8001_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "types" ) == 0 ) ) {
      types_pkg = selected;
    }}
}}}
    /* IF ( empty types_pkg ) */
    if ( ( 0 == types_pkg ) ) {
      /* ASSIGN types_pkg = self.Component_newPackage(c_c:current_component, pkg_name:types) */
      types_pkg = masl2xtuml_ooapopulation_op_Component_newPackage(self, current_component, "types");
    }
  }
  /* ASSIGN systypes_pkg = self.systypes_pkg */
  systypes_pkg = self->systypes_pkg;
  /* SELECT any sys_s_dt RELATED BY systypes_pkg->PE_PE[R8000]->S_DT[R8001] WHERE ( ( SELECTED.Name == PARAM.name ) ) */
  sys_s_dt = 0;
  {  if ( 0 != systypes_pkg ) {
  masl2xtuml_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &systypes_pkg->PE_PE_R8000_contains );
  while ( ( 0 == sys_s_dt ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {masl2xtuml_S_DT * selected = (masl2xtuml_S_DT *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, p_name ) == 0 ) ) {
    sys_s_dt = selected;
  }}
}}}
  /* SELECT any s_dt RELATED BY types_pkg->PE_PE[R8000]->S_DT[R8001] WHERE ( ( SELECTED.Name == PARAM.name ) ) */
  s_dt = 0;
  {  if ( 0 != types_pkg ) {
  masl2xtuml_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &types_pkg->PE_PE_R8000_contains );
  while ( ( 0 == s_dt ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {masl2xtuml_S_DT * selected = (masl2xtuml_S_DT *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, p_name ) == 0 ) ) {
    s_dt = selected;
  }}
}}}
  /* IF ( ( empty sys_s_dt and empty s_dt ) ) */
  if ( ( ( 0 == sys_s_dt ) && ( 0 == s_dt ) ) ) {
    /* self.Package_newDatatype( definition:PARAM.definition, ep_pkg:types_pkg, type_name:PARAM.name ) */
    masl2xtuml_ooapopulation_op_Package_newDatatype( self,  p_definition, types_pkg, p_name );
    /* SELECT any sys_s_dt RELATED BY systypes_pkg->PE_PE[R8000]->S_DT[R8001] WHERE ( ( SELECTED.Name == PARAM.name ) ) */
    sys_s_dt = 0;
    {    if ( 0 != systypes_pkg ) {
    masl2xtuml_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &systypes_pkg->PE_PE_R8000_contains );
    while ( ( 0 == sys_s_dt ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    {masl2xtuml_S_DT * selected = (masl2xtuml_S_DT *) PE_PE_R8000_contains->R8001_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, p_name ) == 0 ) ) {
      sys_s_dt = selected;
    }}
}}}
    /* IF ( empty sys_s_dt ) */
    if ( ( 0 == sys_s_dt ) ) {
      /* SELECT any s_dt RELATED BY types_pkg->PE_PE[R8000]->S_DT[R8001] WHERE ( ( SELECTED.Name == PARAM.name ) ) */
      s_dt = 0;
      {      if ( 0 != types_pkg ) {
      masl2xtuml_PE_PE * PE_PE_R8000_contains;
      Escher_Iterator_s iPE_PE_R8000_contains;
      Escher_IteratorReset( &iPE_PE_R8000_contains, &types_pkg->PE_PE_R8000_contains );
      while ( ( 0 == s_dt ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
      if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )      {masl2xtuml_S_DT * selected = (masl2xtuml_S_DT *) PE_PE_R8000_contains->R8001_subtype;
      if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, p_name ) == 0 ) ) {
        s_dt = selected;
      }}
}}}
      /* ASSIGN self.current_type = s_dt */
      self->current_type = s_dt;
    }
    else {
      /* ASSIGN self.current_type = sys_s_dt */
      self->current_type = sys_s_dt;
    }
  }
}

/*
 * instance operation:  Package_newDatatype
 */
void
masl2xtuml_ooapopulation_op_Package_newDatatype( masl2xtuml_ooapopulation * self, c_t * p_definition, masl2xtuml_EP_PKG * p_ep_pkg, c_t * p_type_name )
{
  masl2xtuml_EP_PKG * ep_pkg;masl2xtuml_S_UDT * udt;masl2xtuml_PE_PE * pe;masl2xtuml_S_DT * dt;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* CREATE OBJECT INSTANCE dt OF S_DT */
  dt = (masl2xtuml_S_DT *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_S_DT_CLASS_NUMBER );
  dt->DT_ID = (Escher_UniqueID_t) dt;
  /* CREATE OBJECT INSTANCE pe OF PE_PE */
  pe = (masl2xtuml_PE_PE *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_PE_PE_CLASS_NUMBER );
  pe->Element_ID = (Escher_UniqueID_t) pe;
  /* RELATE dt TO pe ACROSS R8001 */
  masl2xtuml_S_DT_R8001_Link( pe, dt );
  /* RELATE pe TO ep_pkg ACROSS R8000 */
  masl2xtuml_PE_PE_R8000_Link_contains( ep_pkg, pe );
  /* CREATE OBJECT INSTANCE udt OF S_UDT */
  udt = (masl2xtuml_S_UDT *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_S_UDT_CLASS_NUMBER );
  udt->DT_ID = (Escher_UniqueID_t) udt;
  /* RELATE dt TO udt ACROSS R17 */
  masl2xtuml_S_UDT_R17_Link( dt, udt );
  /* self.Datatype_initialize( name:PARAM.type_name, s_dt:dt ) */
  masl2xtuml_ooapopulation_op_Datatype_initialize( self,  p_type_name, dt );
  /* ASSIGN pe.type = DATATYPE */
  pe->type = masl2xtuml_ElementTypeConstants_DATATYPE_e;
  /* self.PackageableElement_initialize( pe_pe:pe ) */
  masl2xtuml_ooapopulation_op_PackageableElement_initialize( self,  pe );
  /* IF ( (  != PARAM.definition ) ) */
  if ( ( Escher_strcmp( "", p_definition ) != 0 ) ) {
    /* ASSIGN dt.Descrip = ( ( ( dt.Descrip + definition: ) + PARAM.definition ) + \n ) */
    dt->Descrip = Escher_strcpy( dt->Descrip, Escher_stradd( Escher_stradd( Escher_stradd( dt->Descrip, "definition:" ), p_definition ), "\n" ) );
  }
}

/*
 * instance operation:  Datatype_initialize
 */
void
masl2xtuml_ooapopulation_op_Datatype_initialize( masl2xtuml_ooapopulation * self, c_t * p_name, masl2xtuml_S_DT * p_s_dt )
{
  /* ASSIGN PARAM.s_dt.Name = PARAM.name */
  p_s_dt->Name = Escher_strcpy( p_s_dt->Name, p_name );
}

/*
 * instance operation:  transformDomainFunction
 */
void
masl2xtuml_ooapopulation_op_transformDomainFunction( masl2xtuml_ooapopulation * self, c_t * p_domain, c_t * p_name, c_t * p_terminator, c_t * p_visibility )
{
  masl2xtuml_C_C * current_component;masl2xtuml_S_SYNC * domFunc=0;masl2xtuml_EP_PKG * functions_pkg=0;
  /* ASSIGN current_component = self.current_component */
  current_component = self->current_component;
  /* IF ( empty current_component ) */
  if ( ( 0 == current_component ) ) {
    /* SELECT any current_component FROM INSTANCES OF C_C WHERE ( SELECTED.Name == PARAM.domain ) */
    current_component = 0;
    { masl2xtuml_C_C * selected;
      Escher_Iterator_s itercurrent_componentmasl2xtuml_C_C;
      Escher_IteratorReset( &itercurrent_componentmasl2xtuml_C_C, &pG_masl2xtuml_C_C_extent.active );
      while ( (selected = (masl2xtuml_C_C *) Escher_IteratorNext( &itercurrent_componentmasl2xtuml_C_C )) != 0 ) {
        if ( ( Escher_strcmp( selected->Name, p_domain ) == 0 ) ) {
          current_component = selected;
          break;
        }
      }
    }
  }
  /* SELECT any functions_pkg RELATED BY current_component->PE_PE[R8003]->EP_PKG[R8001] WHERE ( ( SELECTED.Name == functions ) ) */
  functions_pkg = 0;
  {  if ( 0 != current_component ) {
  masl2xtuml_PE_PE * PE_PE_R8003_contains;
  Escher_Iterator_s iPE_PE_R8003_contains;
  Escher_IteratorReset( &iPE_PE_R8003_contains, &current_component->PE_PE_R8003_contains );
  while ( ( 0 == functions_pkg ) && ( 0 != ( PE_PE_R8003_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8003_contains ) && ( masl2xtuml_EP_PKG_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) )  {masl2xtuml_EP_PKG * selected = (masl2xtuml_EP_PKG *) PE_PE_R8003_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "functions" ) == 0 ) ) {
    functions_pkg = selected;
  }}
}}}
  /* IF ( empty functions_pkg ) */
  if ( ( 0 == functions_pkg ) ) {
    /* ASSIGN functions_pkg = self.Component_newPackage(c_c:current_component, pkg_name:functions) */
    functions_pkg = masl2xtuml_ooapopulation_op_Component_newPackage(self, current_component, "functions");
  }
  /* SELECT any domFunc RELATED BY functions_pkg->PE_PE[R8000]->S_SYNC[R8001] WHERE ( ( SELECTED.Name == PARAM.name ) ) */
  domFunc = 0;
  {  if ( 0 != functions_pkg ) {
  masl2xtuml_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &functions_pkg->PE_PE_R8000_contains );
  while ( ( 0 == domFunc ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_S_SYNC_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {masl2xtuml_S_SYNC * selected = (masl2xtuml_S_SYNC *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, p_name ) == 0 ) ) {
    domFunc = selected;
  }}
}}}
  /* IF ( not_empty domFunc ) */
  if ( ( 0 != domFunc ) ) {
    /* ASSIGN self.current_domain_function = domFunc */
    self->current_domain_function = domFunc;
  }
  else {
    /* ASSIGN self.current_domain_function = self.Package_newFunction(ep_pkg:functions_pkg, function_name:PARAM.name) */
    self->current_domain_function = masl2xtuml_ooapopulation_op_Package_newFunction(self, functions_pkg, p_name);
    /* IF ( ( public == PARAM.visibility ) ) */
    if ( ( Escher_strcmp( "public", p_visibility ) == 0 ) ) {
      masl2xtuml_C_EP * c_ep;c_t * comp_if_name=0;masl2xtuml_EP_PKG * lib_pkg;masl2xtuml_C_I * comp_if=0;masl2xtuml_EP_PKG * shared_pkg=0;
      /* ASSIGN lib_pkg = self.lib_pkg */
      lib_pkg = self->lib_pkg;
      /* SELECT any shared_pkg RELATED BY lib_pkg->PE_PE[R8000]->EP_PKG[R8001] WHERE ( ( SELECTED.Name == Shared ) ) */
      shared_pkg = 0;
      {      if ( 0 != lib_pkg ) {
      masl2xtuml_PE_PE * PE_PE_R8000_contains;
      Escher_Iterator_s iPE_PE_R8000_contains;
      Escher_IteratorReset( &iPE_PE_R8000_contains, &lib_pkg->PE_PE_R8000_contains );
      while ( ( 0 == shared_pkg ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
      if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_EP_PKG_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )      {masl2xtuml_EP_PKG * selected = (masl2xtuml_EP_PKG *) PE_PE_R8000_contains->R8001_subtype;
      if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "Shared" ) == 0 ) ) {
        shared_pkg = selected;
      }}
}}}
      /* ASSIGN comp_if_name = current_component.Name */
      comp_if_name = Escher_strcpy( comp_if_name, current_component->Name );
      /* SELECT any comp_if RELATED BY shared_pkg->PE_PE[R8000]->C_I[R8001] WHERE ( ( SELECTED.Name == comp_if_name ) ) */
      comp_if = 0;
      {      if ( 0 != shared_pkg ) {
      masl2xtuml_PE_PE * PE_PE_R8000_contains;
      Escher_Iterator_s iPE_PE_R8000_contains;
      Escher_IteratorReset( &iPE_PE_R8000_contains, &shared_pkg->PE_PE_R8000_contains );
      while ( ( 0 == comp_if ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
      if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_C_I_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )      {masl2xtuml_C_I * selected = (masl2xtuml_C_I *) PE_PE_R8000_contains->R8001_subtype;
      if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, comp_if_name ) == 0 ) ) {
        comp_if = selected;
      }}
}}}
      /* IF ( empty comp_if ) */
      if ( ( 0 == comp_if ) ) {
        masl2xtuml_C_IR * new_ir;c_t * comp_port_name=0;
        /* ASSIGN comp_if = self.Package_newInterface(ep_pkg:shared_pkg, interface_name:comp_if_name) */
        comp_if = masl2xtuml_ooapopulation_op_Package_newInterface(self, shared_pkg, comp_if_name);
        /* ASSIGN comp_port_name = current_component.Name */
        comp_port_name = Escher_strcpy( comp_port_name, current_component->Name );
        /* ASSIGN new_ir = self.Component_initializeProvision(c_c:current_component, if_name:, port_name:comp_port_name) */
        new_ir = masl2xtuml_ooapopulation_op_Component_initializeProvision(self, current_component, "", comp_port_name);
        /* RELATE comp_if TO new_ir ACROSS R4012 */
        masl2xtuml_C_IR_R4012_Link_is_formal_definition( comp_if, new_ir );
      }
      /* ASSIGN c_ep = self.Interface_newExecutableProperty(asynchronous:FALSE, c_i:comp_if, ep_name:PARAM.name) */
      c_ep = masl2xtuml_ooapopulation_op_Interface_newExecutableProperty(self, FALSE, comp_if, p_name);
      /* ASSIGN c_ep.Direction = ClientServer */
      c_ep->Direction = masl2xtuml_IFDirectionType_ClientServer_e;
    }
  }
}

/*
 * instance operation:  transformObjectFunction
 */
void
masl2xtuml_ooapopulation_op_transformObjectFunction( masl2xtuml_ooapopulation * self, c_t * p_domain, c_t * p_instance, c_t * p_name, c_t * p_obj, c_t * p_relationship, c_t * p_visibility )
{
  masl2xtuml_O_OBJ * current_class;c_t * op_name=0;
  /* ASSIGN op_name = PARAM.name */
  op_name = Escher_strcpy( op_name, p_name );
  /* ASSIGN current_class = self.current_class */
  current_class = self->current_class;
  /* IF ( not_empty current_class ) */
  if ( ( 0 != current_class ) ) {
    /* ASSIGN self.current_class_op = self.ModelClass_newOperation(o_obj:self.current_class, op_name:op_name) */
    self->current_class_op = masl2xtuml_ooapopulation_op_ModelClass_newOperation(self, self->current_class, op_name);
    /* IF ( ( instance != PARAM.instance ) ) */
    if ( ( Escher_strcmp( "instance", p_instance ) != 0 ) ) {
      /* ASSIGN self.current_class_op.Instance_Based = Class */
      self->current_class_op->Instance_Based = masl2xtuml_Scope_Class_e;
    }
  }
  else {
    masl2xtuml_C_C * c_c=0;masl2xtuml_O_TFR * o_tfr=0;masl2xtuml_O_OBJ * o_obj=0;masl2xtuml_EP_PKG * ep_pkg=0;
    /* SELECT any c_c FROM INSTANCES OF C_C WHERE ( SELECTED.Name == PARAM.domain ) */
    c_c = 0;
    { masl2xtuml_C_C * selected;
      Escher_Iterator_s iterc_cmasl2xtuml_C_C;
      Escher_IteratorReset( &iterc_cmasl2xtuml_C_C, &pG_masl2xtuml_C_C_extent.active );
      while ( (selected = (masl2xtuml_C_C *) Escher_IteratorNext( &iterc_cmasl2xtuml_C_C )) != 0 ) {
        if ( ( Escher_strcmp( selected->Name, p_domain ) == 0 ) ) {
          c_c = selected;
          break;
        }
      }
    }
    /* SELECT any ep_pkg RELATED BY c_c->PE_PE[R8003]->EP_PKG[R8001] WHERE ( ( SELECTED.Name == PARAM.domain ) ) */
    ep_pkg = 0;
    {    if ( 0 != c_c ) {
    masl2xtuml_PE_PE * PE_PE_R8003_contains;
    Escher_Iterator_s iPE_PE_R8003_contains;
    Escher_IteratorReset( &iPE_PE_R8003_contains, &c_c->PE_PE_R8003_contains );
    while ( ( 0 == ep_pkg ) && ( 0 != ( PE_PE_R8003_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) ) {
    if ( ( 0 != PE_PE_R8003_contains ) && ( masl2xtuml_EP_PKG_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) )    {masl2xtuml_EP_PKG * selected = (masl2xtuml_EP_PKG *) PE_PE_R8003_contains->R8001_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, p_domain ) == 0 ) ) {
      ep_pkg = selected;
    }}
}}}
    /* SELECT any o_obj RELATED BY ep_pkg->PE_PE[R8000]->O_OBJ[R8001] WHERE ( ( SELECTED.Name == PARAM.obj ) ) */
    o_obj = 0;
    {    if ( 0 != ep_pkg ) {
    masl2xtuml_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
    while ( ( 0 == o_obj ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_O_OBJ_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    {masl2xtuml_O_OBJ * selected = (masl2xtuml_O_OBJ *) PE_PE_R8000_contains->R8001_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, p_obj ) == 0 ) ) {
      o_obj = selected;
    }}
}}}
    /* SELECT any o_tfr RELATED BY o_obj->O_TFR[R115] WHERE ( ( SELECTED.Name == PARAM.name ) ) */
    o_tfr = 0;
    if ( 0 != o_obj ) {
      masl2xtuml_O_TFR * selected;
      Escher_Iterator_s iO_TFR_R115_may_contain;
      Escher_IteratorReset( &iO_TFR_R115_may_contain, &o_obj->O_TFR_R115_may_contain );
      while ( 0 != ( selected = (masl2xtuml_O_TFR *) Escher_IteratorNext( &iO_TFR_R115_may_contain ) ) ) {
        if ( ( Escher_strcmp( selected->Name, p_name ) == 0 ) ) {
          o_tfr = selected;
          break;
    }}}
    /* ASSIGN self.current_class_op = o_tfr */
    self->current_class_op = o_tfr;
  }
}

/*
 * instance operation:  ModelClass_newOperation
 */
masl2xtuml_O_TFR *
masl2xtuml_ooapopulation_op_ModelClass_newOperation( masl2xtuml_ooapopulation * self, masl2xtuml_O_OBJ * p_o_obj, c_t * p_op_name )
{
  masl2xtuml_O_OBJ * o_obj;masl2xtuml_O_TFR * operation;
  /* ASSIGN o_obj = PARAM.o_obj */
  o_obj = p_o_obj;
  /* CREATE OBJECT INSTANCE operation OF O_TFR */
  operation = (masl2xtuml_O_TFR *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_O_TFR_CLASS_NUMBER );
  operation->Tfr_ID = (Escher_UniqueID_t) operation;
  /* RELATE o_obj TO operation ACROSS R115 */
  masl2xtuml_O_TFR_R115_Link_may_contain( o_obj, operation );
  /* self.Operation_initialize( name:PARAM.op_name, o_tfr:operation ) */
  masl2xtuml_ooapopulation_op_Operation_initialize( self,  p_op_name, operation );
  /* RETURN operation */
  {masl2xtuml_O_TFR * xtumlOALrv = operation;
  return xtumlOALrv;}
}

/*
 * instance operation:  Operation_initialize
 */
void
masl2xtuml_ooapopulation_op_Operation_initialize( masl2xtuml_ooapopulation * self, c_t * p_name, masl2xtuml_O_TFR * p_o_tfr )
{
  masl2xtuml_EP_PKG * systypes_pkg;masl2xtuml_O_TFR * o_tfr;masl2xtuml_O_OBJ * clazz=0;masl2xtuml_S_DT * def_dt=0;
  /* ASSIGN o_tfr = PARAM.o_tfr */
  o_tfr = p_o_tfr;
  /* SELECT one clazz RELATED BY o_tfr->O_OBJ[R115] */
  clazz = ( 0 != o_tfr ) ? o_tfr->O_OBJ_R115_is_associated_with : 0;
  /* self.ModelClass_addOperationToOrdering( newTfr:o_tfr, o_obj:clazz ) */
  masl2xtuml_ooapopulation_op_ModelClass_addOperationToOrdering( self,  o_tfr, clazz );
  /* ASSIGN systypes_pkg = self.systypes_pkg */
  systypes_pkg = self->systypes_pkg;
  /* SELECT any def_dt RELATED BY systypes_pkg->PE_PE[R8000]->S_DT[R8001] WHERE ( ( SELECTED.Name == void ) ) */
  def_dt = 0;
  {  if ( 0 != systypes_pkg ) {
  masl2xtuml_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &systypes_pkg->PE_PE_R8000_contains );
  while ( ( 0 == def_dt ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {masl2xtuml_S_DT * selected = (masl2xtuml_S_DT *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "void" ) == 0 ) ) {
    def_dt = selected;
  }}
}}}
  /* RELATE o_tfr TO def_dt ACROSS R116 */
  masl2xtuml_O_TFR_R116_Link_defines_the_type_of_return_code( def_dt, o_tfr );
  /* ASSIGN o_tfr.Name = PARAM.name */
  o_tfr->Name = Escher_strcpy( o_tfr->Name, p_name );
  /* ASSIGN o_tfr.Instance_Based = Instance */
  o_tfr->Instance_Based = masl2xtuml_Scope_Instance_e;
  /* ASSIGN o_tfr.Suc_Pars = parseInitial */
  o_tfr->Suc_Pars = masl2xtuml_ParseStatus_parseInitial_e;
}

/*
 * instance operation:  ModelClass_addOperationToOrdering
 */
void
masl2xtuml_ooapopulation_op_ModelClass_addOperationToOrdering( masl2xtuml_ooapopulation * self, masl2xtuml_O_TFR * p_newTfr, masl2xtuml_O_OBJ * p_o_obj )
{
  masl2xtuml_O_TFR * operation;masl2xtuml_O_OBJ * o_obj;
  /* ASSIGN o_obj = PARAM.o_obj */
  o_obj = p_o_obj;
  /* ASSIGN operation = PARAM.newTfr */
  operation = p_newTfr;
  /* IF ( not_empty operation ) */
  if ( ( 0 != operation ) ) {
    masl2xtuml_O_TFR * peer=0;Escher_ObjectSet_s peers_space={0}; Escher_ObjectSet_s * peers = &peers_space;
    /* SELECT many peers RELATED BY o_obj->O_TFR[R115] */
    Escher_ClearSet( peers );
    if ( 0 != o_obj ) {
      Escher_CopySet( peers, &o_obj->O_TFR_R115_may_contain );
    }
    /* FOR EACH peer IN peers */
    { Escher_Iterator_s iterpeer;
    masl2xtuml_O_TFR * iipeer;
    Escher_IteratorReset( &iterpeer, peers );
    while ( (iipeer = (masl2xtuml_O_TFR *)Escher_IteratorNext( &iterpeer )) != 0 ) {
      peer = iipeer; {
      /* IF ( ( peer != operation ) ) */
      if ( ( peer != operation ) ) {
        masl2xtuml_O_TFR * predecessor=0;
        /* SELECT one predecessor RELATED BY peer->O_TFR[R125.precedes] */
        predecessor = ( 0 != peer ) ? peer->O_TFR_R125_precedes : 0;
        /* IF ( empty predecessor ) */
        if ( ( 0 == predecessor ) ) {
          /* RELATE operation TO peer ACROSS R125 */
          masl2xtuml_O_TFR_R125_Link_succeeds( operation, peer );
        }
      }
    }}}
    Escher_ClearSet( peers ); 
  }
}

/*
 * instance operation:  Package_newFunction
 */
masl2xtuml_S_SYNC *
masl2xtuml_ooapopulation_op_Package_newFunction( masl2xtuml_ooapopulation * self, masl2xtuml_EP_PKG * p_ep_pkg, c_t * p_function_name )
{
  masl2xtuml_EP_PKG * ep_pkg;masl2xtuml_PE_PE * pe;masl2xtuml_S_SYNC * fn;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* CREATE OBJECT INSTANCE fn OF S_SYNC */
  fn = (masl2xtuml_S_SYNC *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_S_SYNC_CLASS_NUMBER );
  fn->Sync_ID = (Escher_UniqueID_t) fn;
  /* CREATE OBJECT INSTANCE pe OF PE_PE */
  pe = (masl2xtuml_PE_PE *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_PE_PE_CLASS_NUMBER );
  pe->Element_ID = (Escher_UniqueID_t) pe;
  /* RELATE fn TO pe ACROSS R8001 */
  masl2xtuml_S_SYNC_R8001_Link( pe, fn );
  /* RELATE pe TO ep_pkg ACROSS R8000 */
  masl2xtuml_PE_PE_R8000_Link_contains( ep_pkg, pe );
  /* ASSIGN pe.type = FUNCTION */
  pe->type = masl2xtuml_ElementTypeConstants_FUNCTION_e;
  /* self.PackageableElement_initialize( pe_pe:pe ) */
  masl2xtuml_ooapopulation_op_PackageableElement_initialize( self,  pe );
  /* self.Function_initialize( name:PARAM.function_name, s_sync:fn ) */
  masl2xtuml_ooapopulation_op_Function_initialize( self,  p_function_name, fn );
  /* RETURN fn */
  {masl2xtuml_S_SYNC * xtumlOALrv = fn;
  return xtumlOALrv;}
}

/*
 * instance operation:  Function_initialize
 */
void
masl2xtuml_ooapopulation_op_Function_initialize( masl2xtuml_ooapopulation * self, c_t * p_name, masl2xtuml_S_SYNC * p_s_sync )
{
  masl2xtuml_EP_PKG * systypes_pkg;masl2xtuml_S_SYNC * s_sync;masl2xtuml_C_C * component=0;masl2xtuml_EP_PKG * package=0;masl2xtuml_PE_PE * packageableElem=0;masl2xtuml_S_DT * def_dt=0;
  /* ASSIGN s_sync = PARAM.s_sync */
  s_sync = p_s_sync;
  /* SELECT one packageableElem RELATED BY s_sync->PE_PE[R8001] */
  packageableElem = ( 0 != s_sync ) ? s_sync->PE_PE_R8001 : 0;
  /* SELECT one package RELATED BY packageableElem->EP_PKG[R8000] */
  package = ( 0 != packageableElem ) ? packageableElem->EP_PKG_R8000_contained_by : 0;
  /* SELECT one component RELATED BY packageableElem->C_C[R8003] */
  component = ( 0 != packageableElem ) ? packageableElem->C_C_R8003_contained_in : 0;
  /* ASSIGN systypes_pkg = self.systypes_pkg */
  systypes_pkg = self->systypes_pkg;
  /* SELECT any def_dt RELATED BY systypes_pkg->PE_PE[R8000]->S_DT[R8001] WHERE ( ( SELECTED.Name == void ) ) */
  def_dt = 0;
  {  if ( 0 != systypes_pkg ) {
  masl2xtuml_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &systypes_pkg->PE_PE_R8000_contains );
  while ( ( 0 == def_dt ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {masl2xtuml_S_DT * selected = (masl2xtuml_S_DT *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "void" ) == 0 ) ) {
    def_dt = selected;
  }}
}}}
  /* RELATE s_sync TO def_dt ACROSS R25 */
  masl2xtuml_S_SYNC_R25_Link_defines_return_type( def_dt, s_sync );
  /* ASSIGN s_sync.Name = PARAM.name */
  s_sync->Name = Escher_strcpy( s_sync->Name, p_name );
  /* ASSIGN s_sync.Suc_Pars = parseInitial */
  s_sync->Suc_Pars = masl2xtuml_ParseStatus_parseInitial_e;
}

/*
 * instance operation:  Package_newPackage
 */
masl2xtuml_EP_PKG *
masl2xtuml_ooapopulation_op_Package_newPackage( masl2xtuml_ooapopulation * self, masl2xtuml_EP_PKG * p_ep_pkg, c_t * p_package_name )
{
  masl2xtuml_EP_PKG * ep_pkg;masl2xtuml_PE_PE * pe;masl2xtuml_EP_PKG * package;masl2xtuml_S_SYS * system=0;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* CREATE OBJECT INSTANCE package OF EP_PKG */
  package = (masl2xtuml_EP_PKG *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_EP_PKG_CLASS_NUMBER );
  package->Package_ID = (Escher_UniqueID_t) package;
  /* CREATE OBJECT INSTANCE pe OF PE_PE */
  pe = (masl2xtuml_PE_PE *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_PE_PE_CLASS_NUMBER );
  pe->Element_ID = (Escher_UniqueID_t) pe;
  /* RELATE package TO pe ACROSS R8001 */
  masl2xtuml_EP_PKG_R8001_Link( pe, package );
  /* SELECT one system RELATED BY ep_pkg->S_SYS[R1405] */
  system = ( 0 != ep_pkg ) ? ep_pkg->S_SYS_R1405 : 0;
  /* RELATE package TO system ACROSS R1405 */
  masl2xtuml_EP_PKG_R1405_Link_contains( system, package );
  /* RELATE ep_pkg TO pe ACROSS R8000 */
  masl2xtuml_PE_PE_R8000_Link_contains( ep_pkg, pe );
  /* ASSIGN package.Name = PARAM.package_name */
  package->Name = Escher_strcpy( package->Name, p_package_name );
  /* ASSIGN pe.type = PACKAGE */
  pe->type = masl2xtuml_ElementTypeConstants_PACKAGE_e;
  /* self.PackageableElement_initialize( pe_pe:pe ) */
  masl2xtuml_ooapopulation_op_PackageableElement_initialize( self,  pe );
  /* RETURN package */
  {masl2xtuml_EP_PKG * xtumlOALrv = package;
  return xtumlOALrv;}
}

/*
 * instance operation:  Package_newInterface
 */
masl2xtuml_C_I *
masl2xtuml_ooapopulation_op_Package_newInterface( masl2xtuml_ooapopulation * self, masl2xtuml_EP_PKG * p_ep_pkg, c_t * p_interface_name )
{
  masl2xtuml_EP_PKG * ep_pkg;masl2xtuml_PE_PE * pe;masl2xtuml_C_I * interface;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* CREATE OBJECT INSTANCE interface OF C_I */
  interface = (masl2xtuml_C_I *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_C_I_CLASS_NUMBER );
  interface->Id = (Escher_UniqueID_t) interface;
  /* CREATE OBJECT INSTANCE pe OF PE_PE */
  pe = (masl2xtuml_PE_PE *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_PE_PE_CLASS_NUMBER );
  pe->Element_ID = (Escher_UniqueID_t) pe;
  /* RELATE interface TO pe ACROSS R8001 */
  masl2xtuml_C_I_R8001_Link( pe, interface );
  /* RELATE pe TO ep_pkg ACROSS R8000 */
  masl2xtuml_PE_PE_R8000_Link_contains( ep_pkg, pe );
  /* ASSIGN pe.type = INTERFACE */
  pe->type = masl2xtuml_ElementTypeConstants_INTERFACE_e;
  /* self.PackageableElement_initialize( pe_pe:pe ) */
  masl2xtuml_ooapopulation_op_PackageableElement_initialize( self,  pe );
  /* ASSIGN interface.Name = PARAM.interface_name */
  interface->Name = Escher_strcpy( interface->Name, p_interface_name );
  /* RETURN interface */
  {masl2xtuml_C_I * xtumlOALrv = interface;
  return xtumlOALrv;}
}

/*
 * instance operation:  Component_initializeProvision
 */
masl2xtuml_C_IR *
masl2xtuml_ooapopulation_op_Component_initializeProvision( masl2xtuml_ooapopulation * self, masl2xtuml_C_C * p_c_c, c_t * p_if_name, c_t * p_port_name )
{
  masl2xtuml_C_C * c_c;masl2xtuml_C_PO * port;masl2xtuml_C_IR * interfaceRef;masl2xtuml_C_P * provision;
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* CREATE OBJECT INSTANCE provision OF C_P */
  provision = (masl2xtuml_C_P *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_C_P_CLASS_NUMBER );
  provision->Provision_Id = (Escher_UniqueID_t) provision;
  /* CREATE OBJECT INSTANCE interfaceRef OF C_IR */
  interfaceRef = (masl2xtuml_C_IR *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_C_IR_CLASS_NUMBER );
  interfaceRef->Id = (Escher_UniqueID_t) interfaceRef;
  /* CREATE OBJECT INSTANCE port OF C_PO */
  port = (masl2xtuml_C_PO *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_C_PO_CLASS_NUMBER );
  port->Id = (Escher_UniqueID_t) port;
  /* RELATE provision TO interfaceRef ACROSS R4009 */
  masl2xtuml_C_P_R4009_Link( interfaceRef, provision );
  /* RELATE interfaceRef TO port ACROSS R4016 */
  masl2xtuml_C_IR_R4016_Link_exposes( port, interfaceRef );
  /* RELATE port TO c_c ACROSS R4010 */
  masl2xtuml_C_PO_R4010_Link_communicates_through( c_c, port );
  /* IF ( (  == PARAM.if_name ) ) */
  if ( ( Escher_strcmp( "", p_if_name ) == 0 ) ) {
    /* ASSIGN provision.InformalName = Unnamed_Interface */
    provision->InformalName = Escher_strcpy( provision->InformalName, "Unnamed_Interface" );
  }
  else {
    /* ASSIGN provision.InformalName = PARAM.if_name */
    provision->InformalName = Escher_strcpy( provision->InformalName, p_if_name );
  }
  /* self.Port_initialize( c_po:port, name:PARAM.port_name ) */
  masl2xtuml_ooapopulation_op_Port_initialize( self,  port, p_port_name );
  /* RETURN interfaceRef */
  {masl2xtuml_C_IR * xtumlOALrv = interfaceRef;
  return xtumlOALrv;}
}

/*
 * instance operation:  Port_initialize
 */
void
masl2xtuml_ooapopulation_op_Port_initialize( masl2xtuml_ooapopulation * self, masl2xtuml_C_PO * p_c_po, c_t * p_name )
{
  masl2xtuml_C_PO * c_po;
  /* ASSIGN c_po = PARAM.c_po */
  c_po = p_c_po;
  /* ASSIGN c_po.DoNotShowPortOnCanvas = FALSE */
  c_po->DoNotShowPortOnCanvas = FALSE;
  /* ASSIGN c_po.Name = PARAM.name */
  c_po->Name = Escher_strcpy( c_po->Name, p_name );
}

/*
 * instance operation:  InterfaceReference_formalize
 */
void
masl2xtuml_ooapopulation_op_InterfaceReference_formalize( masl2xtuml_ooapopulation * self, masl2xtuml_C_I * p_c_i, masl2xtuml_C_IR * p_c_ir )
{
  masl2xtuml_C_IR * c_ir;masl2xtuml_C_I * c_i;
  /* ASSIGN c_i = PARAM.c_i */
  c_i = p_c_i;
  /* ASSIGN c_ir = PARAM.c_ir */
  c_ir = p_c_ir;
  /* self.InterfaceReference_createSignalsAndOperations( c_i:c_i, c_ir:c_ir ) */
  masl2xtuml_ooapopulation_op_InterfaceReference_createSignalsAndOperations( self,  c_i, c_ir );
  /* RELATE c_i TO c_ir ACROSS R4012 */
  masl2xtuml_C_IR_R4012_Link_is_formal_definition( c_i, c_ir );
}

/*
 * instance operation:  InterfaceReference_createSignalsAndOperations
 */
void
masl2xtuml_ooapopulation_op_InterfaceReference_createSignalsAndOperations( masl2xtuml_ooapopulation * self, masl2xtuml_C_I * p_c_i, masl2xtuml_C_IR * p_c_ir )
{
  masl2xtuml_C_IR * c_ir;masl2xtuml_C_I * interface;
  /* ASSIGN interface = PARAM.c_i */
  interface = p_c_i;
  /* ASSIGN c_ir = PARAM.c_ir */
  c_ir = p_c_ir;
  /* IF ( not_empty interface ) */
  if ( ( 0 != interface ) ) {
    masl2xtuml_C_R * requirement=0;Escher_ObjectSet_s signals_space={0}; Escher_ObjectSet_s * signals = &signals_space;Escher_ObjectSet_s operations_space={0}; Escher_ObjectSet_s * operations = &operations_space;
    /* SELECT many operations RELATED BY interface->C_EP[R4003]->C_IO[R4004] */
    Escher_ClearSet( operations );
    {    if ( 0 != interface ) {
    masl2xtuml_C_EP * C_EP_R4003_is_defined_by;
    Escher_Iterator_s iC_EP_R4003_is_defined_by;
    Escher_IteratorReset( &iC_EP_R4003_is_defined_by, &interface->C_EP_R4003_is_defined_by );
    while ( 0 != ( C_EP_R4003_is_defined_by = (masl2xtuml_C_EP *) Escher_IteratorNext( &iC_EP_R4003_is_defined_by ) ) ) {
    if ( ( 0 != C_EP_R4003_is_defined_by ) && ( masl2xtuml_C_IO_CLASS_NUMBER == C_EP_R4003_is_defined_by->R4004_object_id ) )    {masl2xtuml_C_IO * R4004_subtype = C_EP_R4003_is_defined_by->R4004_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) operations, R4004_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) operations, R4004_subtype );
    }}}}}
    /* SELECT many signals RELATED BY interface->C_EP[R4003]->C_AS[R4004] */
    Escher_ClearSet( signals );
    {    if ( 0 != interface ) {
    masl2xtuml_C_EP * C_EP_R4003_is_defined_by;
    Escher_Iterator_s iC_EP_R4003_is_defined_by;
    Escher_IteratorReset( &iC_EP_R4003_is_defined_by, &interface->C_EP_R4003_is_defined_by );
    while ( 0 != ( C_EP_R4003_is_defined_by = (masl2xtuml_C_EP *) Escher_IteratorNext( &iC_EP_R4003_is_defined_by ) ) ) {
    if ( ( 0 != C_EP_R4003_is_defined_by ) && ( masl2xtuml_C_AS_CLASS_NUMBER == C_EP_R4003_is_defined_by->R4004_object_id ) )    {masl2xtuml_C_AS * R4004_subtype = C_EP_R4003_is_defined_by->R4004_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) signals, R4004_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) signals, R4004_subtype );
    }}}}}
    /* SELECT one requirement RELATED BY c_ir->C_R[R4009] */
    requirement = 0;
    if ( ( 0 != c_ir ) && ( masl2xtuml_C_R_CLASS_NUMBER == c_ir->R4009_object_id ) )    requirement = ( 0 != c_ir ) ? (masl2xtuml_C_R *) c_ir->R4009_subtype : 0;
    /* IF ( not_empty requirement ) */
    if ( ( 0 != requirement ) ) {
      masl2xtuml_C_IO * operation=0;masl2xtuml_C_AS * signal=0;
      /* FOR EACH signal IN signals */
      { Escher_Iterator_s itersignal;
      masl2xtuml_C_AS * iisignal;
      Escher_IteratorReset( &itersignal, signals );
      while ( (iisignal = (masl2xtuml_C_AS *)Escher_IteratorNext( &itersignal )) != 0 ) {
        signal = iisignal; {
        masl2xtuml_SPR_RS * req_signal;masl2xtuml_SPR_REP * req_ep;masl2xtuml_C_EP * ep=0;
        /* SELECT one ep RELATED BY signal->C_EP[R4004] */
        ep = ( 0 != signal ) ? signal->C_EP_R4004 : 0;
        /* CREATE OBJECT INSTANCE req_ep OF SPR_REP */
        req_ep = (masl2xtuml_SPR_REP *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SPR_REP_CLASS_NUMBER );
        req_ep->Id = (Escher_UniqueID_t) req_ep;
        /* CREATE OBJECT INSTANCE req_signal OF SPR_RS */
        req_signal = (masl2xtuml_SPR_RS *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SPR_RS_CLASS_NUMBER );
        req_signal->Id = (Escher_UniqueID_t) req_signal;
        /* ASSIGN req_signal.Suc_Pars = parseInitial */
        req_signal->Suc_Pars = masl2xtuml_ParseStatus_parseInitial_e;
        /* RELATE requirement TO ep ACROSS R4500 USING req_ep */
        masl2xtuml_SPR_REP_R4500_Link( ep, requirement, req_ep );
        /* RELATE req_signal TO req_ep ACROSS R4502 */
        masl2xtuml_SPR_RS_R4502_Link( req_ep, req_signal );
      }}}
      /* FOR EACH operation IN operations */
      { Escher_Iterator_s iteroperation;
      masl2xtuml_C_IO * iioperation;
      Escher_IteratorReset( &iteroperation, operations );
      while ( (iioperation = (masl2xtuml_C_IO *)Escher_IteratorNext( &iteroperation )) != 0 ) {
        operation = iioperation; {
        masl2xtuml_SPR_RO * req_operation;masl2xtuml_SPR_REP * req_ep;masl2xtuml_C_EP * ep=0;
        /* SELECT one ep RELATED BY operation->C_EP[R4004] */
        ep = ( 0 != operation ) ? operation->C_EP_R4004 : 0;
        /* CREATE OBJECT INSTANCE req_ep OF SPR_REP */
        req_ep = (masl2xtuml_SPR_REP *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SPR_REP_CLASS_NUMBER );
        req_ep->Id = (Escher_UniqueID_t) req_ep;
        /* CREATE OBJECT INSTANCE req_operation OF SPR_RO */
        req_operation = (masl2xtuml_SPR_RO *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SPR_RO_CLASS_NUMBER );
        req_operation->Id = (Escher_UniqueID_t) req_operation;
        /* ASSIGN req_operation.Suc_Pars = parseInitial */
        req_operation->Suc_Pars = masl2xtuml_ParseStatus_parseInitial_e;
        /* RELATE requirement TO ep ACROSS R4500 USING req_ep */
        masl2xtuml_SPR_REP_R4500_Link( ep, requirement, req_ep );
        /* RELATE req_operation TO req_ep ACROSS R4502 */
        masl2xtuml_SPR_RO_R4502_Link( req_ep, req_operation );
      }}}
    }
    else {
      masl2xtuml_C_IO * operation=0;masl2xtuml_C_AS * signal=0;masl2xtuml_C_P * provision=0;
      /* SELECT one provision RELATED BY c_ir->C_P[R4009] */
      provision = 0;
      if ( ( 0 != c_ir ) && ( masl2xtuml_C_P_CLASS_NUMBER == c_ir->R4009_object_id ) )      provision = ( 0 != c_ir ) ? (masl2xtuml_C_P *) c_ir->R4009_subtype : 0;
      /* FOR EACH signal IN signals */
      { Escher_Iterator_s itersignal;
      masl2xtuml_C_AS * iisignal;
      Escher_IteratorReset( &itersignal, signals );
      while ( (iisignal = (masl2xtuml_C_AS *)Escher_IteratorNext( &itersignal )) != 0 ) {
        signal = iisignal; {
        masl2xtuml_SPR_PS * pro_signal;masl2xtuml_SPR_PEP * pro_ep;masl2xtuml_C_EP * ep=0;
        /* SELECT one ep RELATED BY signal->C_EP[R4004] */
        ep = ( 0 != signal ) ? signal->C_EP_R4004 : 0;
        /* CREATE OBJECT INSTANCE pro_ep OF SPR_PEP */
        pro_ep = (masl2xtuml_SPR_PEP *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SPR_PEP_CLASS_NUMBER );
        pro_ep->Id = (Escher_UniqueID_t) pro_ep;
        /* CREATE OBJECT INSTANCE pro_signal OF SPR_PS */
        pro_signal = (masl2xtuml_SPR_PS *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SPR_PS_CLASS_NUMBER );
        pro_signal->Id = (Escher_UniqueID_t) pro_signal;
        /* ASSIGN pro_signal.Suc_Pars = parseInitial */
        pro_signal->Suc_Pars = masl2xtuml_ParseStatus_parseInitial_e;
        /* RELATE provision TO ep ACROSS R4501 USING pro_ep */
        masl2xtuml_SPR_PEP_R4501_Link( ep, provision, pro_ep );
        /* RELATE pro_signal TO pro_ep ACROSS R4503 */
        masl2xtuml_SPR_PS_R4503_Link( pro_ep, pro_signal );
      }}}
      /* FOR EACH operation IN operations */
      { Escher_Iterator_s iteroperation;
      masl2xtuml_C_IO * iioperation;
      Escher_IteratorReset( &iteroperation, operations );
      while ( (iioperation = (masl2xtuml_C_IO *)Escher_IteratorNext( &iteroperation )) != 0 ) {
        operation = iioperation; {
        masl2xtuml_SPR_PO * pro_operation;masl2xtuml_SPR_PEP * pro_ep;masl2xtuml_C_EP * ep=0;
        /* SELECT one ep RELATED BY operation->C_EP[R4004] */
        ep = ( 0 != operation ) ? operation->C_EP_R4004 : 0;
        /* CREATE OBJECT INSTANCE pro_ep OF SPR_PEP */
        pro_ep = (masl2xtuml_SPR_PEP *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SPR_PEP_CLASS_NUMBER );
        pro_ep->Id = (Escher_UniqueID_t) pro_ep;
        /* CREATE OBJECT INSTANCE pro_operation OF SPR_PO */
        pro_operation = (masl2xtuml_SPR_PO *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SPR_PO_CLASS_NUMBER );
        pro_operation->Id = (Escher_UniqueID_t) pro_operation;
        /* ASSIGN pro_operation.Suc_Pars = parseInitial */
        pro_operation->Suc_Pars = masl2xtuml_ParseStatus_parseInitial_e;
        /* RELATE provision TO ep ACROSS R4501 USING pro_ep */
        masl2xtuml_SPR_PEP_R4501_Link( ep, provision, pro_ep );
        /* RELATE pro_operation TO pro_ep ACROSS R4503 */
        masl2xtuml_SPR_PO_R4503_Link( pro_ep, pro_operation );
      }}}
    }
    Escher_ClearSet( signals ); Escher_ClearSet( operations ); 
  }
}

/*
 * instance operation:  InterfaceOperation_initialize
 */
void
masl2xtuml_ooapopulation_op_InterfaceOperation_initialize( masl2xtuml_ooapopulation * self, masl2xtuml_C_IO * p_c_io, c_t * p_name )
{
  masl2xtuml_EP_PKG * systypes_pkg;masl2xtuml_C_IO * c_io;masl2xtuml_C_I * interface=0;masl2xtuml_C_C * component=0;masl2xtuml_EP_PKG * package=0;masl2xtuml_PE_PE * packageableElem=0;masl2xtuml_S_DT * def_dt=0;
  /* ASSIGN c_io = PARAM.c_io */
  c_io = p_c_io;
  /* SELECT one packageableElem RELATED BY c_io->C_EP[R4004]->C_I[R4003]->PE_PE[R8001] */
  packageableElem = 0;
  {  if ( 0 != c_io ) {
  masl2xtuml_C_EP * C_EP_R4004 = c_io->C_EP_R4004;
  if ( 0 != C_EP_R4004 ) {
  masl2xtuml_C_I * C_I_R4003_provides_signature_of = C_EP_R4004->C_I_R4003_provides_signature_of;
  if ( 0 != C_I_R4003_provides_signature_of ) {
  packageableElem = C_I_R4003_provides_signature_of->PE_PE_R8001;
}}}}
  /* SELECT one package RELATED BY packageableElem->EP_PKG[R8000] */
  package = ( 0 != packageableElem ) ? packageableElem->EP_PKG_R8000_contained_by : 0;
  /* SELECT one component RELATED BY packageableElem->C_C[R8003] */
  component = ( 0 != packageableElem ) ? packageableElem->C_C_R8003_contained_in : 0;
  /* SELECT one interface RELATED BY c_io->C_EP[R4004]->C_I[R4003] */
  interface = 0;
  {  if ( 0 != c_io ) {
  masl2xtuml_C_EP * C_EP_R4004 = c_io->C_EP_R4004;
  if ( 0 != C_EP_R4004 ) {
  interface = C_EP_R4004->C_I_R4003_provides_signature_of;
}}}
  /* self.Interface_addInterfaceOperationToOrder( c_i:interface, c_io:c_io ) */
  masl2xtuml_ooapopulation_op_Interface_addInterfaceOperationToOrder( self,  interface, c_io );
  /* ASSIGN systypes_pkg = self.systypes_pkg */
  systypes_pkg = self->systypes_pkg;
  /* SELECT any def_dt RELATED BY systypes_pkg->PE_PE[R8000]->S_DT[R8001] WHERE ( ( SELECTED.Name == void ) ) */
  def_dt = 0;
  {  if ( 0 != systypes_pkg ) {
  masl2xtuml_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &systypes_pkg->PE_PE_R8000_contains );
  while ( ( 0 == def_dt ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {masl2xtuml_S_DT * selected = (masl2xtuml_S_DT *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "void" ) == 0 ) ) {
    def_dt = selected;
  }}
}}}
  /* RELATE c_io TO def_dt ACROSS R4008 */
  masl2xtuml_C_IO_R4008_Link_defines_return_type( def_dt, c_io );
  /* ASSIGN c_io.Name = PARAM.name */
  c_io->Name = Escher_strcpy( c_io->Name, p_name );
  /* ASSIGN c_io.Direction = ClientServer */
  c_io->Direction = masl2xtuml_IFDirectionType_ClientServer_e;
}

/*
 * instance operation:  Interface_newExecutableProperty
 */
masl2xtuml_C_EP *
masl2xtuml_ooapopulation_op_Interface_newExecutableProperty( masl2xtuml_ooapopulation * self, const bool p_asynchronous, masl2xtuml_C_I * p_c_i, c_t * p_ep_name )
{
  masl2xtuml_C_I * c_i;masl2xtuml_C_EP * signal=0;
  /* ASSIGN c_i = PARAM.c_i */
  c_i = p_c_i;
  /* SELECT any signal RELATED BY c_i->C_EP[R4003] WHERE ( ( SELECTED.Name == PARAM.ep_name ) ) */
  signal = 0;
  if ( 0 != c_i ) {
    masl2xtuml_C_EP * selected;
    Escher_Iterator_s iC_EP_R4003_is_defined_by;
    Escher_IteratorReset( &iC_EP_R4003_is_defined_by, &c_i->C_EP_R4003_is_defined_by );
    while ( 0 != ( selected = (masl2xtuml_C_EP *) Escher_IteratorNext( &iC_EP_R4003_is_defined_by ) ) ) {
      if ( ( Escher_strcmp( selected->Name, p_ep_name ) == 0 ) ) {
        signal = selected;
        break;
  }}}
  /* IF ( empty signal ) */
  if ( ( 0 == signal ) ) {
    Escher_ObjectSet_s references_space={0}; Escher_ObjectSet_s * references = &references_space;
    /* CREATE OBJECT INSTANCE signal OF C_EP */
    signal = (masl2xtuml_C_EP *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_C_EP_CLASS_NUMBER );
    signal->Id = (Escher_UniqueID_t) signal;
    /* ASSIGN signal.Name = PARAM.ep_name */
    signal->Name = Escher_strcpy( signal->Name, p_ep_name );
    /* RELATE c_i TO signal ACROSS R4003 */
    masl2xtuml_C_EP_R4003_Link_is_defined_by( c_i, signal );
    /* SELECT many references RELATED BY c_i->C_IR[R4012] */
    Escher_ClearSet( references );
    if ( 0 != c_i ) {
      Escher_CopySet( references, &c_i->C_IR_R4012_is_formal_definition );
    }
    /* IF ( PARAM.asynchronous ) */
    if ( p_asynchronous ) {
    }
    else {
      masl2xtuml_C_IO * ssignal;
      /* CREATE OBJECT INSTANCE ssignal OF C_IO */
      ssignal = (masl2xtuml_C_IO *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_C_IO_CLASS_NUMBER );
      ssignal->Id = (Escher_UniqueID_t) ssignal;
      /* RELATE signal TO ssignal ACROSS R4004 */
      masl2xtuml_C_IO_R4004_Link( signal, ssignal );
      /* self.InterfaceOperation_initialize( c_io:ssignal, name:PARAM.ep_name ) */
      masl2xtuml_ooapopulation_op_InterfaceOperation_initialize( self,  ssignal, p_ep_name );
    }
    Escher_ClearSet( references ); 
  }
  /* RETURN signal */
  {masl2xtuml_C_EP * xtumlOALrv = signal;
  return xtumlOALrv;}
}

/*
 * instance operation:  Interface_addInterfaceOperationToOrder
 */
void
masl2xtuml_ooapopulation_op_Interface_addInterfaceOperationToOrder( masl2xtuml_ooapopulation * self, masl2xtuml_C_I * p_c_i, masl2xtuml_C_IO * p_c_io )
{
  masl2xtuml_C_IO * interfaceOperation;masl2xtuml_C_I * c_i;
  /* ASSIGN c_i = PARAM.c_i */
  c_i = p_c_i;
  /* ASSIGN interfaceOperation = PARAM.c_io */
  interfaceOperation = p_c_io;
  /* IF ( not_empty interfaceOperation ) */
  if ( ( 0 != interfaceOperation ) ) {
    masl2xtuml_C_IO * peer=0;Escher_ObjectSet_s peers_space={0}; Escher_ObjectSet_s * peers = &peers_space;
    /* SELECT many peers RELATED BY c_i->C_EP[R4003]->C_IO[R4004] */
    Escher_ClearSet( peers );
    {    if ( 0 != c_i ) {
    masl2xtuml_C_EP * C_EP_R4003_is_defined_by;
    Escher_Iterator_s iC_EP_R4003_is_defined_by;
    Escher_IteratorReset( &iC_EP_R4003_is_defined_by, &c_i->C_EP_R4003_is_defined_by );
    while ( 0 != ( C_EP_R4003_is_defined_by = (masl2xtuml_C_EP *) Escher_IteratorNext( &iC_EP_R4003_is_defined_by ) ) ) {
    if ( ( 0 != C_EP_R4003_is_defined_by ) && ( masl2xtuml_C_IO_CLASS_NUMBER == C_EP_R4003_is_defined_by->R4004_object_id ) )    {masl2xtuml_C_IO * R4004_subtype = C_EP_R4003_is_defined_by->R4004_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) peers, R4004_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) peers, R4004_subtype );
    }}}}}
    /* FOR EACH peer IN peers */
    { Escher_Iterator_s iterpeer;
    masl2xtuml_C_IO * iipeer;
    Escher_IteratorReset( &iterpeer, peers );
    while ( (iipeer = (masl2xtuml_C_IO *)Escher_IteratorNext( &iterpeer )) != 0 ) {
      peer = iipeer; {
      /* IF ( ( peer != interfaceOperation ) ) */
      if ( ( peer != interfaceOperation ) ) {
        masl2xtuml_C_IO * predecessor=0;
        /* SELECT one predecessor RELATED BY peer->C_IO[R4019.precedes] */
        predecessor = ( 0 != peer ) ? peer->C_IO_R4019_precedes : 0;
        /* IF ( empty predecessor ) */
        if ( ( 0 == predecessor ) ) {
          /* RELATE interfaceOperation TO peer ACROSS R4019 */
          masl2xtuml_C_IO_R4019_Link_succeeds( interfaceOperation, peer );
        }
      }
    }}}
    Escher_ClearSet( peers ); 
  }
}

/*
 * instance operation:  Attribute_addToIdentifier
 */
void
masl2xtuml_ooapopulation_op_Attribute_addToIdentifier( masl2xtuml_ooapopulation * self, masl2xtuml_O_ATTR * p_o_attr, const i_t p_oid )
{
  masl2xtuml_R_RTO * rto=0;masl2xtuml_O_ATTR * o_attr;masl2xtuml_O_OIDA * oida;Escher_ObjectSet_s rto_set_space={0}; Escher_ObjectSet_s * rto_set = &rto_set_space;masl2xtuml_O_ID * oid=0;
  /* ASSIGN o_attr = PARAM.o_attr */
  o_attr = p_o_attr;
  /* SELECT any oid RELATED BY o_attr->O_OBJ[R102]->O_ID[R104] WHERE ( ( SELECTED.Oid_ID == PARAM.oid ) ) */
  oid = 0;
  {  if ( 0 != o_attr ) {
  masl2xtuml_O_OBJ * O_OBJ_R102_abstracts_characteristics_of = o_attr->O_OBJ_R102_abstracts_characteristics_of;
  if ( 0 != O_OBJ_R102_abstracts_characteristics_of ) {
  masl2xtuml_O_ID * selected;
  Escher_Iterator_s iO_ID_R104_is_identified_by;
  Escher_IteratorReset( &iO_ID_R104_is_identified_by, &O_OBJ_R102_abstracts_characteristics_of->O_ID_R104_is_identified_by );
  while ( 0 != ( selected = (masl2xtuml_O_ID *) Escher_IteratorNext( &iO_ID_R104_is_identified_by ) ) ) {
    if ( ( selected->Oid_ID == p_oid ) ) {
      oid = selected;
      break;
  }}
}}}
  /* CREATE OBJECT INSTANCE oida OF O_OIDA */
  oida = (masl2xtuml_O_OIDA *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_O_OIDA_CLASS_NUMBER );
  oida->Attr_ID = (Escher_UniqueID_t) oida;
oida->Obj_ID = (Escher_UniqueID_t) oida;
  /* RELATE o_attr TO oid ACROSS R105 USING oida */
  masl2xtuml_O_OIDA_R105_Link( oid, o_attr, oida );
  /* SELECT many rto_set RELATED BY oid->R_RTO[R109] */
  Escher_ClearSet( rto_set );
  if ( 0 != oid ) {
    Escher_CopySet( rto_set, &oid->R_RTO_R109_identifies_for_this_association_ );
  }
  /* FOR EACH rto IN rto_set */
  { Escher_Iterator_s iterrto;
  masl2xtuml_R_RTO * iirto;
  Escher_IteratorReset( &iterrto, rto_set );
  while ( (iirto = (masl2xtuml_R_RTO *)Escher_IteratorNext( &iterrto )) != 0 ) {
    rto = iirto; {
    /* self.ReferredToClassInAssoc_addAttributeToIdentifier( oida:oida, r_rto:rto ) */
    masl2xtuml_ooapopulation_op_ReferredToClassInAssoc_addAttributeToIdentifier( self,  oida, rto );
  }}}
  Escher_ClearSet( rto_set ); 
}

/*
 * instance operation:  Attribute_setType
 */
void
masl2xtuml_ooapopulation_op_Attribute_setType( masl2xtuml_ooapopulation * self, masl2xtuml_O_ATTR * p_o_attr, c_t * p_type_name )
{
  c_t * type_name=0;masl2xtuml_O_ATTR * o_attr;masl2xtuml_S_DT * s_dt=0;masl2xtuml_S_DT * cur_s_dt=0;
  /* ASSIGN o_attr = PARAM.o_attr */
  o_attr = p_o_attr;
  /* ASSIGN type_name = PARAM.type_name */
  type_name = Escher_strcpy( type_name, p_type_name );
  /* SELECT any s_dt FROM INSTANCES OF S_DT WHERE ( SELECTED.Name == type_name ) */
  s_dt = 0;
  { masl2xtuml_S_DT * selected;
    Escher_Iterator_s iters_dtmasl2xtuml_S_DT;
    Escher_IteratorReset( &iters_dtmasl2xtuml_S_DT, &pG_masl2xtuml_S_DT_extent.active );
    while ( (selected = (masl2xtuml_S_DT *) Escher_IteratorNext( &iters_dtmasl2xtuml_S_DT )) != 0 ) {
      if ( ( Escher_strcmp( selected->Name, type_name ) == 0 ) ) {
        s_dt = selected;
        break;
      }
    }
  }
  /* IF ( empty s_dt ) */
  if ( ( 0 == s_dt ) ) {
    /* TRACE::log( flavor:failure, id:0, message:( ( ( could not find datatype   + type_name ) +  to set for attribute  ) + o_attr.Name ) ) */
    TRACE_log( "failure", 0, Escher_stradd( Escher_stradd( Escher_stradd( "could not find datatype  ", type_name ), " to set for attribute " ), o_attr->Name ) );
  }
  /* SELECT one cur_s_dt RELATED BY o_attr->S_DT[R114] */
  cur_s_dt = ( 0 != o_attr ) ? o_attr->S_DT_R114_defines_type_of : 0;
  /* IF ( ( ( s_dt != cur_s_dt ) and ( cur_s_dt.Name != MASLunique ) ) ) */
  if ( ( ( s_dt != cur_s_dt ) && ( Escher_strcmp( cur_s_dt->Name, "MASLunique" ) != 0 ) ) ) {
    /* UNRELATE o_attr FROM cur_s_dt ACROSS R114 */
    masl2xtuml_O_ATTR_R114_Unlink_is_defined_by( cur_s_dt, o_attr );
    /* RELATE o_attr TO s_dt ACROSS R114 */
    masl2xtuml_O_ATTR_R114_Link_is_defined_by( s_dt, o_attr );
  }
}

/*
 * instance operation:  ModelClass_create_sm
 */
masl2xtuml_SM_SM *
masl2xtuml_ooapopulation_op_ModelClass_create_sm( masl2xtuml_ooapopulation * self, masl2xtuml_O_OBJ * p_o_obj, c_t * p_sm_type )
{
  masl2xtuml_O_OBJ * o_obj;masl2xtuml_SM_SM * sm_sm=0;
  /* ASSIGN o_obj = PARAM.o_obj */
  o_obj = p_o_obj;
  /* IF ( ( PARAM.sm_type == ISM ) ) */
  if ( ( Escher_strcmp( p_sm_type, "ISM" ) == 0 ) ) {
    masl2xtuml_SM_ISM * ism=0;
    /* SELECT one ism RELATED BY o_obj->SM_ISM[R518] */
    ism = ( 0 != o_obj ) ? o_obj->SM_ISM_R518 : 0;
    /* IF ( not_empty ism ) */
    if ( ( 0 != ism ) ) {
      masl2xtuml_SM_SM * sm_sm=0;
      /* SELECT one sm_sm RELATED BY ism->SM_SM[R517] */
      sm_sm = ( 0 != ism ) ? ism->SM_SM_R517 : 0;
      /* RETURN sm_sm */
      {masl2xtuml_SM_SM * xtumlOALrv = sm_sm;
      return xtumlOALrv;}
    }
    else {
      masl2xtuml_O_ATTR * newAttr;masl2xtuml_SM_MOORE * moore;masl2xtuml_SM_SM * sm;
      /* CREATE OBJECT INSTANCE ism OF SM_ISM */
      ism = (masl2xtuml_SM_ISM *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_ISM_CLASS_NUMBER );
      ism->SM_ID = (Escher_UniqueID_t) ism;
      /* RELATE o_obj TO ism ACROSS R518 */
      masl2xtuml_SM_ISM_R518_Link( o_obj, ism );
      /* CREATE OBJECT INSTANCE sm OF SM_SM */
      sm = (masl2xtuml_SM_SM *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_SM_CLASS_NUMBER );
      sm->SM_ID = (Escher_UniqueID_t) sm;
      /* RELATE ism TO sm ACROSS R517 */
      masl2xtuml_SM_ISM_R517_Link( sm, ism );
      /* CREATE OBJECT INSTANCE moore OF SM_MOORE */
      moore = (masl2xtuml_SM_MOORE *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_MOORE_CLASS_NUMBER );
      moore->SM_ID = (Escher_UniqueID_t) moore;
      /* RELATE sm TO moore ACROSS R510 */
      masl2xtuml_SM_MOORE_R510_Link( sm, moore );
      /* ASSIGN newAttr = self.ModelClass_newAttribute(attr_name:current_state, o_obj:o_obj) */
      newAttr = masl2xtuml_ooapopulation_op_ModelClass_newAttribute(self, "current_state", o_obj);
      /* RETURN sm */
      {masl2xtuml_SM_SM * xtumlOALrv = sm;
      return xtumlOALrv;}
    }
  }
  else if ( ( Escher_strcmp( p_sm_type, "ASM" ) == 0 ) ) {
    masl2xtuml_SM_ASM * sm_asm=0;
    /* SELECT one sm_asm RELATED BY o_obj->SM_ASM[R519] */
    sm_asm = ( 0 != o_obj ) ? o_obj->SM_ASM_R519 : 0;
    /* IF ( not_empty sm_asm ) */
    if ( ( 0 != sm_asm ) ) {
      masl2xtuml_SM_SM * sm_sm=0;
      /* SELECT one sm_sm RELATED BY sm_asm->SM_SM[R517] */
      sm_sm = ( 0 != sm_asm ) ? sm_asm->SM_SM_R517 : 0;
      /* RETURN sm_sm */
      {masl2xtuml_SM_SM * xtumlOALrv = sm_sm;
      return xtumlOALrv;}
    }
    else {
      masl2xtuml_SM_MOORE * moore;masl2xtuml_SM_SM * sm;
      /* CREATE OBJECT INSTANCE sm_asm OF SM_ASM */
      sm_asm = (masl2xtuml_SM_ASM *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_ASM_CLASS_NUMBER );
      sm_asm->SM_ID = (Escher_UniqueID_t) sm_asm;
      /* RELATE o_obj TO sm_asm ACROSS R519 */
      masl2xtuml_SM_ASM_R519_Link( o_obj, sm_asm );
      /* CREATE OBJECT INSTANCE sm OF SM_SM */
      sm = (masl2xtuml_SM_SM *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_SM_CLASS_NUMBER );
      sm->SM_ID = (Escher_UniqueID_t) sm;
      /* RELATE sm_asm TO sm ACROSS R517 */
      masl2xtuml_SM_ASM_R517_Link( sm, sm_asm );
      /* CREATE OBJECT INSTANCE moore OF SM_MOORE */
      moore = (masl2xtuml_SM_MOORE *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_MOORE_CLASS_NUMBER );
      moore->SM_ID = (Escher_UniqueID_t) moore;
      /* RELATE sm TO moore ACROSS R510 */
      masl2xtuml_SM_MOORE_R510_Link( sm, moore );
      /* RETURN sm */
      {masl2xtuml_SM_SM * xtumlOALrv = sm;
      return xtumlOALrv;}
    }
  }
  /* SELECT any sm_sm FROM INSTANCES OF SM_SM WHERE FALSE */
  sm_sm = 0;
  /* RETURN sm_sm */
  {masl2xtuml_SM_SM * xtumlOALrv = sm_sm;
  return xtumlOALrv;}
}

/*
 * instance operation:  StateMachine_newState
 */
void
masl2xtuml_ooapopulation_op_StateMachine_newState( masl2xtuml_ooapopulation * self, c_t * p_name, masl2xtuml_SM_SM * p_sm_sm, c_t * p_type )
{
  masl2xtuml_SM_SM * sm_sm;masl2xtuml_SM_STATE * st;
  /* ASSIGN sm_sm = PARAM.sm_sm */
  sm_sm = p_sm_sm;
  /* CREATE OBJECT INSTANCE st OF SM_STATE */
  st = (masl2xtuml_SM_STATE *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_STATE_CLASS_NUMBER );
  st->SMstt_ID = (Escher_UniqueID_t) st;
st->SM_ID = (Escher_UniqueID_t) st;
  /* RELATE sm_sm TO st ACROSS R501 */
  masl2xtuml_SM_STATE_R501_Link_is_decomposed_into( sm_sm, st );
  /* self.StateMachineState_initialize( name:PARAM.name, sm_state:st, type:PARAM.type ) */
  masl2xtuml_ooapopulation_op_StateMachineState_initialize( self,  p_name, st, p_type );
}

/*
 * instance operation:  StateMachineState_initialize
 */
void
masl2xtuml_ooapopulation_op_StateMachineState_initialize( masl2xtuml_ooapopulation * self, c_t * p_name, masl2xtuml_SM_STATE * p_sm_state, c_t * p_type )
{
  masl2xtuml_SM_SEVT * event=0;masl2xtuml_SM_STATE * sm_state;masl2xtuml_SM_MOAH * moah;masl2xtuml_SM_AH * ah;masl2xtuml_SM_ACT * act;Escher_ObjectSet_s event_set_space={0}; Escher_ObjectSet_s * event_set = &event_set_space;masl2xtuml_SM_MOORE * msm=0;masl2xtuml_SM_SM * sm=0;Escher_ObjectSet_s states_space={0}; Escher_ObjectSet_s * states = &states_space;
  /* ASSIGN sm_state = PARAM.sm_state */
  sm_state = p_sm_state;
  /* ASSIGN sm_state.Name = PARAM.name */
  sm_state->Name = Escher_strcpy( sm_state->Name, p_name );
  /* ASSIGN sm_state.Numb = 1 */
  sm_state->Numb = 1;
  /* SELECT many states RELATED BY sm_state->SM_SM[R501]->SM_STATE[R501] */
  Escher_ClearSet( states );
  {  if ( 0 != sm_state ) {
  masl2xtuml_SM_SM * SM_SM_R501 = sm_state->SM_SM_R501;
  if ( 0 != SM_SM_R501 ) {
  masl2xtuml_SM_STATE * SM_STATE_R501_is_decomposed_into;
  Escher_Iterator_s iSM_STATE_R501_is_decomposed_into;
  Escher_IteratorReset( &iSM_STATE_R501_is_decomposed_into, &SM_SM_R501->SM_STATE_R501_is_decomposed_into );
  while ( 0 != ( SM_STATE_R501_is_decomposed_into = (masl2xtuml_SM_STATE *) Escher_IteratorNext( &iSM_STATE_R501_is_decomposed_into ) ) ) {
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) states, SM_STATE_R501_is_decomposed_into ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) states, SM_STATE_R501_is_decomposed_into );
  }}}}}
  /* IF ( ( assigner start == PARAM.type ) ) */
  if ( ( Escher_strcmp( "assigner start", p_type ) == 0 ) ) {
    masl2xtuml_SM_STATE * state=0;
    /* FOR EACH state IN states */
    { Escher_Iterator_s iterstate;
    masl2xtuml_SM_STATE * iistate;
    Escher_IteratorReset( &iterstate, states );
    while ( (iistate = (masl2xtuml_SM_STATE *)Escher_IteratorNext( &iterstate )) != 0 ) {
      state = iistate; {
      /* IF ( ( state.SMstt_ID == sm_state.SMstt_ID ) ) */
      if ( ( state->SMstt_ID == sm_state->SMstt_ID ) ) {
        /* CONTINUE */
        continue;
      }
      /* ASSIGN state.Numb = ( state.Numb + 1 ) */
      state->Numb = ( state->Numb + 1 );
    }}}
  }
  else {
    masl2xtuml_SM_STATE * state=0;
    /* FOR EACH state IN states */
    { Escher_Iterator_s iterstate;
    masl2xtuml_SM_STATE * iistate;
    Escher_IteratorReset( &iterstate, states );
    while ( (iistate = (masl2xtuml_SM_STATE *)Escher_IteratorNext( &iterstate )) != 0 ) {
      state = iistate; {
      /* IF ( ( state.SMstt_ID == sm_state.SMstt_ID ) ) */
      if ( ( state->SMstt_ID == sm_state->SMstt_ID ) ) {
        /* CONTINUE */
        continue;
      }
      /* IF ( ( state.Numb >= sm_state.Numb ) ) */
      if ( ( state->Numb >= sm_state->Numb ) ) {
        /* ASSIGN sm_state.Numb = ( state.Numb + 1 ) */
        sm_state->Numb = ( state->Numb + 1 );
      }
    }}}
  }
  /* IF ( ( terminal == PARAM.type ) ) */
  if ( ( Escher_strcmp( "terminal", p_type ) == 0 ) ) {
    /* ASSIGN sm_state.Final = 1 */
    sm_state->Final = 1;
  }
  else {
    /* ASSIGN sm_state.Final = 0 */
    sm_state->Final = 0;
  }
  /* SELECT one sm RELATED BY sm_state->SM_SM[R501] */
  sm = ( 0 != sm_state ) ? sm_state->SM_SM_R501 : 0;
  /* CREATE OBJECT INSTANCE act OF SM_ACT */
  act = (masl2xtuml_SM_ACT *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_ACT_CLASS_NUMBER );
  act->Act_ID = (Escher_UniqueID_t) act;
act->SM_ID = (Escher_UniqueID_t) act;
  /* RELATE act TO sm ACROSS R515 */
  masl2xtuml_SM_ACT_R515_Link_contains( sm, act );
  /* CREATE OBJECT INSTANCE ah OF SM_AH */
  ah = (masl2xtuml_SM_AH *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_AH_CLASS_NUMBER );
  ah->Act_ID = (Escher_UniqueID_t) ah;
ah->SM_ID = (Escher_UniqueID_t) ah;
  /* CREATE OBJECT INSTANCE moah OF SM_MOAH */
  moah = (masl2xtuml_SM_MOAH *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_MOAH_CLASS_NUMBER );
  moah->Act_ID = (Escher_UniqueID_t) moah;
moah->SM_ID = (Escher_UniqueID_t) moah;
moah->SMstt_ID = (Escher_UniqueID_t) moah;
  /* RELATE act TO ah ACROSS R514 */
  masl2xtuml_SM_AH_R514_Link_resides_in( act, ah );
  /* RELATE ah TO moah ACROSS R513 */
  masl2xtuml_SM_MOAH_R513_Link( ah, moah );
  /* SELECT one msm RELATED BY sm->SM_MOORE[R510] */
  msm = 0;
  if ( ( 0 != sm ) && ( masl2xtuml_SM_MOORE_CLASS_NUMBER == sm->R510_object_id ) )  msm = ( 0 != sm ) ? (masl2xtuml_SM_MOORE *) sm->R510_subtype : 0;
  /* RELATE sm_state TO msm ACROSS R511 USING moah */
  masl2xtuml_SM_MOAH_R511_Link( msm, sm_state, moah );
  /* SELECT many event_set RELATED BY sm->SM_EVT[R502]->SM_SEVT[R525] */
  Escher_ClearSet( event_set );
  {  if ( 0 != sm ) {
  masl2xtuml_SM_EVT * SM_EVT_R502_can_be_communicated_to_via;
  Escher_Iterator_s iSM_EVT_R502_can_be_communicated_to_via;
  Escher_IteratorReset( &iSM_EVT_R502_can_be_communicated_to_via, &sm->SM_EVT_R502_can_be_communicated_to_via );
  while ( 0 != ( SM_EVT_R502_can_be_communicated_to_via = (masl2xtuml_SM_EVT *) Escher_IteratorNext( &iSM_EVT_R502_can_be_communicated_to_via ) ) ) {
  if ( ( 0 != SM_EVT_R502_can_be_communicated_to_via ) && ( masl2xtuml_SM_SEVT_CLASS_NUMBER == SM_EVT_R502_can_be_communicated_to_via->R525_object_id ) )  {masl2xtuml_SM_SEVT * R525_subtype = SM_EVT_R502_can_be_communicated_to_via->R525_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) event_set, R525_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) event_set, R525_subtype );
  }}}}}
  /* FOR EACH event IN event_set */
  { Escher_Iterator_s iterevent;
  masl2xtuml_SM_SEVT * iievent;
  Escher_IteratorReset( &iterevent, event_set );
  while ( (iievent = (masl2xtuml_SM_SEVT *)Escher_IteratorNext( &iterevent )) != 0 ) {
    event = iievent; {
    masl2xtuml_SM_SEME * sem=0;
    /* SELECT any sem RELATED BY event->SM_SEME[R503] WHERE ( ( SELECTED.SMstt_ID == sm_state.SMstt_ID ) ) */
    sem = 0;
    if ( 0 != event ) {
      masl2xtuml_SM_SEME * selected;
      Escher_Iterator_s iSM_SEME_R503;
      Escher_IteratorReset( &iSM_SEME_R503, &event->SM_SEME_R503 );
      while ( 0 != ( selected = (masl2xtuml_SM_SEME *) Escher_IteratorNext( &iSM_SEME_R503 ) ) ) {
        if ( ( selected->SMstt_ID == sm_state->SMstt_ID ) ) {
          sem = selected;
          break;
    }}}
    /* IF ( empty sem ) */
    if ( ( 0 == sem ) ) {
      masl2xtuml_SM_CH * ch;
      /* CREATE OBJECT INSTANCE sem OF SM_SEME */
      sem = (masl2xtuml_SM_SEME *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_SEME_CLASS_NUMBER );
      sem->SMstt_ID = (Escher_UniqueID_t) sem;
sem->SMevt_ID = (Escher_UniqueID_t) sem;
sem->SM_ID = (Escher_UniqueID_t) sem;
      /* CREATE OBJECT INSTANCE ch OF SM_CH */
      ch = (masl2xtuml_SM_CH *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_CH_CLASS_NUMBER );
      ch->SMstt_ID = (Escher_UniqueID_t) ch;
ch->SMevt_ID = (Escher_UniqueID_t) ch;
ch->SM_ID = (Escher_UniqueID_t) ch;
      /* RELATE sm_state TO event ACROSS R503 USING sem */
      masl2xtuml_SM_SEME_R503_Link( sm_state, event, sem );
      /* RELATE ch TO sem ACROSS R504 */
      masl2xtuml_SM_CH_R504_Link( sem, ch );
    }
  }}}
  /* ASSIGN act.Suc_Pars = parseInitial */
  act->Suc_Pars = masl2xtuml_ParseStatus_parseInitial_e;
  Escher_ClearSet( event_set ); Escher_ClearSet( states ); 
}

/*
 * instance operation:  StateMachine_newEvent
 */
void
masl2xtuml_ooapopulation_op_StateMachine_newEvent( masl2xtuml_ooapopulation * self, c_t * p_name, masl2xtuml_SM_SM * p_sm_sm )
{
  masl2xtuml_SM_SM * sm_sm;masl2xtuml_SM_EVT * newEvent;
  /* ASSIGN sm_sm = PARAM.sm_sm */
  sm_sm = p_sm_sm;
  /* CREATE OBJECT INSTANCE newEvent OF SM_EVT */
  newEvent = (masl2xtuml_SM_EVT *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_EVT_CLASS_NUMBER );
  newEvent->SMevt_ID = (Escher_UniqueID_t) newEvent;
newEvent->SM_ID = (Escher_UniqueID_t) newEvent;
  /* RELATE sm_sm TO newEvent ACROSS R502 */
  masl2xtuml_SM_EVT_R502_Link_can_be_communicated_to_via( sm_sm, newEvent );
  /* self.StateMachineEvent_initialize( name:PARAM.name, sm_evt:newEvent ) */
  masl2xtuml_ooapopulation_op_StateMachineEvent_initialize( self,  p_name, newEvent );
}

/*
 * instance operation:  StateMachineEvent_initialize
 */
void
masl2xtuml_ooapopulation_op_StateMachineEvent_initialize( masl2xtuml_ooapopulation * self, c_t * p_name, masl2xtuml_SM_EVT * p_sm_evt )
{
  masl2xtuml_SM_EVT * sm_evt;masl2xtuml_SM_LEVT * locEvt;masl2xtuml_SM_SEVT * semEvt;masl2xtuml_SM_SM * sm=0;
  /* ASSIGN sm_evt = PARAM.sm_evt */
  sm_evt = p_sm_evt;
  /* ASSIGN sm_evt.Mning = PARAM.name */
  sm_evt->Mning = Escher_strcpy( sm_evt->Mning, p_name );
  /* ASSIGN sm_evt.Numb = 1 */
  sm_evt->Numb = 1;
  /* self.StateMachineEvent_setUniqueNumber( checkForDuplicate:FALSE, sm_evt:sm_evt ) */
  masl2xtuml_ooapopulation_op_StateMachineEvent_setUniqueNumber( self,  FALSE, sm_evt );
  /* SELECT one sm RELATED BY sm_evt->SM_SM[R502] */
  sm = ( 0 != sm_evt ) ? sm_evt->SM_SM_R502 : 0;
  /* CREATE OBJECT INSTANCE semEvt OF SM_SEVT */
  semEvt = (masl2xtuml_SM_SEVT *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_SEVT_CLASS_NUMBER );
  semEvt->SMevt_ID = (Escher_UniqueID_t) semEvt;
semEvt->SM_ID = (Escher_UniqueID_t) semEvt;
  /* RELATE sm_evt TO semEvt ACROSS R525 */
  masl2xtuml_SM_SEVT_R525_Link( sm_evt, semEvt );
  /* CREATE OBJECT INSTANCE locEvt OF SM_LEVT */
  locEvt = (masl2xtuml_SM_LEVT *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_LEVT_CLASS_NUMBER );
  locEvt->SMevt_ID = (Escher_UniqueID_t) locEvt;
locEvt->SM_ID = (Escher_UniqueID_t) locEvt;
  /* RELATE semEvt TO locEvt ACROSS R526 */
  masl2xtuml_SM_LEVT_R526_Link( semEvt, locEvt );
  /* self.SEMEvent_createDefaultMatrixEntries( sm_sevt:semEvt ) */
  masl2xtuml_ooapopulation_op_SEMEvent_createDefaultMatrixEntries( self,  semEvt );
}

/*
 * instance operation:  StateMachineEvent_setUniqueNumber
 */
void
masl2xtuml_ooapopulation_op_StateMachineEvent_setUniqueNumber( masl2xtuml_ooapopulation * self, const bool p_checkForDuplicate, masl2xtuml_SM_EVT * p_sm_evt )
{
  masl2xtuml_SM_EVT * event=0;i_t originalNumb;bool foundDuplicate;bool checkForDuplicate;masl2xtuml_SM_EVT * sm_evt;Escher_ObjectSet_s events_space={0}; Escher_ObjectSet_s * events = &events_space;masl2xtuml_SM_SM * sm=0;
  /* ASSIGN sm_evt = PARAM.sm_evt */
  sm_evt = p_sm_evt;
  /* ASSIGN checkForDuplicate = PARAM.checkForDuplicate */
  checkForDuplicate = p_checkForDuplicate;
  /* SELECT one sm RELATED BY sm_evt->SM_SM[R502] */
  sm = ( 0 != sm_evt ) ? sm_evt->SM_SM_R502 : 0;
  /* SELECT many events RELATED BY sm->SM_EVT[R502] */
  Escher_ClearSet( events );
  if ( 0 != sm ) {
    Escher_CopySet( events, &sm->SM_EVT_R502_can_be_communicated_to_via );
  }
  /* ASSIGN foundDuplicate = FALSE */
  foundDuplicate = FALSE;
  /* ASSIGN originalNumb = sm_evt.Numb */
  originalNumb = sm_evt->Numb;
  /* FOR EACH event IN events */
  { Escher_Iterator_s iterevent;
  masl2xtuml_SM_EVT * iievent;
  Escher_IteratorReset( &iterevent, events );
  while ( (iievent = (masl2xtuml_SM_EVT *)Escher_IteratorNext( &iterevent )) != 0 ) {
    event = iievent; {
    /* IF ( ( event.SMevt_ID == sm_evt.SMevt_ID ) ) */
    if ( ( event->SMevt_ID == sm_evt->SMevt_ID ) ) {
      /* CONTINUE */
      continue;
    }
    /* IF ( ( event.Numb == sm_evt.Numb ) ) */
    if ( ( event->Numb == sm_evt->Numb ) ) {
      /* ASSIGN foundDuplicate = TRUE */
      foundDuplicate = TRUE;
    }
    /* IF ( ( event.Numb >= sm_evt.Numb ) ) */
    if ( ( event->Numb >= sm_evt->Numb ) ) {
      /* ASSIGN sm_evt.Numb = ( event.Numb + 1 ) */
      sm_evt->Numb = ( event->Numb + 1 );
    }
  }}}
  /* IF ( ( not foundDuplicate and PARAM.checkForDuplicate ) ) */
  if ( ( !foundDuplicate && p_checkForDuplicate ) ) {
    /* ASSIGN sm_evt.Numb = originalNumb */
    sm_evt->Numb = originalNumb;
  }
  Escher_ClearSet( events ); 
}

/*
 * instance operation:  SEMEvent_createDefaultMatrixEntries
 */
void
masl2xtuml_ooapopulation_op_SEMEvent_createDefaultMatrixEntries( masl2xtuml_ooapopulation * self, masl2xtuml_SM_SEVT * p_sm_sevt )
{
  masl2xtuml_SM_STATE * state=0;masl2xtuml_SM_SEVT * sm_sevt;Escher_ObjectSet_s states_space={0}; Escher_ObjectSet_s * states = &states_space;
  /* ASSIGN sm_sevt = PARAM.sm_sevt */
  sm_sevt = p_sm_sevt;
  /* SELECT many states RELATED BY sm_sevt->SM_EVT[R525]->SM_SM[R502]->SM_STATE[R501] */
  Escher_ClearSet( states );
  {  if ( 0 != sm_sevt ) {
  masl2xtuml_SM_EVT * SM_EVT_R525 = sm_sevt->SM_EVT_R525;
  if ( 0 != SM_EVT_R525 ) {
  masl2xtuml_SM_SM * SM_SM_R502 = SM_EVT_R525->SM_SM_R502;
  if ( 0 != SM_SM_R502 ) {
  masl2xtuml_SM_STATE * SM_STATE_R501_is_decomposed_into;
  Escher_Iterator_s iSM_STATE_R501_is_decomposed_into;
  Escher_IteratorReset( &iSM_STATE_R501_is_decomposed_into, &SM_SM_R502->SM_STATE_R501_is_decomposed_into );
  while ( 0 != ( SM_STATE_R501_is_decomposed_into = (masl2xtuml_SM_STATE *) Escher_IteratorNext( &iSM_STATE_R501_is_decomposed_into ) ) ) {
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) states, SM_STATE_R501_is_decomposed_into ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) states, SM_STATE_R501_is_decomposed_into );
  }}}}}}
  /* FOR EACH state IN states */
  { Escher_Iterator_s iterstate;
  masl2xtuml_SM_STATE * iistate;
  Escher_IteratorReset( &iterstate, states );
  while ( (iistate = (masl2xtuml_SM_STATE *)Escher_IteratorNext( &iterstate )) != 0 ) {
    state = iistate; {
    masl2xtuml_SM_SEME * entry=0;
    /* SELECT any entry RELATED BY sm_sevt->SM_SEME[R503] WHERE ( ( SELECTED.SMstt_ID == state.SMstt_ID ) ) */
    entry = 0;
    if ( 0 != sm_sevt ) {
      masl2xtuml_SM_SEME * selected;
      Escher_Iterator_s iSM_SEME_R503;
      Escher_IteratorReset( &iSM_SEME_R503, &sm_sevt->SM_SEME_R503 );
      while ( 0 != ( selected = (masl2xtuml_SM_SEME *) Escher_IteratorNext( &iSM_SEME_R503 ) ) ) {
        if ( ( selected->SMstt_ID == state->SMstt_ID ) ) {
          entry = selected;
          break;
    }}}
    /* IF ( empty entry ) */
    if ( ( 0 == entry ) ) {
      masl2xtuml_SM_CH * cantHappen;
      /* CREATE OBJECT INSTANCE entry OF SM_SEME */
      entry = (masl2xtuml_SM_SEME *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_SEME_CLASS_NUMBER );
      entry->SMstt_ID = (Escher_UniqueID_t) entry;
entry->SMevt_ID = (Escher_UniqueID_t) entry;
entry->SM_ID = (Escher_UniqueID_t) entry;
      /* RELATE state TO sm_sevt ACROSS R503 USING entry */
      masl2xtuml_SM_SEME_R503_Link( state, sm_sevt, entry );
      /* CREATE OBJECT INSTANCE cantHappen OF SM_CH */
      cantHappen = (masl2xtuml_SM_CH *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_CH_CLASS_NUMBER );
      cantHappen->SMstt_ID = (Escher_UniqueID_t) cantHappen;
cantHappen->SMevt_ID = (Escher_UniqueID_t) cantHappen;
cantHappen->SM_ID = (Escher_UniqueID_t) cantHappen;
      /* RELATE cantHappen TO entry ACROSS R504 */
      masl2xtuml_SM_CH_R504_Link( entry, cantHappen );
    }
  }}}
  Escher_ClearSet( states ); 
}

/*
 * instance operation:  transformTransition
 */
void
masl2xtuml_ooapopulation_op_transformTransition( masl2xtuml_ooapopulation * self, c_t * p_endState, c_t * p_eventName, c_t * p_startState )
{
  masl2xtuml_O_OBJ * current_class;masl2xtuml_SM_SM * sm_sm=0;
  /* ASSIGN current_class = self.current_class */
  current_class = self->current_class;
  /* SELECT any sm_sm FROM INSTANCES OF SM_SM WHERE FALSE */
  sm_sm = 0;
  /* IF ( ( TRUE == self.processingISM ) ) */
  if ( ( TRUE == self->processingISM ) ) {
    /* SELECT one sm_sm RELATED BY current_class->SM_ISM[R518]->SM_SM[R517] */
    sm_sm = 0;
    {    if ( 0 != current_class ) {
    masl2xtuml_SM_ISM * SM_ISM_R518 = current_class->SM_ISM_R518;
    if ( 0 != SM_ISM_R518 ) {
    sm_sm = SM_ISM_R518->SM_SM_R517;
}}}
  }
  else {
    /* SELECT one sm_sm RELATED BY current_class->SM_ASM[R519]->SM_SM[R517] */
    sm_sm = 0;
    {    if ( 0 != current_class ) {
    masl2xtuml_SM_ASM * SM_ASM_R519 = current_class->SM_ASM_R519;
    if ( 0 != SM_ASM_R519 ) {
    sm_sm = SM_ASM_R519->SM_SM_R517;
}}}
  }
  /* IF ( ( ( ( Non_Existent == PARAM.startState ) or ( Non_Existant == PARAM.startState ) ) or ( non_existent == PARAM.startState ) ) ) */
  if ( ( ( ( Escher_strcmp( "Non_Existent", p_startState ) == 0 ) || ( Escher_strcmp( "Non_Existant", p_startState ) == 0 ) ) || ( Escher_strcmp( "non_existent", p_startState ) == 0 ) ) ) {
    /* self.StateMachine_newCreationTransition( endState:PARAM.endState, eventName:PARAM.eventName, sm_sm:sm_sm ) */
    masl2xtuml_ooapopulation_op_StateMachine_newCreationTransition( self,  p_endState, p_eventName, sm_sm );
  }
  else {
    /* self.StateMachine_newTransition( endState:PARAM.endState, eventName:PARAM.eventName, sm_sm:sm_sm, startState:PARAM.startState ) */
    masl2xtuml_ooapopulation_op_StateMachine_newTransition( self,  p_endState, p_eventName, sm_sm, p_startState );
  }
}

/*
 * instance operation:  StateMachine_newTransition
 */
void
masl2xtuml_ooapopulation_op_StateMachine_newTransition( masl2xtuml_ooapopulation * self, c_t * p_endState, c_t * p_eventName, masl2xtuml_SM_SM * p_sm_sm, c_t * p_startState )
{
  masl2xtuml_SM_SM * sm_sm;masl2xtuml_SM_EVT * sm_evt=0;masl2xtuml_SM_STATE * fromState=0;
  /* ASSIGN sm_sm = PARAM.sm_sm */
  sm_sm = p_sm_sm;
  /* SELECT any fromState RELATED BY sm_sm->SM_STATE[R501] WHERE ( ( SELECTED.Name == PARAM.startState ) ) */
  fromState = 0;
  if ( 0 != sm_sm ) {
    masl2xtuml_SM_STATE * selected;
    Escher_Iterator_s iSM_STATE_R501_is_decomposed_into;
    Escher_IteratorReset( &iSM_STATE_R501_is_decomposed_into, &sm_sm->SM_STATE_R501_is_decomposed_into );
    while ( 0 != ( selected = (masl2xtuml_SM_STATE *) Escher_IteratorNext( &iSM_STATE_R501_is_decomposed_into ) ) ) {
      if ( ( Escher_strcmp( selected->Name, p_startState ) == 0 ) ) {
        fromState = selected;
        break;
  }}}
  /* SELECT any sm_evt RELATED BY sm_sm->SM_EVT[R502] WHERE ( ( SELECTED.Mning == PARAM.eventName ) ) */
  sm_evt = 0;
  if ( 0 != sm_sm ) {
    masl2xtuml_SM_EVT * selected;
    Escher_Iterator_s iSM_EVT_R502_can_be_communicated_to_via;
    Escher_IteratorReset( &iSM_EVT_R502_can_be_communicated_to_via, &sm_sm->SM_EVT_R502_can_be_communicated_to_via );
    while ( 0 != ( selected = (masl2xtuml_SM_EVT *) Escher_IteratorNext( &iSM_EVT_R502_can_be_communicated_to_via ) ) ) {
      if ( ( Escher_strcmp( selected->Mning, p_eventName ) == 0 ) ) {
        sm_evt = selected;
        break;
  }}}
  /* IF ( ( Ignore == PARAM.endState ) ) */
  if ( ( Escher_strcmp( "Ignore", p_endState ) == 0 ) ) {
    masl2xtuml_SM_SEME * seme=0;
    /* SELECT any seme RELATED BY sm_evt->SM_SEVT[R525]->SM_SEME[R503] WHERE ( ( SELECTED.SMstt_ID == fromState.SMstt_ID ) ) */
    seme = 0;
    {    if ( 0 != sm_evt ) {
    masl2xtuml_SM_SEVT * R525_subtype = (masl2xtuml_SM_SEVT *) sm_evt->R525_subtype;
    if ( 0 != R525_subtype )    if ( ( 0 != sm_evt ) && ( masl2xtuml_SM_SEVT_CLASS_NUMBER == sm_evt->R525_object_id ) ) {
    masl2xtuml_SM_SEME * selected;
    Escher_Iterator_s iSM_SEME_R503;
    Escher_IteratorReset( &iSM_SEME_R503, &R525_subtype->SM_SEME_R503 );
    while ( 0 != ( selected = (masl2xtuml_SM_SEME *) Escher_IteratorNext( &iSM_SEME_R503 ) ) ) {
      if ( ( selected->SMstt_ID == fromState->SMstt_ID ) ) {
        seme = selected;
        break;
    }}
}}}
    /* self.StateEventMatrixEntry_migrateChToEi( sm_seme:seme ) */
    masl2xtuml_ooapopulation_op_StateEventMatrixEntry_migrateChToEi( self,  seme );
  }
  else if ( ( ( Escher_strcmp( "Cannot_Happen", p_endState ) == 0 ) || ( Escher_strcmp( "cannot_happen", p_endState ) == 0 ) ) ) {
    masl2xtuml_SM_SEME * seme=0;
    /* SELECT any seme RELATED BY sm_evt->SM_SEVT[R525]->SM_SEME[R503] WHERE ( ( SELECTED.SMstt_ID == fromState.SMstt_ID ) ) */
    seme = 0;
    {    if ( 0 != sm_evt ) {
    masl2xtuml_SM_SEVT * R525_subtype = (masl2xtuml_SM_SEVT *) sm_evt->R525_subtype;
    if ( 0 != R525_subtype )    if ( ( 0 != sm_evt ) && ( masl2xtuml_SM_SEVT_CLASS_NUMBER == sm_evt->R525_object_id ) ) {
    masl2xtuml_SM_SEME * selected;
    Escher_Iterator_s iSM_SEME_R503;
    Escher_IteratorReset( &iSM_SEME_R503, &R525_subtype->SM_SEME_R503 );
    while ( 0 != ( selected = (masl2xtuml_SM_SEME *) Escher_IteratorNext( &iSM_SEME_R503 ) ) ) {
      if ( ( selected->SMstt_ID == fromState->SMstt_ID ) ) {
        seme = selected;
        break;
    }}
}}}
    /* self.StateEventMatrixEntry_migrateEiToCh( sm_seme:seme ) */
    masl2xtuml_ooapopulation_op_StateEventMatrixEntry_migrateEiToCh( self,  seme );
  }
  else {
    masl2xtuml_SM_STATE * toState=0;
    /* SELECT any toState RELATED BY sm_sm->SM_STATE[R501] WHERE ( ( SELECTED.Name == PARAM.endState ) ) */
    toState = 0;
    if ( 0 != sm_sm ) {
      masl2xtuml_SM_STATE * selected;
      Escher_Iterator_s iSM_STATE_R501_is_decomposed_into;
      Escher_IteratorReset( &iSM_STATE_R501_is_decomposed_into, &sm_sm->SM_STATE_R501_is_decomposed_into );
      while ( 0 != ( selected = (masl2xtuml_SM_STATE *) Escher_IteratorNext( &iSM_STATE_R501_is_decomposed_into ) ) ) {
        if ( ( Escher_strcmp( selected->Name, p_endState ) == 0 ) ) {
          toState = selected;
          break;
    }}}
    /* IF ( ( not_empty fromState and not_empty toState ) ) */
    if ( ( ( 0 != fromState ) && ( 0 != toState ) ) ) {
      masl2xtuml_SM_NETXN * net;masl2xtuml_SM_TXN * tr;
      /* CREATE OBJECT INSTANCE tr OF SM_TXN */
      tr = (masl2xtuml_SM_TXN *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_TXN_CLASS_NUMBER );
      tr->Trans_ID = (Escher_UniqueID_t) tr;
tr->SM_ID = (Escher_UniqueID_t) tr;
      /* CREATE OBJECT INSTANCE net OF SM_NETXN */
      net = (masl2xtuml_SM_NETXN *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_NETXN_CLASS_NUMBER );
      net->Trans_ID = (Escher_UniqueID_t) net;
net->SM_ID = (Escher_UniqueID_t) net;
      /* RELATE tr TO net ACROSS R507 */
      masl2xtuml_SM_NETXN_R507_Link( tr, net );
      /* RELATE net TO fromState ACROSS R508 */
      masl2xtuml_SM_NETXN_R508_Link_is_origination_of( fromState, net );
      /* RELATE tr TO toState ACROSS R506 */
      masl2xtuml_SM_TXN_R506_Link_is_destination_of( toState, tr );
      /* RELATE sm_sm TO tr ACROSS R505 */
      masl2xtuml_SM_TXN_R505_Link_contains( sm_sm, tr );
      /* self.Transition_initialize( sm_txn:tr ) */
      masl2xtuml_ooapopulation_op_Transition_initialize( self,  tr );
      /* self.Transition_addEvent( sm_evt:sm_evt, sm_sm:sm_sm, sm_txn:tr ) */
      masl2xtuml_ooapopulation_op_Transition_addEvent( self,  sm_evt, sm_sm, tr );
    }
  }
}

/*
 * instance operation:  Transition_initialize
 */
void
masl2xtuml_ooapopulation_op_Transition_initialize( masl2xtuml_ooapopulation * self, masl2xtuml_SM_TXN * p_sm_txn )
{
  masl2xtuml_SM_TXN * sm_txn;masl2xtuml_SM_ACT * act;masl2xtuml_SM_TAH * tah;masl2xtuml_SM_AH * ah;masl2xtuml_SM_SM * sm=0;
  /* ASSIGN sm_txn = PARAM.sm_txn */
  sm_txn = p_sm_txn;
  /* CREATE OBJECT INSTANCE ah OF SM_AH */
  ah = (masl2xtuml_SM_AH *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_AH_CLASS_NUMBER );
  ah->Act_ID = (Escher_UniqueID_t) ah;
ah->SM_ID = (Escher_UniqueID_t) ah;
  /* CREATE OBJECT INSTANCE tah OF SM_TAH */
  tah = (masl2xtuml_SM_TAH *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_TAH_CLASS_NUMBER );
  tah->Act_ID = (Escher_UniqueID_t) tah;
tah->SM_ID = (Escher_UniqueID_t) tah;
  /* RELATE ah TO tah ACROSS R513 */
  masl2xtuml_SM_TAH_R513_Link( ah, tah );
  /* SELECT one sm RELATED BY sm_txn->SM_SM[R505] */
  sm = ( 0 != sm_txn ) ? sm_txn->SM_SM_R505 : 0;
  /* CREATE OBJECT INSTANCE act OF SM_ACT */
  act = (masl2xtuml_SM_ACT *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_ACT_CLASS_NUMBER );
  act->Act_ID = (Escher_UniqueID_t) act;
act->SM_ID = (Escher_UniqueID_t) act;
  /* ASSIGN act.Suc_Pars = parseInitial */
  act->Suc_Pars = masl2xtuml_ParseStatus_parseInitial_e;
  /* RELATE act TO ah ACROSS R514 */
  masl2xtuml_SM_AH_R514_Link_resides_in( act, ah );
  /* RELATE act TO sm ACROSS R515 */
  masl2xtuml_SM_ACT_R515_Link_contains( sm, act );
  /* RELATE sm_txn TO tah ACROSS R530 */
  masl2xtuml_SM_TAH_R530_Link_houses_action_for( sm_txn, tah );
}

/*
 * instance operation:  StateMachine_newCreationTransition
 */
void
masl2xtuml_ooapopulation_op_StateMachine_newCreationTransition( masl2xtuml_ooapopulation * self, c_t * p_endState, c_t * p_eventName, masl2xtuml_SM_SM * p_sm_sm )
{
  masl2xtuml_SM_SM * sm_sm;
  /* ASSIGN sm_sm = PARAM.sm_sm */
  sm_sm = p_sm_sm;
  /* IF ( ( Ignore == PARAM.endState ) ) */
  if ( ( Escher_strcmp( "Ignore", p_endState ) == 0 ) ) {
  }
  else if ( ( ( Escher_strcmp( "Cannot_Happen", p_endState ) == 0 ) || ( Escher_strcmp( "cannot_happen", p_endState ) == 0 ) ) ) {
  }
  else {
    masl2xtuml_SM_STATE * state=0;
    /* SELECT any state RELATED BY sm_sm->SM_STATE[R501] WHERE ( ( SELECTED.Name == PARAM.endState ) ) */
    state = 0;
    if ( 0 != sm_sm ) {
      masl2xtuml_SM_STATE * selected;
      Escher_Iterator_s iSM_STATE_R501_is_decomposed_into;
      Escher_IteratorReset( &iSM_STATE_R501_is_decomposed_into, &sm_sm->SM_STATE_R501_is_decomposed_into );
      while ( 0 != ( selected = (masl2xtuml_SM_STATE *) Escher_IteratorNext( &iSM_STATE_R501_is_decomposed_into ) ) ) {
        if ( ( Escher_strcmp( selected->Name, p_endState ) == 0 ) ) {
          state = selected;
          break;
    }}}
    /* IF ( not_empty state ) */
    if ( ( 0 != state ) ) {
      masl2xtuml_SM_CRTXN * ct;masl2xtuml_SM_TXN * tr;masl2xtuml_SM_EVT * sm_evt=0;
      /* CREATE OBJECT INSTANCE tr OF SM_TXN */
      tr = (masl2xtuml_SM_TXN *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_TXN_CLASS_NUMBER );
      tr->Trans_ID = (Escher_UniqueID_t) tr;
tr->SM_ID = (Escher_UniqueID_t) tr;
      /* CREATE OBJECT INSTANCE ct OF SM_CRTXN */
      ct = (masl2xtuml_SM_CRTXN *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_CRTXN_CLASS_NUMBER );
      ct->Trans_ID = (Escher_UniqueID_t) ct;
ct->SM_ID = (Escher_UniqueID_t) ct;
      /* RELATE tr TO ct ACROSS R507 */
      masl2xtuml_SM_CRTXN_R507_Link( tr, ct );
      /* RELATE tr TO state ACROSS R506 */
      masl2xtuml_SM_TXN_R506_Link_is_destination_of( state, tr );
      /* RELATE sm_sm TO tr ACROSS R505 */
      masl2xtuml_SM_TXN_R505_Link_contains( sm_sm, tr );
      /* self.Transition_initialize( sm_txn:tr ) */
      masl2xtuml_ooapopulation_op_Transition_initialize( self,  tr );
      /* SELECT any sm_evt RELATED BY sm_sm->SM_EVT[R502] WHERE ( ( SELECTED.Mning == PARAM.eventName ) ) */
      sm_evt = 0;
      if ( 0 != sm_sm ) {
        masl2xtuml_SM_EVT * selected;
        Escher_Iterator_s iSM_EVT_R502_can_be_communicated_to_via;
        Escher_IteratorReset( &iSM_EVT_R502_can_be_communicated_to_via, &sm_sm->SM_EVT_R502_can_be_communicated_to_via );
        while ( 0 != ( selected = (masl2xtuml_SM_EVT *) Escher_IteratorNext( &iSM_EVT_R502_can_be_communicated_to_via ) ) ) {
          if ( ( Escher_strcmp( selected->Mning, p_eventName ) == 0 ) ) {
            sm_evt = selected;
            break;
      }}}
      /* IF ( not_empty sm_evt ) */
      if ( ( 0 != sm_evt ) ) {
        /* self.Transition_addEvent( sm_evt:sm_evt, sm_sm:sm_sm, sm_txn:tr ) */
        masl2xtuml_ooapopulation_op_Transition_addEvent( self,  sm_evt, sm_sm, tr );
      }
    }
  }
}

/*
 * instance operation:  Transition_addEvent
 */
void
masl2xtuml_ooapopulation_op_Transition_addEvent( masl2xtuml_ooapopulation * self, masl2xtuml_SM_EVT * p_sm_evt, masl2xtuml_SM_SM * p_sm_sm, masl2xtuml_SM_TXN * p_sm_txn )
{
  masl2xtuml_SM_EVT * sm_evt;masl2xtuml_SM_SM * sm_sm;masl2xtuml_SM_TXN * sm_txn;masl2xtuml_SM_NETXN * no_evt_txn=0;
  /* ASSIGN sm_txn = PARAM.sm_txn */
  sm_txn = p_sm_txn;
  /* ASSIGN sm_sm = PARAM.sm_sm */
  sm_sm = p_sm_sm;
  /* ASSIGN sm_evt = PARAM.sm_evt */
  sm_evt = p_sm_evt;
  /* SELECT one no_evt_txn RELATED BY sm_txn->SM_NETXN[R507] */
  no_evt_txn = 0;
  if ( ( 0 != sm_txn ) && ( masl2xtuml_SM_NETXN_CLASS_NUMBER == sm_txn->R507_object_id ) )  no_evt_txn = ( 0 != sm_txn ) ? (masl2xtuml_SM_NETXN *) sm_txn->R507_subtype : 0;
  /* IF ( not_empty no_evt_txn ) */
  if ( ( 0 != no_evt_txn ) ) {
    masl2xtuml_SM_NSTXN * ns_txn;masl2xtuml_SM_STATE * orig_state=0;masl2xtuml_SM_SEME * seme=0;
    /* SELECT one orig_state RELATED BY no_evt_txn->SM_STATE[R508] */
    orig_state = ( 0 != no_evt_txn ) ? no_evt_txn->SM_STATE_R508_originates_from : 0;
    /* UNRELATE no_evt_txn FROM orig_state ACROSS R508 */
    masl2xtuml_SM_NETXN_R508_Unlink_is_origination_of( orig_state, no_evt_txn );
    /* UNRELATE no_evt_txn FROM sm_txn ACROSS R507 */
    masl2xtuml_SM_NETXN_R507_Unlink( sm_txn, no_evt_txn );
    /* DELETE OBJECT INSTANCE no_evt_txn */
    if ( 0 == no_evt_txn ) {
      XTUML_EMPTY_HANDLE_TRACE( "SM_NETXN", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) no_evt_txn, masl2xtuml_DOMAIN_ID, masl2xtuml_SM_NETXN_CLASS_NUMBER );
    /* CREATE OBJECT INSTANCE ns_txn OF SM_NSTXN */
    ns_txn = (masl2xtuml_SM_NSTXN *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_NSTXN_CLASS_NUMBER );
    ns_txn->Trans_ID = (Escher_UniqueID_t) ns_txn;
ns_txn->SM_ID = (Escher_UniqueID_t) ns_txn;
ns_txn->SMstt_ID = (Escher_UniqueID_t) ns_txn;
ns_txn->SMevt_ID = (Escher_UniqueID_t) ns_txn;
    /* RELATE sm_txn TO ns_txn ACROSS R507 */
    masl2xtuml_SM_NSTXN_R507_Link( sm_txn, ns_txn );
    /* SELECT any seme RELATED BY orig_state->SM_SEME[R503] WHERE ( ( SELECTED.SMevt_ID == sm_evt.SMevt_ID ) ) */
    seme = 0;
    if ( 0 != orig_state ) {
      masl2xtuml_SM_SEME * selected;
      Escher_Iterator_s iSM_SEME_R503;
      Escher_IteratorReset( &iSM_SEME_R503, &orig_state->SM_SEME_R503 );
      while ( 0 != ( selected = (masl2xtuml_SM_SEME *) Escher_IteratorNext( &iSM_SEME_R503 ) ) ) {
        if ( ( selected->SMevt_ID == sm_evt->SMevt_ID ) ) {
          seme = selected;
          break;
    }}}
    /* self.StateEventMatrixEntry_disposeChOrEi( sm_seme:seme ) */
    masl2xtuml_ooapopulation_op_StateEventMatrixEntry_disposeChOrEi( self,  seme );
    /* RELATE ns_txn TO seme ACROSS R504 */
    masl2xtuml_SM_NSTXN_R504_Link( seme, ns_txn );
  }
  else {
    masl2xtuml_SM_NSTXN * ns_txn=0;
    /* SELECT one ns_txn RELATED BY sm_txn->SM_NSTXN[R507] */
    ns_txn = 0;
    if ( ( 0 != sm_txn ) && ( masl2xtuml_SM_NSTXN_CLASS_NUMBER == sm_txn->R507_object_id ) )    ns_txn = ( 0 != sm_txn ) ? (masl2xtuml_SM_NSTXN *) sm_txn->R507_subtype : 0;
    /* IF ( not_empty ns_txn ) */
    if ( ( 0 != ns_txn ) ) {
      masl2xtuml_SM_CH * ch;masl2xtuml_SM_STATE * orig_state=0;masl2xtuml_SM_SEME * seme=0;masl2xtuml_SM_SEME * new_seme=0;
      /* SELECT one seme RELATED BY ns_txn->SM_SEME[R504] */
      seme = ( 0 != ns_txn ) ? ns_txn->SM_SEME_R504 : 0;
      /* SELECT one orig_state RELATED BY seme->SM_STATE[R503] */
      orig_state = ( 0 != seme ) ? seme->SM_STATE_R503_is_received_by : 0;
      /* CREATE OBJECT INSTANCE ch OF SM_CH */
      ch = (masl2xtuml_SM_CH *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_CH_CLASS_NUMBER );
      ch->SMstt_ID = (Escher_UniqueID_t) ch;
ch->SMevt_ID = (Escher_UniqueID_t) ch;
ch->SM_ID = (Escher_UniqueID_t) ch;
      /* UNRELATE ns_txn FROM seme ACROSS R504 */
      masl2xtuml_SM_NSTXN_R504_Unlink( seme, ns_txn );
      /* RELATE seme TO ch ACROSS R504 */
      masl2xtuml_SM_CH_R504_Link( seme, ch );
      /* SELECT any new_seme RELATED BY orig_state->SM_SEME[R503] WHERE ( ( SELECTED.SMevt_ID == sm_evt.SMevt_ID ) ) */
      new_seme = 0;
      if ( 0 != orig_state ) {
        masl2xtuml_SM_SEME * selected;
        Escher_Iterator_s iSM_SEME_R503;
        Escher_IteratorReset( &iSM_SEME_R503, &orig_state->SM_SEME_R503 );
        while ( 0 != ( selected = (masl2xtuml_SM_SEME *) Escher_IteratorNext( &iSM_SEME_R503 ) ) ) {
          if ( ( selected->SMevt_ID == sm_evt->SMevt_ID ) ) {
            new_seme = selected;
            break;
      }}}
      /* self.StateEventMatrixEntry_disposeChOrEi( sm_seme:new_seme ) */
      masl2xtuml_ooapopulation_op_StateEventMatrixEntry_disposeChOrEi( self,  new_seme );
      /* RELATE new_seme TO ns_txn ACROSS R504 */
      masl2xtuml_SM_NSTXN_R504_Link( new_seme, ns_txn );
    }
    else {
      masl2xtuml_SM_LEVT * new_evt=0;masl2xtuml_SM_LEVT * levt=0;masl2xtuml_SM_CRTXN * cr_txn=0;
      /* SELECT one cr_txn RELATED BY sm_txn->SM_CRTXN[R507] */
      cr_txn = 0;
      if ( ( 0 != sm_txn ) && ( masl2xtuml_SM_CRTXN_CLASS_NUMBER == sm_txn->R507_object_id ) )      cr_txn = ( 0 != sm_txn ) ? (masl2xtuml_SM_CRTXN *) sm_txn->R507_subtype : 0;
      /* SELECT one levt RELATED BY cr_txn->SM_LEVT[R509] */
      levt = ( 0 != cr_txn ) ? cr_txn->SM_LEVT_R509_is_assigned_to : 0;
      /* IF ( not_empty levt ) */
      if ( ( 0 != levt ) ) {
        /* UNRELATE cr_txn FROM levt ACROSS R509 */
        masl2xtuml_SM_CRTXN_R509_Unlink_has_assigned_to_it( levt, cr_txn );
      }
      /* SELECT one new_evt RELATED BY sm_evt->SM_SEVT[R525]->SM_LEVT[R526] */
      new_evt = 0;
      {      if ( 0 != sm_evt ) {
      masl2xtuml_SM_SEVT * R525_subtype = (masl2xtuml_SM_SEVT *) sm_evt->R525_subtype;
      if ( 0 != R525_subtype )      if ( ( 0 != sm_evt ) && ( masl2xtuml_SM_SEVT_CLASS_NUMBER == sm_evt->R525_object_id ) ) {
      if ( ( 0 != R525_subtype ) && ( masl2xtuml_SM_LEVT_CLASS_NUMBER == R525_subtype->R526_object_id ) )      new_evt = (masl2xtuml_SM_LEVT *) R525_subtype->R526_subtype;
}}}
      /* RELATE cr_txn TO new_evt ACROSS R509 */
      masl2xtuml_SM_CRTXN_R509_Link_has_assigned_to_it( new_evt, cr_txn );
    }
  }
}

/*
 * instance operation:  Operation_newParameter
 */
masl2xtuml_O_TPARM *
masl2xtuml_ooapopulation_op_Operation_newParameter( masl2xtuml_ooapopulation * self, masl2xtuml_O_TFR * p_o_tfr, c_t * p_parameter_name )
{
  masl2xtuml_O_TFR * o_tfr;masl2xtuml_O_TPARM * parm=0;
  /* ASSIGN o_tfr = PARAM.o_tfr */
  o_tfr = p_o_tfr;
  /* SELECT any parm RELATED BY o_tfr->O_TPARM[R117] WHERE ( ( SELECTED.Name == PARAM.parameter_name ) ) */
  parm = 0;
  if ( 0 != o_tfr ) {
    masl2xtuml_O_TPARM * selected;
    Escher_Iterator_s iO_TPARM_R117_contains;
    Escher_IteratorReset( &iO_TPARM_R117_contains, &o_tfr->O_TPARM_R117_contains );
    while ( 0 != ( selected = (masl2xtuml_O_TPARM *) Escher_IteratorNext( &iO_TPARM_R117_contains ) ) ) {
      if ( ( Escher_strcmp( selected->Name, p_parameter_name ) == 0 ) ) {
        parm = selected;
        break;
  }}}
  /* IF ( empty parm ) */
  if ( ( 0 == parm ) ) {
    /* CREATE OBJECT INSTANCE parm OF O_TPARM */
    parm = (masl2xtuml_O_TPARM *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_O_TPARM_CLASS_NUMBER );
    parm->TParm_ID = (Escher_UniqueID_t) parm;
    /* RELATE o_tfr TO parm ACROSS R117 */
    masl2xtuml_O_TPARM_R117_Link_contains( o_tfr, parm );
    /* self.OperationParameter_initialize( name:PARAM.parameter_name, o_tparm:parm ) */
    masl2xtuml_ooapopulation_op_OperationParameter_initialize( self,  p_parameter_name, parm );
    /* self.Operation_createParameterInInteractions( o_tfr:o_tfr, o_tparm:parm ) */
    masl2xtuml_ooapopulation_op_Operation_createParameterInInteractions( self,  o_tfr, parm );
  }
  /* RETURN parm */
  {masl2xtuml_O_TPARM * xtumlOALrv = parm;
  return xtumlOALrv;}
}

/*
 * instance operation:  OperationParameter_initialize
 */
void
masl2xtuml_ooapopulation_op_OperationParameter_initialize( masl2xtuml_ooapopulation * self, c_t * p_name, masl2xtuml_O_TPARM * p_o_tparm )
{
  masl2xtuml_EP_PKG * systypes_pkg;masl2xtuml_O_TPARM * o_tparm;masl2xtuml_O_TFR * operation=0;masl2xtuml_S_DT * def_dt=0;
  /* ASSIGN o_tparm = PARAM.o_tparm */
  o_tparm = p_o_tparm;
  /* SELECT one operation RELATED BY o_tparm->O_TFR[R117] */
  operation = ( 0 != o_tparm ) ? o_tparm->O_TFR_R117_is_part_of_ : 0;
  /* self.Operation_addParameterToOrdering( o_tfr:operation, o_tparm:o_tparm ) */
  masl2xtuml_ooapopulation_op_Operation_addParameterToOrdering( self,  operation, o_tparm );
  /* ASSIGN systypes_pkg = self.systypes_pkg */
  systypes_pkg = self->systypes_pkg;
  /* SELECT any def_dt RELATED BY systypes_pkg->PE_PE[R8000]->S_DT[R8001] WHERE ( ( SELECTED.Name == string ) ) */
  def_dt = 0;
  {  if ( 0 != systypes_pkg ) {
  masl2xtuml_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &systypes_pkg->PE_PE_R8000_contains );
  while ( ( 0 == def_dt ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {masl2xtuml_S_DT * selected = (masl2xtuml_S_DT *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "string" ) == 0 ) ) {
    def_dt = selected;
  }}
}}}
  /* RELATE o_tparm TO def_dt ACROSS R118 */
  masl2xtuml_O_TPARM_R118_Link_defines_the_type_of_( def_dt, o_tparm );
  /* ASSIGN o_tparm.Name = PARAM.name */
  o_tparm->Name = Escher_strcpy( o_tparm->Name, p_name );
}

/*
 * instance operation:  Operation_createParameterInInteractions
 */
void
masl2xtuml_ooapopulation_op_Operation_createParameterInInteractions( masl2xtuml_ooapopulation * self, masl2xtuml_O_TFR * p_o_tfr, masl2xtuml_O_TPARM * p_o_tparm )
{
  masl2xtuml_MSG_M * message=0;masl2xtuml_O_TFR * o_tfr;masl2xtuml_O_TPARM * o_tparm;Escher_ObjectSet_s messages_space={0}; Escher_ObjectSet_s * messages = &messages_space;
  /* ASSIGN o_tparm = PARAM.o_tparm */
  o_tparm = p_o_tparm;
  /* ASSIGN o_tfr = PARAM.o_tfr */
  o_tfr = p_o_tfr;
  /* SELECT many messages RELATED BY o_tfr->MSG_O[R1011]->MSG_SM[R1020]->MSG_M[R1018] */
  Escher_ClearSet( messages );
  {  if ( 0 != o_tfr ) {
  masl2xtuml_MSG_O * MSG_O_R1011_is_invoked_by;
  Escher_Iterator_s iMSG_O_R1011_is_invoked_by;
  Escher_IteratorReset( &iMSG_O_R1011_is_invoked_by, &o_tfr->MSG_O_R1011_is_invoked_by );
  while ( 0 != ( MSG_O_R1011_is_invoked_by = (masl2xtuml_MSG_O *) Escher_IteratorNext( &iMSG_O_R1011_is_invoked_by ) ) ) {
  masl2xtuml_MSG_SM * MSG_SM_R1020 = MSG_O_R1011_is_invoked_by->MSG_SM_R1020;
  if ( 0 != MSG_SM_R1020 ) {
  {masl2xtuml_MSG_M * MSG_M_R1018 = MSG_SM_R1020->MSG_M_R1018;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) messages, MSG_M_R1018 ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) messages, MSG_M_R1018 );
  }}}}}}
  /* FOR EACH message IN messages */
  { Escher_Iterator_s itermessage;
  masl2xtuml_MSG_M * iimessage;
  Escher_IteratorReset( &itermessage, messages );
  while ( (iimessage = (masl2xtuml_MSG_M *)Escher_IteratorNext( &itermessage )) != 0 ) {
    message = iimessage; {
    masl2xtuml_MSG_OA * oa;masl2xtuml_MSG_A * arg;
    /* CREATE OBJECT INSTANCE arg OF MSG_A */
    arg = (masl2xtuml_MSG_A *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_MSG_A_CLASS_NUMBER );
    arg->Arg_ID = (Escher_UniqueID_t) arg;
    /* CREATE OBJECT INSTANCE oa OF MSG_OA */
    oa = (masl2xtuml_MSG_OA *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_MSG_OA_CLASS_NUMBER );
    oa->Arg_ID = (Escher_UniqueID_t) oa;
    /* RELATE oa TO o_tparm ACROSS R1015 */
    masl2xtuml_MSG_OA_R1015_Link_represents( o_tparm, oa );
    /* RELATE oa TO arg ACROSS R1013 */
    masl2xtuml_MSG_OA_R1013_Link( arg, oa );
    /* RELATE message TO arg ACROSS R1001 */
    masl2xtuml_MSG_A_R1001_Link_has_a_formal( message, arg );
  }}}
  Escher_ClearSet( messages ); 
}

/*
 * instance operation:  Operation_addParameterToOrdering
 */
void
masl2xtuml_ooapopulation_op_Operation_addParameterToOrdering( masl2xtuml_ooapopulation * self, masl2xtuml_O_TFR * p_o_tfr, masl2xtuml_O_TPARM * p_o_tparm )
{
  masl2xtuml_O_TPARM * parameter;masl2xtuml_O_TFR * o_tfr;
  /* ASSIGN o_tfr = PARAM.o_tfr */
  o_tfr = p_o_tfr;
  /* ASSIGN parameter = PARAM.o_tparm */
  parameter = p_o_tparm;
  /* IF ( not_empty parameter ) */
  if ( ( 0 != parameter ) ) {
    masl2xtuml_O_TPARM * peer=0;Escher_ObjectSet_s peers_space={0}; Escher_ObjectSet_s * peers = &peers_space;
    /* SELECT many peers RELATED BY o_tfr->O_TPARM[R117] */
    Escher_ClearSet( peers );
    if ( 0 != o_tfr ) {
      Escher_CopySet( peers, &o_tfr->O_TPARM_R117_contains );
    }
    /* FOR EACH peer IN peers */
    { Escher_Iterator_s iterpeer;
    masl2xtuml_O_TPARM * iipeer;
    Escher_IteratorReset( &iterpeer, peers );
    while ( (iipeer = (masl2xtuml_O_TPARM *)Escher_IteratorNext( &iterpeer )) != 0 ) {
      peer = iipeer; {
      /* IF ( ( peer != parameter ) ) */
      if ( ( peer != parameter ) ) {
        masl2xtuml_O_TPARM * predecessor=0;
        /* SELECT one predecessor RELATED BY peer->O_TPARM[R124.precedes] */
        predecessor = ( 0 != peer ) ? peer->O_TPARM_R124_precedes : 0;
        /* IF ( empty predecessor ) */
        if ( ( 0 == predecessor ) ) {
          /* RELATE parameter TO peer ACROSS R124 */
          masl2xtuml_O_TPARM_R124_Link_succeeds( parameter, peer );
        }
      }
    }}}
    Escher_ClearSet( peers ); 
  }
}

/*
 * instance operation:  Function_newParameter
 */
masl2xtuml_S_SPARM *
masl2xtuml_ooapopulation_op_Function_newParameter( masl2xtuml_ooapopulation * self, c_t * p_parameter_name, masl2xtuml_S_SYNC * p_s_sync )
{
  masl2xtuml_S_SYNC * s_sync;masl2xtuml_S_SPARM * parm=0;
  /* ASSIGN s_sync = PARAM.s_sync */
  s_sync = p_s_sync;
  /* SELECT any parm RELATED BY s_sync->S_SPARM[R24] WHERE ( ( SELECTED.Name == PARAM.parameter_name ) ) */
  parm = 0;
  if ( 0 != s_sync ) {
    masl2xtuml_S_SPARM * selected;
    Escher_Iterator_s iS_SPARM_R24_defines;
    Escher_IteratorReset( &iS_SPARM_R24_defines, &s_sync->S_SPARM_R24_defines );
    while ( 0 != ( selected = (masl2xtuml_S_SPARM *) Escher_IteratorNext( &iS_SPARM_R24_defines ) ) ) {
      if ( ( Escher_strcmp( selected->Name, p_parameter_name ) == 0 ) ) {
        parm = selected;
        break;
  }}}
  /* IF ( empty parm ) */
  if ( ( 0 == parm ) ) {
    /* CREATE OBJECT INSTANCE parm OF S_SPARM */
    parm = (masl2xtuml_S_SPARM *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_S_SPARM_CLASS_NUMBER );
    parm->SParm_ID = (Escher_UniqueID_t) parm;
    /* RELATE s_sync TO parm ACROSS R24 */
    masl2xtuml_S_SPARM_R24_Link_defines( s_sync, parm );
    /* self.FunctionParameter_initialize( name:PARAM.parameter_name, s_sparm:parm ) */
    masl2xtuml_ooapopulation_op_FunctionParameter_initialize( self,  p_parameter_name, parm );
    /* self.Function_createMessageArgumentsForParameter( s_sparm:parm, s_sync:s_sync ) */
    masl2xtuml_ooapopulation_op_Function_createMessageArgumentsForParameter( self,  parm, s_sync );
  }
  /* RETURN parm */
  {masl2xtuml_S_SPARM * xtumlOALrv = parm;
  return xtumlOALrv;}
}

/*
 * instance operation:  FunctionParameter_initialize
 */
void
masl2xtuml_ooapopulation_op_FunctionParameter_initialize( masl2xtuml_ooapopulation * self, c_t * p_name, masl2xtuml_S_SPARM * p_s_sparm )
{
  masl2xtuml_EP_PKG * systypes_pkg;masl2xtuml_S_SPARM * s_sparm;masl2xtuml_S_SYNC * function=0;masl2xtuml_S_DT * def_dt=0;
  /* ASSIGN s_sparm = PARAM.s_sparm */
  s_sparm = p_s_sparm;
  /* SELECT one function RELATED BY s_sparm->S_SYNC[R24] */
  function = ( 0 != s_sparm ) ? s_sparm->S_SYNC_R24_is_defined_for : 0;
  /* self.Function_addParameterToOrder( s_sparm:s_sparm, s_sync:function ) */
  masl2xtuml_ooapopulation_op_Function_addParameterToOrder( self,  s_sparm, function );
  /* ASSIGN systypes_pkg = self.systypes_pkg */
  systypes_pkg = self->systypes_pkg;
  /* SELECT any def_dt RELATED BY systypes_pkg->PE_PE[R8000]->S_DT[R8001] WHERE ( ( SELECTED.Name == string ) ) */
  def_dt = 0;
  {  if ( 0 != systypes_pkg ) {
  masl2xtuml_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &systypes_pkg->PE_PE_R8000_contains );
  while ( ( 0 == def_dt ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {masl2xtuml_S_DT * selected = (masl2xtuml_S_DT *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "string" ) == 0 ) ) {
    def_dt = selected;
  }}
}}}
  /* RELATE s_sparm TO def_dt ACROSS R26 */
  masl2xtuml_S_SPARM_R26_Link_describes_type_of( def_dt, s_sparm );
  /* ASSIGN s_sparm.Name = PARAM.name */
  s_sparm->Name = Escher_strcpy( s_sparm->Name, p_name );
}

/*
 * instance operation:  Function_addParameterToOrder
 */
void
masl2xtuml_ooapopulation_op_Function_addParameterToOrder( masl2xtuml_ooapopulation * self, masl2xtuml_S_SPARM * p_s_sparm, masl2xtuml_S_SYNC * p_s_sync )
{
  masl2xtuml_S_SPARM * parameter;masl2xtuml_S_SYNC * s_sync;
  /* ASSIGN s_sync = PARAM.s_sync */
  s_sync = p_s_sync;
  /* ASSIGN parameter = PARAM.s_sparm */
  parameter = p_s_sparm;
  /* IF ( not_empty parameter ) */
  if ( ( 0 != parameter ) ) {
    masl2xtuml_S_SPARM * peer=0;Escher_ObjectSet_s peers_space={0}; Escher_ObjectSet_s * peers = &peers_space;
    /* SELECT many peers RELATED BY s_sync->S_SPARM[R24] */
    Escher_ClearSet( peers );
    if ( 0 != s_sync ) {
      Escher_CopySet( peers, &s_sync->S_SPARM_R24_defines );
    }
    /* FOR EACH peer IN peers */
    { Escher_Iterator_s iterpeer;
    masl2xtuml_S_SPARM * iipeer;
    Escher_IteratorReset( &iterpeer, peers );
    while ( (iipeer = (masl2xtuml_S_SPARM *)Escher_IteratorNext( &iterpeer )) != 0 ) {
      peer = iipeer; {
      /* IF ( ( peer != parameter ) ) */
      if ( ( peer != parameter ) ) {
        masl2xtuml_S_SPARM * predecessor=0;
        /* SELECT one predecessor RELATED BY peer->S_SPARM[R54.precedes] */
        predecessor = ( 0 != peer ) ? peer->S_SPARM_R54_precedes : 0;
        /* IF ( empty predecessor ) */
        if ( ( 0 == predecessor ) ) {
          /* RELATE parameter TO peer ACROSS R54 */
          masl2xtuml_S_SPARM_R54_Link_succeeds( parameter, peer );
        }
      }
    }}}
    Escher_ClearSet( peers ); 
  }
}

/*
 * instance operation:  Function_createMessageArgumentsForParameter
 */
void
masl2xtuml_ooapopulation_op_Function_createMessageArgumentsForParameter( masl2xtuml_ooapopulation * self, masl2xtuml_S_SPARM * p_s_sparm, masl2xtuml_S_SYNC * p_s_sync )
{
  masl2xtuml_S_SPARM * parameter;masl2xtuml_S_SYNC * s_sync;
  /* ASSIGN s_sync = PARAM.s_sync */
  s_sync = p_s_sync;
  /* ASSIGN parameter = PARAM.s_sparm */
  parameter = p_s_sparm;
  /* IF ( not_empty parameter ) */
  if ( ( 0 != parameter ) ) {
    masl2xtuml_MSG_M * message=0;Escher_ObjectSet_s messages_space={0}; Escher_ObjectSet_s * messages = &messages_space;
    /* SELECT many messages RELATED BY s_sync->MSG_F[R1010]->MSG_SM[R1020]->MSG_M[R1018] */
    Escher_ClearSet( messages );
    {    if ( 0 != s_sync ) {
    masl2xtuml_MSG_F * MSG_F_R1010_is_invoked_by;
    Escher_Iterator_s iMSG_F_R1010_is_invoked_by;
    Escher_IteratorReset( &iMSG_F_R1010_is_invoked_by, &s_sync->MSG_F_R1010_is_invoked_by );
    while ( 0 != ( MSG_F_R1010_is_invoked_by = (masl2xtuml_MSG_F *) Escher_IteratorNext( &iMSG_F_R1010_is_invoked_by ) ) ) {
    masl2xtuml_MSG_SM * MSG_SM_R1020 = MSG_F_R1010_is_invoked_by->MSG_SM_R1020;
    if ( 0 != MSG_SM_R1020 ) {
    {masl2xtuml_MSG_M * MSG_M_R1018 = MSG_SM_R1020->MSG_M_R1018;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) messages, MSG_M_R1018 ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) messages, MSG_M_R1018 );
    }}}}}}
    /* FOR EACH message IN messages */
    { Escher_Iterator_s itermessage;
    masl2xtuml_MSG_M * iimessage;
    Escher_IteratorReset( &itermessage, messages );
    while ( (iimessage = (masl2xtuml_MSG_M *)Escher_IteratorNext( &itermessage )) != 0 ) {
      message = iimessage; {
      masl2xtuml_MSG_FA * fa;masl2xtuml_MSG_A * arg;
      /* CREATE OBJECT INSTANCE arg OF MSG_A */
      arg = (masl2xtuml_MSG_A *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_MSG_A_CLASS_NUMBER );
      arg->Arg_ID = (Escher_UniqueID_t) arg;
      /* CREATE OBJECT INSTANCE fa OF MSG_FA */
      fa = (masl2xtuml_MSG_FA *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_MSG_FA_CLASS_NUMBER );
      fa->Arg_ID = (Escher_UniqueID_t) fa;
      /* RELATE fa TO parameter ACROSS R1016 */
      masl2xtuml_MSG_FA_R1016_Link_represents( parameter, fa );
      /* RELATE fa TO arg ACROSS R1013 */
      masl2xtuml_MSG_FA_R1013_Link( arg, fa );
      /* RELATE message TO arg ACROSS R1001 */
      masl2xtuml_MSG_A_R1001_Link_has_a_formal( message, arg );
    }}}
    Escher_ClearSet( messages ); 
  }
}

/*
 * instance operation:  FunctionParameter_setType
 */
void
masl2xtuml_ooapopulation_op_FunctionParameter_setType( masl2xtuml_ooapopulation * self, masl2xtuml_S_SPARM * p_s_sparm, c_t * p_type_name )
{
  c_t * type_name=0;masl2xtuml_S_SPARM * s_sparm;masl2xtuml_S_DT * s_dt=0;masl2xtuml_S_DT * cur_s_dt=0;
  /* ASSIGN s_sparm = PARAM.s_sparm */
  s_sparm = p_s_sparm;
  /* ASSIGN type_name = PARAM.type_name */
  type_name = Escher_strcpy( type_name, p_type_name );
  /* SELECT any s_dt FROM INSTANCES OF S_DT WHERE ( SELECTED.Name == type_name ) */
  s_dt = 0;
  { masl2xtuml_S_DT * selected;
    Escher_Iterator_s iters_dtmasl2xtuml_S_DT;
    Escher_IteratorReset( &iters_dtmasl2xtuml_S_DT, &pG_masl2xtuml_S_DT_extent.active );
    while ( (selected = (masl2xtuml_S_DT *) Escher_IteratorNext( &iters_dtmasl2xtuml_S_DT )) != 0 ) {
      if ( ( Escher_strcmp( selected->Name, type_name ) == 0 ) ) {
        s_dt = selected;
        break;
      }
    }
  }
  /* IF ( empty s_dt ) */
  if ( ( 0 == s_dt ) ) {
    /* TRACE::log( flavor:failure, id:0, message:( ( ( could not find datatype   + type_name ) +  to set for attribute  ) + s_sparm.Name ) ) */
    TRACE_log( "failure", 0, Escher_stradd( Escher_stradd( Escher_stradd( "could not find datatype  ", type_name ), " to set for attribute " ), s_sparm->Name ) );
  }
  /* SELECT one cur_s_dt RELATED BY s_sparm->S_DT[R26] */
  cur_s_dt = ( 0 != s_sparm ) ? s_sparm->S_DT_R26_is_typed_by_ : 0;
  /* IF ( ( s_dt != cur_s_dt ) ) */
  if ( ( s_dt != cur_s_dt ) ) {
    /* UNRELATE s_sparm FROM cur_s_dt ACROSS R26 */
    masl2xtuml_S_SPARM_R26_Unlink_describes_type_of( cur_s_dt, s_sparm );
    /* RELATE s_sparm TO s_dt ACROSS R26 */
    masl2xtuml_S_SPARM_R26_Link_describes_type_of( s_dt, s_sparm );
  }
}

/*
 * instance operation:  OperationParameter_setType
 */
void
masl2xtuml_ooapopulation_op_OperationParameter_setType( masl2xtuml_ooapopulation * self, masl2xtuml_O_TPARM * p_o_tparm, c_t * p_type_name )
{
  c_t * type_name=0;masl2xtuml_O_TPARM * o_tparm;masl2xtuml_S_DT * s_dt=0;masl2xtuml_S_DT * cur_s_dt=0;
  /* ASSIGN o_tparm = PARAM.o_tparm */
  o_tparm = p_o_tparm;
  /* ASSIGN type_name = PARAM.type_name */
  type_name = Escher_strcpy( type_name, p_type_name );
  /* SELECT any s_dt FROM INSTANCES OF S_DT WHERE ( SELECTED.Name == type_name ) */
  s_dt = 0;
  { masl2xtuml_S_DT * selected;
    Escher_Iterator_s iters_dtmasl2xtuml_S_DT;
    Escher_IteratorReset( &iters_dtmasl2xtuml_S_DT, &pG_masl2xtuml_S_DT_extent.active );
    while ( (selected = (masl2xtuml_S_DT *) Escher_IteratorNext( &iters_dtmasl2xtuml_S_DT )) != 0 ) {
      if ( ( Escher_strcmp( selected->Name, type_name ) == 0 ) ) {
        s_dt = selected;
        break;
      }
    }
  }
  /* IF ( empty s_dt ) */
  if ( ( 0 == s_dt ) ) {
    /* TRACE::log( flavor:failure, id:0, message:( ( ( could not find datatype   + type_name ) +  to set for attribute  ) + o_tparm.Name ) ) */
    TRACE_log( "failure", 0, Escher_stradd( Escher_stradd( Escher_stradd( "could not find datatype  ", type_name ), " to set for attribute " ), o_tparm->Name ) );
  }
  /* SELECT one cur_s_dt RELATED BY o_tparm->S_DT[R118] */
  cur_s_dt = ( 0 != o_tparm ) ? o_tparm->S_DT_R118_is_defined_by : 0;
  /* IF ( ( s_dt != cur_s_dt ) ) */
  if ( ( s_dt != cur_s_dt ) ) {
    /* UNRELATE o_tparm FROM cur_s_dt ACROSS R118 */
    masl2xtuml_O_TPARM_R118_Unlink_defines_the_type_of_( cur_s_dt, o_tparm );
    /* RELATE o_tparm TO s_dt ACROSS R118 */
    masl2xtuml_O_TPARM_R118_Link_defines_the_type_of_( s_dt, o_tparm );
  }
}

/*
 * instance operation:  clearRelationshipCache
 */
void
masl2xtuml_ooapopulation_op_clearRelationshipCache( masl2xtuml_ooapopulation * self)
{
  masl2xtuml_ooaparticipation * part=0;Escher_ObjectSet_s parts_space={0}; Escher_ObjectSet_s * parts = &parts_space;
  /* ASSIGN self.current_rel.type = NONE */
  self->current_rel.type = masl2xtuml_RELATIONSHIP_TYPE_NONE_e;
  /* ASSIGN self.current_rel.number =  */
  self->current_rel.number = Escher_strcpy( self->current_rel.number, "" );
  /* ASSIGN self.current_rel.usingObj =  */
  self->current_rel.usingObj = Escher_strcpy( self->current_rel.usingObj, "" );
  /* SELECT many parts FROM INSTANCES OF ooaparticipation */
  Escher_CopySet( parts, &pG_masl2xtuml_ooaparticipation_extent.active );
  /* FOR EACH part IN parts */
  { Escher_Iterator_s iterpart;
  masl2xtuml_ooaparticipation * iipart;
  Escher_IteratorReset( &iterpart, parts );
  while ( (iipart = (masl2xtuml_ooaparticipation *)Escher_IteratorNext( &iterpart )) != 0 ) {
    part = iipart; {
    /* DELETE OBJECT INSTANCE part */
    if ( 0 == part ) {
      XTUML_EMPTY_HANDLE_TRACE( "ooaparticipation", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) part, masl2xtuml_DOMAIN_ID, masl2xtuml_ooaparticipation_CLASS_NUMBER );
  }}}
  Escher_ClearSet( parts );
}

/*
 * instance operation:  Package_newAssociation
 */
void
masl2xtuml_ooapopulation_op_Package_newAssociation( masl2xtuml_ooapopulation * self, masl2xtuml_EP_PKG * p_ep_pkg )
{
  masl2xtuml_EP_PKG * ep_pkg;masl2xtuml_ooaparticipation * toOOAPart=0;masl2xtuml_ooaparticipation * fromOOAPart=0;masl2xtuml_O_OBJ * toClass=0;masl2xtuml_O_OBJ * fromClass=0;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* SELECT any fromOOAPart FROM INSTANCES OF ooaparticipation WHERE ( SELECTED.isFirst == TRUE ) */
  fromOOAPart = 0;
  { masl2xtuml_ooaparticipation * selected;
    Escher_Iterator_s iterfromOOAPartmasl2xtuml_ooaparticipation;
    Escher_IteratorReset( &iterfromOOAPartmasl2xtuml_ooaparticipation, &pG_masl2xtuml_ooaparticipation_extent.active );
    while ( (selected = (masl2xtuml_ooaparticipation *) Escher_IteratorNext( &iterfromOOAPartmasl2xtuml_ooaparticipation )) != 0 ) {
      if ( ( selected->isFirst == TRUE ) ) {
        fromOOAPart = selected;
        break;
      }
    }
  }
  /* SELECT any toOOAPart FROM INSTANCES OF ooaparticipation WHERE ( SELECTED.isFirst == FALSE ) */
  toOOAPart = 0;
  { masl2xtuml_ooaparticipation * selected;
    Escher_Iterator_s itertoOOAPartmasl2xtuml_ooaparticipation;
    Escher_IteratorReset( &itertoOOAPartmasl2xtuml_ooaparticipation, &pG_masl2xtuml_ooaparticipation_extent.active );
    while ( (selected = (masl2xtuml_ooaparticipation *) Escher_IteratorNext( &itertoOOAPartmasl2xtuml_ooaparticipation )) != 0 ) {
      if ( ( selected->isFirst == FALSE ) ) {
        toOOAPart = selected;
        break;
      }
    }
  }
  /* SELECT any fromClass RELATED BY ep_pkg->PE_PE[R8000]->O_OBJ[R8001] WHERE ( ( SELECTED.Name == fromOOAPart.className ) ) */
  fromClass = 0;
  {  if ( 0 != ep_pkg ) {
  masl2xtuml_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
  while ( ( 0 == fromClass ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_O_OBJ_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {masl2xtuml_O_OBJ * selected = (masl2xtuml_O_OBJ *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, fromOOAPart->className ) == 0 ) ) {
    fromClass = selected;
  }}
}}}
  /* SELECT any toClass RELATED BY ep_pkg->PE_PE[R8000]->O_OBJ[R8001] WHERE ( ( SELECTED.Name == toOOAPart.className ) ) */
  toClass = 0;
  {  if ( 0 != ep_pkg ) {
  masl2xtuml_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
  while ( ( 0 == toClass ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_O_OBJ_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {masl2xtuml_O_OBJ * selected = (masl2xtuml_O_OBJ *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, toOOAPart->className ) == 0 ) ) {
    toClass = selected;
  }}
}}}
  /* IF ( ( not_empty fromClass and not_empty toClass ) ) */
  if ( ( ( 0 != fromClass ) && ( 0 != toClass ) ) ) {
    masl2xtuml_R_PART * toPART;masl2xtuml_R_RTO * toRTO;masl2xtuml_R_OIR * toOIR;masl2xtuml_R_PART * fromPART;masl2xtuml_R_RTO * fromRTO;masl2xtuml_R_OIR * fromOIR;masl2xtuml_R_SIMP * simp;masl2xtuml_PE_PE * pe;masl2xtuml_R_REL * assoc;
    /* CREATE OBJECT INSTANCE assoc OF R_REL */
    assoc = (masl2xtuml_R_REL *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_REL_CLASS_NUMBER );
    assoc->Rel_ID = (Escher_UniqueID_t) assoc;
    /* CREATE OBJECT INSTANCE pe OF PE_PE */
    pe = (masl2xtuml_PE_PE *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_PE_PE_CLASS_NUMBER );
    pe->Element_ID = (Escher_UniqueID_t) pe;
    /* RELATE assoc TO pe ACROSS R8001 */
    masl2xtuml_R_REL_R8001_Link( pe, assoc );
    /* RELATE pe TO ep_pkg ACROSS R8000 */
    masl2xtuml_PE_PE_R8000_Link_contains( ep_pkg, pe );
    /* ASSIGN pe.type = ASSOCIATION */
    pe->type = masl2xtuml_ElementTypeConstants_ASSOCIATION_e;
    /* self.PackageableElement_initialize( pe_pe:pe ) */
    masl2xtuml_ooapopulation_op_PackageableElement_initialize( self,  pe );
    /* self.Association_initialize( r_rel:assoc ) */
    masl2xtuml_ooapopulation_op_Association_initialize( self,  assoc );
    /* CREATE OBJECT INSTANCE simp OF R_SIMP */
    simp = (masl2xtuml_R_SIMP *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_SIMP_CLASS_NUMBER );
    simp->Rel_ID = (Escher_UniqueID_t) simp;
    /* RELATE simp TO assoc ACROSS R206 */
    masl2xtuml_R_SIMP_R206_Link( assoc, simp );
    /* CREATE OBJECT INSTANCE fromOIR OF R_OIR */
    fromOIR = (masl2xtuml_R_OIR *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_OIR_CLASS_NUMBER );
    fromOIR->Obj_ID = (Escher_UniqueID_t) fromOIR;
fromOIR->Rel_ID = (Escher_UniqueID_t) fromOIR;
fromOIR->OIR_ID = (Escher_UniqueID_t) fromOIR;
    /* RELATE fromClass TO assoc ACROSS R201 USING fromOIR */
    masl2xtuml_R_OIR_R201_Link( assoc, fromClass, fromOIR );
    /* CREATE OBJECT INSTANCE fromRTO OF R_RTO */
    fromRTO = (masl2xtuml_R_RTO *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_RTO_CLASS_NUMBER );
    fromRTO->Obj_ID = (Escher_UniqueID_t) fromRTO;
fromRTO->Rel_ID = (Escher_UniqueID_t) fromRTO;
fromRTO->OIR_ID = (Escher_UniqueID_t) fromRTO;
    /* RELATE fromOIR TO fromRTO ACROSS R203 */
    masl2xtuml_R_RTO_R203_Link( fromOIR, fromRTO );
    /* CREATE OBJECT INSTANCE fromPART OF R_PART */
    fromPART = (masl2xtuml_R_PART *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_PART_CLASS_NUMBER );
    fromPART->Obj_ID = (Escher_UniqueID_t) fromPART;
fromPART->Rel_ID = (Escher_UniqueID_t) fromPART;
fromPART->OIR_ID = (Escher_UniqueID_t) fromPART;
    /* RELATE fromPART TO fromRTO ACROSS R204 */
    masl2xtuml_R_PART_R204_Link( fromRTO, fromPART );
    /* RELATE fromPART TO simp ACROSS R207 */
    masl2xtuml_R_PART_R207_Link_relates( simp, fromPART );
    /* ASSIGN fromPART.Mult = toOOAPart.multiplicity */
    fromPART->Mult = toOOAPart->multiplicity;
    /* ASSIGN fromPART.Cond = toOOAPart.conditionality */
    fromPART->Cond = toOOAPart->conditionality;
    /* ASSIGN fromPART.Txt_Phrs = toOOAPart.phrase */
    fromPART->Txt_Phrs = Escher_strcpy( fromPART->Txt_Phrs, toOOAPart->phrase );
    /* CREATE OBJECT INSTANCE toOIR OF R_OIR */
    toOIR = (masl2xtuml_R_OIR *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_OIR_CLASS_NUMBER );
    toOIR->Obj_ID = (Escher_UniqueID_t) toOIR;
toOIR->Rel_ID = (Escher_UniqueID_t) toOIR;
toOIR->OIR_ID = (Escher_UniqueID_t) toOIR;
    /* RELATE toClass TO assoc ACROSS R201 USING toOIR */
    masl2xtuml_R_OIR_R201_Link( assoc, toClass, toOIR );
    /* CREATE OBJECT INSTANCE toRTO OF R_RTO */
    toRTO = (masl2xtuml_R_RTO *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_RTO_CLASS_NUMBER );
    toRTO->Obj_ID = (Escher_UniqueID_t) toRTO;
toRTO->Rel_ID = (Escher_UniqueID_t) toRTO;
toRTO->OIR_ID = (Escher_UniqueID_t) toRTO;
    /* RELATE toOIR TO toRTO ACROSS R203 */
    masl2xtuml_R_RTO_R203_Link( toOIR, toRTO );
    /* CREATE OBJECT INSTANCE toPART OF R_PART */
    toPART = (masl2xtuml_R_PART *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_PART_CLASS_NUMBER );
    toPART->Obj_ID = (Escher_UniqueID_t) toPART;
toPART->Rel_ID = (Escher_UniqueID_t) toPART;
toPART->OIR_ID = (Escher_UniqueID_t) toPART;
    /* RELATE toPART TO toRTO ACROSS R204 */
    masl2xtuml_R_PART_R204_Link( toRTO, toPART );
    /* RELATE toPART TO simp ACROSS R207 */
    masl2xtuml_R_PART_R207_Link_relates( simp, toPART );
    /* ASSIGN toPART.Mult = fromOOAPart.multiplicity */
    toPART->Mult = fromOOAPart->multiplicity;
    /* ASSIGN toPART.Cond = fromOOAPart.conditionality */
    toPART->Cond = fromOOAPart->conditionality;
    /* ASSIGN toPART.Txt_Phrs = fromOOAPart.phrase */
    toPART->Txt_Phrs = Escher_strcpy( toPART->Txt_Phrs, fromOOAPart->phrase );
  }
}

/*
 * instance operation:  Association_initialize
 */
void
masl2xtuml_ooapopulation_op_Association_initialize( masl2xtuml_ooapopulation * self, masl2xtuml_R_REL * p_r_rel )
{
  i_t relNumber;masl2xtuml_R_REL * r_rel;
  /* ASSIGN r_rel = PARAM.r_rel */
  r_rel = p_r_rel;
  /* ASSIGN relNumber = STRING::atoi(s:self.current_rel.number) */
  relNumber = STRING_atoi( self->current_rel.number );
  /* ASSIGN r_rel.Numb = relNumber */
  r_rel->Numb = relNumber;
}

/*
 * instance operation:  transformAssociation
 */
void
masl2xtuml_ooapopulation_op_transformAssociation( masl2xtuml_ooapopulation * self)
{
  masl2xtuml_C_C * current_component;masl2xtuml_EP_PKG * internals_pkg=0;
  /* ASSIGN current_component = self.current_component */
  current_component = self->current_component;
  /* SELECT any internals_pkg RELATED BY current_component->PE_PE[R8003]->EP_PKG[R8001] WHERE ( ( SELECTED.Name == current_component.Name ) ) */
  internals_pkg = 0;
  {  if ( 0 != current_component ) {
  masl2xtuml_PE_PE * PE_PE_R8003_contains;
  Escher_Iterator_s iPE_PE_R8003_contains;
  Escher_IteratorReset( &iPE_PE_R8003_contains, &current_component->PE_PE_R8003_contains );
  while ( ( 0 == internals_pkg ) && ( 0 != ( PE_PE_R8003_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8003_contains ) && ( masl2xtuml_EP_PKG_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) )  {masl2xtuml_EP_PKG * selected = (masl2xtuml_EP_PKG *) PE_PE_R8003_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, current_component->Name ) == 0 ) ) {
    internals_pkg = selected;
  }}
}}}
  /* IF ( ( self.current_rel.type == ASSOCIATIVE ) ) */
  if ( ( self->current_rel.type == masl2xtuml_RELATIONSHIP_TYPE_ASSOCIATIVE_e ) ) {
    /* self.Package_newAssociation( ep_pkg:internals_pkg ) */
    masl2xtuml_ooapopulation_op_Package_newAssociation( self,  internals_pkg );
    /* self.Package_newAssociative( ep_pkg:internals_pkg ) */
    masl2xtuml_ooapopulation_op_Package_newAssociative( self,  internals_pkg );
  }
  else if ( ( self->current_rel.type == masl2xtuml_RELATIONSHIP_TYPE_REGULAR_e ) ) {
    /* self.Package_newAssociation( ep_pkg:internals_pkg ) */
    masl2xtuml_ooapopulation_op_Package_newAssociation( self,  internals_pkg );
  }
  else if ( ( self->current_rel.type == masl2xtuml_RELATIONSHIP_TYPE_SUBSUPER_e ) ) {
    /* self.Package_newSubsuper( ep_pkg:internals_pkg ) */
    masl2xtuml_ooapopulation_op_Package_newSubsuper( self,  internals_pkg );
  }
}

/*
 * instance operation:  Package_newAssociative
 */
void
masl2xtuml_ooapopulation_op_Package_newAssociative( masl2xtuml_ooapopulation * self, masl2xtuml_EP_PKG * p_ep_pkg )
{
  masl2xtuml_O_OBJ * clazz=0;i_t relNumber;masl2xtuml_EP_PKG * ep_pkg;masl2xtuml_R_SIMP * simp=0;Escher_ObjectSet_s classes_space={0}; Escher_ObjectSet_s * classes = &classes_space;masl2xtuml_R_REL * toAssoc=0;masl2xtuml_O_OBJ * fromClass=0;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* SELECT any fromClass RELATED BY ep_pkg->PE_PE[R8000]->O_OBJ[R8001] WHERE ( ( SELECTED.Name == self.current_rel.usingObj ) ) */
  fromClass = 0;
  {  if ( 0 != ep_pkg ) {
  masl2xtuml_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
  while ( ( 0 == fromClass ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_O_OBJ_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {masl2xtuml_O_OBJ * selected = (masl2xtuml_O_OBJ *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, self->current_rel.usingObj ) == 0 ) ) {
    fromClass = selected;
  }}
}}}
  /* ASSIGN relNumber = STRING::atoi(s:self.current_rel.number) */
  relNumber = STRING_atoi( self->current_rel.number );
  /* SELECT any toAssoc RELATED BY ep_pkg->PE_PE[R8000]->R_REL[R8001] WHERE ( ( SELECTED.Numb == relNumber ) ) */
  toAssoc = 0;
  {  if ( 0 != ep_pkg ) {
  masl2xtuml_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
  while ( ( 0 == toAssoc ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_R_REL_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {masl2xtuml_R_REL * selected = (masl2xtuml_R_REL *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( selected->Numb == relNumber ) ) {
    toAssoc = selected;
  }}
}}}
  /* SELECT many classes RELATED BY toAssoc->R_OIR[R201]->O_OBJ[R201] */
  Escher_ClearSet( classes );
  {  if ( 0 != toAssoc ) {
  masl2xtuml_R_OIR * R_OIR_R201;
  Escher_Iterator_s iR_OIR_R201;
  Escher_IteratorReset( &iR_OIR_R201, &toAssoc->R_OIR_R201 );
  while ( 0 != ( R_OIR_R201 = (masl2xtuml_R_OIR *) Escher_IteratorNext( &iR_OIR_R201 ) ) ) {
  {masl2xtuml_O_OBJ * O_OBJ_R201_abstracts_association_between_instances_of = R_OIR_R201->O_OBJ_R201_abstracts_association_between_instances_of;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) classes, O_OBJ_R201_abstracts_association_between_instances_of ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) classes, O_OBJ_R201_abstracts_association_between_instances_of );
  }}}}}
  /* FOR EACH clazz IN classes */
  { Escher_Iterator_s iterclazz;
  masl2xtuml_O_OBJ * iiclazz;
  Escher_IteratorReset( &iterclazz, classes );
  while ( (iiclazz = (masl2xtuml_O_OBJ *)Escher_IteratorNext( &iterclazz )) != 0 ) {
    clazz = iiclazz; {
    /* IF ( ( clazz == fromClass ) ) */
    if ( ( clazz == fromClass ) ) {
      /* RETURN  */
      Escher_ClearSet( classes ); 
      return;    }
  }}}
  /* IF ( ( empty fromClass or empty toAssoc ) ) */
  if ( ( ( 0 == fromClass ) || ( 0 == toAssoc ) ) ) {
    /* RETURN  */
    Escher_ClearSet( classes ); 
    return;  }
  /* SELECT one simp RELATED BY toAssoc->R_SIMP[R206] */
  simp = 0;
  if ( ( 0 != toAssoc ) && ( masl2xtuml_R_SIMP_CLASS_NUMBER == toAssoc->R206_object_id ) )  simp = ( 0 != toAssoc ) ? (masl2xtuml_R_SIMP *) toAssoc->R206_subtype : 0;
  /* IF ( empty simp ) */
  if ( ( 0 == simp ) ) {
    /* RETURN  */
    Escher_ClearSet( classes ); 
    return;  }
  else {
    masl2xtuml_O_OBJ * usingClass=0;
    /* SELECT any usingClass RELATED BY ep_pkg->PE_PE[R8000]->O_OBJ[R8001] WHERE ( ( SELECTED.Name == self.current_rel.usingObj ) ) */
    usingClass = 0;
    {    if ( 0 != ep_pkg ) {
    masl2xtuml_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
    while ( ( 0 == usingClass ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_O_OBJ_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    {masl2xtuml_O_OBJ * selected = (masl2xtuml_O_OBJ *) PE_PE_R8000_contains->R8001_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, self->current_rel.usingObj ) == 0 ) ) {
      usingClass = selected;
    }}
}}}
    /* self.SimpleAssociation_migrateToLinked( r_simp:simp, using:usingClass ) */
    masl2xtuml_ooapopulation_op_SimpleAssociation_migrateToLinked( self,  simp, usingClass );
    /* RETURN  */
    Escher_ClearSet( classes ); 
    return;  }
  Escher_ClearSet( classes ); 
}

/*
 * instance operation:  SimpleAssociation_migrateToLinked
 */
void
masl2xtuml_ooapopulation_op_SimpleAssociation_migrateToLinked( masl2xtuml_ooapopulation * self, masl2xtuml_R_SIMP * p_r_simp, masl2xtuml_O_OBJ * p_using )
{
  masl2xtuml_O_OBJ * fromClass;masl2xtuml_R_SIMP * r_simp;masl2xtuml_R_RGO * rgo;masl2xtuml_R_OIR * oir;masl2xtuml_R_ASSOC * assoc;masl2xtuml_R_ASSR * assr;Escher_ObjectSet_s parts_space={0}; Escher_ObjectSet_s * parts = &parts_space;masl2xtuml_R_REL * toAssoc=0;
  /* ASSIGN r_simp = PARAM.r_simp */
  r_simp = p_r_simp;
  /* CREATE OBJECT INSTANCE assr OF R_ASSR */
  assr = (masl2xtuml_R_ASSR *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_ASSR_CLASS_NUMBER );
  assr->Obj_ID = (Escher_UniqueID_t) assr;
assr->Rel_ID = (Escher_UniqueID_t) assr;
assr->OIR_ID = (Escher_UniqueID_t) assr;
  /* IF ( self.SimpleAssociation_isFormalized(r_simp:r_simp) ) */
  if ( masl2xtuml_ooapopulation_op_SimpleAssociation_isFormalized(self, r_simp) ) {
    /* self.SimpleAssociation_unformalize( r_simp:r_simp ) */
    masl2xtuml_ooapopulation_op_SimpleAssociation_unformalize( self,  r_simp );
  }
  /* SELECT one toAssoc RELATED BY r_simp->R_REL[R206] */
  toAssoc = ( 0 != r_simp ) ? r_simp->R_REL_R206 : 0;
  /* ASSIGN fromClass = PARAM.using */
  fromClass = p_using;
  /* CREATE OBJECT INSTANCE assoc OF R_ASSOC */
  assoc = (masl2xtuml_R_ASSOC *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_ASSOC_CLASS_NUMBER );
  assoc->Rel_ID = (Escher_UniqueID_t) assoc;
  /* UNRELATE r_simp FROM toAssoc ACROSS R206 */
  masl2xtuml_R_SIMP_R206_Unlink( toAssoc, r_simp );
  /* RELATE assoc TO toAssoc ACROSS R206 */
  masl2xtuml_R_ASSOC_R206_Link( toAssoc, assoc );
  /* SELECT many parts RELATED BY r_simp->R_PART[R207] */
  Escher_ClearSet( parts );
  if ( 0 != r_simp ) {
    Escher_CopySet( parts, &r_simp->R_PART_R207_relates );
  }
  /* IF ( ( cardinality parts == 1 ) ) */
  if ( ( Escher_SetCardinality( parts ) == 1 ) ) {
    masl2xtuml_R_AOTH * aoth;masl2xtuml_R_RTO * othRto;masl2xtuml_R_AONE * aone;masl2xtuml_O_OBJ * refClass=0;masl2xtuml_R_OIR * oir=0;masl2xtuml_R_RGO * rgo=0;masl2xtuml_R_FORM * form=0;masl2xtuml_R_RTO * rto=0;masl2xtuml_R_PART * part=0;
    /* SELECT any part RELATED BY r_simp->R_PART[R207] */
    part = ( 0 != r_simp ) ? (masl2xtuml_R_PART *) Escher_SetGetAny( &r_simp->R_PART_R207_relates ) : 0;
    /* SELECT one rto RELATED BY part->R_RTO[R204] */
    rto = ( 0 != part ) ? part->R_RTO_R204 : 0;
    /* UNRELATE part FROM rto ACROSS R204 */
    masl2xtuml_R_PART_R204_Unlink( rto, part );
    /* UNRELATE r_simp FROM part ACROSS R207 */
    masl2xtuml_R_PART_R207_Unlink_relates( r_simp, part );
    /* CREATE OBJECT INSTANCE aone OF R_AONE */
    aone = (masl2xtuml_R_AONE *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_AONE_CLASS_NUMBER );
    aone->Obj_ID = (Escher_UniqueID_t) aone;
aone->Rel_ID = (Escher_UniqueID_t) aone;
aone->OIR_ID = (Escher_UniqueID_t) aone;
    /* ASSIGN aone.Mult = part.Mult */
    aone->Mult = part->Mult;
    /* ASSIGN aone.Cond = part.Cond */
    aone->Cond = part->Cond;
    /* ASSIGN aone.Txt_Phrs = part.Txt_Phrs */
    aone->Txt_Phrs = Escher_strcpy( aone->Txt_Phrs, part->Txt_Phrs );
    /* RELATE rto TO aone ACROSS R204 */
    masl2xtuml_R_AONE_R204_Link( rto, aone );
    /* DELETE OBJECT INSTANCE part */
    if ( 0 == part ) {
      XTUML_EMPTY_HANDLE_TRACE( "R_PART", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) part, masl2xtuml_DOMAIN_ID, masl2xtuml_R_PART_CLASS_NUMBER );
    /* RELATE aone TO assoc ACROSS R209 */
    masl2xtuml_R_AONE_R209_Link_relates( assoc, aone );
    /* SELECT one form RELATED BY r_simp->R_FORM[R208] */
    form = ( 0 != r_simp ) ? r_simp->R_FORM_R208_relates : 0;
    /* SELECT one rgo RELATED BY form->R_RGO[R205] */
    rgo = ( 0 != form ) ? form->R_RGO_R205 : 0;
    /* UNRELATE form FROM rgo ACROSS R205 */
    masl2xtuml_R_FORM_R205_Unlink( rgo, form );
    /* UNRELATE r_simp FROM form ACROSS R208 */
    masl2xtuml_R_FORM_R208_Unlink_relates( r_simp, form );
    /* SELECT one oir RELATED BY rgo->R_OIR[R203] */
    oir = ( 0 != rgo ) ? rgo->R_OIR_R203 : 0;
    /* UNRELATE oir FROM rgo ACROSS R203 */
    masl2xtuml_R_RGO_R203_Unlink( oir, rgo );
    /* self.ReferringClassInAssoc_dispose( r_rgo:rgo ) */
    masl2xtuml_ooapopulation_op_ReferringClassInAssoc_dispose( self,  rgo );
    /* CREATE OBJECT INSTANCE othRto OF R_RTO */
    othRto = (masl2xtuml_R_RTO *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_RTO_CLASS_NUMBER );
    othRto->Obj_ID = (Escher_UniqueID_t) othRto;
othRto->Rel_ID = (Escher_UniqueID_t) othRto;
othRto->OIR_ID = (Escher_UniqueID_t) othRto;
    /* RELATE oir TO othRto ACROSS R203 */
    masl2xtuml_R_RTO_R203_Link( oir, othRto );
    /* CREATE OBJECT INSTANCE aoth OF R_AOTH */
    aoth = (masl2xtuml_R_AOTH *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_AOTH_CLASS_NUMBER );
    aoth->Obj_ID = (Escher_UniqueID_t) aoth;
aoth->Rel_ID = (Escher_UniqueID_t) aoth;
aoth->OIR_ID = (Escher_UniqueID_t) aoth;
    /* ASSIGN aoth.Mult = form.Mult */
    aoth->Mult = form->Mult;
    /* ASSIGN aoth.Cond = form.Cond */
    aoth->Cond = form->Cond;
    /* ASSIGN aoth.Txt_Phrs = form.Txt_Phrs */
    aoth->Txt_Phrs = Escher_strcpy( aoth->Txt_Phrs, form->Txt_Phrs );
    /* DELETE OBJECT INSTANCE form */
    if ( 0 == form ) {
      XTUML_EMPTY_HANDLE_TRACE( "R_FORM", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) form, masl2xtuml_DOMAIN_ID, masl2xtuml_R_FORM_CLASS_NUMBER );
    /* RELATE othRto TO aoth ACROSS R204 */
    masl2xtuml_R_AOTH_R204_Link( othRto, aoth );
    /* RELATE aoth TO assoc ACROSS R210 */
    masl2xtuml_R_AOTH_R210_Link_relates( assoc, aoth );
    /* SELECT one refClass RELATED BY oir->O_OBJ[R201] */
    refClass = ( 0 != oir ) ? oir->O_OBJ_R201_abstracts_association_between_instances_of : 0;
  }
  else {
    masl2xtuml_R_PART * part=0;bool doingOneSide;
    /* ASSIGN doingOneSide = TRUE */
    doingOneSide = TRUE;
    /* FOR EACH part IN parts */
    { Escher_Iterator_s iterpart;
    masl2xtuml_R_PART * iipart;
    Escher_IteratorReset( &iterpart, parts );
    while ( (iipart = (masl2xtuml_R_PART *)Escher_IteratorNext( &iterpart )) != 0 ) {
      part = iipart; {
      /* IF ( doingOneSide ) */
      if ( doingOneSide ) {
        masl2xtuml_R_AONE * aone;masl2xtuml_R_RTO * rto=0;
        /* SELECT one rto RELATED BY part->R_RTO[R204] */
        rto = ( 0 != part ) ? part->R_RTO_R204 : 0;
        /* UNRELATE part FROM rto ACROSS R204 */
        masl2xtuml_R_PART_R204_Unlink( rto, part );
        /* UNRELATE r_simp FROM part ACROSS R207 */
        masl2xtuml_R_PART_R207_Unlink_relates( r_simp, part );
        /* CREATE OBJECT INSTANCE aone OF R_AONE */
        aone = (masl2xtuml_R_AONE *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_AONE_CLASS_NUMBER );
        aone->Obj_ID = (Escher_UniqueID_t) aone;
aone->Rel_ID = (Escher_UniqueID_t) aone;
aone->OIR_ID = (Escher_UniqueID_t) aone;
        /* ASSIGN aone.Mult = part.Mult */
        aone->Mult = part->Mult;
        /* ASSIGN aone.Cond = part.Cond */
        aone->Cond = part->Cond;
        /* ASSIGN aone.Txt_Phrs = part.Txt_Phrs */
        aone->Txt_Phrs = Escher_strcpy( aone->Txt_Phrs, part->Txt_Phrs );
        /* DELETE OBJECT INSTANCE part */
        if ( 0 == part ) {
          XTUML_EMPTY_HANDLE_TRACE( "R_PART", "Escher_DeleteInstance" );
        }
        Escher_DeleteInstance( (Escher_iHandle_t) part, masl2xtuml_DOMAIN_ID, masl2xtuml_R_PART_CLASS_NUMBER );
        /* RELATE rto TO aone ACROSS R204 */
        masl2xtuml_R_AONE_R204_Link( rto, aone );
        /* RELATE aone TO assoc ACROSS R209 */
        masl2xtuml_R_AONE_R209_Link_relates( assoc, aone );
        /* ASSIGN doingOneSide = FALSE */
        doingOneSide = FALSE;
      }
      else {
        masl2xtuml_R_AOTH * aoth;masl2xtuml_R_RTO * rto=0;
        /* SELECT one rto RELATED BY part->R_RTO[R204] */
        rto = ( 0 != part ) ? part->R_RTO_R204 : 0;
        /* UNRELATE part FROM rto ACROSS R204 */
        masl2xtuml_R_PART_R204_Unlink( rto, part );
        /* UNRELATE r_simp FROM part ACROSS R207 */
        masl2xtuml_R_PART_R207_Unlink_relates( r_simp, part );
        /* CREATE OBJECT INSTANCE aoth OF R_AOTH */
        aoth = (masl2xtuml_R_AOTH *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_AOTH_CLASS_NUMBER );
        aoth->Obj_ID = (Escher_UniqueID_t) aoth;
aoth->Rel_ID = (Escher_UniqueID_t) aoth;
aoth->OIR_ID = (Escher_UniqueID_t) aoth;
        /* ASSIGN aoth.Mult = part.Mult */
        aoth->Mult = part->Mult;
        /* ASSIGN aoth.Cond = part.Cond */
        aoth->Cond = part->Cond;
        /* ASSIGN aoth.Txt_Phrs = part.Txt_Phrs */
        aoth->Txt_Phrs = Escher_strcpy( aoth->Txt_Phrs, part->Txt_Phrs );
        /* DELETE OBJECT INSTANCE part */
        if ( 0 == part ) {
          XTUML_EMPTY_HANDLE_TRACE( "R_PART", "Escher_DeleteInstance" );
        }
        Escher_DeleteInstance( (Escher_iHandle_t) part, masl2xtuml_DOMAIN_ID, masl2xtuml_R_PART_CLASS_NUMBER );
        /* RELATE rto TO aoth ACROSS R204 */
        masl2xtuml_R_AOTH_R204_Link( rto, aoth );
        /* RELATE aoth TO assoc ACROSS R210 */
        masl2xtuml_R_AOTH_R210_Link_relates( assoc, aoth );
      }
    }}}
  }
  /* CREATE OBJECT INSTANCE oir OF R_OIR */
  oir = (masl2xtuml_R_OIR *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_OIR_CLASS_NUMBER );
  oir->Obj_ID = (Escher_UniqueID_t) oir;
oir->Rel_ID = (Escher_UniqueID_t) oir;
oir->OIR_ID = (Escher_UniqueID_t) oir;
  /* RELATE fromClass TO toAssoc ACROSS R201 USING oir */
  masl2xtuml_R_OIR_R201_Link( toAssoc, fromClass, oir );
  /* CREATE OBJECT INSTANCE rgo OF R_RGO */
  rgo = (masl2xtuml_R_RGO *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_RGO_CLASS_NUMBER );
  rgo->Obj_ID = (Escher_UniqueID_t) rgo;
rgo->Rel_ID = (Escher_UniqueID_t) rgo;
rgo->OIR_ID = (Escher_UniqueID_t) rgo;
  /* RELATE rgo TO oir ACROSS R203 */
  masl2xtuml_R_RGO_R203_Link( oir, rgo );
  /* RELATE rgo TO assr ACROSS R205 */
  masl2xtuml_R_ASSR_R205_Link( rgo, assr );
  /* RELATE assr TO assoc ACROSS R211 */
  masl2xtuml_R_ASSR_R211_Link_uses_a_formalizer( assoc, assr );
  /* DELETE OBJECT INSTANCE r_simp */
  if ( 0 == r_simp ) {
    XTUML_EMPTY_HANDLE_TRACE( "R_SIMP", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) r_simp, masl2xtuml_DOMAIN_ID, masl2xtuml_R_SIMP_CLASS_NUMBER );
  Escher_ClearSet( parts ); 
}

/*
 * instance operation:  SimpleAssociation_isFormalized
 */
bool
masl2xtuml_ooapopulation_op_SimpleAssociation_isFormalized( masl2xtuml_ooapopulation * self, masl2xtuml_R_SIMP * p_r_simp )
{
  masl2xtuml_R_SIMP * r_simp;masl2xtuml_R_FORM * form=0;
  /* ASSIGN r_simp = PARAM.r_simp */
  r_simp = p_r_simp;
  /* SELECT one form RELATED BY r_simp->R_FORM[R208] */
  form = ( 0 != r_simp ) ? r_simp->R_FORM_R208_relates : 0;
  /* IF ( not_empty form ) */
  if ( ( 0 != form ) ) {
    masl2xtuml_O_RTIDA * rtida=0;masl2xtuml_R_RTO * rto=0;
    /* SELECT any rto RELATED BY r_simp->R_PART[R207]->R_RTO[R204] */
    rto = 0;
    {    if ( 0 != r_simp ) {
    masl2xtuml_R_PART * R_PART_R207_relates;
    Escher_Iterator_s iR_PART_R207_relates;
    Escher_IteratorReset( &iR_PART_R207_relates, &r_simp->R_PART_R207_relates );
    while ( ( 0 == rto ) && ( 0 != ( R_PART_R207_relates = (masl2xtuml_R_PART *) Escher_IteratorNext( &iR_PART_R207_relates ) ) ) ) {
    rto = R_PART_R207_relates->R_RTO_R204;
}}}
    /* SELECT any rtida RELATED BY rto->O_RTIDA[R110] */
    rtida = ( 0 != rto ) ? (masl2xtuml_O_RTIDA *) Escher_SetGetAny( &rto->O_RTIDA_R110 ) : 0;
    /* IF ( empty rtida ) */
    if ( ( 0 == rtida ) ) {
      masl2xtuml_R_REL * assoc=0;
      /* SELECT one assoc RELATED BY r_simp->R_REL[R206] */
      assoc = ( 0 != r_simp ) ? r_simp->R_REL_R206 : 0;
    }
    /* RETURN TRUE */
    {bool xtumlOALrv = TRUE;
    return xtumlOALrv;}
  }
  /* RETURN FALSE */
  {bool xtumlOALrv = FALSE;
  return xtumlOALrv;}
}

/*
 * instance operation:  SimpleAssociation_unformalize
 */
void
masl2xtuml_ooapopulation_op_SimpleAssociation_unformalize( masl2xtuml_ooapopulation * self, masl2xtuml_R_SIMP * p_r_simp )
{
  masl2xtuml_R_SIMP * r_simp;masl2xtuml_R_FORM * form=0;masl2xtuml_R_RTO * part_rto=0;
  /* ASSIGN r_simp = PARAM.r_simp */
  r_simp = p_r_simp;
  /* SELECT any part_rto RELATED BY r_simp->R_PART[R207]->R_RTO[R204] */
  part_rto = 0;
  {  if ( 0 != r_simp ) {
  masl2xtuml_R_PART * R_PART_R207_relates;
  Escher_Iterator_s iR_PART_R207_relates;
  Escher_IteratorReset( &iR_PART_R207_relates, &r_simp->R_PART_R207_relates );
  while ( ( 0 == part_rto ) && ( 0 != ( R_PART_R207_relates = (masl2xtuml_R_PART *) Escher_IteratorNext( &iR_PART_R207_relates ) ) ) ) {
  part_rto = R_PART_R207_relates->R_RTO_R204;
}}}
  /* self.ReferredToClassInAssoc_unformalize( r_rto:part_rto ) */
  masl2xtuml_ooapopulation_op_ReferredToClassInAssoc_unformalize( self,  part_rto );
  /* SELECT one form RELATED BY r_simp->R_FORM[R208] */
  form = ( 0 != r_simp ) ? r_simp->R_FORM_R208_relates : 0;
  /* self.ClassAsSimpleFormalizer_migrateToParticipant( r_form:form ) */
  masl2xtuml_ooapopulation_op_ClassAsSimpleFormalizer_migrateToParticipant( self,  form );
}

/*
 * instance operation:  ReferredToClassInAssoc_unformalize
 */
void
masl2xtuml_ooapopulation_op_ReferredToClassInAssoc_unformalize( masl2xtuml_ooapopulation * self, masl2xtuml_R_RTO * p_r_rto )
{
  masl2xtuml_O_RTIDA * rtida=0;masl2xtuml_R_RTO * r_rto;masl2xtuml_O_ID * oid=0;Escher_ObjectSet_s rtida_set_space={0}; Escher_ObjectSet_s * rtida_set = &rtida_set_space;
  /* ASSIGN r_rto = PARAM.r_rto */
  r_rto = p_r_rto;
  /* SELECT many rtida_set RELATED BY r_rto->O_RTIDA[R110] */
  Escher_ClearSet( rtida_set );
  if ( 0 != r_rto ) {
    Escher_CopySet( rtida_set, &r_rto->O_RTIDA_R110 );
  }
  /* FOR EACH rtida IN rtida_set */
  { Escher_Iterator_s iterrtida;
  masl2xtuml_O_RTIDA * iirtida;
  Escher_IteratorReset( &iterrtida, rtida_set );
  while ( (iirtida = (masl2xtuml_O_RTIDA *)Escher_IteratorNext( &iterrtida )) != 0 ) {
    rtida = iirtida; {
    masl2xtuml_O_REF * ref=0;masl2xtuml_O_OIDA * oida=0;Escher_ObjectSet_s ref_set_space={0}; Escher_ObjectSet_s * ref_set = &ref_set_space;
    /* SELECT many ref_set RELATED BY rtida->O_REF[R111] */
    Escher_ClearSet( ref_set );
    if ( 0 != rtida ) {
      Escher_CopySet( ref_set, &rtida->O_REF_R111 );
    }
    /* FOR EACH ref IN ref_set */
    { Escher_Iterator_s iterref;
    masl2xtuml_O_REF * iiref;
    Escher_IteratorReset( &iterref, ref_set );
    while ( (iiref = (masl2xtuml_O_REF *)Escher_IteratorNext( &iterref )) != 0 ) {
      ref = iiref; {
      /* self.AttributeReferenceInClass_migrateRefAttrOrDispose( o_ref:ref ) */
      masl2xtuml_ooapopulation_op_AttributeReferenceInClass_migrateRefAttrOrDispose( self,  ref );
    }}}
    /* SELECT one oida RELATED BY rtida->O_OIDA[R110] */
    oida = ( 0 != rtida ) ? rtida->O_OIDA_R110_is_identified_in_this_association_by : 0;
    /* UNRELATE oida FROM r_rto ACROSS R110 USING rtida */
    masl2xtuml_O_RTIDA_R110_Unlink( r_rto, oida, rtida );
    /* DELETE OBJECT INSTANCE rtida */
    if ( 0 == rtida ) {
      XTUML_EMPTY_HANDLE_TRACE( "O_RTIDA", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) rtida, masl2xtuml_DOMAIN_ID, masl2xtuml_O_RTIDA_CLASS_NUMBER );
    Escher_ClearSet( ref_set ); 
  }}}
  /* SELECT one oid RELATED BY r_rto->O_ID[R109] */
  oid = ( 0 != r_rto ) ? r_rto->O_ID_R109_is_identified_in_this_association_by : 0;
  /* UNRELATE oid FROM r_rto ACROSS R109 */
  masl2xtuml_R_RTO_R109_Unlink_identifies_for_this_association_( oid, r_rto );
  Escher_ClearSet( rtida_set ); 
}

/*
 * instance operation:  ClassAsSimpleFormalizer_migrateToParticipant
 */
void
masl2xtuml_ooapopulation_op_ClassAsSimpleFormalizer_migrateToParticipant( masl2xtuml_ooapopulation * self, masl2xtuml_R_FORM * p_r_form )
{
  masl2xtuml_R_FORM * r_form;masl2xtuml_R_PART * part;masl2xtuml_R_RTO * rto;masl2xtuml_R_SIMP * simp=0;masl2xtuml_R_OIR * oir=0;masl2xtuml_R_RGO * rgo=0;
  /* ASSIGN r_form = PARAM.r_form */
  r_form = p_r_form;
  /* CREATE OBJECT INSTANCE rto OF R_RTO */
  rto = (masl2xtuml_R_RTO *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_RTO_CLASS_NUMBER );
  rto->Obj_ID = (Escher_UniqueID_t) rto;
rto->Rel_ID = (Escher_UniqueID_t) rto;
rto->OIR_ID = (Escher_UniqueID_t) rto;
  /* CREATE OBJECT INSTANCE part OF R_PART */
  part = (masl2xtuml_R_PART *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_PART_CLASS_NUMBER );
  part->Obj_ID = (Escher_UniqueID_t) part;
part->Rel_ID = (Escher_UniqueID_t) part;
part->OIR_ID = (Escher_UniqueID_t) part;
  /* ASSIGN part.Mult = r_form.Mult */
  part->Mult = r_form->Mult;
  /* ASSIGN part.Cond = r_form.Cond */
  part->Cond = r_form->Cond;
  /* ASSIGN part.Txt_Phrs = r_form.Txt_Phrs */
  part->Txt_Phrs = Escher_strcpy( part->Txt_Phrs, r_form->Txt_Phrs );
  /* SELECT one rgo RELATED BY r_form->R_RGO[R205] */
  rgo = ( 0 != r_form ) ? r_form->R_RGO_R205 : 0;
  /* SELECT one oir RELATED BY rgo->R_OIR[R203] */
  oir = ( 0 != rgo ) ? rgo->R_OIR_R203 : 0;
  /* SELECT one simp RELATED BY r_form->R_SIMP[R208] */
  simp = ( 0 != r_form ) ? r_form->R_SIMP_R208_is_related_to_participant_via : 0;
  /* RELATE oir TO rto ACROSS R203 */
  masl2xtuml_R_RTO_R203_Link( oir, rto );
  /* RELATE rto TO part ACROSS R204 */
  masl2xtuml_R_PART_R204_Link( rto, part );
  /* RELATE part TO simp ACROSS R207 */
  masl2xtuml_R_PART_R207_Link_relates( simp, part );
  /* self.ReferringClassInAssoc_dispose( r_rgo:rgo ) */
  masl2xtuml_ooapopulation_op_ReferringClassInAssoc_dispose( self,  rgo );
}

/*
 * instance operation:  ReferringClassInAssoc_dispose
 */
void
masl2xtuml_ooapopulation_op_ReferringClassInAssoc_dispose( masl2xtuml_ooapopulation * self, masl2xtuml_R_RGO * p_r_rgo )
{
  masl2xtuml_R_RGO * r_rgo;masl2xtuml_R_OIR * cia=0;masl2xtuml_R_FORM * form=0;masl2xtuml_R_SUB * sub=0;masl2xtuml_R_ASSR * link=0;
  /* ASSIGN r_rgo = PARAM.r_rgo */
  r_rgo = p_r_rgo;
  /* SELECT one link RELATED BY r_rgo->R_ASSR[R205] */
  link = 0;
  if ( ( 0 != r_rgo ) && ( masl2xtuml_R_ASSR_CLASS_NUMBER == r_rgo->R205_object_id ) )  link = ( 0 != r_rgo ) ? (masl2xtuml_R_ASSR *) r_rgo->R205_subtype : 0;
  /* SELECT one sub RELATED BY r_rgo->R_SUB[R205] */
  sub = 0;
  if ( ( 0 != r_rgo ) && ( masl2xtuml_R_SUB_CLASS_NUMBER == r_rgo->R205_object_id ) )  sub = ( 0 != r_rgo ) ? (masl2xtuml_R_SUB *) r_rgo->R205_subtype : 0;
  /* SELECT one form RELATED BY r_rgo->R_FORM[R205] */
  form = 0;
  if ( ( 0 != r_rgo ) && ( masl2xtuml_R_FORM_CLASS_NUMBER == r_rgo->R205_object_id ) )  form = ( 0 != r_rgo ) ? (masl2xtuml_R_FORM *) r_rgo->R205_subtype : 0;
  /* IF ( not_empty link ) */
  if ( ( 0 != link ) ) {
    /* self.ClassAsLink_dispose( r_assr:link ) */
    masl2xtuml_ooapopulation_op_ClassAsLink_dispose( self,  link );
  }
  else if ( ( 0 != sub ) ) {
  }
  else if ( ( 0 != form ) ) {
    /* self.ClassAsSimpleFormalizer_dispose( r_form:form ) */
    masl2xtuml_ooapopulation_op_ClassAsSimpleFormalizer_dispose( self,  form );
  }
  /* SELECT one cia RELATED BY r_rgo->R_OIR[R203] */
  cia = ( 0 != r_rgo ) ? r_rgo->R_OIR_R203 : 0;
  /* IF ( not_empty cia ) */
  if ( ( 0 != cia ) ) {
    /* UNRELATE r_rgo FROM cia ACROSS R203 */
    masl2xtuml_R_RGO_R203_Unlink( cia, r_rgo );
  }
  /* self.ReferringClassInAssoc_clearReferences( r_rgo:r_rgo ) */
  masl2xtuml_ooapopulation_op_ReferringClassInAssoc_clearReferences( self,  r_rgo );
  /* DELETE OBJECT INSTANCE self */
  if ( 0 == self ) {
    XTUML_EMPTY_HANDLE_TRACE( "ooapopulation", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) self, masl2xtuml_DOMAIN_ID, masl2xtuml_ooapopulation_CLASS_NUMBER );
}

/*
 * instance operation:  ReferringClassInAssoc_clearReferences
 */
void
masl2xtuml_ooapopulation_op_ReferringClassInAssoc_clearReferences( masl2xtuml_ooapopulation * self, masl2xtuml_R_RGO * p_r_rgo )
{
  masl2xtuml_O_REF * ref=0;masl2xtuml_R_RGO * r_rgo;Escher_ObjectSet_s refs_space={0}; Escher_ObjectSet_s * refs = &refs_space;
  /* ASSIGN r_rgo = PARAM.r_rgo */
  r_rgo = p_r_rgo;
  /* SELECT many refs RELATED BY r_rgo->O_REF[R111] */
  Escher_ClearSet( refs );
  if ( 0 != r_rgo ) {
    Escher_CopySet( refs, &r_rgo->O_REF_R111 );
  }
  /* FOR EACH ref IN refs */
  { Escher_Iterator_s iterref;
  masl2xtuml_O_REF * iiref;
  Escher_IteratorReset( &iterref, refs );
  while ( (iiref = (masl2xtuml_O_REF *)Escher_IteratorNext( &iterref )) != 0 ) {
    ref = iiref; {
    /* self.AttributeReferenceInClass_migrateRefAttrOrDispose( o_ref:ref ) */
    masl2xtuml_ooapopulation_op_AttributeReferenceInClass_migrateRefAttrOrDispose( self,  ref );
  }}}
  Escher_ClearSet( refs ); 
}

/*
 * instance operation:  AttributeReferenceInClass_migrateRefAttrOrDispose
 */
void
masl2xtuml_ooapopulation_op_AttributeReferenceInClass_migrateRefAttrOrDispose( masl2xtuml_ooapopulation * self, masl2xtuml_O_REF * p_o_ref )
{
  masl2xtuml_O_REF * o_ref;Escher_ObjectSet_s siblings_space={0}; Escher_ObjectSet_s * siblings = &siblings_space;
  /* ASSIGN o_ref = PARAM.o_ref */
  o_ref = p_o_ref;
  /* SELECT many siblings RELATED BY o_ref->O_RATTR[R108]->O_REF[R108] */
  Escher_ClearSet( siblings );
  {  if ( 0 != o_ref ) {
  masl2xtuml_O_RATTR * O_RATTR_R108_is_resolved_by = o_ref->O_RATTR_R108_is_resolved_by;
  if ( 0 != O_RATTR_R108_is_resolved_by ) {
  masl2xtuml_O_REF * O_REF_R108_resolves_;
  Escher_Iterator_s iO_REF_R108_resolves_;
  Escher_IteratorReset( &iO_REF_R108_resolves_, &O_RATTR_R108_is_resolved_by->O_REF_R108_resolves_ );
  while ( 0 != ( O_REF_R108_resolves_ = (masl2xtuml_O_REF *) Escher_IteratorNext( &iO_REF_R108_resolves_ ) ) ) {
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) siblings, O_REF_R108_resolves_ ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) siblings, O_REF_R108_resolves_ );
  }}}}}
  /* IF ( ( cardinality siblings == 1 ) ) */
  if ( ( Escher_SetCardinality( siblings ) == 1 ) ) {
    masl2xtuml_O_OIDA * idattr=0;masl2xtuml_O_RATTR * rattr=0;
    /* SELECT one rattr RELATED BY o_ref->O_RATTR[R108] */
    rattr = ( 0 != o_ref ) ? o_ref->O_RATTR_R108_is_resolved_by : 0;
    /* SELECT any idattr RELATED BY rattr->O_ATTR[R106]->O_OIDA[R105] */
    idattr = 0;
    {    if ( 0 != rattr ) {
    masl2xtuml_O_ATTR * O_ATTR_R106 = rattr->O_ATTR_R106;
    if ( 0 != O_ATTR_R106 ) {
    idattr = ( 0 != O_ATTR_R106 ) ? (masl2xtuml_O_OIDA *) Escher_SetGetAny( &O_ATTR_R106->O_OIDA_R105 ) : 0;
}}}
    /* IF ( empty idattr ) */
    if ( ( 0 == idattr ) ) {
      masl2xtuml_O_ATTR * attr=0;
      /* SELECT one attr RELATED BY rattr->O_ATTR[R106] */
      attr = ( 0 != rattr ) ? rattr->O_ATTR_R106 : 0;
      /* self.Attribute_dispose( o_attr:attr ) */
      masl2xtuml_ooapopulation_op_Attribute_dispose( self,  attr );
    }
    else {
      masl2xtuml_O_RTIDA * rattr_ref=0;
      /* SELECT any rattr_ref RELATED BY idattr->O_RTIDA[R110] */
      rattr_ref = ( 0 != idattr ) ? (masl2xtuml_O_RTIDA *) Escher_SetGetAny( &idattr->O_RTIDA_R110 ) : 0;
      /* IF ( not_empty rattr_ref ) */
      if ( ( 0 != rattr_ref ) ) {
        /* self.ReferentialAttribute_migrateToBase( o_rattr:rattr ) */
        masl2xtuml_ooapopulation_op_ReferentialAttribute_migrateToBase( self,  rattr );
      }
      else {
        masl2xtuml_O_ATTR * attr=0;
        /* SELECT one attr RELATED BY rattr->O_ATTR[R106] */
        attr = ( 0 != rattr ) ? rattr->O_ATTR_R106 : 0;
        /* self.Attribute_dispose( o_attr:attr ) */
        masl2xtuml_ooapopulation_op_Attribute_dispose( self,  attr );
      }
    }
  }
  else {
    /* self.AttributeReferenceInClass_dispose( o_ref:o_ref ) */
    masl2xtuml_ooapopulation_op_AttributeReferenceInClass_dispose( self,  o_ref );
  }
  Escher_ClearSet( siblings ); 
}

/*
 * instance operation:  AttributeReferenceInClass_dispose
 */
void
masl2xtuml_ooapopulation_op_AttributeReferenceInClass_dispose( masl2xtuml_ooapopulation * self, masl2xtuml_O_REF * p_o_ref )
{
  masl2xtuml_O_REF * o_ref;masl2xtuml_R_RTO * rto=0;masl2xtuml_R_RGO * rgo=0;masl2xtuml_O_RTIDA * rtida=0;masl2xtuml_O_RATTR * owningReferential=0;masl2xtuml_O_REF * prior_ref=0;masl2xtuml_O_REF * next_ref=0;
  /* ASSIGN o_ref = PARAM.o_ref */
  o_ref = p_o_ref;
  /* SELECT one next_ref RELATED BY o_ref->O_REF[R112.precedes] */
  next_ref = ( 0 != o_ref ) ? o_ref->O_REF_R112_precedes : 0;
  /* SELECT one prior_ref RELATED BY o_ref->O_REF[R112.succeeds] */
  prior_ref = ( 0 != o_ref ) ? o_ref->O_REF_R112_succeeds : 0;
  /* IF ( ( not_empty next_ref and not_empty prior_ref ) ) */
  if ( ( ( 0 != next_ref ) && ( 0 != prior_ref ) ) ) {
    /* UNRELATE o_ref FROM next_ref ACROSS R112 */
    masl2xtuml_O_REF_R112_Unlink_precedes( o_ref, next_ref );
    /* UNRELATE prior_ref FROM o_ref ACROSS R112 */
    masl2xtuml_O_REF_R112_Unlink_precedes( prior_ref, o_ref );
    /* RELATE prior_ref TO next_ref ACROSS R112 */
    masl2xtuml_O_REF_R112_Link_precedes( prior_ref, next_ref );
  }
  else {
    /* IF ( ( not_empty prior_ref and empty next_ref ) ) */
    if ( ( ( 0 != prior_ref ) && ( 0 == next_ref ) ) ) {
      /* UNRELATE prior_ref FROM o_ref ACROSS R112 */
      masl2xtuml_O_REF_R112_Unlink_precedes( prior_ref, o_ref );
    }
    else {
      /* UNRELATE o_ref FROM next_ref ACROSS R112 */
      masl2xtuml_O_REF_R112_Unlink_precedes( o_ref, next_ref );
    }
  }
  /* SELECT one owningReferential RELATED BY o_ref->O_RATTR[R108] */
  owningReferential = ( 0 != o_ref ) ? o_ref->O_RATTR_R108_is_resolved_by : 0;
  /* IF ( not_empty owningReferential ) */
  if ( ( 0 != owningReferential ) ) {
    /* UNRELATE o_ref FROM owningReferential ACROSS R108 */
    masl2xtuml_O_REF_R108_Unlink_resolves_( owningReferential, o_ref );
  }
  /* SELECT one rtida RELATED BY o_ref->O_RTIDA[R111] */
  rtida = ( 0 != o_ref ) ? o_ref->O_RTIDA_R111_refers_across_association_via : 0;
  /* SELECT one rgo RELATED BY o_ref->R_RGO[R111] */
  rgo = ( 0 != o_ref ) ? o_ref->R_RGO_R111_is_used_to_refer_class_by : 0;
  /* SELECT one rto RELATED BY rtida->R_RTO[R110] */
  rto = ( 0 != rtida ) ? rtida->R_RTO_R110_identifies_for_this_association : 0;
  /* UNRELATE rtida FROM rgo ACROSS R111 USING o_ref */
  masl2xtuml_O_REF_R111_Unlink( rgo, rtida, o_ref );
  /* DELETE OBJECT INSTANCE o_ref */
  if ( 0 == o_ref ) {
    XTUML_EMPTY_HANDLE_TRACE( "O_REF", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) o_ref, masl2xtuml_DOMAIN_ID, masl2xtuml_O_REF_CLASS_NUMBER );
}

/*
 * instance operation:  Attribute_dispose
 */
void
masl2xtuml_ooapopulation_op_Attribute_dispose( masl2xtuml_ooapopulation * self, masl2xtuml_O_ATTR * p_o_attr )
{
  masl2xtuml_V_AVL * attrval=0;masl2xtuml_V_SLR * selref=0;masl2xtuml_O_OIDA * oida=0;masl2xtuml_O_ATTR * o_attr;Escher_ObjectSet_s attrvals_space={0}; Escher_ObjectSet_s * attrvals = &attrvals_space;Escher_ObjectSet_s selref_set_space={0}; Escher_ObjectSet_s * selref_set = &selref_set_space;masl2xtuml_O_ATTR * nextAttr=0;masl2xtuml_O_OBJ * owningClass=0;masl2xtuml_S_DT * dt=0;masl2xtuml_O_BATTR * battr=0;Escher_ObjectSet_s oidas_space={0}; Escher_ObjectSet_s * oidas = &oidas_space;
  /* ASSIGN o_attr = PARAM.o_attr */
  o_attr = p_o_attr;
  /* SELECT many oidas RELATED BY o_attr->O_OIDA[R105] */
  Escher_ClearSet( oidas );
  if ( 0 != o_attr ) {
    Escher_CopySet( oidas, &o_attr->O_OIDA_R105 );
  }
  /* FOR EACH oida IN oidas */
  { Escher_Iterator_s iteroida;
  masl2xtuml_O_OIDA * iioida;
  Escher_IteratorReset( &iteroida, oidas );
  while ( (iioida = (masl2xtuml_O_OIDA *)Escher_IteratorNext( &iteroida )) != 0 ) {
    oida = iioida; {
    /* self.ClassIdentifierAttribute_dispose( o_oida:oida ) */
    masl2xtuml_ooapopulation_op_ClassIdentifierAttribute_dispose( self,  oida );
  }}}
  /* SELECT one battr RELATED BY o_attr->O_BATTR[R106] */
  battr = 0;
  if ( ( 0 != o_attr ) && ( masl2xtuml_O_BATTR_CLASS_NUMBER == o_attr->R106_object_id ) )  battr = ( 0 != o_attr ) ? (masl2xtuml_O_BATTR *) o_attr->R106_subtype : 0;
  /* IF ( not_empty battr ) */
  if ( ( 0 != battr ) ) {
    /* self.BaseAttribute_dispose( o_battr:battr ) */
    masl2xtuml_ooapopulation_op_BaseAttribute_dispose( self,  battr );
  }
  else {
    masl2xtuml_O_RATTR * rattr=0;
    /* SELECT one rattr RELATED BY o_attr->O_RATTR[R106] */
    rattr = 0;
    if ( ( 0 != o_attr ) && ( masl2xtuml_O_RATTR_CLASS_NUMBER == o_attr->R106_object_id ) )    rattr = ( 0 != o_attr ) ? (masl2xtuml_O_RATTR *) o_attr->R106_subtype : 0;
    /* self.ReferentialAttribute_dispose( o_rattr:rattr ) */
    masl2xtuml_ooapopulation_op_ReferentialAttribute_dispose( self,  rattr );
  }
  /* SELECT one dt RELATED BY o_attr->S_DT[R114] */
  dt = ( 0 != o_attr ) ? o_attr->S_DT_R114_defines_type_of : 0;
  /* IF ( not_empty dt ) */
  if ( ( 0 != dt ) ) {
    /* UNRELATE o_attr FROM dt ACROSS R114 */
    masl2xtuml_O_ATTR_R114_Unlink_is_defined_by( dt, o_attr );
  }
  /* SELECT one owningClass RELATED BY o_attr->O_OBJ[R102] */
  owningClass = ( 0 != o_attr ) ? o_attr->O_OBJ_R102_abstracts_characteristics_of : 0;
  /* SELECT one nextAttr RELATED BY o_attr->O_ATTR[R103.precedes] */
  nextAttr = ( 0 != o_attr ) ? o_attr->O_ATTR_R103_precedes : 0;
  /* IF ( not_empty nextAttr ) */
  if ( ( 0 != nextAttr ) ) {
    masl2xtuml_O_ATTR * prevAttr=0;
    /* SELECT one prevAttr RELATED BY o_attr->O_ATTR[R103.succeeds] */
    prevAttr = ( 0 != o_attr ) ? o_attr->O_ATTR_R103_succeeds : 0;
    /* IF ( empty prevAttr ) */
    if ( ( 0 == prevAttr ) ) {
      /* UNRELATE o_attr FROM nextAttr ACROSS R103 */
      masl2xtuml_O_ATTR_R103_Unlink_precedes( o_attr, nextAttr );
    }
    else {
      masl2xtuml_O_ATTR * attr=0;Escher_ObjectSet_s attrs_space={0}; Escher_ObjectSet_s * attrs = &attrs_space;
      /* SELECT many attrs RELATED BY owningClass->O_ATTR[R102] */
      Escher_ClearSet( attrs );
      if ( 0 != owningClass ) {
        Escher_CopySet( attrs, &owningClass->O_ATTR_R102_has_characteristics_abstracted_by );
      }
      /* FOR EACH attr IN attrs */
      { Escher_Iterator_s iterattr;
      masl2xtuml_O_ATTR * iiattr;
      Escher_IteratorReset( &iterattr, attrs );
      while ( (iiattr = (masl2xtuml_O_ATTR *)Escher_IteratorNext( &iterattr )) != 0 ) {
        attr = iiattr; {
        masl2xtuml_O_ATTR * thisAttr=0;
        /* SELECT one thisAttr RELATED BY attr->O_ATTR[R103.precedes] */
        thisAttr = ( 0 != attr ) ? attr->O_ATTR_R103_precedes : 0;
        /* IF ( ( o_attr == thisAttr ) ) */
        if ( ( o_attr == thisAttr ) ) {
          /* UNRELATE o_attr FROM nextAttr ACROSS R103 */
          masl2xtuml_O_ATTR_R103_Unlink_precedes( o_attr, nextAttr );
          /* UNRELATE o_attr FROM attr ACROSS R103 */
          masl2xtuml_O_ATTR_R103_Unlink_succeeds( o_attr, attr );
          /* RELATE nextAttr TO attr ACROSS R103 */
          masl2xtuml_O_ATTR_R103_Link_succeeds( nextAttr, attr );
          /* BREAK */
          break;
        }
      }}}
      Escher_ClearSet( attrs ); 
    }
  }
  else {
    masl2xtuml_O_ATTR * priorAttr=0;
    /* SELECT one priorAttr RELATED BY o_attr->O_ATTR[R103.succeeds] */
    priorAttr = ( 0 != o_attr ) ? o_attr->O_ATTR_R103_succeeds : 0;
    /* IF ( not_empty priorAttr ) */
    if ( ( 0 != priorAttr ) ) {
      /* UNRELATE o_attr FROM priorAttr ACROSS R103 */
      masl2xtuml_O_ATTR_R103_Unlink_succeeds( o_attr, priorAttr );
    }
  }
  /* UNRELATE o_attr FROM owningClass ACROSS R102 */
  masl2xtuml_O_ATTR_R102_Unlink_has_characteristics_abstracted_by( owningClass, o_attr );
  /* SELECT many selref_set RELATED BY o_attr->V_SLR[R812] */
  Escher_ClearSet( selref_set );
  if ( 0 != o_attr ) {
    Escher_CopySet( selref_set, &o_attr->V_SLR_R812 );
  }
  /* FOR EACH selref IN selref_set */
  { Escher_Iterator_s iterselref;
  masl2xtuml_V_SLR * iiselref;
  Escher_IteratorReset( &iterselref, selref_set );
  while ( (iiselref = (masl2xtuml_V_SLR *)Escher_IteratorNext( &iterselref )) != 0 ) {
    selref = iiselref; {
    /* UNRELATE o_attr FROM selref ACROSS R812 */
    masl2xtuml_V_SLR_R812_Unlink( o_attr, selref );
  }}}
  /* SELECT many attrvals RELATED BY o_attr->V_AVL[R806] */
  Escher_ClearSet( attrvals );
  if ( 0 != o_attr ) {
    Escher_CopySet( attrvals, &o_attr->V_AVL_R806 );
  }
  /* FOR EACH attrval IN attrvals */
  { Escher_Iterator_s iterattrval;
  masl2xtuml_V_AVL * iiattrval;
  Escher_IteratorReset( &iterattrval, attrvals );
  while ( (iiattrval = (masl2xtuml_V_AVL *)Escher_IteratorNext( &iterattrval )) != 0 ) {
    attrval = iiattrval; {
    /* UNRELATE o_attr FROM attrval ACROSS R806 */
    masl2xtuml_V_AVL_R806_Unlink( o_attr, attrval );
  }}}
  /* DELETE OBJECT INSTANCE o_attr */
  if ( 0 == o_attr ) {
    XTUML_EMPTY_HANDLE_TRACE( "O_ATTR", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) o_attr, masl2xtuml_DOMAIN_ID, masl2xtuml_O_ATTR_CLASS_NUMBER );
  Escher_ClearSet( attrvals ); Escher_ClearSet( selref_set ); Escher_ClearSet( oidas ); 
}

/*
 * instance operation:  ClassIdentifierAttribute_dispose
 */
void
masl2xtuml_ooapopulation_op_ClassIdentifierAttribute_dispose( masl2xtuml_ooapopulation * self, masl2xtuml_O_OIDA * p_o_oida )
{
  masl2xtuml_O_RTIDA * rtida=0;masl2xtuml_O_OIDA * o_oida;Escher_ObjectSet_s rtidas_space={0}; Escher_ObjectSet_s * rtidas = &rtidas_space;masl2xtuml_O_ID * id=0;masl2xtuml_O_ATTR * attr=0;
  /* ASSIGN o_oida = PARAM.o_oida */
  o_oida = p_o_oida;
  /* SELECT one attr RELATED BY o_oida->O_ATTR[R105] */
  attr = ( 0 != o_oida ) ? o_oida->O_ATTR_R105_is_made_up_of_ : 0;
  /* SELECT one id RELATED BY o_oida->O_ID[R105] */
  id = ( 0 != o_oida ) ? o_oida->O_ID_R105_is_part_of_ : 0;
  /* UNRELATE attr FROM id ACROSS R105 USING o_oida */
  masl2xtuml_O_OIDA_R105_Unlink( id, attr, o_oida );
  /* SELECT many rtidas RELATED BY o_oida->O_RTIDA[R110] */
  Escher_ClearSet( rtidas );
  if ( 0 != o_oida ) {
    Escher_CopySet( rtidas, &o_oida->O_RTIDA_R110 );
  }
  /* FOR EACH rtida IN rtidas */
  { Escher_Iterator_s iterrtida;
  masl2xtuml_O_RTIDA * iirtida;
  Escher_IteratorReset( &iterrtida, rtidas );
  while ( (iirtida = (masl2xtuml_O_RTIDA *)Escher_IteratorNext( &iterrtida )) != 0 ) {
    rtida = iirtida; {
    /* self.ReferredToIdentifierAttribute_dispose( o_rtida:rtida ) */
    masl2xtuml_ooapopulation_op_ReferredToIdentifierAttribute_dispose( self,  rtida );
  }}}
  /* DELETE OBJECT INSTANCE o_oida */
  if ( 0 == o_oida ) {
    XTUML_EMPTY_HANDLE_TRACE( "O_OIDA", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) o_oida, masl2xtuml_DOMAIN_ID, masl2xtuml_O_OIDA_CLASS_NUMBER );
  Escher_ClearSet( rtidas ); 
}

/*
 * instance operation:  ReferredToIdentifierAttribute_dispose
 */
void
masl2xtuml_ooapopulation_op_ReferredToIdentifierAttribute_dispose( masl2xtuml_ooapopulation * self, masl2xtuml_O_RTIDA * p_o_rtida )
{
  masl2xtuml_O_REF * ref=0;masl2xtuml_O_RTIDA * o_rtida;masl2xtuml_R_RTO * rto=0;masl2xtuml_O_OIDA * oida=0;Escher_ObjectSet_s refs_space={0}; Escher_ObjectSet_s * refs = &refs_space;
  /* ASSIGN o_rtida = PARAM.o_rtida */
  o_rtida = p_o_rtida;
  /* SELECT many refs RELATED BY o_rtida->O_REF[R111] */
  Escher_ClearSet( refs );
  if ( 0 != o_rtida ) {
    Escher_CopySet( refs, &o_rtida->O_REF_R111 );
  }
  /* FOR EACH ref IN refs */
  { Escher_Iterator_s iterref;
  masl2xtuml_O_REF * iiref;
  Escher_IteratorReset( &iterref, refs );
  while ( (iiref = (masl2xtuml_O_REF *)Escher_IteratorNext( &iterref )) != 0 ) {
    ref = iiref; {
    /* self.AttributeReferenceInClass_migrateRefAttrOrDispose( o_ref:ref ) */
    masl2xtuml_ooapopulation_op_AttributeReferenceInClass_migrateRefAttrOrDispose( self,  ref );
  }}}
  /* SELECT one oida RELATED BY o_rtida->O_OIDA[R110] */
  oida = ( 0 != o_rtida ) ? o_rtida->O_OIDA_R110_is_identified_in_this_association_by : 0;
  /* SELECT one rto RELATED BY o_rtida->R_RTO[R110] */
  rto = ( 0 != o_rtida ) ? o_rtida->R_RTO_R110_identifies_for_this_association : 0;
  /* UNRELATE oida FROM rto ACROSS R110 USING o_rtida */
  masl2xtuml_O_RTIDA_R110_Unlink( rto, oida, o_rtida );
  /* DELETE OBJECT INSTANCE o_rtida */
  if ( 0 == o_rtida ) {
    XTUML_EMPTY_HANDLE_TRACE( "O_RTIDA", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) o_rtida, masl2xtuml_DOMAIN_ID, masl2xtuml_O_RTIDA_CLASS_NUMBER );
  Escher_ClearSet( refs ); 
}

/*
 * instance operation:  ReferentialAttribute_migrateToBase
 */
void
masl2xtuml_ooapopulation_op_ReferentialAttribute_migrateToBase( masl2xtuml_ooapopulation * self, masl2xtuml_O_RATTR * p_o_rattr )
{
  masl2xtuml_O_RATTR * ref=0;masl2xtuml_O_RATTR * o_rattr;masl2xtuml_O_NBATTR * nbattr;Escher_ObjectSet_s rtoRefs_space={0}; Escher_ObjectSet_s * rtoRefs = &rtoRefs_space;masl2xtuml_O_BATTR * battr=0;masl2xtuml_O_ATTR * attr=0;
  /* ASSIGN o_rattr = PARAM.o_rattr */
  o_rattr = p_o_rattr;
  /* SELECT one attr RELATED BY o_rattr->O_ATTR[R106] */
  attr = ( 0 != o_rattr ) ? o_rattr->O_ATTR_R106 : 0;
  /* UNRELATE o_rattr FROM attr ACROSS R106 */
  masl2xtuml_O_RATTR_R106_Unlink( attr, o_rattr );
  /* SELECT one battr RELATED BY o_rattr->O_BATTR[R113] */
  battr = ( 0 != o_rattr ) ? o_rattr->O_BATTR_R113_navigates_back_to : 0;
  /* IF ( not_empty battr ) */
  if ( ( 0 != battr ) ) {
    masl2xtuml_S_DT * attrType=0;masl2xtuml_S_DT * battrType=0;
    /* UNRELATE o_rattr FROM battr ACROSS R113 */
    masl2xtuml_O_RATTR_R113_Unlink_can_be_the_base_of( battr, o_rattr );
    /* SELECT one battrType RELATED BY battr->O_ATTR[R106]->S_DT[R114] */
    battrType = 0;
    {    if ( 0 != battr ) {
    masl2xtuml_O_ATTR * O_ATTR_R106 = battr->O_ATTR_R106;
    if ( 0 != O_ATTR_R106 ) {
    battrType = O_ATTR_R106->S_DT_R114_defines_type_of;
}}}
    /* SELECT one attrType RELATED BY attr->S_DT[R114] */
    attrType = ( 0 != attr ) ? attr->S_DT_R114_defines_type_of : 0;
    /* UNRELATE attr FROM attrType ACROSS R114 */
    masl2xtuml_O_ATTR_R114_Unlink_is_defined_by( attrType, attr );
    /* RELATE attr TO battrType ACROSS R114 */
    masl2xtuml_O_ATTR_R114_Link_is_defined_by( battrType, attr );
  }
  /* CREATE OBJECT INSTANCE battr OF O_BATTR */
  battr = (masl2xtuml_O_BATTR *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_O_BATTR_CLASS_NUMBER );
  battr->Attr_ID = (Escher_UniqueID_t) battr;
battr->Obj_ID = (Escher_UniqueID_t) battr;
  /* RELATE attr TO battr ACROSS R106 */
  masl2xtuml_O_BATTR_R106_Link( attr, battr );
  /* CREATE OBJECT INSTANCE nbattr OF O_NBATTR */
  nbattr = (masl2xtuml_O_NBATTR *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_O_NBATTR_CLASS_NUMBER );
  nbattr->Attr_ID = (Escher_UniqueID_t) nbattr;
nbattr->Obj_ID = (Escher_UniqueID_t) nbattr;
  /* RELATE nbattr TO battr ACROSS R107 */
  masl2xtuml_O_NBATTR_R107_Link( battr, nbattr );
  /* SELECT many rtoRefs RELATED BY attr->O_OIDA[R105]->O_RTIDA[R110]->O_REF[R111]->O_RATTR[R108] */
  Escher_ClearSet( rtoRefs );
  {  if ( 0 != attr ) {
  masl2xtuml_O_OIDA * O_OIDA_R105;
  Escher_Iterator_s iO_OIDA_R105;
  Escher_IteratorReset( &iO_OIDA_R105, &attr->O_OIDA_R105 );
  while ( 0 != ( O_OIDA_R105 = (masl2xtuml_O_OIDA *) Escher_IteratorNext( &iO_OIDA_R105 ) ) ) {
  masl2xtuml_O_RTIDA * O_RTIDA_R110;
  Escher_Iterator_s iO_RTIDA_R110;
  Escher_IteratorReset( &iO_RTIDA_R110, &O_OIDA_R105->O_RTIDA_R110 );
  while ( 0 != ( O_RTIDA_R110 = (masl2xtuml_O_RTIDA *) Escher_IteratorNext( &iO_RTIDA_R110 ) ) ) {
  masl2xtuml_O_REF * O_REF_R111;
  Escher_Iterator_s iO_REF_R111;
  Escher_IteratorReset( &iO_REF_R111, &O_RTIDA_R110->O_REF_R111 );
  while ( 0 != ( O_REF_R111 = (masl2xtuml_O_REF *) Escher_IteratorNext( &iO_REF_R111 ) ) ) {
  {masl2xtuml_O_RATTR * O_RATTR_R108_is_resolved_by = O_REF_R111->O_RATTR_R108_is_resolved_by;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) rtoRefs, O_RATTR_R108_is_resolved_by ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) rtoRefs, O_RATTR_R108_is_resolved_by );
  }}}}}}}
  /* FOR EACH ref IN rtoRefs */
  { Escher_Iterator_s iterref;
  masl2xtuml_O_RATTR * iiref;
  Escher_IteratorReset( &iterref, rtoRefs );
  while ( (iiref = (masl2xtuml_O_RATTR *)Escher_IteratorNext( &iterref )) != 0 ) {
    ref = iiref; {
    masl2xtuml_O_BATTR * oldBattr=0;
    /* SELECT one oldBattr RELATED BY ref->O_BATTR[R113] */
    oldBattr = ( 0 != ref ) ? ref->O_BATTR_R113_navigates_back_to : 0;
    /* UNRELATE ref FROM oldBattr ACROSS R113 */
    masl2xtuml_O_RATTR_R113_Unlink_can_be_the_base_of( oldBattr, ref );
    /* RELATE ref TO battr ACROSS R113 */
    masl2xtuml_O_RATTR_R113_Link_can_be_the_base_of( battr, ref );
  }}}
  /* self.ReferentialAttribute_dispose( o_rattr:o_rattr ) */
  masl2xtuml_ooapopulation_op_ReferentialAttribute_dispose( self,  o_rattr );
  Escher_ClearSet( rtoRefs ); 
}

/*
 * instance operation:  ReferentialAttribute_dispose
 */
void
masl2xtuml_ooapopulation_op_ReferentialAttribute_dispose( masl2xtuml_ooapopulation * self, masl2xtuml_O_RATTR * p_o_rattr )
{
  masl2xtuml_O_REF * ref=0;masl2xtuml_O_RATTR * o_rattr;masl2xtuml_O_ATTR * attr=0;Escher_ObjectSet_s refs_space={0}; Escher_ObjectSet_s * refs = &refs_space;masl2xtuml_O_BATTR * battr=0;
  /* ASSIGN o_rattr = PARAM.o_rattr */
  o_rattr = p_o_rattr;
  /* SELECT one battr RELATED BY o_rattr->O_BATTR[R113] */
  battr = ( 0 != o_rattr ) ? o_rattr->O_BATTR_R113_navigates_back_to : 0;
  /* IF ( not_empty battr ) */
  if ( ( 0 != battr ) ) {
    /* UNRELATE o_rattr FROM battr ACROSS R113 */
    masl2xtuml_O_RATTR_R113_Unlink_can_be_the_base_of( battr, o_rattr );
  }
  /* SELECT many refs RELATED BY o_rattr->O_REF[R108] */
  Escher_ClearSet( refs );
  if ( 0 != o_rattr ) {
    Escher_CopySet( refs, &o_rattr->O_REF_R108_resolves_ );
  }
  /* FOR EACH ref IN refs */
  { Escher_Iterator_s iterref;
  masl2xtuml_O_REF * iiref;
  Escher_IteratorReset( &iterref, refs );
  while ( (iiref = (masl2xtuml_O_REF *)Escher_IteratorNext( &iterref )) != 0 ) {
    ref = iiref; {
    /* UNRELATE o_rattr FROM ref ACROSS R108 */
    masl2xtuml_O_REF_R108_Unlink_resolves_( o_rattr, ref );
    /* self.AttributeReferenceInClass_dispose( o_ref:ref ) */
    masl2xtuml_ooapopulation_op_AttributeReferenceInClass_dispose( self,  ref );
  }}}
  /* SELECT one attr RELATED BY o_rattr->O_ATTR[R106] */
  attr = ( 0 != o_rattr ) ? o_rattr->O_ATTR_R106 : 0;
  /* IF ( not_empty attr ) */
  if ( ( 0 != attr ) ) {
    /* UNRELATE o_rattr FROM attr ACROSS R106 */
    masl2xtuml_O_RATTR_R106_Unlink( attr, o_rattr );
  }
  /* DELETE OBJECT INSTANCE o_rattr */
  if ( 0 == o_rattr ) {
    XTUML_EMPTY_HANDLE_TRACE( "O_RATTR", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) o_rattr, masl2xtuml_DOMAIN_ID, masl2xtuml_O_RATTR_CLASS_NUMBER );
  Escher_ClearSet( refs ); 
}

/*
 * instance operation:  BaseAttribute_dispose
 */
void
masl2xtuml_ooapopulation_op_BaseAttribute_dispose( masl2xtuml_ooapopulation * self, masl2xtuml_O_BATTR * p_o_battr )
{
  masl2xtuml_O_RATTR * rattr=0;masl2xtuml_O_BATTR * o_battr;masl2xtuml_O_ATTR * attr=0;Escher_ObjectSet_s rattrs_space={0}; Escher_ObjectSet_s * rattrs = &rattrs_space;masl2xtuml_O_DBATTR * dbattr=0;
  /* ASSIGN o_battr = PARAM.o_battr */
  o_battr = p_o_battr;
  /* SELECT one dbattr RELATED BY o_battr->O_DBATTR[R107] */
  dbattr = 0;
  if ( ( 0 != o_battr ) && ( masl2xtuml_O_DBATTR_CLASS_NUMBER == o_battr->R107_object_id ) )  dbattr = ( 0 != o_battr ) ? (masl2xtuml_O_DBATTR *) o_battr->R107_subtype : 0;
  /* IF ( not_empty dbattr ) */
  if ( ( 0 != dbattr ) ) {
    /* self.DerivedBaseAttribute_dispose( o_dbattr:dbattr ) */
    masl2xtuml_ooapopulation_op_DerivedBaseAttribute_dispose( self,  dbattr );
  }
  else {
    masl2xtuml_O_NBATTR * nbattr=0;
    /* SELECT one nbattr RELATED BY o_battr->O_NBATTR[R107] */
    nbattr = 0;
    if ( ( 0 != o_battr ) && ( masl2xtuml_O_NBATTR_CLASS_NUMBER == o_battr->R107_object_id ) )    nbattr = ( 0 != o_battr ) ? (masl2xtuml_O_NBATTR *) o_battr->R107_subtype : 0;
    /* IF ( not_empty nbattr ) */
    if ( ( 0 != nbattr ) ) {
      /* self.NewBaseAttribute_dispose( o_nbattr:nbattr ) */
      masl2xtuml_ooapopulation_op_NewBaseAttribute_dispose( self,  nbattr );
    }
  }
  /* SELECT many rattrs RELATED BY o_battr->O_RATTR[R113] */
  Escher_ClearSet( rattrs );
  if ( 0 != o_battr ) {
    Escher_CopySet( rattrs, &o_battr->O_RATTR_R113_can_be_the_base_of );
  }
  /* FOR EACH rattr IN rattrs */
  { Escher_Iterator_s iterrattr;
  masl2xtuml_O_RATTR * iirattr;
  Escher_IteratorReset( &iterrattr, rattrs );
  while ( (iirattr = (masl2xtuml_O_RATTR *)Escher_IteratorNext( &iterrattr )) != 0 ) {
    rattr = iirattr; {
    /* UNRELATE o_battr FROM rattr ACROSS R113 */
    masl2xtuml_O_RATTR_R113_Unlink_can_be_the_base_of( o_battr, rattr );
  }}}
  /* SELECT one attr RELATED BY o_battr->O_ATTR[R106] */
  attr = ( 0 != o_battr ) ? o_battr->O_ATTR_R106 : 0;
  /* IF ( not_empty attr ) */
  if ( ( 0 != attr ) ) {
    /* UNRELATE o_battr FROM attr ACROSS R106 */
    masl2xtuml_O_BATTR_R106_Unlink( attr, o_battr );
  }
  /* DELETE OBJECT INSTANCE o_battr */
  if ( 0 == o_battr ) {
    XTUML_EMPTY_HANDLE_TRACE( "O_BATTR", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) o_battr, masl2xtuml_DOMAIN_ID, masl2xtuml_O_BATTR_CLASS_NUMBER );
  Escher_ClearSet( rattrs ); 
}

/*
 * instance operation:  DerivedBaseAttribute_dispose
 */
void
masl2xtuml_ooapopulation_op_DerivedBaseAttribute_dispose( masl2xtuml_ooapopulation * self, masl2xtuml_O_DBATTR * p_o_dbattr )
{
  masl2xtuml_O_DBATTR * o_dbattr;masl2xtuml_ACT_ACT * body=0;masl2xtuml_O_BATTR * battr=0;
  /* ASSIGN o_dbattr = PARAM.o_dbattr */
  o_dbattr = p_o_dbattr;
  /* SELECT one battr RELATED BY o_dbattr->O_BATTR[R107] */
  battr = ( 0 != o_dbattr ) ? o_dbattr->O_BATTR_R107 : 0;
  /* UNRELATE o_dbattr FROM battr ACROSS R107 */
  masl2xtuml_O_DBATTR_R107_Unlink( battr, o_dbattr );
  /* SELECT one body RELATED BY o_dbattr->ACT_DAB[R693]->ACT_ACT[R698] */
  body = 0;
  {  if ( 0 != o_dbattr ) {
  masl2xtuml_ACT_DAB * ACT_DAB_R693 = o_dbattr->ACT_DAB_R693;
  if ( 0 != ACT_DAB_R693 ) {
  body = ACT_DAB_R693->ACT_ACT_R698;
}}}
  /* IF ( not_empty body ) */
  if ( ( 0 != body ) ) {
  }
  /* DELETE OBJECT INSTANCE o_dbattr */
  if ( 0 == o_dbattr ) {
    XTUML_EMPTY_HANDLE_TRACE( "O_DBATTR", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) o_dbattr, masl2xtuml_DOMAIN_ID, masl2xtuml_O_DBATTR_CLASS_NUMBER );
}

/*
 * instance operation:  NewBaseAttribute_dispose
 */
void
masl2xtuml_ooapopulation_op_NewBaseAttribute_dispose( masl2xtuml_ooapopulation * self, masl2xtuml_O_NBATTR * p_o_nbattr )
{
  masl2xtuml_O_NBATTR * o_nbattr;masl2xtuml_O_BATTR * battr=0;
  /* ASSIGN o_nbattr = PARAM.o_nbattr */
  o_nbattr = p_o_nbattr;
  /* SELECT one battr RELATED BY o_nbattr->O_BATTR[R107] */
  battr = ( 0 != o_nbattr ) ? o_nbattr->O_BATTR_R107 : 0;
  /* UNRELATE o_nbattr FROM battr ACROSS R107 */
  masl2xtuml_O_NBATTR_R107_Unlink( battr, o_nbattr );
  /* DELETE OBJECT INSTANCE o_nbattr */
  if ( 0 == o_nbattr ) {
    XTUML_EMPTY_HANDLE_TRACE( "O_NBATTR", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) o_nbattr, masl2xtuml_DOMAIN_ID, masl2xtuml_O_NBATTR_CLASS_NUMBER );
}

/*
 * instance operation:  ClassAsLink_dispose
 */
void
masl2xtuml_ooapopulation_op_ClassAsLink_dispose( masl2xtuml_ooapopulation * self, masl2xtuml_R_ASSR * p_r_assr )
{
  masl2xtuml_R_ASSR * r_assr;masl2xtuml_R_RGO * rgo=0;masl2xtuml_R_ASSOC * rassoc=0;
  /* ASSIGN r_assr = PARAM.r_assr */
  r_assr = p_r_assr;
  /* SELECT one rassoc RELATED BY r_assr->R_ASSOC[R211] */
  rassoc = ( 0 != r_assr ) ? r_assr->R_ASSOC_R211_formalizes_association_between_associated_classes : 0;
  /* IF ( not_empty rassoc ) */
  if ( ( 0 != rassoc ) ) {
    /* UNRELATE r_assr FROM rassoc ACROSS R211 */
    masl2xtuml_R_ASSR_R211_Unlink_uses_a_formalizer( rassoc, r_assr );
  }
  /* SELECT one rgo RELATED BY r_assr->R_RGO[R205] */
  rgo = ( 0 != r_assr ) ? r_assr->R_RGO_R205 : 0;
  /* UNRELATE r_assr FROM rgo ACROSS R205 */
  masl2xtuml_R_ASSR_R205_Unlink( rgo, r_assr );
  /* DELETE OBJECT INSTANCE r_assr */
  if ( 0 == r_assr ) {
    XTUML_EMPTY_HANDLE_TRACE( "R_ASSR", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) r_assr, masl2xtuml_DOMAIN_ID, masl2xtuml_R_ASSR_CLASS_NUMBER );
}

/*
 * instance operation:  ClassAsSimpleFormalizer_dispose
 */
void
masl2xtuml_ooapopulation_op_ClassAsSimpleFormalizer_dispose( masl2xtuml_ooapopulation * self, masl2xtuml_R_FORM * p_r_form )
{

}

/*
 * instance operation:  ModelClass_newInstanceReferenceDataType
 */
void
masl2xtuml_ooapopulation_op_ModelClass_newInstanceReferenceDataType( masl2xtuml_ooapopulation * self, masl2xtuml_O_OBJ * p_o_obj )
{
  masl2xtuml_O_OBJ * o_obj;masl2xtuml_C_C * component=0;masl2xtuml_EP_PKG * package=0;masl2xtuml_PE_PE * packageableElem=0;masl2xtuml_S_IRDT * existing_irdt_set=0;masl2xtuml_S_IRDT * existing_irdt=0;
  /* ASSIGN o_obj = PARAM.o_obj */
  o_obj = p_o_obj;
  /* SELECT one packageableElem RELATED BY o_obj->PE_PE[R8001] */
  packageableElem = ( 0 != o_obj ) ? o_obj->PE_PE_R8001 : 0;
  /* SELECT one package RELATED BY packageableElem->EP_PKG[R8000] */
  package = ( 0 != packageableElem ) ? packageableElem->EP_PKG_R8000_contained_by : 0;
  /* SELECT one component RELATED BY packageableElem->C_C[R8003] */
  component = ( 0 != packageableElem ) ? packageableElem->C_C_R8003_contained_in : 0;
  /* SELECT any existing_irdt RELATED BY o_obj->S_IRDT[R123] WHERE ( ( SELECTED.isSet == FALSE ) ) */
  existing_irdt = 0;
  if ( 0 != o_obj ) {
    masl2xtuml_S_IRDT * selected;
    Escher_Iterator_s iS_IRDT_R123_is_available_as_a_reference_by;
    Escher_IteratorReset( &iS_IRDT_R123_is_available_as_a_reference_by, &o_obj->S_IRDT_R123_is_available_as_a_reference_by );
    while ( 0 != ( selected = (masl2xtuml_S_IRDT *) Escher_IteratorNext( &iS_IRDT_R123_is_available_as_a_reference_by ) ) ) {
      if ( ( selected->isSet == FALSE ) ) {
        existing_irdt = selected;
        break;
  }}}
  /* IF ( empty existing_irdt ) */
  if ( ( 0 == existing_irdt ) ) {
    masl2xtuml_S_IRDT * irdt;masl2xtuml_S_DT * dt;masl2xtuml_PE_PE * pe;
    /* CREATE OBJECT INSTANCE pe OF PE_PE */
    pe = (masl2xtuml_PE_PE *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_PE_PE_CLASS_NUMBER );
    pe->Element_ID = (Escher_UniqueID_t) pe;
    /* RELATE pe TO package ACROSS R8000 */
    masl2xtuml_PE_PE_R8000_Link_contains( package, pe );
    /* self.PackageableElement_initialize( pe_pe:pe ) */
    masl2xtuml_ooapopulation_op_PackageableElement_initialize( self,  pe );
    /* ASSIGN pe.type = DATATYPE */
    pe->type = masl2xtuml_ElementTypeConstants_DATATYPE_e;
    /* CREATE OBJECT INSTANCE dt OF S_DT */
    dt = (masl2xtuml_S_DT *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_S_DT_CLASS_NUMBER );
    dt->DT_ID = (Escher_UniqueID_t) dt;
    /* RELATE pe TO dt ACROSS R8001 */
    masl2xtuml_S_DT_R8001_Link( pe, dt );
    /* CREATE OBJECT INSTANCE irdt OF S_IRDT */
    irdt = (masl2xtuml_S_IRDT *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_S_IRDT_CLASS_NUMBER );
    irdt->DT_ID = (Escher_UniqueID_t) irdt;
    /* ASSIGN irdt.isSet = FALSE */
    irdt->isSet = FALSE;
    /* RELATE dt TO irdt ACROSS R17 */
    masl2xtuml_S_IRDT_R17_Link( dt, irdt );
    /* self.Datatype_initialize( name:( ( inst_ref< + o_obj.Name ) + > ), s_dt:dt ) */
    masl2xtuml_ooapopulation_op_Datatype_initialize( self,  Escher_stradd( Escher_stradd( "inst_ref<", o_obj->Name ), ">" ), dt );
    /* RELATE o_obj TO irdt ACROSS R123 */
    masl2xtuml_S_IRDT_R123_Link_is_available_as_a_reference_by( o_obj, irdt );
  }
  /* SELECT any existing_irdt_set RELATED BY o_obj->S_IRDT[R123] WHERE ( ( SELECTED.isSet == TRUE ) ) */
  existing_irdt_set = 0;
  if ( 0 != o_obj ) {
    masl2xtuml_S_IRDT * selected;
    Escher_Iterator_s iS_IRDT_R123_is_available_as_a_reference_by;
    Escher_IteratorReset( &iS_IRDT_R123_is_available_as_a_reference_by, &o_obj->S_IRDT_R123_is_available_as_a_reference_by );
    while ( 0 != ( selected = (masl2xtuml_S_IRDT *) Escher_IteratorNext( &iS_IRDT_R123_is_available_as_a_reference_by ) ) ) {
      if ( ( selected->isSet == TRUE ) ) {
        existing_irdt_set = selected;
        break;
  }}}
  /* IF ( empty existing_irdt_set ) */
  if ( ( 0 == existing_irdt_set ) ) {
    masl2xtuml_S_IRDT * irsdt;masl2xtuml_S_DT * dt2;masl2xtuml_PE_PE * pe;
    /* CREATE OBJECT INSTANCE pe OF PE_PE */
    pe = (masl2xtuml_PE_PE *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_PE_PE_CLASS_NUMBER );
    pe->Element_ID = (Escher_UniqueID_t) pe;
    /* RELATE pe TO package ACROSS R8000 */
    masl2xtuml_PE_PE_R8000_Link_contains( package, pe );
    /* self.PackageableElement_initialize( pe_pe:pe ) */
    masl2xtuml_ooapopulation_op_PackageableElement_initialize( self,  pe );
    /* ASSIGN pe.type = DATATYPE */
    pe->type = masl2xtuml_ElementTypeConstants_DATATYPE_e;
    /* CREATE OBJECT INSTANCE dt2 OF S_DT */
    dt2 = (masl2xtuml_S_DT *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_S_DT_CLASS_NUMBER );
    dt2->DT_ID = (Escher_UniqueID_t) dt2;
    /* RELATE pe TO dt2 ACROSS R8001 */
    masl2xtuml_S_DT_R8001_Link( pe, dt2 );
    /* CREATE OBJECT INSTANCE irsdt OF S_IRDT */
    irsdt = (masl2xtuml_S_IRDT *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_S_IRDT_CLASS_NUMBER );
    irsdt->DT_ID = (Escher_UniqueID_t) irsdt;
    /* ASSIGN irsdt.isSet = TRUE */
    irsdt->isSet = TRUE;
    /* RELATE irsdt TO dt2 ACROSS R17 */
    masl2xtuml_S_IRDT_R17_Link( dt2, irsdt );
    /* self.Datatype_initialize( name:( ( inst_ref_set< + o_obj.Name ) + > ), s_dt:dt2 ) */
    masl2xtuml_ooapopulation_op_Datatype_initialize( self,  Escher_stradd( Escher_stradd( "inst_ref_set<", o_obj->Name ), ">" ), dt2 );
    /* RELATE o_obj TO irsdt ACROSS R123 */
    masl2xtuml_S_IRDT_R123_Link_is_available_as_a_reference_by( o_obj, irsdt );
  }
}

/*
 * instance operation:  StateEventMatrixEntry_disposeChOrEi
 */
void
masl2xtuml_ooapopulation_op_StateEventMatrixEntry_disposeChOrEi( masl2xtuml_ooapopulation * self, masl2xtuml_SM_SEME * p_sm_seme )
{
  masl2xtuml_SM_SEME * sm_seme;masl2xtuml_SM_EIGN * igevt=0;masl2xtuml_SM_CH * chevt=0;
  /* ASSIGN sm_seme = PARAM.sm_seme */
  sm_seme = p_sm_seme;
  /* SELECT one chevt RELATED BY sm_seme->SM_CH[R504] */
  chevt = 0;
  if ( ( 0 != sm_seme ) && ( masl2xtuml_SM_CH_CLASS_NUMBER == sm_seme->R504_object_id ) )  chevt = ( 0 != sm_seme ) ? (masl2xtuml_SM_CH *) sm_seme->R504_subtype : 0;
  /* IF ( not_empty chevt ) */
  if ( ( 0 != chevt ) ) {
    /* UNRELATE sm_seme FROM chevt ACROSS R504 */
    masl2xtuml_SM_CH_R504_Unlink( sm_seme, chevt );
    /* DELETE OBJECT INSTANCE chevt */
    if ( 0 == chevt ) {
      XTUML_EMPTY_HANDLE_TRACE( "SM_CH", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) chevt, masl2xtuml_DOMAIN_ID, masl2xtuml_SM_CH_CLASS_NUMBER );
  }
  /* SELECT one igevt RELATED BY sm_seme->SM_EIGN[R504] */
  igevt = 0;
  if ( ( 0 != sm_seme ) && ( masl2xtuml_SM_EIGN_CLASS_NUMBER == sm_seme->R504_object_id ) )  igevt = ( 0 != sm_seme ) ? (masl2xtuml_SM_EIGN *) sm_seme->R504_subtype : 0;
  /* IF ( not_empty igevt ) */
  if ( ( 0 != igevt ) ) {
    /* UNRELATE sm_seme FROM igevt ACROSS R504 */
    masl2xtuml_SM_EIGN_R504_Unlink( sm_seme, igevt );
    /* DELETE OBJECT INSTANCE igevt */
    if ( 0 == igevt ) {
      XTUML_EMPTY_HANDLE_TRACE( "SM_EIGN", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) igevt, masl2xtuml_DOMAIN_ID, masl2xtuml_SM_EIGN_CLASS_NUMBER );
  }
}

/*
 * instance operation:  StateEventMatrixEntry_migrateChToEi
 */
void
masl2xtuml_ooapopulation_op_StateEventMatrixEntry_migrateChToEi( masl2xtuml_ooapopulation * self, masl2xtuml_SM_SEME * p_sm_seme )
{
  masl2xtuml_SM_SEME * sm_seme;masl2xtuml_SM_CH * ch=0;
  /* ASSIGN sm_seme = PARAM.sm_seme */
  sm_seme = p_sm_seme;
  /* SELECT one ch RELATED BY sm_seme->SM_CH[R504] */
  ch = 0;
  if ( ( 0 != sm_seme ) && ( masl2xtuml_SM_CH_CLASS_NUMBER == sm_seme->R504_object_id ) )  ch = ( 0 != sm_seme ) ? (masl2xtuml_SM_CH *) sm_seme->R504_subtype : 0;
  /* IF ( not_empty ch ) */
  if ( ( 0 != ch ) ) {
    masl2xtuml_SM_EIGN * ei;
    /* CREATE OBJECT INSTANCE ei OF SM_EIGN */
    ei = (masl2xtuml_SM_EIGN *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_EIGN_CLASS_NUMBER );
    ei->SMstt_ID = (Escher_UniqueID_t) ei;
ei->SMevt_ID = (Escher_UniqueID_t) ei;
ei->SM_ID = (Escher_UniqueID_t) ei;
    /* UNRELATE sm_seme FROM ch ACROSS R504 */
    masl2xtuml_SM_CH_R504_Unlink( sm_seme, ch );
    /* RELATE sm_seme TO ei ACROSS R504 */
    masl2xtuml_SM_EIGN_R504_Link( sm_seme, ei );
    /* DELETE OBJECT INSTANCE ch */
    if ( 0 == ch ) {
      XTUML_EMPTY_HANDLE_TRACE( "SM_CH", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) ch, masl2xtuml_DOMAIN_ID, masl2xtuml_SM_CH_CLASS_NUMBER );
  }
}

/*
 * instance operation:  StateEventMatrixEntry_migrateEiToCh
 */
void
masl2xtuml_ooapopulation_op_StateEventMatrixEntry_migrateEiToCh( masl2xtuml_ooapopulation * self, masl2xtuml_SM_SEME * p_sm_seme )
{
  masl2xtuml_SM_SEME * sm_seme;masl2xtuml_SM_EIGN * ei=0;
  /* ASSIGN sm_seme = PARAM.sm_seme */
  sm_seme = p_sm_seme;
  /* SELECT one ei RELATED BY sm_seme->SM_EIGN[R504] */
  ei = 0;
  if ( ( 0 != sm_seme ) && ( masl2xtuml_SM_EIGN_CLASS_NUMBER == sm_seme->R504_object_id ) )  ei = ( 0 != sm_seme ) ? (masl2xtuml_SM_EIGN *) sm_seme->R504_subtype : 0;
  /* IF ( not_empty ei ) */
  if ( ( 0 != ei ) ) {
    masl2xtuml_SM_CH * ch;
    /* CREATE OBJECT INSTANCE ch OF SM_CH */
    ch = (masl2xtuml_SM_CH *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_CH_CLASS_NUMBER );
    ch->SMstt_ID = (Escher_UniqueID_t) ch;
ch->SMevt_ID = (Escher_UniqueID_t) ch;
ch->SM_ID = (Escher_UniqueID_t) ch;
    /* UNRELATE sm_seme FROM ei ACROSS R504 */
    masl2xtuml_SM_EIGN_R504_Unlink( sm_seme, ei );
    /* RELATE sm_seme TO ch ACROSS R504 */
    masl2xtuml_SM_CH_R504_Link( sm_seme, ch );
    /* DELETE OBJECT INSTANCE ei */
    if ( 0 == ei ) {
      XTUML_EMPTY_HANDLE_TRACE( "SM_EIGN", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) ei, masl2xtuml_DOMAIN_ID, masl2xtuml_SM_EIGN_CLASS_NUMBER );
  }
}

/*
 * instance operation:  batchFormalize
 */
void
masl2xtuml_ooapopulation_op_batchFormalize( masl2xtuml_ooapopulation * self)
{
  i_t passes;i_t num_forms;Escher_ObjectSet_s forms_space={0}; Escher_ObjectSet_s * forms = &forms_space;
  /* SELECT many forms FROM INSTANCES OF formalization */
  Escher_CopySet( forms, &pG_masl2xtuml_formalization_extent.active );
  /* ASSIGN num_forms = cardinality forms */
  num_forms = Escher_SetCardinality( forms );
  /* ASSIGN passes = 0 */
  passes = 0;
  /* WHILE ( ( passes < num_forms ) ) */
  while ( ( passes < num_forms ) ) {
    masl2xtuml_formalization * form=0;
    /* FOR EACH form IN forms */
    { Escher_Iterator_s iterform;
    masl2xtuml_formalization * iiform;
    Escher_IteratorReset( &iterform, forms );
    while ( (iiform = (masl2xtuml_formalization *)Escher_IteratorNext( &iterform )) != 0 ) {
      form = iiform; {
      /* IF ( ( 0 == form.type ) ) */
      if ( ( 0 == form->type ) ) {
        i_t id;masl2xtuml_simpleFormalization * simpForm=0;
        /* SELECT one simpForm RELATED BY form->simpleFormalization[R3810] */
        simpForm = 0;
        if ( ( 0 != form ) && ( masl2xtuml_simpleFormalization_CLASS_NUMBER == form->R3810_object_id ) )        simpForm = ( 0 != form ) ? (masl2xtuml_simpleFormalization *) form->R3810_subtype : 0;
        /* ASSIGN id = simpForm.getID() */
        id = masl2xtuml_simpleFormalization_op_getID(simpForm);
        /* IF ( ( - 1 != id ) ) */
        if ( ( -1 != id ) ) {
          masl2xtuml_referentialAttribute * ra=0;masl2xtuml_R_SIMP * simp;masl2xtuml_O_OBJ * form_obj=0;Escher_ObjectSet_s ras_space={0}; Escher_ObjectSet_s * ras = &ras_space;masl2xtuml_R_PART * r_part=0;
          /* ASSIGN simp = simpForm.rel */
          simp = simpForm->rel;
          /* SELECT any r_part RELATED BY simp->R_PART[R207] WHERE ( ( SELECTED.Obj_ID == simpForm.part_obj_id ) ) */
          r_part = 0;
          if ( 0 != simp ) {
            masl2xtuml_R_PART * selected;
            Escher_Iterator_s iR_PART_R207_relates;
            Escher_IteratorReset( &iR_PART_R207_relates, &simp->R_PART_R207_relates );
            while ( 0 != ( selected = (masl2xtuml_R_PART *) Escher_IteratorNext( &iR_PART_R207_relates ) ) ) {
              if ( ( selected->Obj_ID == simpForm->part_obj_id ) ) {
                r_part = selected;
                break;
          }}}
          /* self.SimpleAssociation_formalize( id_id:id, r_part:r_part, r_simp:simp ) */
          masl2xtuml_ooapopulation_op_SimpleAssociation_formalize( self,  id, r_part, simp );
          /* SELECT many ras RELATED BY form->referentialAttribute[R3811] */
          Escher_ClearSet( ras );
          if ( 0 != form ) {
            Escher_CopySet( ras, &form->referentialAttribute_R3811 );
          }
          /* FOR EACH ra IN ras */
          { Escher_Iterator_s iterra;
          masl2xtuml_referentialAttribute * iira;
          Escher_IteratorReset( &iterra, ras );
          while ( (iira = (masl2xtuml_referentialAttribute *)Escher_IteratorNext( &iterra )) != 0 ) {
            ra = iira; {
            Escher_ObjectSet_s o_attrs_space={0}; Escher_ObjectSet_s * o_attrs = &o_attrs_space;masl2xtuml_O_ATTR * o_attr=0;
            /* SELECT any o_attr RELATED BY simp->R_FORM[R208]->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201]->O_ATTR[R102]->O_RATTR[R106]->O_ATTR[R106] WHERE ( ( SELECTED.Root_Nam == ra.attrName ) ) */
            o_attr = 0;
            {            if ( 0 != simp ) {
            masl2xtuml_R_FORM * R_FORM_R208_relates = simp->R_FORM_R208_relates;
            if ( 0 != R_FORM_R208_relates ) {
            masl2xtuml_R_RGO * R_RGO_R205 = R_FORM_R208_relates->R_RGO_R205;
            if ( 0 != R_RGO_R205 ) {
            masl2xtuml_R_OIR * R_OIR_R203 = R_RGO_R205->R_OIR_R203;
            if ( 0 != R_OIR_R203 ) {
            masl2xtuml_O_OBJ * O_OBJ_R201_abstracts_association_between_instances_of = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
            if ( 0 != O_OBJ_R201_abstracts_association_between_instances_of ) {
            masl2xtuml_O_ATTR * O_ATTR_R102_has_characteristics_abstracted_by;
            Escher_Iterator_s iO_ATTR_R102_has_characteristics_abstracted_by;
            Escher_IteratorReset( &iO_ATTR_R102_has_characteristics_abstracted_by, &O_OBJ_R201_abstracts_association_between_instances_of->O_ATTR_R102_has_characteristics_abstracted_by );
            while ( ( 0 == o_attr ) && ( 0 != ( O_ATTR_R102_has_characteristics_abstracted_by = (masl2xtuml_O_ATTR *) Escher_IteratorNext( &iO_ATTR_R102_has_characteristics_abstracted_by ) ) ) ) {
            masl2xtuml_O_RATTR * R106_subtype = (masl2xtuml_O_RATTR *) O_ATTR_R102_has_characteristics_abstracted_by->R106_subtype;
            if ( 0 != R106_subtype )            if ( ( 0 != O_ATTR_R102_has_characteristics_abstracted_by ) && ( masl2xtuml_O_RATTR_CLASS_NUMBER == O_ATTR_R102_has_characteristics_abstracted_by->R106_object_id ) ) {
            {masl2xtuml_O_ATTR * selected = R106_subtype->O_ATTR_R106;
            if ( ( 0 != selected ) && ( Escher_strcmp( selected->Root_Nam, ra->attrName ) == 0 ) ) {
              o_attr = selected;
            }}
}}}}}}}}
            /* SELECT many o_attrs RELATED BY simp->R_FORM[R208]->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201]->O_ATTR[R102]->O_RATTR[R106]->O_ATTR[R106] */
            Escher_ClearSet( o_attrs );
            {            if ( 0 != simp ) {
            masl2xtuml_R_FORM * R_FORM_R208_relates = simp->R_FORM_R208_relates;
            if ( 0 != R_FORM_R208_relates ) {
            masl2xtuml_R_RGO * R_RGO_R205 = R_FORM_R208_relates->R_RGO_R205;
            if ( 0 != R_RGO_R205 ) {
            masl2xtuml_R_OIR * R_OIR_R203 = R_RGO_R205->R_OIR_R203;
            if ( 0 != R_OIR_R203 ) {
            masl2xtuml_O_OBJ * O_OBJ_R201_abstracts_association_between_instances_of = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
            if ( 0 != O_OBJ_R201_abstracts_association_between_instances_of ) {
            masl2xtuml_O_ATTR * O_ATTR_R102_has_characteristics_abstracted_by;
            Escher_Iterator_s iO_ATTR_R102_has_characteristics_abstracted_by;
            Escher_IteratorReset( &iO_ATTR_R102_has_characteristics_abstracted_by, &O_OBJ_R201_abstracts_association_between_instances_of->O_ATTR_R102_has_characteristics_abstracted_by );
            while ( 0 != ( O_ATTR_R102_has_characteristics_abstracted_by = (masl2xtuml_O_ATTR *) Escher_IteratorNext( &iO_ATTR_R102_has_characteristics_abstracted_by ) ) ) {
            masl2xtuml_O_RATTR * R106_subtype = (masl2xtuml_O_RATTR *) O_ATTR_R102_has_characteristics_abstracted_by->R106_subtype;
            if ( 0 != R106_subtype )            if ( ( 0 != O_ATTR_R102_has_characteristics_abstracted_by ) && ( masl2xtuml_O_RATTR_CLASS_NUMBER == O_ATTR_R102_has_characteristics_abstracted_by->R106_object_id ) ) {
            {masl2xtuml_O_ATTR * O_ATTR_R106 = R106_subtype->O_ATTR_R106;
            if ( ! Escher_SetContains( (Escher_ObjectSet_s *) o_attrs, O_ATTR_R106 ) ) {
              Escher_SetInsertElement( (Escher_ObjectSet_s *) o_attrs, O_ATTR_R106 );
            }}}}}}}}}}
            /* ra.postProcess( o_attr:o_attr, o_attrs:o_attrs, ooapopulation:self ) */
            masl2xtuml_referentialAttribute_op_postProcess( ra,  o_attr, o_attrs, self );
            Escher_ClearSet( o_attrs ); 
          }}}
          /* SELECT one form_obj RELATED BY simp->R_FORM[R208]->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201] */
          form_obj = 0;
          {          if ( 0 != simp ) {
          masl2xtuml_R_FORM * R_FORM_R208_relates = simp->R_FORM_R208_relates;
          if ( 0 != R_FORM_R208_relates ) {
          masl2xtuml_R_RGO * R_RGO_R205 = R_FORM_R208_relates->R_RGO_R205;
          if ( 0 != R_RGO_R205 ) {
          masl2xtuml_R_OIR * R_OIR_R203 = R_RGO_R205->R_OIR_R203;
          if ( 0 != R_OIR_R203 ) {
          form_obj = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
}}}}}
          /* self.ModelClass_removeDuplicateAttrs( o_obj:form_obj ) */
          masl2xtuml_ooapopulation_op_ModelClass_removeDuplicateAttrs( self,  form_obj );
          /* form.dispose() */
          masl2xtuml_formalization_op_dispose( form );
          Escher_ClearSet( ras ); 
        }
        else {
        }
      }
      else if ( ( 1 == form->type ) ) {
        i_t id;masl2xtuml_subsuperFormalization * subsupForm=0;
        /* SELECT one subsupForm RELATED BY form->subsuperFormalization[R3810] */
        subsupForm = 0;
        if ( ( 0 != form ) && ( masl2xtuml_subsuperFormalization_CLASS_NUMBER == form->R3810_object_id ) )        subsupForm = ( 0 != form ) ? (masl2xtuml_subsuperFormalization *) form->R3810_subtype : 0;
        /* ASSIGN id = subsupForm.getID() */
        id = masl2xtuml_subsuperFormalization_op_getID(subsupForm);
        /* IF ( ( - 1 != id ) ) */
        if ( ( -1 != id ) ) {
          masl2xtuml_O_OBJ * sub=0;masl2xtuml_referentialAttribute * ra=0;masl2xtuml_R_SUBSUP * subsuper;Escher_ObjectSet_s subs_space={0}; Escher_ObjectSet_s * subs = &subs_space;Escher_ObjectSet_s ras_space={0}; Escher_ObjectSet_s * ras = &ras_space;
          /* ASSIGN subsuper = subsupForm.rel */
          subsuper = subsupForm->rel;
          /* self.SubtypeSupertypeAssociation_formalize( id:id, r_subsup:subsuper ) */
          masl2xtuml_ooapopulation_op_SubtypeSupertypeAssociation_formalize( self,  id, subsuper );
          /* SELECT many ras RELATED BY form->referentialAttribute[R3811] */
          Escher_ClearSet( ras );
          if ( 0 != form ) {
            Escher_CopySet( ras, &form->referentialAttribute_R3811 );
          }
          /* FOR EACH ra IN ras */
          { Escher_Iterator_s iterra;
          masl2xtuml_referentialAttribute * iira;
          Escher_IteratorReset( &iterra, ras );
          while ( (iira = (masl2xtuml_referentialAttribute *)Escher_IteratorNext( &iterra )) != 0 ) {
            ra = iira; {
            masl2xtuml_O_OBJ * sub=0;Escher_ObjectSet_s subs_space={0}; Escher_ObjectSet_s * subs = &subs_space;
            /* SELECT many subs RELATED BY subsuper->R_SUB[R213]->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201] */
            Escher_ClearSet( subs );
            {            if ( 0 != subsuper ) {
            masl2xtuml_R_SUB * R_SUB_R213_relates;
            Escher_Iterator_s iR_SUB_R213_relates;
            Escher_IteratorReset( &iR_SUB_R213_relates, &subsuper->R_SUB_R213_relates );
            while ( 0 != ( R_SUB_R213_relates = (masl2xtuml_R_SUB *) Escher_IteratorNext( &iR_SUB_R213_relates ) ) ) {
            masl2xtuml_R_RGO * R_RGO_R205 = R_SUB_R213_relates->R_RGO_R205;
            if ( 0 != R_RGO_R205 ) {
            masl2xtuml_R_OIR * R_OIR_R203 = R_RGO_R205->R_OIR_R203;
            if ( 0 != R_OIR_R203 ) {
            {masl2xtuml_O_OBJ * O_OBJ_R201_abstracts_association_between_instances_of = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
            if ( ! Escher_SetContains( (Escher_ObjectSet_s *) subs, O_OBJ_R201_abstracts_association_between_instances_of ) ) {
              Escher_SetInsertElement( (Escher_ObjectSet_s *) subs, O_OBJ_R201_abstracts_association_between_instances_of );
            }}}}}}}
            /* FOR EACH sub IN subs */
            { Escher_Iterator_s itersub;
            masl2xtuml_O_OBJ * iisub;
            Escher_IteratorReset( &itersub, subs );
            while ( (iisub = (masl2xtuml_O_OBJ *)Escher_IteratorNext( &itersub )) != 0 ) {
              sub = iisub; {
              Escher_ObjectSet_s o_attrs_space={0}; Escher_ObjectSet_s * o_attrs = &o_attrs_space;masl2xtuml_O_ATTR * o_attr=0;
              /* SELECT any o_attr RELATED BY sub->O_ATTR[R102]->O_RATTR[R106]->O_ATTR[R106] WHERE ( ( SELECTED.Root_Nam == ra.attrName ) ) */
              o_attr = 0;
              {              if ( 0 != sub ) {
              masl2xtuml_O_ATTR * O_ATTR_R102_has_characteristics_abstracted_by;
              Escher_Iterator_s iO_ATTR_R102_has_characteristics_abstracted_by;
              Escher_IteratorReset( &iO_ATTR_R102_has_characteristics_abstracted_by, &sub->O_ATTR_R102_has_characteristics_abstracted_by );
              while ( ( 0 == o_attr ) && ( 0 != ( O_ATTR_R102_has_characteristics_abstracted_by = (masl2xtuml_O_ATTR *) Escher_IteratorNext( &iO_ATTR_R102_has_characteristics_abstracted_by ) ) ) ) {
              masl2xtuml_O_RATTR * R106_subtype = (masl2xtuml_O_RATTR *) O_ATTR_R102_has_characteristics_abstracted_by->R106_subtype;
              if ( 0 != R106_subtype )              if ( ( 0 != O_ATTR_R102_has_characteristics_abstracted_by ) && ( masl2xtuml_O_RATTR_CLASS_NUMBER == O_ATTR_R102_has_characteristics_abstracted_by->R106_object_id ) ) {
              {masl2xtuml_O_ATTR * selected = R106_subtype->O_ATTR_R106;
              if ( ( 0 != selected ) && ( Escher_strcmp( selected->Root_Nam, ra->attrName ) == 0 ) ) {
                o_attr = selected;
              }}
}}}}
              /* SELECT many o_attrs RELATED BY sub->O_ATTR[R102]->O_RATTR[R106]->O_ATTR[R106] */
              Escher_ClearSet( o_attrs );
              {              if ( 0 != sub ) {
              masl2xtuml_O_ATTR * O_ATTR_R102_has_characteristics_abstracted_by;
              Escher_Iterator_s iO_ATTR_R102_has_characteristics_abstracted_by;
              Escher_IteratorReset( &iO_ATTR_R102_has_characteristics_abstracted_by, &sub->O_ATTR_R102_has_characteristics_abstracted_by );
              while ( 0 != ( O_ATTR_R102_has_characteristics_abstracted_by = (masl2xtuml_O_ATTR *) Escher_IteratorNext( &iO_ATTR_R102_has_characteristics_abstracted_by ) ) ) {
              masl2xtuml_O_RATTR * R106_subtype = (masl2xtuml_O_RATTR *) O_ATTR_R102_has_characteristics_abstracted_by->R106_subtype;
              if ( 0 != R106_subtype )              if ( ( 0 != O_ATTR_R102_has_characteristics_abstracted_by ) && ( masl2xtuml_O_RATTR_CLASS_NUMBER == O_ATTR_R102_has_characteristics_abstracted_by->R106_object_id ) ) {
              {masl2xtuml_O_ATTR * O_ATTR_R106 = R106_subtype->O_ATTR_R106;
              if ( ! Escher_SetContains( (Escher_ObjectSet_s *) o_attrs, O_ATTR_R106 ) ) {
                Escher_SetInsertElement( (Escher_ObjectSet_s *) o_attrs, O_ATTR_R106 );
              }}}}}}
              /* ra.postProcess( o_attr:o_attr, o_attrs:o_attrs, ooapopulation:self ) */
              masl2xtuml_referentialAttribute_op_postProcess( ra,  o_attr, o_attrs, self );
              Escher_ClearSet( o_attrs ); 
            }}}
            Escher_ClearSet( subs ); 
          }}}
          /* SELECT many subs RELATED BY subsuper->R_SUB[R213]->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201] */
          Escher_ClearSet( subs );
          {          if ( 0 != subsuper ) {
          masl2xtuml_R_SUB * R_SUB_R213_relates;
          Escher_Iterator_s iR_SUB_R213_relates;
          Escher_IteratorReset( &iR_SUB_R213_relates, &subsuper->R_SUB_R213_relates );
          while ( 0 != ( R_SUB_R213_relates = (masl2xtuml_R_SUB *) Escher_IteratorNext( &iR_SUB_R213_relates ) ) ) {
          masl2xtuml_R_RGO * R_RGO_R205 = R_SUB_R213_relates->R_RGO_R205;
          if ( 0 != R_RGO_R205 ) {
          masl2xtuml_R_OIR * R_OIR_R203 = R_RGO_R205->R_OIR_R203;
          if ( 0 != R_OIR_R203 ) {
          {masl2xtuml_O_OBJ * O_OBJ_R201_abstracts_association_between_instances_of = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
          if ( ! Escher_SetContains( (Escher_ObjectSet_s *) subs, O_OBJ_R201_abstracts_association_between_instances_of ) ) {
            Escher_SetInsertElement( (Escher_ObjectSet_s *) subs, O_OBJ_R201_abstracts_association_between_instances_of );
          }}}}}}}
          /* FOR EACH sub IN subs */
          { Escher_Iterator_s itersub;
          masl2xtuml_O_OBJ * iisub;
          Escher_IteratorReset( &itersub, subs );
          while ( (iisub = (masl2xtuml_O_OBJ *)Escher_IteratorNext( &itersub )) != 0 ) {
            sub = iisub; {
            /* self.ModelClass_removeDuplicateAttrs( o_obj:sub ) */
            masl2xtuml_ooapopulation_op_ModelClass_removeDuplicateAttrs( self,  sub );
          }}}
          /* form.dispose() */
          masl2xtuml_formalization_op_dispose( form );
          Escher_ClearSet( subs ); Escher_ClearSet( ras ); 
        }
        else {
        }
      }
      else if ( ( 2 == form->type ) ) {
        i_t other_id;i_t one_id;masl2xtuml_assocFormalization * assocForm=0;
        /* SELECT one assocForm RELATED BY form->assocFormalization[R3810] */
        assocForm = 0;
        if ( ( 0 != form ) && ( masl2xtuml_assocFormalization_CLASS_NUMBER == form->R3810_object_id ) )        assocForm = ( 0 != form ) ? (masl2xtuml_assocFormalization *) form->R3810_subtype : 0;
        /* ASSIGN one_id = assocForm.getID(target:0) */
        one_id = masl2xtuml_assocFormalization_op_getID(assocForm, 0);
        /* ASSIGN other_id = assocForm.getID(target:1) */
        other_id = masl2xtuml_assocFormalization_op_getID(assocForm, 1);
        /* IF ( ( ( - 1 != one_id ) and ( - 1 != other_id ) ) ) */
        if ( ( ( -1 != one_id ) && ( -1 != other_id ) ) ) {
          masl2xtuml_referentialAttribute * ra=0;masl2xtuml_R_ASSOC * linked;Escher_ObjectSet_s ras_space={0}; Escher_ObjectSet_s * ras = &ras_space;masl2xtuml_O_OBJ * assr_obj=0;
          /* ASSIGN linked = assocForm.rel */
          linked = assocForm->rel;
          /* self.LinkedAssociation_formalize( one_id:one_id, oth_id:other_id, r_assoc:linked ) */
          masl2xtuml_ooapopulation_op_LinkedAssociation_formalize( self,  one_id, other_id, linked );
          /* SELECT one assr_obj RELATED BY linked->R_ASSR[R211]->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201] */
          assr_obj = 0;
          {          if ( 0 != linked ) {
          masl2xtuml_R_ASSR * R_ASSR_R211_uses_a_formalizer = linked->R_ASSR_R211_uses_a_formalizer;
          if ( 0 != R_ASSR_R211_uses_a_formalizer ) {
          masl2xtuml_R_RGO * R_RGO_R205 = R_ASSR_R211_uses_a_formalizer->R_RGO_R205;
          if ( 0 != R_RGO_R205 ) {
          masl2xtuml_R_OIR * R_OIR_R203 = R_RGO_R205->R_OIR_R203;
          if ( 0 != R_OIR_R203 ) {
          assr_obj = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
}}}}}
          /* SELECT many ras RELATED BY form->referentialAttribute[R3811] */
          Escher_ClearSet( ras );
          if ( 0 != form ) {
            Escher_CopySet( ras, &form->referentialAttribute_R3811 );
          }
          /* FOR EACH ra IN ras */
          { Escher_Iterator_s iterra;
          masl2xtuml_referentialAttribute * iira;
          Escher_IteratorReset( &iterra, ras );
          while ( (iira = (masl2xtuml_referentialAttribute *)Escher_IteratorNext( &iterra )) != 0 ) {
            ra = iira; {
            Escher_ObjectSet_s o_attrs_space={0}; Escher_ObjectSet_s * o_attrs = &o_attrs_space;masl2xtuml_O_ATTR * o_attr=0;
            /* SELECT any o_attr RELATED BY assr_obj->O_ATTR[R102]->O_RATTR[R106]->O_ATTR[R106] WHERE ( ( SELECTED.Root_Nam == ra.attrName ) ) */
            o_attr = 0;
            {            if ( 0 != assr_obj ) {
            masl2xtuml_O_ATTR * O_ATTR_R102_has_characteristics_abstracted_by;
            Escher_Iterator_s iO_ATTR_R102_has_characteristics_abstracted_by;
            Escher_IteratorReset( &iO_ATTR_R102_has_characteristics_abstracted_by, &assr_obj->O_ATTR_R102_has_characteristics_abstracted_by );
            while ( ( 0 == o_attr ) && ( 0 != ( O_ATTR_R102_has_characteristics_abstracted_by = (masl2xtuml_O_ATTR *) Escher_IteratorNext( &iO_ATTR_R102_has_characteristics_abstracted_by ) ) ) ) {
            masl2xtuml_O_RATTR * R106_subtype = (masl2xtuml_O_RATTR *) O_ATTR_R102_has_characteristics_abstracted_by->R106_subtype;
            if ( 0 != R106_subtype )            if ( ( 0 != O_ATTR_R102_has_characteristics_abstracted_by ) && ( masl2xtuml_O_RATTR_CLASS_NUMBER == O_ATTR_R102_has_characteristics_abstracted_by->R106_object_id ) ) {
            {masl2xtuml_O_ATTR * selected = R106_subtype->O_ATTR_R106;
            if ( ( 0 != selected ) && ( Escher_strcmp( selected->Root_Nam, ra->attrName ) == 0 ) ) {
              o_attr = selected;
            }}
}}}}
            /* SELECT many o_attrs RELATED BY assr_obj->O_ATTR[R102]->O_RATTR[R106]->O_ATTR[R106] */
            Escher_ClearSet( o_attrs );
            {            if ( 0 != assr_obj ) {
            masl2xtuml_O_ATTR * O_ATTR_R102_has_characteristics_abstracted_by;
            Escher_Iterator_s iO_ATTR_R102_has_characteristics_abstracted_by;
            Escher_IteratorReset( &iO_ATTR_R102_has_characteristics_abstracted_by, &assr_obj->O_ATTR_R102_has_characteristics_abstracted_by );
            while ( 0 != ( O_ATTR_R102_has_characteristics_abstracted_by = (masl2xtuml_O_ATTR *) Escher_IteratorNext( &iO_ATTR_R102_has_characteristics_abstracted_by ) ) ) {
            masl2xtuml_O_RATTR * R106_subtype = (masl2xtuml_O_RATTR *) O_ATTR_R102_has_characteristics_abstracted_by->R106_subtype;
            if ( 0 != R106_subtype )            if ( ( 0 != O_ATTR_R102_has_characteristics_abstracted_by ) && ( masl2xtuml_O_RATTR_CLASS_NUMBER == O_ATTR_R102_has_characteristics_abstracted_by->R106_object_id ) ) {
            {masl2xtuml_O_ATTR * O_ATTR_R106 = R106_subtype->O_ATTR_R106;
            if ( ! Escher_SetContains( (Escher_ObjectSet_s *) o_attrs, O_ATTR_R106 ) ) {
              Escher_SetInsertElement( (Escher_ObjectSet_s *) o_attrs, O_ATTR_R106 );
            }}}}}}
            /* ra.postProcess( o_attr:o_attr, o_attrs:o_attrs, ooapopulation:self ) */
            masl2xtuml_referentialAttribute_op_postProcess( ra,  o_attr, o_attrs, self );
            Escher_ClearSet( o_attrs ); 
          }}}
          /* self.ModelClass_removeDuplicateAttrs( o_obj:assr_obj ) */
          masl2xtuml_ooapopulation_op_ModelClass_removeDuplicateAttrs( self,  assr_obj );
          /* form.dispose() */
          masl2xtuml_formalization_op_dispose( form );
          Escher_ClearSet( ras ); 
        }
        else {
        }
      }
    }}}
    /* ASSIGN passes = ( passes + 1 ) */
    passes = ( passes + 1 );
    /* SELECT many forms FROM INSTANCES OF formalization */
    Escher_CopySet( forms, &pG_masl2xtuml_formalization_extent.active );
  }
  /* IF ( not_empty forms ) */
  if ( ( ! Escher_SetIsEmpty( forms ) ) ) {
    /* TRACE::log( flavor:failure, id:17, message:Incomplete formalizations still exist ) */
    TRACE_log( "failure", 17, "Incomplete formalizations still exist" );
  }
  Escher_ClearSet( forms );
}

/*
 * instance operation:  transformReferential
 */
void
masl2xtuml_ooapopulation_op_transformReferential( masl2xtuml_ooapopulation * self, c_t * p_attrName, c_t * p_objName, c_t * p_relationship, c_t * p_roleOrObj )
{
  masl2xtuml_O_ID * o_id=0;i_t relNumber;c_t * relNum=0;masl2xtuml_O_OBJ * o_obj;masl2xtuml_O_ATTR * o_attr;masl2xtuml_referentialAttribute * ra;masl2xtuml_ooapopulation * ooapopulation=0;masl2xtuml_R_SIMP * simp=0;Escher_ObjectSet_s o_ids_space={0}; Escher_ObjectSet_s * o_ids = &o_ids_space;masl2xtuml_R_REL * rel=0;
  /* SELECT any ooapopulation FROM INSTANCES OF ooapopulation */
  ooapopulation = (masl2xtuml_ooapopulation *) Escher_SetGetAny( &pG_masl2xtuml_ooapopulation_extent.active );
  /* CREATE OBJECT INSTANCE ra OF referentialAttribute */
  ra = (masl2xtuml_referentialAttribute *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_referentialAttribute_CLASS_NUMBER );
  /* ASSIGN ra.attrName = PARAM.attrName */
  ra->attrName = Escher_strcpy( ra->attrName, p_attrName );
  /* ASSIGN ra.relationship = PARAM.relationship */
  ra->relationship = Escher_strcpy( ra->relationship, p_relationship );
  /* ASSIGN ra.roleOrObj = PARAM.roleOrObj */
  ra->roleOrObj = Escher_strcpy( ra->roleOrObj, p_roleOrObj );
  /* ASSIGN ra.objectName = PARAM.objName */
  ra->objectName = Escher_strcpy( ra->objectName, p_objName );
  /* ASSIGN ra.o_obj = ooapopulation.current_class */
  ra->o_obj = ooapopulation->current_class;
  /* ASSIGN ra.o_attr = ooapopulation.current_attribute */
  ra->o_attr = ooapopulation->current_attribute;
  /* ASSIGN ra.identifier1 = FALSE */
  ra->identifier1 = FALSE;
  /* ASSIGN ra.identifier2 = FALSE */
  ra->identifier2 = FALSE;
  /* ASSIGN ra.identifier3 = FALSE */
  ra->identifier3 = FALSE;
  /* ASSIGN o_attr = ooapopulation.current_attribute */
  o_attr = ooapopulation->current_attribute;
  /* SELECT many o_ids RELATED BY o_attr->O_OIDA[R105]->O_ID[R105] */
  Escher_ClearSet( o_ids );
  {  if ( 0 != o_attr ) {
  masl2xtuml_O_OIDA * O_OIDA_R105;
  Escher_Iterator_s iO_OIDA_R105;
  Escher_IteratorReset( &iO_OIDA_R105, &o_attr->O_OIDA_R105 );
  while ( 0 != ( O_OIDA_R105 = (masl2xtuml_O_OIDA *) Escher_IteratorNext( &iO_OIDA_R105 ) ) ) {
  {masl2xtuml_O_ID * O_ID_R105_is_part_of_ = O_OIDA_R105->O_ID_R105_is_part_of_;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) o_ids, O_ID_R105_is_part_of_ ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) o_ids, O_ID_R105_is_part_of_ );
  }}}}}
  /* FOR EACH o_id IN o_ids */
  { Escher_Iterator_s itero_id;
  masl2xtuml_O_ID * iio_id;
  Escher_IteratorReset( &itero_id, o_ids );
  while ( (iio_id = (masl2xtuml_O_ID *)Escher_IteratorNext( &itero_id )) != 0 ) {
    o_id = iio_id; {
    /* IF ( ( 0 == o_id.Oid_ID ) ) */
    if ( ( 0 == o_id->Oid_ID ) ) {
      /* ASSIGN ra.identifier1 = TRUE */
      ra->identifier1 = TRUE;
    }
    else if ( ( 1 == o_id->Oid_ID ) ) {
      /* ASSIGN ra.identifier2 = TRUE */
      ra->identifier2 = TRUE;
    }
    else if ( ( 2 == ooapopulation->processingIdentifier ) ) {
      /* ASSIGN ra.identifier3 = TRUE */
      ra->identifier3 = TRUE;
    }
  }}}
  /* ASSIGN o_obj = ra.o_obj */
  o_obj = ra->o_obj;
  /* ASSIGN relNum = STRING::substr(begin:1, end:- 1, s:ra.relationship) */
  relNum = Escher_strcpy( relNum, STRING_substr( 1, -1, ra->relationship ) );
  /* ASSIGN relNumber = STRING::atoi(s:relNum) */
  relNumber = STRING_atoi( relNum );
  /* SELECT any rel RELATED BY o_obj->PE_PE[R8001]->EP_PKG[R8000]->PE_PE[R8000]->R_REL[R8001] WHERE ( ( SELECTED.Numb == relNumber ) ) */
  rel = 0;
  {  if ( 0 != o_obj ) {
  masl2xtuml_PE_PE * PE_PE_R8001 = o_obj->PE_PE_R8001;
  if ( 0 != PE_PE_R8001 ) {
  masl2xtuml_EP_PKG * EP_PKG_R8000_contained_by = PE_PE_R8001->EP_PKG_R8000_contained_by;
  if ( 0 != EP_PKG_R8000_contained_by ) {
  masl2xtuml_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &EP_PKG_R8000_contained_by->PE_PE_R8000_contains );
  while ( ( 0 == rel ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_R_REL_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {masl2xtuml_R_REL * selected = (masl2xtuml_R_REL *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( selected->Numb == relNumber ) ) {
    rel = selected;
  }}
}}}}}
  /* SELECT one simp RELATED BY rel->R_SIMP[R206] */
  simp = 0;
  if ( ( 0 != rel ) && ( masl2xtuml_R_SIMP_CLASS_NUMBER == rel->R206_object_id ) )  simp = ( 0 != rel ) ? (masl2xtuml_R_SIMP *) rel->R206_subtype : 0;
  /* IF ( not_empty simp ) */
  if ( ( 0 != simp ) ) {
    masl2xtuml_simpleFormalization * simpForm=0;masl2xtuml_R_PART * r_part=0;masl2xtuml_formalization * form=0;
    /* SELECT any r_part FROM INSTANCES OF R_PART WHERE FALSE */
    r_part = 0;
    /* IF ( (  != ra.objectName ) ) */
    if ( ( Escher_strcmp( "", ra->objectName ) != 0 ) ) {
      masl2xtuml_O_OBJ * ref_obj=0;
      /* SELECT any ref_obj RELATED BY simp->R_PART[R207]->R_RTO[R204]->R_OIR[R203]->O_OBJ[R201] WHERE ( ( SELECTED.Name == ra.objectName ) ) */
      ref_obj = 0;
      {      if ( 0 != simp ) {
      masl2xtuml_R_PART * R_PART_R207_relates;
      Escher_Iterator_s iR_PART_R207_relates;
      Escher_IteratorReset( &iR_PART_R207_relates, &simp->R_PART_R207_relates );
      while ( ( 0 == ref_obj ) && ( 0 != ( R_PART_R207_relates = (masl2xtuml_R_PART *) Escher_IteratorNext( &iR_PART_R207_relates ) ) ) ) {
      masl2xtuml_R_RTO * R_RTO_R204 = R_PART_R207_relates->R_RTO_R204;
      if ( 0 != R_RTO_R204 ) {
      masl2xtuml_R_OIR * R_OIR_R203 = R_RTO_R204->R_OIR_R203;
      if ( 0 != R_OIR_R203 ) {
      {masl2xtuml_O_OBJ * selected = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
      if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, ra->objectName ) == 0 ) ) {
        ref_obj = selected;
      }}
}}}}}
      /* SELECT any r_part RELATED BY simp->R_PART[R207] WHERE ( ( ( SELECTED.Txt_Phrs == ra.roleOrObj ) and ( SELECTED.Obj_ID == ref_obj.Obj_ID ) ) ) */
      r_part = 0;
      if ( 0 != simp ) {
        masl2xtuml_R_PART * selected;
        Escher_Iterator_s iR_PART_R207_relates;
        Escher_IteratorReset( &iR_PART_R207_relates, &simp->R_PART_R207_relates );
        while ( 0 != ( selected = (masl2xtuml_R_PART *) Escher_IteratorNext( &iR_PART_R207_relates ) ) ) {
          if ( ( ( Escher_strcmp( selected->Txt_Phrs, ra->roleOrObj ) == 0 ) && ( selected->Obj_ID == ref_obj->Obj_ID ) ) ) {
            r_part = selected;
            break;
      }}}
    }
    else {
      masl2xtuml_O_OBJ * ref_obj=0;
      /* SELECT any ref_obj RELATED BY simp->R_PART[R207]->R_RTO[R204]->R_OIR[R203]->O_OBJ[R201] WHERE ( ( SELECTED.Name == ra.roleOrObj ) ) */
      ref_obj = 0;
      {      if ( 0 != simp ) {
      masl2xtuml_R_PART * R_PART_R207_relates;
      Escher_Iterator_s iR_PART_R207_relates;
      Escher_IteratorReset( &iR_PART_R207_relates, &simp->R_PART_R207_relates );
      while ( ( 0 == ref_obj ) && ( 0 != ( R_PART_R207_relates = (masl2xtuml_R_PART *) Escher_IteratorNext( &iR_PART_R207_relates ) ) ) ) {
      masl2xtuml_R_RTO * R_RTO_R204 = R_PART_R207_relates->R_RTO_R204;
      if ( 0 != R_RTO_R204 ) {
      masl2xtuml_R_OIR * R_OIR_R203 = R_RTO_R204->R_OIR_R203;
      if ( 0 != R_OIR_R203 ) {
      {masl2xtuml_O_OBJ * selected = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
      if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, ra->roleOrObj ) == 0 ) ) {
        ref_obj = selected;
      }}
}}}}}
      /* IF ( not_empty ref_obj ) */
      if ( ( 0 != ref_obj ) ) {
        /* SELECT any r_part RELATED BY simp->R_PART[R207] WHERE ( ( SELECTED.Obj_ID == ref_obj.Obj_ID ) ) */
        r_part = 0;
        if ( 0 != simp ) {
          masl2xtuml_R_PART * selected;
          Escher_Iterator_s iR_PART_R207_relates;
          Escher_IteratorReset( &iR_PART_R207_relates, &simp->R_PART_R207_relates );
          while ( 0 != ( selected = (masl2xtuml_R_PART *) Escher_IteratorNext( &iR_PART_R207_relates ) ) ) {
            if ( ( selected->Obj_ID == ref_obj->Obj_ID ) ) {
              r_part = selected;
              break;
        }}}
      }
      else {
        /* SELECT any r_part RELATED BY simp->R_PART[R207] WHERE ( ( SELECTED.Txt_Phrs == ra.roleOrObj ) ) */
        r_part = 0;
        if ( 0 != simp ) {
          masl2xtuml_R_PART * selected;
          Escher_Iterator_s iR_PART_R207_relates;
          Escher_IteratorReset( &iR_PART_R207_relates, &simp->R_PART_R207_relates );
          while ( 0 != ( selected = (masl2xtuml_R_PART *) Escher_IteratorNext( &iR_PART_R207_relates ) ) ) {
            if ( ( Escher_strcmp( selected->Txt_Phrs, ra->roleOrObj ) == 0 ) ) {
              r_part = selected;
              break;
        }}}
      }
    }
    /* SELECT any simpForm FROM INSTANCES OF simpleFormalization WHERE ( ( ( SELECTED.rel == simp ) and ( SELECTED.form_obj_id == o_obj.Obj_ID ) ) and ( SELECTED.part_obj_id == r_part.Obj_ID ) ) */
    simpForm = 0;
    { masl2xtuml_simpleFormalization * selected;
      Escher_Iterator_s itersimpFormmasl2xtuml_simpleFormalization;
      Escher_IteratorReset( &itersimpFormmasl2xtuml_simpleFormalization, &pG_masl2xtuml_simpleFormalization_extent.active );
      while ( (selected = (masl2xtuml_simpleFormalization *) Escher_IteratorNext( &itersimpFormmasl2xtuml_simpleFormalization )) != 0 ) {
        if ( ( ( ( selected->rel == simp ) && ( selected->form_obj_id == o_obj->Obj_ID ) ) && ( selected->part_obj_id == r_part->Obj_ID ) ) ) {
          simpForm = selected;
          break;
        }
      }
    }
    /* SELECT one form RELATED BY simpForm->formalization[R3810] */
    form = ( 0 != simpForm ) ? simpForm->formalization_R3810 : 0;
    /* IF ( empty form ) */
    if ( ( 0 == form ) ) {
      /* CREATE OBJECT INSTANCE form OF formalization */
      form = (masl2xtuml_formalization *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_formalization_CLASS_NUMBER );
      /* ASSIGN form.type = 0 */
      form->type = 0;
      /* CREATE OBJECT INSTANCE simpForm OF simpleFormalization */
      simpForm = (masl2xtuml_simpleFormalization *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_simpleFormalization_CLASS_NUMBER );
      /* ASSIGN simpForm.rel = simp */
      simpForm->rel = simp;
      /* ASSIGN simpForm.form_obj_id = o_obj.Obj_ID */
      simpForm->form_obj_id = o_obj->Obj_ID;
      /* ASSIGN simpForm.part_obj_id = r_part.Obj_ID */
      simpForm->part_obj_id = r_part->Obj_ID;
      /* RELATE form TO simpForm ACROSS R3810 */
      masl2xtuml_simpleFormalization_R3810_Link( form, simpForm );
    }
    /* RELATE ra TO form ACROSS R3811 */
    masl2xtuml_referentialAttribute_R3811_Link( form, ra );
  }
  else {
    masl2xtuml_R_SUBSUP * subsuper=0;
    /* SELECT one subsuper RELATED BY rel->R_SUBSUP[R206] */
    subsuper = 0;
    if ( ( 0 != rel ) && ( masl2xtuml_R_SUBSUP_CLASS_NUMBER == rel->R206_object_id ) )    subsuper = ( 0 != rel ) ? (masl2xtuml_R_SUBSUP *) rel->R206_subtype : 0;
    /* IF ( not_empty subsuper ) */
    if ( ( 0 != subsuper ) ) {
      masl2xtuml_subsuperFormalization * subsupForm=0;masl2xtuml_formalization * form=0;
      /* SELECT any subsupForm FROM INSTANCES OF subsuperFormalization WHERE ( SELECTED.rel == subsuper ) */
      subsupForm = 0;
      { masl2xtuml_subsuperFormalization * selected;
        Escher_Iterator_s itersubsupFormmasl2xtuml_subsuperFormalization;
        Escher_IteratorReset( &itersubsupFormmasl2xtuml_subsuperFormalization, &pG_masl2xtuml_subsuperFormalization_extent.active );
        while ( (selected = (masl2xtuml_subsuperFormalization *) Escher_IteratorNext( &itersubsupFormmasl2xtuml_subsuperFormalization )) != 0 ) {
          if ( ( selected->rel == subsuper ) ) {
            subsupForm = selected;
            break;
          }
        }
      }
      /* SELECT one form RELATED BY subsupForm->formalization[R3810] */
      form = ( 0 != subsupForm ) ? subsupForm->formalization_R3810 : 0;
      /* IF ( empty form ) */
      if ( ( 0 == form ) ) {
        /* CREATE OBJECT INSTANCE form OF formalization */
        form = (masl2xtuml_formalization *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_formalization_CLASS_NUMBER );
        /* ASSIGN form.type = 1 */
        form->type = 1;
        /* CREATE OBJECT INSTANCE subsupForm OF subsuperFormalization */
        subsupForm = (masl2xtuml_subsuperFormalization *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_subsuperFormalization_CLASS_NUMBER );
        /* ASSIGN subsupForm.rel = subsuper */
        subsupForm->rel = subsuper;
        /* RELATE form TO subsupForm ACROSS R3810 */
        masl2xtuml_subsuperFormalization_R3810_Link( form, subsupForm );
      }
      /* RELATE ra TO form ACROSS R3811 */
      masl2xtuml_referentialAttribute_R3811_Link( form, ra );
    }
    else {
      masl2xtuml_R_ASSOC * linked=0;
      /* SELECT one linked RELATED BY rel->R_ASSOC[R206] */
      linked = 0;
      if ( ( 0 != rel ) && ( masl2xtuml_R_ASSOC_CLASS_NUMBER == rel->R206_object_id ) )      linked = ( 0 != rel ) ? (masl2xtuml_R_ASSOC *) rel->R206_subtype : 0;
      /* IF ( not_empty linked ) */
      if ( ( 0 != linked ) ) {
        masl2xtuml_assocFormalization * assocForm=0;masl2xtuml_formalization * form=0;
        /* SELECT any assocForm FROM INSTANCES OF assocFormalization WHERE ( SELECTED.rel == linked ) */
        assocForm = 0;
        { masl2xtuml_assocFormalization * selected;
          Escher_Iterator_s iterassocFormmasl2xtuml_assocFormalization;
          Escher_IteratorReset( &iterassocFormmasl2xtuml_assocFormalization, &pG_masl2xtuml_assocFormalization_extent.active );
          while ( (selected = (masl2xtuml_assocFormalization *) Escher_IteratorNext( &iterassocFormmasl2xtuml_assocFormalization )) != 0 ) {
            if ( ( selected->rel == linked ) ) {
              assocForm = selected;
              break;
            }
          }
        }
        /* SELECT one form RELATED BY assocForm->formalization[R3810] */
        form = ( 0 != assocForm ) ? assocForm->formalization_R3810 : 0;
        /* IF ( empty form ) */
        if ( ( 0 == form ) ) {
          /* CREATE OBJECT INSTANCE form OF formalization */
          form = (masl2xtuml_formalization *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_formalization_CLASS_NUMBER );
          /* ASSIGN form.type = 2 */
          form->type = 2;
          /* CREATE OBJECT INSTANCE assocForm OF assocFormalization */
          assocForm = (masl2xtuml_assocFormalization *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_assocFormalization_CLASS_NUMBER );
          /* ASSIGN assocForm.rel = linked */
          assocForm->rel = linked;
          /* RELATE form TO assocForm ACROSS R3810 */
          masl2xtuml_assocFormalization_R3810_Link( form, assocForm );
        }
        /* RELATE ra TO form ACROSS R3811 */
        masl2xtuml_referentialAttribute_R3811_Link( form, ra );
      }
    }
  }
  Escher_ClearSet( o_ids ); 
}

/*
 * instance operation:  SimpleAssociation_formalize
 */
void
masl2xtuml_ooapopulation_op_SimpleAssociation_formalize( masl2xtuml_ooapopulation * self, const i_t p_id_id, masl2xtuml_R_PART * p_r_part, masl2xtuml_R_SIMP * p_r_simp )
{
  masl2xtuml_O_OIDA * oida=0;masl2xtuml_R_PART * part;masl2xtuml_R_SIMP * r_simp;masl2xtuml_R_REL * r_rel=0;masl2xtuml_O_OBJ * form_obj=0;masl2xtuml_R_RGO * form_rgo=0;Escher_ObjectSet_s oida_set_space={0}; Escher_ObjectSet_s * oida_set = &oida_set_space;masl2xtuml_O_OBJ * part_obj=0;masl2xtuml_R_RTO * part_rto=0;masl2xtuml_R_FORM * form=0;masl2xtuml_O_ID * oid=0;masl2xtuml_R_PART * form_part=0;
  /* ASSIGN r_simp = PARAM.r_simp */
  r_simp = p_r_simp;
  /* ASSIGN part = PARAM.r_part */
  part = p_r_part;
  /* IF ( self.SimpleAssociation_isFormalized(r_simp:r_simp) ) */
  if ( masl2xtuml_ooapopulation_op_SimpleAssociation_isFormalized(self, r_simp) ) {
    /* self.SimpleAssociation_unformalize( r_simp:r_simp ) */
    masl2xtuml_ooapopulation_op_SimpleAssociation_unformalize( self,  r_simp );
  }
  /* SELECT any form_part RELATED BY r_simp->R_PART[R207] WHERE ( ( SELECTED.OIR_ID != part.OIR_ID ) ) */
  form_part = 0;
  if ( 0 != r_simp ) {
    masl2xtuml_R_PART * selected;
    Escher_Iterator_s iR_PART_R207_relates;
    Escher_IteratorReset( &iR_PART_R207_relates, &r_simp->R_PART_R207_relates );
    while ( 0 != ( selected = (masl2xtuml_R_PART *) Escher_IteratorNext( &iR_PART_R207_relates ) ) ) {
      if ( ( selected->OIR_ID != part->OIR_ID ) ) {
        form_part = selected;
        break;
  }}}
  /* self.ClassAsSimpleParticipant_migrateToFormalizer( r_part:form_part ) */
  masl2xtuml_ooapopulation_op_ClassAsSimpleParticipant_migrateToFormalizer( self,  form_part );
  /* SELECT one form RELATED BY r_simp->R_FORM[R208] */
  form = ( 0 != r_simp ) ? r_simp->R_FORM_R208_relates : 0;
  /* SELECT one part_rto RELATED BY part->R_RTO[R204] */
  part_rto = ( 0 != part ) ? part->R_RTO_R204 : 0;
  /* SELECT one part_obj RELATED BY part_rto->R_OIR[R203]->O_OBJ[R201] */
  part_obj = 0;
  {  if ( 0 != part_rto ) {
  masl2xtuml_R_OIR * R_OIR_R203 = part_rto->R_OIR_R203;
  if ( 0 != R_OIR_R203 ) {
  part_obj = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
}}}
  /* SELECT any oid RELATED BY part_obj->O_ID[R104] WHERE ( ( SELECTED.Oid_ID == PARAM.id_id ) ) */
  oid = 0;
  if ( 0 != part_obj ) {
    masl2xtuml_O_ID * selected;
    Escher_Iterator_s iO_ID_R104_is_identified_by;
    Escher_IteratorReset( &iO_ID_R104_is_identified_by, &part_obj->O_ID_R104_is_identified_by );
    while ( 0 != ( selected = (masl2xtuml_O_ID *) Escher_IteratorNext( &iO_ID_R104_is_identified_by ) ) ) {
      if ( ( selected->Oid_ID == p_id_id ) ) {
        oid = selected;
        break;
  }}}
  /* RELATE oid TO part_rto ACROSS R109 */
  masl2xtuml_R_RTO_R109_Link_identifies_for_this_association_( oid, part_rto );
  /* SELECT many oida_set RELATED BY oid->O_OIDA[R105] */
  Escher_ClearSet( oida_set );
  if ( 0 != oid ) {
    Escher_CopySet( oida_set, &oid->O_OIDA_R105 );
  }
  /* SELECT one form_rgo RELATED BY form->R_RGO[R205] */
  form_rgo = ( 0 != form ) ? form->R_RGO_R205 : 0;
  /* SELECT one form_obj RELATED BY form_rgo->R_OIR[R203]->O_OBJ[R201] */
  form_obj = 0;
  {  if ( 0 != form_rgo ) {
  masl2xtuml_R_OIR * R_OIR_R203 = form_rgo->R_OIR_R203;
  if ( 0 != R_OIR_R203 ) {
  form_obj = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
}}}
  /* SELECT one r_rel RELATED BY form_rgo->R_OIR[R203]->R_REL[R201] */
  r_rel = 0;
  {  if ( 0 != form_rgo ) {
  masl2xtuml_R_OIR * R_OIR_R203 = form_rgo->R_OIR_R203;
  if ( 0 != R_OIR_R203 ) {
  r_rel = R_OIR_R203->R_REL_R201_has_instance_associations_abstracted;
}}}
  /* FOR EACH oida IN oida_set */
  { Escher_Iterator_s iteroida;
  masl2xtuml_O_OIDA * iioida;
  Escher_IteratorReset( &iteroida, oida_set );
  while ( (iioida = (masl2xtuml_O_OIDA *)Escher_IteratorNext( &iteroida )) != 0 ) {
    oida = iioida; {
    masl2xtuml_O_RATTR * new_o_rattr;
    /* ASSIGN new_o_rattr = self.ClassIdentifierAttribute_addReference(form_obj:form_obj, form_rgo:form_rgo, id:- 1, o_oida:oida, part_obj:part_obj, part_rto:part_rto, rel:r_rel) */
    new_o_rattr = masl2xtuml_ooapopulation_op_ClassIdentifierAttribute_addReference(self, form_obj, form_rgo, -1, oida, part_obj, part_rto, r_rel);
  }}}
  Escher_ClearSet( oida_set ); 
}

/*
 * instance operation:  ClassAsSimpleParticipant_migrateToFormalizer
 */
void
masl2xtuml_ooapopulation_op_ClassAsSimpleParticipant_migrateToFormalizer( masl2xtuml_ooapopulation * self, masl2xtuml_R_PART * p_r_part )
{
  masl2xtuml_R_PART * r_part;masl2xtuml_R_FORM * form;masl2xtuml_R_RGO * rgo;masl2xtuml_R_SIMP * simp=0;masl2xtuml_R_OIR * oir=0;masl2xtuml_R_RTO * rto=0;
  /* ASSIGN r_part = PARAM.r_part */
  r_part = p_r_part;
  /* CREATE OBJECT INSTANCE rgo OF R_RGO */
  rgo = (masl2xtuml_R_RGO *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_RGO_CLASS_NUMBER );
  rgo->Obj_ID = (Escher_UniqueID_t) rgo;
rgo->Rel_ID = (Escher_UniqueID_t) rgo;
rgo->OIR_ID = (Escher_UniqueID_t) rgo;
  /* CREATE OBJECT INSTANCE form OF R_FORM */
  form = (masl2xtuml_R_FORM *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_FORM_CLASS_NUMBER );
  form->Obj_ID = (Escher_UniqueID_t) form;
form->Rel_ID = (Escher_UniqueID_t) form;
form->OIR_ID = (Escher_UniqueID_t) form;
  /* ASSIGN form.Mult = r_part.Mult */
  form->Mult = r_part->Mult;
  /* ASSIGN form.Cond = r_part.Cond */
  form->Cond = r_part->Cond;
  /* ASSIGN form.Txt_Phrs = r_part.Txt_Phrs */
  form->Txt_Phrs = Escher_strcpy( form->Txt_Phrs, r_part->Txt_Phrs );
  /* SELECT one rto RELATED BY r_part->R_RTO[R204] */
  rto = ( 0 != r_part ) ? r_part->R_RTO_R204 : 0;
  /* SELECT one oir RELATED BY rto->R_OIR[R203] */
  oir = ( 0 != rto ) ? rto->R_OIR_R203 : 0;
  /* SELECT one simp RELATED BY r_part->R_SIMP[R207] */
  simp = ( 0 != r_part ) ? r_part->R_SIMP_R207_is_related_to_formalizer_via : 0;
  /* RELATE oir TO rgo ACROSS R203 */
  masl2xtuml_R_RGO_R203_Link( oir, rgo );
  /* RELATE rgo TO form ACROSS R205 */
  masl2xtuml_R_FORM_R205_Link( rgo, form );
  /* RELATE form TO simp ACROSS R208 */
  masl2xtuml_R_FORM_R208_Link_relates( simp, form );
  /* self.ReferredToClassInAssoc_dispose( r_rto:rto ) */
  masl2xtuml_ooapopulation_op_ReferredToClassInAssoc_dispose( self,  rto );
}

/*
 * instance operation:  ReferredToClassInAssoc_dispose
 */
void
masl2xtuml_ooapopulation_op_ReferredToClassInAssoc_dispose( masl2xtuml_ooapopulation * self, masl2xtuml_R_RTO * p_r_rto )
{
  masl2xtuml_O_RTIDA * rtida=0;masl2xtuml_R_RTO * r_rto;Escher_ObjectSet_s rtidas_space={0}; Escher_ObjectSet_s * rtidas = &rtidas_space;masl2xtuml_O_ID * oid=0;masl2xtuml_R_OIR * cia=0;masl2xtuml_R_PART * part=0;masl2xtuml_R_AOTH * other=0;masl2xtuml_R_AONE * one=0;masl2xtuml_R_SUPER * zuper=0;
  /* ASSIGN r_rto = PARAM.r_rto */
  r_rto = p_r_rto;
  /* SELECT one zuper RELATED BY r_rto->R_SUPER[R204] */
  zuper = 0;
  if ( ( 0 != r_rto ) && ( masl2xtuml_R_SUPER_CLASS_NUMBER == r_rto->R204_object_id ) )  zuper = ( 0 != r_rto ) ? (masl2xtuml_R_SUPER *) r_rto->R204_subtype : 0;
  /* SELECT one one RELATED BY r_rto->R_AONE[R204] */
  one = 0;
  if ( ( 0 != r_rto ) && ( masl2xtuml_R_AONE_CLASS_NUMBER == r_rto->R204_object_id ) )  one = ( 0 != r_rto ) ? (masl2xtuml_R_AONE *) r_rto->R204_subtype : 0;
  /* SELECT one other RELATED BY r_rto->R_AOTH[R204] */
  other = 0;
  if ( ( 0 != r_rto ) && ( masl2xtuml_R_AOTH_CLASS_NUMBER == r_rto->R204_object_id ) )  other = ( 0 != r_rto ) ? (masl2xtuml_R_AOTH *) r_rto->R204_subtype : 0;
  /* SELECT one part RELATED BY r_rto->R_PART[R204] */
  part = 0;
  if ( ( 0 != r_rto ) && ( masl2xtuml_R_PART_CLASS_NUMBER == r_rto->R204_object_id ) )  part = ( 0 != r_rto ) ? (masl2xtuml_R_PART *) r_rto->R204_subtype : 0;
  /* IF ( not_empty zuper ) */
  if ( ( 0 != zuper ) ) {
    /* self.ClassAsSupertype_dispose( r_super:zuper ) */
    masl2xtuml_ooapopulation_op_ClassAsSupertype_dispose( self,  zuper );
  }
  else if ( ( 0 != one ) ) {
    /* self.ClassAsAssociatedOneSide_dispose( r_aone:one ) */
    masl2xtuml_ooapopulation_op_ClassAsAssociatedOneSide_dispose( self,  one );
  }
  else if ( ( 0 != other ) ) {
    /* self.ClassAsAssociatedOtherSide_dispose( r_aoth:other ) */
    masl2xtuml_ooapopulation_op_ClassAsAssociatedOtherSide_dispose( self,  other );
  }
  else if ( ( 0 != part ) ) {
    /* self.ClassAsSimpleParticipant_dispose( r_part:part ) */
    masl2xtuml_ooapopulation_op_ClassAsSimpleParticipant_dispose( self,  part );
  }
  /* SELECT one cia RELATED BY r_rto->R_OIR[R203] */
  cia = ( 0 != r_rto ) ? r_rto->R_OIR_R203 : 0;
  /* IF ( not_empty cia ) */
  if ( ( 0 != cia ) ) {
    /* UNRELATE r_rto FROM cia ACROSS R203 */
    masl2xtuml_R_RTO_R203_Unlink( cia, r_rto );
  }
  /* SELECT one oid RELATED BY r_rto->O_ID[R109] */
  oid = ( 0 != r_rto ) ? r_rto->O_ID_R109_is_identified_in_this_association_by : 0;
  /* IF ( not_empty oid ) */
  if ( ( 0 != oid ) ) {
    /* UNRELATE r_rto FROM oid ACROSS R109 */
    masl2xtuml_R_RTO_R109_Unlink_identifies_for_this_association_( oid, r_rto );
  }
  /* SELECT many rtidas RELATED BY r_rto->O_RTIDA[R110] */
  Escher_ClearSet( rtidas );
  if ( 0 != r_rto ) {
    Escher_CopySet( rtidas, &r_rto->O_RTIDA_R110 );
  }
  /* FOR EACH rtida IN rtidas */
  { Escher_Iterator_s iterrtida;
  masl2xtuml_O_RTIDA * iirtida;
  Escher_IteratorReset( &iterrtida, rtidas );
  while ( (iirtida = (masl2xtuml_O_RTIDA *)Escher_IteratorNext( &iterrtida )) != 0 ) {
    rtida = iirtida; {
    /* self.ReferredToIdentifierAttribute_dispose( o_rtida:rtida ) */
    masl2xtuml_ooapopulation_op_ReferredToIdentifierAttribute_dispose( self,  rtida );
  }}}
  /* DELETE OBJECT INSTANCE r_rto */
  if ( 0 == r_rto ) {
    XTUML_EMPTY_HANDLE_TRACE( "R_RTO", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) r_rto, masl2xtuml_DOMAIN_ID, masl2xtuml_R_RTO_CLASS_NUMBER );
  Escher_ClearSet( rtidas ); 
}

/*
 * instance operation:  ClassAsSupertype_dispose
 */
void
masl2xtuml_ooapopulation_op_ClassAsSupertype_dispose( masl2xtuml_ooapopulation * self, masl2xtuml_R_SUPER * p_r_super )
{
  masl2xtuml_R_SUPER * r_super;masl2xtuml_R_RTO * rto=0;masl2xtuml_R_SUBSUP * rsubsup=0;
  /* ASSIGN r_super = PARAM.r_super */
  r_super = p_r_super;
  /* SELECT one rsubsup RELATED BY r_super->R_SUBSUP[R212] */
  rsubsup = ( 0 != r_super ) ? r_super->R_SUBSUP_R212_is_related_to_subtypes_via : 0;
  /* UNRELATE r_super FROM rsubsup ACROSS R212 */
  masl2xtuml_R_SUPER_R212_Unlink_relates( rsubsup, r_super );
  /* SELECT one rto RELATED BY r_super->R_RTO[R204] */
  rto = ( 0 != r_super ) ? r_super->R_RTO_R204 : 0;
  /* UNRELATE r_super FROM rto ACROSS R204 */
  masl2xtuml_R_SUPER_R204_Unlink( rto, r_super );
  /* DELETE OBJECT INSTANCE r_super */
  if ( 0 == r_super ) {
    XTUML_EMPTY_HANDLE_TRACE( "R_SUPER", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) r_super, masl2xtuml_DOMAIN_ID, masl2xtuml_R_SUPER_CLASS_NUMBER );
}

/*
 * instance operation:  ClassAsAssociatedOneSide_dispose
 */
void
masl2xtuml_ooapopulation_op_ClassAsAssociatedOneSide_dispose( masl2xtuml_ooapopulation * self, masl2xtuml_R_AONE * p_r_aone )
{
  masl2xtuml_R_AONE * r_aone;masl2xtuml_R_RTO * rto=0;masl2xtuml_R_ASSOC * rassoc=0;
  /* ASSIGN r_aone = PARAM.r_aone */
  r_aone = p_r_aone;
  /* SELECT one rassoc RELATED BY r_aone->R_ASSOC[R209] */
  rassoc = ( 0 != r_aone ) ? r_aone->R_ASSOC_R209_is_related_to_other_side_via : 0;
  /* UNRELATE r_aone FROM rassoc ACROSS R209 */
  masl2xtuml_R_AONE_R209_Unlink_relates( rassoc, r_aone );
  /* SELECT one rto RELATED BY r_aone->R_RTO[R204] */
  rto = ( 0 != r_aone ) ? r_aone->R_RTO_R204 : 0;
  /* UNRELATE r_aone FROM rto ACROSS R204 */
  masl2xtuml_R_AONE_R204_Unlink( rto, r_aone );
  /* DELETE OBJECT INSTANCE r_aone */
  if ( 0 == r_aone ) {
    XTUML_EMPTY_HANDLE_TRACE( "R_AONE", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) r_aone, masl2xtuml_DOMAIN_ID, masl2xtuml_R_AONE_CLASS_NUMBER );
}

/*
 * instance operation:  ClassAsAssociatedOtherSide_dispose
 */
void
masl2xtuml_ooapopulation_op_ClassAsAssociatedOtherSide_dispose( masl2xtuml_ooapopulation * self, masl2xtuml_R_AOTH * p_r_aoth )
{
  masl2xtuml_R_AOTH * r_aoth;masl2xtuml_R_RTO * rto=0;masl2xtuml_R_ASSOC * rassoc=0;
  /* ASSIGN r_aoth = PARAM.r_aoth */
  r_aoth = p_r_aoth;
  /* SELECT one rassoc RELATED BY r_aoth->R_ASSOC[R210] */
  rassoc = ( 0 != r_aoth ) ? r_aoth->R_ASSOC_R210_is_related_to_one_side_via : 0;
  /* UNRELATE r_aoth FROM rassoc ACROSS R210 */
  masl2xtuml_R_AOTH_R210_Unlink_relates( rassoc, r_aoth );
  /* SELECT one rto RELATED BY r_aoth->R_RTO[R204] */
  rto = ( 0 != r_aoth ) ? r_aoth->R_RTO_R204 : 0;
  /* UNRELATE r_aoth FROM rto ACROSS R204 */
  masl2xtuml_R_AOTH_R204_Unlink( rto, r_aoth );
  /* DELETE OBJECT INSTANCE r_aoth */
  if ( 0 == r_aoth ) {
    XTUML_EMPTY_HANDLE_TRACE( "R_AOTH", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) r_aoth, masl2xtuml_DOMAIN_ID, masl2xtuml_R_AOTH_CLASS_NUMBER );
}

/*
 * instance operation:  ClassAsSimpleParticipant_dispose
 */
void
masl2xtuml_ooapopulation_op_ClassAsSimpleParticipant_dispose( masl2xtuml_ooapopulation * self, masl2xtuml_R_PART * p_r_part )
{
  masl2xtuml_R_PART * r_part;masl2xtuml_R_RTO * rto=0;masl2xtuml_R_SIMP * rsimp=0;
  /* ASSIGN r_part = PARAM.r_part */
  r_part = p_r_part;
  /* SELECT one rsimp RELATED BY r_part->R_SIMP[R207] */
  rsimp = ( 0 != r_part ) ? r_part->R_SIMP_R207_is_related_to_formalizer_via : 0;
  /* UNRELATE r_part FROM rsimp ACROSS R207 */
  masl2xtuml_R_PART_R207_Unlink_relates( rsimp, r_part );
  /* SELECT one rto RELATED BY r_part->R_RTO[R204] */
  rto = ( 0 != r_part ) ? r_part->R_RTO_R204 : 0;
  /* UNRELATE r_part FROM rto ACROSS R204 */
  masl2xtuml_R_PART_R204_Unlink( rto, r_part );
  /* DELETE OBJECT INSTANCE r_part */
  if ( 0 == r_part ) {
    XTUML_EMPTY_HANDLE_TRACE( "R_PART", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) r_part, masl2xtuml_DOMAIN_ID, masl2xtuml_R_PART_CLASS_NUMBER );
}

/*
 * instance operation:  ClassIdentifierAttribute_addReference
 */
masl2xtuml_O_RATTR *
masl2xtuml_ooapopulation_op_ClassIdentifierAttribute_addReference( masl2xtuml_ooapopulation * self, masl2xtuml_O_OBJ * p_form_obj, masl2xtuml_R_RGO * p_form_rgo, const i_t p_id, masl2xtuml_O_OIDA * p_o_oida, masl2xtuml_O_OBJ * p_part_obj, masl2xtuml_R_RTO * p_part_rto, masl2xtuml_R_REL * p_rel )
{
  masl2xtuml_O_RATTR * ref_attr;i_t id;masl2xtuml_O_OBJ * rgo_obj;masl2xtuml_R_RGO * rgo;masl2xtuml_O_OBJ * rto_obj;masl2xtuml_R_RTO * rto;masl2xtuml_R_REL * rel;masl2xtuml_O_OIDA * oida;masl2xtuml_O_REF * ref;masl2xtuml_O_RTIDA * rtida=0;
  /* ASSIGN oida = PARAM.o_oida */
  oida = p_o_oida;
  /* ASSIGN rel = PARAM.rel */
  rel = p_rel;
  /* ASSIGN rto = PARAM.part_rto */
  rto = p_part_rto;
  /* ASSIGN rto_obj = PARAM.part_obj */
  rto_obj = p_part_obj;
  /* ASSIGN rgo = PARAM.form_rgo */
  rgo = p_form_rgo;
  /* ASSIGN rgo_obj = PARAM.form_obj */
  rgo_obj = p_form_obj;
  /* ASSIGN id = PARAM.id */
  id = p_id;
  /* ASSIGN ref_attr = self.ModelClass_newReferentialAttribute(id:PARAM.id, o_obj:rgo_obj, o_oida:oida) */
  ref_attr = masl2xtuml_ooapopulation_op_ModelClass_newReferentialAttribute(self, p_id, rgo_obj, oida);
  /* SELECT any rtida RELATED BY oida->O_RTIDA[R110] WHERE ( ( ( SELECTED.Rel_ID == rel.Rel_ID ) and ( SELECTED.OIR_ID == rto.OIR_ID ) ) ) */
  rtida = 0;
  if ( 0 != oida ) {
    masl2xtuml_O_RTIDA * selected;
    Escher_Iterator_s iO_RTIDA_R110;
    Escher_IteratorReset( &iO_RTIDA_R110, &oida->O_RTIDA_R110 );
    while ( 0 != ( selected = (masl2xtuml_O_RTIDA *) Escher_IteratorNext( &iO_RTIDA_R110 ) ) ) {
      if ( ( ( selected->Rel_ID == rel->Rel_ID ) && ( selected->OIR_ID == rto->OIR_ID ) ) ) {
        rtida = selected;
        break;
  }}}
  /* IF ( empty rtida ) */
  if ( ( 0 == rtida ) ) {
    /* CREATE OBJECT INSTANCE rtida OF O_RTIDA */
    rtida = (masl2xtuml_O_RTIDA *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_O_RTIDA_CLASS_NUMBER );
    rtida->Attr_ID = (Escher_UniqueID_t) rtida;
rtida->Obj_ID = (Escher_UniqueID_t) rtida;
rtida->Rel_ID = (Escher_UniqueID_t) rtida;
rtida->OIR_ID = (Escher_UniqueID_t) rtida;
    /* RELATE oida TO rto ACROSS R110 USING rtida */
    masl2xtuml_O_RTIDA_R110_Link( rto, oida, rtida );
  }
  /* CREATE OBJECT INSTANCE ref OF O_REF */
  ref = (masl2xtuml_O_REF *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_O_REF_CLASS_NUMBER );
  ref->Obj_ID = (Escher_UniqueID_t) ref;
ref->RObj_ID = (Escher_UniqueID_t) ref;
ref->RAttr_ID = (Escher_UniqueID_t) ref;
ref->Rel_ID = (Escher_UniqueID_t) ref;
ref->OIR_ID = (Escher_UniqueID_t) ref;
ref->ROIR_ID = (Escher_UniqueID_t) ref;
ref->ARef_ID = (Escher_UniqueID_t) ref;
  /* RELATE ref TO ref_attr ACROSS R108 */
  masl2xtuml_O_REF_R108_Link_resolves_( ref_attr, ref );
  /* RELATE rtida TO rgo ACROSS R111 USING ref */
  masl2xtuml_O_REF_R111_Link( rgo, rtida, ref );
  /* RETURN ref_attr */
  {masl2xtuml_O_RATTR * xtumlOALrv = ref_attr;
  return xtumlOALrv;}
}

/*
 * instance operation:  ModelClass_newReferentialAttribute
 */
masl2xtuml_O_RATTR *
masl2xtuml_ooapopulation_op_ModelClass_newReferentialAttribute( masl2xtuml_ooapopulation * self, const i_t p_id, masl2xtuml_O_OBJ * p_o_obj, masl2xtuml_O_OIDA * p_o_oida )
{
  masl2xtuml_O_ATTR * attr;i_t id;masl2xtuml_O_OIDA * ref_oida;masl2xtuml_O_OBJ * o_obj;masl2xtuml_O_RATTR * ref_attr=0;masl2xtuml_O_BATTR * base_attr=0;masl2xtuml_O_ATTR * id_attr=0;masl2xtuml_O_ID * ref_oid=0;
  /* ASSIGN o_obj = PARAM.o_obj */
  o_obj = p_o_obj;
  /* ASSIGN ref_oida = PARAM.o_oida */
  ref_oida = p_o_oida;
  /* ASSIGN id = PARAM.id */
  id = p_id;
  /* SELECT one ref_oid RELATED BY ref_oida->O_ID[R105] */
  ref_oid = ( 0 != ref_oida ) ? ref_oida->O_ID_R105_is_part_of_ : 0;
  /* SELECT one id_attr RELATED BY ref_oida->O_ATTR[R105] */
  id_attr = ( 0 != ref_oida ) ? ref_oida->O_ATTR_R105_is_made_up_of_ : 0;
  /* SELECT one base_attr RELATED BY id_attr->O_BATTR[R106] */
  base_attr = 0;
  if ( ( 0 != id_attr ) && ( masl2xtuml_O_BATTR_CLASS_NUMBER == id_attr->R106_object_id ) )  base_attr = ( 0 != id_attr ) ? (masl2xtuml_O_BATTR *) id_attr->R106_subtype : 0;
  /* IF ( empty base_attr ) */
  if ( ( 0 == base_attr ) ) {
    /* SELECT one base_attr RELATED BY id_attr->O_RATTR[R106]->O_BATTR[R113] */
    base_attr = 0;
    {    if ( 0 != id_attr ) {
    masl2xtuml_O_RATTR * R106_subtype = (masl2xtuml_O_RATTR *) id_attr->R106_subtype;
    if ( 0 != R106_subtype )    if ( ( 0 != id_attr ) && ( masl2xtuml_O_RATTR_CLASS_NUMBER == id_attr->R106_object_id ) ) {
    base_attr = R106_subtype->O_BATTR_R113_navigates_back_to;
}}}
  }
  /* ASSIGN attr = self.ModelClass_newAttribute(attr_name:placeholder, o_obj:o_obj) */
  attr = masl2xtuml_ooapopulation_op_ModelClass_newAttribute(self, "placeholder", o_obj);
  /* self.Attribute_migrateBaseToReferential( o_attr:attr ) */
  masl2xtuml_ooapopulation_op_Attribute_migrateBaseToReferential( self,  attr );
  /* ASSIGN attr.Root_Nam = id_attr.Root_Nam */
  attr->Root_Nam = Escher_strcpy( attr->Root_Nam, id_attr->Root_Nam );
  /* SELECT one ref_attr RELATED BY attr->O_RATTR[R106] */
  ref_attr = 0;
  if ( ( 0 != attr ) && ( masl2xtuml_O_RATTR_CLASS_NUMBER == attr->R106_object_id ) )  ref_attr = ( 0 != attr ) ? (masl2xtuml_O_RATTR *) attr->R106_subtype : 0;
  /* RELATE ref_attr TO base_attr ACROSS R113 */
  masl2xtuml_O_RATTR_R113_Link_can_be_the_base_of( base_attr, ref_attr );
  /* IF ( ( PARAM.id != - 1 ) ) */
  if ( ( p_id != -1 ) ) {
    masl2xtuml_O_OIDA * assr_oida;masl2xtuml_O_ID * assr_id=0;
    /* SELECT any assr_id RELATED BY o_obj->O_ID[R104] WHERE ( ( SELECTED.Oid_ID == PARAM.id ) ) */
    assr_id = 0;
    if ( 0 != o_obj ) {
      masl2xtuml_O_ID * selected;
      Escher_Iterator_s iO_ID_R104_is_identified_by;
      Escher_IteratorReset( &iO_ID_R104_is_identified_by, &o_obj->O_ID_R104_is_identified_by );
      while ( 0 != ( selected = (masl2xtuml_O_ID *) Escher_IteratorNext( &iO_ID_R104_is_identified_by ) ) ) {
        if ( ( selected->Oid_ID == p_id ) ) {
          assr_id = selected;
          break;
    }}}
    /* CREATE OBJECT INSTANCE assr_oida OF O_OIDA */
    assr_oida = (masl2xtuml_O_OIDA *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_O_OIDA_CLASS_NUMBER );
    assr_oida->Attr_ID = (Escher_UniqueID_t) assr_oida;
assr_oida->Obj_ID = (Escher_UniqueID_t) assr_oida;
    /* RELATE attr TO assr_id ACROSS R105 USING assr_oida */
    masl2xtuml_O_OIDA_R105_Link( assr_id, attr, assr_oida );
  }
  /* RETURN ref_attr */
  {masl2xtuml_O_RATTR * xtumlOALrv = ref_attr;
  return xtumlOALrv;}
}

/*
 * instance operation:  Component_initializeRequirement
 */
masl2xtuml_C_IR *
masl2xtuml_ooapopulation_op_Component_initializeRequirement( masl2xtuml_ooapopulation * self, masl2xtuml_C_C * p_c_c, c_t * p_if_name, c_t * p_port_name )
{
  masl2xtuml_C_C * c_c;masl2xtuml_C_PO * port;masl2xtuml_C_IR * interfaceRef;masl2xtuml_C_R * requirement;
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* CREATE OBJECT INSTANCE requirement OF C_R */
  requirement = (masl2xtuml_C_R *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_C_R_CLASS_NUMBER );
  requirement->Requirement_Id = (Escher_UniqueID_t) requirement;
  /* CREATE OBJECT INSTANCE interfaceRef OF C_IR */
  interfaceRef = (masl2xtuml_C_IR *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_C_IR_CLASS_NUMBER );
  interfaceRef->Id = (Escher_UniqueID_t) interfaceRef;
  /* CREATE OBJECT INSTANCE port OF C_PO */
  port = (masl2xtuml_C_PO *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_C_PO_CLASS_NUMBER );
  port->Id = (Escher_UniqueID_t) port;
  /* RELATE requirement TO interfaceRef ACROSS R4009 */
  masl2xtuml_C_R_R4009_Link( interfaceRef, requirement );
  /* RELATE interfaceRef TO port ACROSS R4016 */
  masl2xtuml_C_IR_R4016_Link_exposes( port, interfaceRef );
  /* RELATE port TO c_c ACROSS R4010 */
  masl2xtuml_C_PO_R4010_Link_communicates_through( c_c, port );
  /* IF ( (  == PARAM.if_name ) ) */
  if ( ( Escher_strcmp( "", p_if_name ) == 0 ) ) {
    /* ASSIGN requirement.InformalName = Unnamed_Interface */
    requirement->InformalName = Escher_strcpy( requirement->InformalName, "Unnamed_Interface" );
  }
  else {
    /* ASSIGN requirement.InformalName = PARAM.if_name */
    requirement->InformalName = Escher_strcpy( requirement->InformalName, p_if_name );
  }
  /* self.Port_initialize( c_po:port, name:PARAM.port_name ) */
  masl2xtuml_ooapopulation_op_Port_initialize( self,  port, p_port_name );
  /* RETURN interfaceRef */
  {masl2xtuml_C_IR * xtumlOALrv = interfaceRef;
  return xtumlOALrv;}
}

/*
 * instance operation:  transformTerminatorService
 */
void
masl2xtuml_ooapopulation_op_transformTerminatorService( masl2xtuml_ooapopulation * self, c_t * p_domain, c_t * p_name, c_t * p_terminator, c_t * p_visibility )
{
  masl2xtuml_C_EP * c_ep;masl2xtuml_C_I * c_i;
  /* ASSIGN c_i = self.current_interface */
  c_i = self->current_interface;
  /* IF ( empty c_i ) */
  if ( ( 0 == c_i ) ) {
    masl2xtuml_C_C * c_c=0;masl2xtuml_C_PO * c_po=0;
    /* SELECT any c_c FROM INSTANCES OF C_C WHERE ( SELECTED.Name == PARAM.domain ) */
    c_c = 0;
    { masl2xtuml_C_C * selected;
      Escher_Iterator_s iterc_cmasl2xtuml_C_C;
      Escher_IteratorReset( &iterc_cmasl2xtuml_C_C, &pG_masl2xtuml_C_C_extent.active );
      while ( (selected = (masl2xtuml_C_C *) Escher_IteratorNext( &iterc_cmasl2xtuml_C_C )) != 0 ) {
        if ( ( Escher_strcmp( selected->Name, p_domain ) == 0 ) ) {
          c_c = selected;
          break;
        }
      }
    }
    /* SELECT any c_po RELATED BY c_c->C_PO[R4010] WHERE ( ( SELECTED.Name == PARAM.terminator ) ) */
    c_po = 0;
    if ( 0 != c_c ) {
      masl2xtuml_C_PO * selected;
      Escher_Iterator_s iC_PO_R4010_communicates_through;
      Escher_IteratorReset( &iC_PO_R4010_communicates_through, &c_c->C_PO_R4010_communicates_through );
      while ( 0 != ( selected = (masl2xtuml_C_PO *) Escher_IteratorNext( &iC_PO_R4010_communicates_through ) ) ) {
        if ( ( Escher_strcmp( selected->Name, p_terminator ) == 0 ) ) {
          c_po = selected;
          break;
    }}}
    /* SELECT any c_i RELATED BY c_po->C_IR[R4016]->C_I[R4012] */
    c_i = 0;
    {    if ( 0 != c_po ) {
    masl2xtuml_C_IR * C_IR_R4016_exposes;
    Escher_Iterator_s iC_IR_R4016_exposes;
    Escher_IteratorReset( &iC_IR_R4016_exposes, &c_po->C_IR_R4016_exposes );
    while ( ( 0 == c_i ) && ( 0 != ( C_IR_R4016_exposes = (masl2xtuml_C_IR *) Escher_IteratorNext( &iC_IR_R4016_exposes ) ) ) ) {
    c_i = C_IR_R4016_exposes->C_I_R4012_may_be_defined_by;
}}}
  }
  /* ASSIGN c_ep = self.Interface_newExecutableProperty(asynchronous:FALSE, c_i:c_i, ep_name:PARAM.name) */
  c_ep = masl2xtuml_ooapopulation_op_Interface_newExecutableProperty(self, FALSE, c_i, p_name);
  /* ASSIGN c_ep.Direction = ClientServer */
  c_ep->Direction = masl2xtuml_IFDirectionType_ClientServer_e;
  /* ASSIGN self.current_executable_property = c_ep */
  self->current_executable_property = c_ep;
}

/*
 * class operation:  populate_project
 */
void
masl2xtuml_ooapopulation_op_populate_project( c_t * p_element, masl2xtuml_ooapopulation * p_ooapopulation, c_t p_value[8][ESCHER_SYS_MAX_STRING_LEN] )
{
  masl2xtuml_ooapopulation * ooapopulation;c_t * value[8]={0,0,0,0,0,0,0,0};c_t * element=0;
  /* ASSIGN element = PARAM.element */
  element = Escher_strcpy( element, p_element );
  /* ASSIGN value = PARAM.value */
  value[0] = p_value[0];
  value[1] = p_value[1];
  value[2] = p_value[2];
  value[3] = p_value[3];
  value[4] = p_value[4];
  value[5] = p_value[5];
  value[6] = p_value[6];
  value[7] = p_value[7];
  /* ASSIGN ooapopulation = PARAM.ooapopulation */
  ooapopulation = p_ooapopulation;
  /* IF ( ( project == element ) ) */
  if ( ( Escher_strcmp( "project", element ) == 0 ) ) {
    /* IF ( (  != PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) != 0 ) ) {
      /* ooapopulation.transformProject( name:PARAM.value[0] ) */
      masl2xtuml_ooapopulation_op_transformProject( ooapopulation,  p_value[0] );
      /* ASSIGN ooapopulation.processingProject = TRUE */
      ooapopulation->processingProject = TRUE;
    }
  }
  else if ( ( Escher_strcmp( "domain", element ) == 0 ) ) {
    /* IF ( (  == PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) == 0 ) ) {
      masl2xtuml_CL_IC * cl_ic=0;
      /* SELECT any cl_ic FROM INSTANCES OF CL_IC WHERE FALSE */
      cl_ic = 0;
      /* ASSIGN ooapopulation.current_imported_component = cl_ic */
      ooapopulation->current_imported_component = cl_ic;
    }
    else {
      /* ooapopulation.transformDomain( name:PARAM.value[0] ) */
      masl2xtuml_ooapopulation_op_transformDomain( ooapopulation,  p_value[0] );
    }
  }
  else if ( ( Escher_strcmp( "terminator", element ) == 0 ) ) {
    /* IF ( (  == PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) == 0 ) ) {
      masl2xtuml_C_I * c_i=0;
      /* SELECT any c_i FROM INSTANCES OF C_I WHERE FALSE */
      c_i = 0;
      /* ASSIGN ooapopulation.current_interface = c_i */
      ooapopulation->current_interface = c_i;
    }
    else {
      /* ooapopulation.transformTerminator( name:PARAM.value[0] ) */
      masl2xtuml_ooapopulation_op_transformTerminator( ooapopulation,  p_value[0] );
    }
  }
  else if ( ( Escher_strcmp( "routine", element ) == 0 ) ) {
    /* IF ( (  != PARAM.value[3] ) ) */
    if ( ( Escher_strcmp( "", p_value[3] ) != 0 ) ) {
      /* ASSIGN ooapopulation.current_routine_info.domain = PARAM.value[0] */
      ooapopulation->current_routine_info.domain = Escher_strcpy( ooapopulation->current_routine_info.domain, p_value[0] );
      /* ASSIGN ooapopulation.current_routine_info.terminator = PARAM.value[1] */
      ooapopulation->current_routine_info.terminator = Escher_strcpy( ooapopulation->current_routine_info.terminator, p_value[1] );
      /* ASSIGN ooapopulation.current_routine_info.name = PARAM.value[3] */
      ooapopulation->current_routine_info.name = Escher_strcpy( ooapopulation->current_routine_info.name, p_value[3] );
    }
  }
  else if ( ( Escher_strcmp( "codeblock", element ) == 0 ) ) {
    c_t * if_name=0;masl2xtuml_C_C * c_c;masl2xtuml_C_P * c_p=0;
    /* ASSIGN c_c = ooapopulation.current_component */
    c_c = ooapopulation->current_component;
    /* ASSIGN if_name = ( ooapopulation.current_routine_info.domain + ooapopulation.current_routine_info.terminator ) */
    if_name = Escher_strcpy( if_name, Escher_stradd( ooapopulation->current_routine_info.domain, ooapopulation->current_routine_info.terminator ) );
    /* SELECT any c_p RELATED BY c_c->C_PO[R4010]->C_IR[R4016]->C_P[R4009] WHERE ( ( SELECTED.InformalName == if_name ) ) */
    c_p = 0;
    {    if ( 0 != c_c ) {
    masl2xtuml_C_PO * C_PO_R4010_communicates_through;
    Escher_Iterator_s iC_PO_R4010_communicates_through;
    Escher_IteratorReset( &iC_PO_R4010_communicates_through, &c_c->C_PO_R4010_communicates_through );
    while ( ( 0 == c_p ) && ( 0 != ( C_PO_R4010_communicates_through = (masl2xtuml_C_PO *) Escher_IteratorNext( &iC_PO_R4010_communicates_through ) ) ) ) {
    masl2xtuml_C_IR * C_IR_R4016_exposes;
    Escher_Iterator_s iC_IR_R4016_exposes;
    Escher_IteratorReset( &iC_IR_R4016_exposes, &C_PO_R4010_communicates_through->C_IR_R4016_exposes );
    while ( ( 0 == c_p ) && ( 0 != ( C_IR_R4016_exposes = (masl2xtuml_C_IR *) Escher_IteratorNext( &iC_IR_R4016_exposes ) ) ) ) {
    if ( ( 0 != C_IR_R4016_exposes ) && ( masl2xtuml_C_P_CLASS_NUMBER == C_IR_R4016_exposes->R4009_object_id ) )    {masl2xtuml_C_P * selected = (masl2xtuml_C_P *) C_IR_R4016_exposes->R4009_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->InformalName, if_name ) == 0 ) ) {
      c_p = selected;
    }}
}}}}
    /* IF ( not_empty c_p ) */
    if ( ( 0 != c_p ) ) {
      /* ASSIGN c_p.Descrip = ( ( ( ( ( c_p.Descrip + routine: ) + ooapopulation.current_routine_info.name ) + ,codeblock: ) + PARAM.value[0] ) + \n ) */
      c_p->Descrip = Escher_strcpy( c_p->Descrip, Escher_stradd( Escher_stradd( Escher_stradd( Escher_stradd( Escher_stradd( c_p->Descrip, "routine:" ), ooapopulation->current_routine_info.name ), ",codeblock:" ), p_value[0] ), "\n" ) );
    }
  }
  else {
  }
}

/*
 * instance operation:  Interface_newParameter
 */
masl2xtuml_C_PP *
masl2xtuml_ooapopulation_op_Interface_newParameter( masl2xtuml_ooapopulation * self, masl2xtuml_C_EP * p_c_ep, c_t * p_parameter_name )
{
  masl2xtuml_C_EP * c_ep;masl2xtuml_C_PP * parm=0;
  /* ASSIGN c_ep = PARAM.c_ep */
  c_ep = p_c_ep;
  /* SELECT any parm RELATED BY c_ep->C_PP[R4006] WHERE ( ( SELECTED.Name == PARAM.parameter_name ) ) */
  parm = 0;
  if ( 0 != c_ep ) {
    masl2xtuml_C_PP * selected;
    Escher_Iterator_s iC_PP_R4006_is_parameter_to;
    Escher_IteratorReset( &iC_PP_R4006_is_parameter_to, &c_ep->C_PP_R4006_is_parameter_to );
    while ( 0 != ( selected = (masl2xtuml_C_PP *) Escher_IteratorNext( &iC_PP_R4006_is_parameter_to ) ) ) {
      if ( ( Escher_strcmp( selected->Name, p_parameter_name ) == 0 ) ) {
        parm = selected;
        break;
  }}}
  /* IF ( empty parm ) */
  if ( ( 0 == parm ) ) {
    /* CREATE OBJECT INSTANCE parm OF C_PP */
    parm = (masl2xtuml_C_PP *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_C_PP_CLASS_NUMBER );
    parm->PP_Id = (Escher_UniqueID_t) parm;
    /* RELATE c_ep TO parm ACROSS R4006 */
    masl2xtuml_C_PP_R4006_Link_is_parameter_to( c_ep, parm );
    /* self.InterfaceParameter_initialize( c_pp:parm, name:PARAM.parameter_name ) */
    masl2xtuml_ooapopulation_op_InterfaceParameter_initialize( self,  parm, p_parameter_name );
    /* self.Interface_createMessageArgumentsForParameter( c_ep:c_ep, c_pp:parm ) */
    masl2xtuml_ooapopulation_op_Interface_createMessageArgumentsForParameter( self,  c_ep, parm );
  }
  /* RETURN parm */
  {masl2xtuml_C_PP * xtumlOALrv = parm;
  return xtumlOALrv;}
}

/*
 * instance operation:  InterfaceParameter_initialize
 */
void
masl2xtuml_ooapopulation_op_InterfaceParameter_initialize( masl2xtuml_ooapopulation * self, masl2xtuml_C_PP * p_c_pp, c_t * p_name )
{
  masl2xtuml_EP_PKG * systypes_pkg;masl2xtuml_C_PP * c_pp;masl2xtuml_C_EP * c_ep=0;masl2xtuml_S_DT * def_dt=0;
  /* ASSIGN c_pp = PARAM.c_pp */
  c_pp = p_c_pp;
  /* SELECT one c_ep RELATED BY c_pp->C_EP[R4006] */
  c_ep = ( 0 != c_pp ) ? c_pp->C_EP_R4006_parameterizes : 0;
  /* self.Interface_addParameterToOrder( c_ep:c_ep, c_pp:c_pp ) */
  masl2xtuml_ooapopulation_op_Interface_addParameterToOrder( self,  c_ep, c_pp );
  /* ASSIGN systypes_pkg = self.systypes_pkg */
  systypes_pkg = self->systypes_pkg;
  /* SELECT any def_dt RELATED BY systypes_pkg->PE_PE[R8000]->S_DT[R8001] WHERE ( ( SELECTED.Name == string ) ) */
  def_dt = 0;
  {  if ( 0 != systypes_pkg ) {
  masl2xtuml_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &systypes_pkg->PE_PE_R8000_contains );
  while ( ( 0 == def_dt ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {masl2xtuml_S_DT * selected = (masl2xtuml_S_DT *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "string" ) == 0 ) ) {
    def_dt = selected;
  }}
}}}
  /* RELATE c_pp TO def_dt ACROSS R4007 */
  masl2xtuml_C_PP_R4007_Link_Defines_the_type( def_dt, c_pp );
  /* ASSIGN c_pp.Name = PARAM.name */
  c_pp->Name = Escher_strcpy( c_pp->Name, p_name );
}

/*
 * instance operation:  Interface_addParameterToOrder
 */
void
masl2xtuml_ooapopulation_op_Interface_addParameterToOrder( masl2xtuml_ooapopulation * self, masl2xtuml_C_EP * p_c_ep, masl2xtuml_C_PP * p_c_pp )
{
  masl2xtuml_C_PP * parameter;masl2xtuml_C_EP * c_ep;
  /* ASSIGN c_ep = PARAM.c_ep */
  c_ep = p_c_ep;
  /* ASSIGN parameter = PARAM.c_pp */
  parameter = p_c_pp;
  /* IF ( not_empty parameter ) */
  if ( ( 0 != parameter ) ) {
    masl2xtuml_C_PP * peer=0;Escher_ObjectSet_s peers_space={0}; Escher_ObjectSet_s * peers = &peers_space;
    /* SELECT many peers RELATED BY c_ep->C_PP[R4006] */
    Escher_ClearSet( peers );
    if ( 0 != c_ep ) {
      Escher_CopySet( peers, &c_ep->C_PP_R4006_is_parameter_to );
    }
    /* FOR EACH peer IN peers */
    { Escher_Iterator_s iterpeer;
    masl2xtuml_C_PP * iipeer;
    Escher_IteratorReset( &iterpeer, peers );
    while ( (iipeer = (masl2xtuml_C_PP *)Escher_IteratorNext( &iterpeer )) != 0 ) {
      peer = iipeer; {
      /* IF ( ( peer != parameter ) ) */
      if ( ( peer != parameter ) ) {
        masl2xtuml_C_PP * predecessor=0;
        /* SELECT one predecessor RELATED BY peer->C_PP[R4021.precedes] */
        predecessor = ( 0 != peer ) ? peer->C_PP_R4021_precedes : 0;
        /* IF ( empty predecessor ) */
        if ( ( 0 == predecessor ) ) {
          /* RELATE parameter TO peer ACROSS R4021 */
          masl2xtuml_C_PP_R4021_Link_succeeds( parameter, peer );
        }
      }
    }}}
    Escher_ClearSet( peers ); 
  }
}

/*
 * instance operation:  Interface_createMessageArgumentsForParameter
 */
void
masl2xtuml_ooapopulation_op_Interface_createMessageArgumentsForParameter( masl2xtuml_ooapopulation * self, masl2xtuml_C_EP * p_c_ep, masl2xtuml_C_PP * p_c_pp )
{
  masl2xtuml_C_PP * parameter;masl2xtuml_C_EP * c_ep;
  /* ASSIGN c_ep = PARAM.c_ep */
  c_ep = p_c_ep;
  /* ASSIGN parameter = PARAM.c_pp */
  parameter = p_c_pp;
  /* IF ( not_empty parameter ) */
  if ( ( 0 != parameter ) ) {
    masl2xtuml_MSG_M * message=0;Escher_ObjectSet_s messages_space={0}; Escher_ObjectSet_s * messages = &messages_space;
    /* SELECT many messages RELATED BY c_ep->C_AS[R4004]->MSG_SIG[R1021]->MSG_AM[R1019]->MSG_M[R1018] */
    Escher_ClearSet( messages );
    {    if ( 0 != c_ep ) {
    masl2xtuml_C_AS * R4004_subtype = (masl2xtuml_C_AS *) c_ep->R4004_subtype;
    if ( 0 != R4004_subtype )    if ( ( 0 != c_ep ) && ( masl2xtuml_C_AS_CLASS_NUMBER == c_ep->R4004_object_id ) ) {
    masl2xtuml_MSG_SIG * MSG_SIG_R1021_sent_by;
    Escher_Iterator_s iMSG_SIG_R1021_sent_by;
    Escher_IteratorReset( &iMSG_SIG_R1021_sent_by, &R4004_subtype->MSG_SIG_R1021_sent_by );
    while ( 0 != ( MSG_SIG_R1021_sent_by = (masl2xtuml_MSG_SIG *) Escher_IteratorNext( &iMSG_SIG_R1021_sent_by ) ) ) {
    masl2xtuml_MSG_AM * MSG_AM_R1019 = MSG_SIG_R1021_sent_by->MSG_AM_R1019;
    if ( 0 != MSG_AM_R1019 ) {
    {masl2xtuml_MSG_M * MSG_M_R1018 = MSG_AM_R1019->MSG_M_R1018;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) messages, MSG_M_R1018 ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) messages, MSG_M_R1018 );
    }}}}}}}
    /* IF ( empty messages ) */
    if ( Escher_SetIsEmpty( messages ) ) {
      /* SELECT many messages RELATED BY c_ep->C_IO[R4004]->MSG_IOP[R1022]->MSG_SM[R1020]->MSG_M[R1018] */
      Escher_ClearSet( messages );
      {      if ( 0 != c_ep ) {
      masl2xtuml_C_IO * R4004_subtype = (masl2xtuml_C_IO *) c_ep->R4004_subtype;
      if ( 0 != R4004_subtype )      if ( ( 0 != c_ep ) && ( masl2xtuml_C_IO_CLASS_NUMBER == c_ep->R4004_object_id ) ) {
      masl2xtuml_MSG_IOP * MSG_IOP_R1022_sent_by;
      Escher_Iterator_s iMSG_IOP_R1022_sent_by;
      Escher_IteratorReset( &iMSG_IOP_R1022_sent_by, &R4004_subtype->MSG_IOP_R1022_sent_by );
      while ( 0 != ( MSG_IOP_R1022_sent_by = (masl2xtuml_MSG_IOP *) Escher_IteratorNext( &iMSG_IOP_R1022_sent_by ) ) ) {
      masl2xtuml_MSG_SM * MSG_SM_R1020 = MSG_IOP_R1022_sent_by->MSG_SM_R1020;
      if ( 0 != MSG_SM_R1020 ) {
      {masl2xtuml_MSG_M * MSG_M_R1018 = MSG_SM_R1020->MSG_M_R1018;
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) messages, MSG_M_R1018 ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) messages, MSG_M_R1018 );
      }}}}}}}
    }
    /* FOR EACH message IN messages */
    { Escher_Iterator_s itermessage;
    masl2xtuml_MSG_M * iimessage;
    Escher_IteratorReset( &itermessage, messages );
    while ( (iimessage = (masl2xtuml_MSG_M *)Escher_IteratorNext( &itermessage )) != 0 ) {
      message = iimessage; {
      masl2xtuml_MSG_EPA * oa;masl2xtuml_MSG_A * arg;
      /* CREATE OBJECT INSTANCE arg OF MSG_A */
      arg = (masl2xtuml_MSG_A *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_MSG_A_CLASS_NUMBER );
      arg->Arg_ID = (Escher_UniqueID_t) arg;
      /* CREATE OBJECT INSTANCE oa OF MSG_EPA */
      oa = (masl2xtuml_MSG_EPA *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_MSG_EPA_CLASS_NUMBER );
      oa->Arg_ID = (Escher_UniqueID_t) oa;
      /* RELATE oa TO parameter ACROSS R1023 */
      masl2xtuml_MSG_EPA_R1023_Link_represents( parameter, oa );
      /* RELATE oa TO arg ACROSS R1013 */
      masl2xtuml_MSG_EPA_R1013_Link( arg, oa );
      /* RELATE message TO arg ACROSS R1001 */
      masl2xtuml_MSG_A_R1001_Link_has_a_formal( message, arg );
    }}}
    Escher_ClearSet( messages ); 
  }
}

/*
 * instance operation:  InterfaceParameter_setType
 */
void
masl2xtuml_ooapopulation_op_InterfaceParameter_setType( masl2xtuml_ooapopulation * self, masl2xtuml_C_PP * p_c_pp, c_t * p_type_name )
{
  c_t * type_name=0;masl2xtuml_C_PP * c_pp;masl2xtuml_S_DT * s_dt=0;masl2xtuml_S_DT * cur_s_dt=0;
  /* ASSIGN c_pp = PARAM.c_pp */
  c_pp = p_c_pp;
  /* ASSIGN type_name = PARAM.type_name */
  type_name = Escher_strcpy( type_name, p_type_name );
  /* SELECT any s_dt FROM INSTANCES OF S_DT WHERE ( SELECTED.Name == type_name ) */
  s_dt = 0;
  { masl2xtuml_S_DT * selected;
    Escher_Iterator_s iters_dtmasl2xtuml_S_DT;
    Escher_IteratorReset( &iters_dtmasl2xtuml_S_DT, &pG_masl2xtuml_S_DT_extent.active );
    while ( (selected = (masl2xtuml_S_DT *) Escher_IteratorNext( &iters_dtmasl2xtuml_S_DT )) != 0 ) {
      if ( ( Escher_strcmp( selected->Name, type_name ) == 0 ) ) {
        s_dt = selected;
        break;
      }
    }
  }
  /* IF ( empty s_dt ) */
  if ( ( 0 == s_dt ) ) {
    /* TRACE::log( flavor:failure, id:0, message:( ( ( could not find datatype   + type_name ) +  to set for attribute  ) + c_pp.Name ) ) */
    TRACE_log( "failure", 0, Escher_stradd( Escher_stradd( Escher_stradd( "could not find datatype  ", type_name ), " to set for attribute " ), c_pp->Name ) );
  }
  /* SELECT one cur_s_dt RELATED BY c_pp->S_DT[R4007] */
  cur_s_dt = ( 0 != c_pp ) ? c_pp->S_DT_R4007_is_typed_by : 0;
  /* IF ( ( s_dt != cur_s_dt ) ) */
  if ( ( s_dt != cur_s_dt ) ) {
    /* UNRELATE c_pp FROM cur_s_dt ACROSS R4007 */
    masl2xtuml_C_PP_R4007_Unlink_Defines_the_type( cur_s_dt, c_pp );
    /* RELATE c_pp TO s_dt ACROSS R4007 */
    masl2xtuml_C_PP_R4007_Link_Defines_the_type( s_dt, c_pp );
  }
}

/*
 * instance operation:  StateMachineEvent_newParameter
 */
masl2xtuml_SM_EVTDI *
masl2xtuml_ooapopulation_op_StateMachineEvent_newParameter( masl2xtuml_ooapopulation * self, c_t * p_parameter_name, masl2xtuml_SM_EVT * p_sm_evt )
{
  masl2xtuml_SM_EVT * sm_evt;masl2xtuml_SM_EVTDI * newEvtdi;masl2xtuml_SM_SM * sm=0;
  /* ASSIGN sm_evt = PARAM.sm_evt */
  sm_evt = p_sm_evt;
  /* CREATE OBJECT INSTANCE newEvtdi OF SM_EVTDI */
  newEvtdi = (masl2xtuml_SM_EVTDI *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_SM_EVTDI_CLASS_NUMBER );
  newEvtdi->SMedi_ID = (Escher_UniqueID_t) newEvtdi;
newEvtdi->SM_ID = (Escher_UniqueID_t) newEvtdi;
  /* RELATE sm_evt TO newEvtdi ACROSS R532 */
  masl2xtuml_SM_EVTDI_R532_Link_carries( sm_evt, newEvtdi );
  /* SELECT one sm RELATED BY sm_evt->SM_SM[R502] */
  sm = ( 0 != sm_evt ) ? sm_evt->SM_SM_R502 : 0;
  /* RELATE newEvtdi TO sm ACROSS R516 */
  masl2xtuml_SM_EVTDI_R516_Link_can_asynchronously_communicate_via( sm, newEvtdi );
  /* self.StateMachineEventDataItem_initialize( parameter_name:PARAM.parameter_name, sm_evtdi:newEvtdi ) */
  masl2xtuml_ooapopulation_op_StateMachineEventDataItem_initialize( self,  p_parameter_name, newEvtdi );
  /* self.StateMachineEvent_createMessageArgumentsForParameter( sm_evt:sm_evt, sm_evtdi:newEvtdi ) */
  masl2xtuml_ooapopulation_op_StateMachineEvent_createMessageArgumentsForParameter( self,  sm_evt, newEvtdi );
  /* RETURN newEvtdi */
  {masl2xtuml_SM_EVTDI * xtumlOALrv = newEvtdi;
  return xtumlOALrv;}
}

/*
 * instance operation:  StateMachineEventDataItem_initialize
 */
void
masl2xtuml_ooapopulation_op_StateMachineEventDataItem_initialize( masl2xtuml_ooapopulation * self, c_t * p_parameter_name, masl2xtuml_SM_EVTDI * p_sm_evtdi )
{
  masl2xtuml_EP_PKG * systypes_pkg;masl2xtuml_SM_EVTDI * sm_evtdi;masl2xtuml_SM_EVT * sm_evt=0;masl2xtuml_S_DT * def_dt=0;
  /* ASSIGN sm_evtdi = PARAM.sm_evtdi */
  sm_evtdi = p_sm_evtdi;
  /* SELECT one sm_evt RELATED BY sm_evtdi->SM_EVT[R532] */
  sm_evt = ( 0 != sm_evtdi ) ? sm_evtdi->SM_EVT_R532_carried_by : 0;
  /* self.StateMachineEvent_addDataItemToOrder( sm_evt:sm_evt, sm_evtdi:sm_evtdi ) */
  masl2xtuml_ooapopulation_op_StateMachineEvent_addDataItemToOrder( self,  sm_evt, sm_evtdi );
  /* ASSIGN systypes_pkg = self.systypes_pkg */
  systypes_pkg = self->systypes_pkg;
  /* SELECT any def_dt RELATED BY systypes_pkg->PE_PE[R8000]->S_DT[R8001] WHERE ( ( SELECTED.Name == string ) ) */
  def_dt = 0;
  {  if ( 0 != systypes_pkg ) {
  masl2xtuml_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &systypes_pkg->PE_PE_R8000_contains );
  while ( ( 0 == def_dt ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {masl2xtuml_S_DT * selected = (masl2xtuml_S_DT *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "string" ) == 0 ) ) {
    def_dt = selected;
  }}
}}}
  /* RELATE sm_evtdi TO def_dt ACROSS R524 */
  masl2xtuml_SM_EVTDI_R524_Link_defines_the_type_of( def_dt, sm_evtdi );
  /* ASSIGN sm_evtdi.Name = PARAM.parameter_name */
  sm_evtdi->Name = Escher_strcpy( sm_evtdi->Name, p_parameter_name );
}

/*
 * instance operation:  StateMachineEvent_addDataItemToOrder
 */
void
masl2xtuml_ooapopulation_op_StateMachineEvent_addDataItemToOrder( masl2xtuml_ooapopulation * self, masl2xtuml_SM_EVT * p_sm_evt, masl2xtuml_SM_EVTDI * p_sm_evtdi )
{
  masl2xtuml_SM_EVT * sm_evt;masl2xtuml_SM_EVTDI * item;
  /* ASSIGN item = PARAM.sm_evtdi */
  item = p_sm_evtdi;
  /* ASSIGN sm_evt = PARAM.sm_evt */
  sm_evt = p_sm_evt;
  /* IF ( not_empty item ) */
  if ( ( 0 != item ) ) {
    masl2xtuml_SM_EVTDI * peer=0;Escher_ObjectSet_s peers_space={0}; Escher_ObjectSet_s * peers = &peers_space;
    /* SELECT many peers RELATED BY sm_evt->SM_EVTDI[R532] */
    Escher_ClearSet( peers );
    if ( 0 != sm_evt ) {
      Escher_CopySet( peers, &sm_evt->SM_EVTDI_R532_carries );
    }
    /* FOR EACH peer IN peers */
    { Escher_Iterator_s iterpeer;
    masl2xtuml_SM_EVTDI * iipeer;
    Escher_IteratorReset( &iterpeer, peers );
    while ( (iipeer = (masl2xtuml_SM_EVTDI *)Escher_IteratorNext( &iterpeer )) != 0 ) {
      peer = iipeer; {
      /* IF ( ( peer != item ) ) */
      if ( ( peer != item ) ) {
        masl2xtuml_SM_EVTDI * predecessor=0;
        /* SELECT one predecessor RELATED BY peer->SM_EVTDI[R533.precedes] */
        predecessor = ( 0 != peer ) ? peer->SM_EVTDI_R533_precedes : 0;
        /* IF ( empty predecessor ) */
        if ( ( 0 == predecessor ) ) {
          /* RELATE item TO peer ACROSS R533 */
          masl2xtuml_SM_EVTDI_R533_Link_succeeds( item, peer );
        }
      }
    }}}
    Escher_ClearSet( peers ); 
  }
}

/*
 * instance operation:  StateMachineEvent_createMessageArgumentsForParameter
 */
void
masl2xtuml_ooapopulation_op_StateMachineEvent_createMessageArgumentsForParameter( masl2xtuml_ooapopulation * self, masl2xtuml_SM_EVT * p_sm_evt, masl2xtuml_SM_EVTDI * p_sm_evtdi )
{
  masl2xtuml_SM_EVT * sm_evt;masl2xtuml_SM_EVTDI * parameter;
  /* ASSIGN parameter = PARAM.sm_evtdi */
  parameter = p_sm_evtdi;
  /* ASSIGN sm_evt = PARAM.sm_evt */
  sm_evt = p_sm_evt;
  /* IF ( not_empty parameter ) */
  if ( ( 0 != parameter ) ) {
    masl2xtuml_MSG_M * message=0;Escher_ObjectSet_s messages_space={0}; Escher_ObjectSet_s * messages = &messages_space;
    /* SELECT many messages RELATED BY sm_evt->MSG_E[R1009]->MSG_AM[R1019]->MSG_M[R1018] */
    Escher_ClearSet( messages );
    {    if ( 0 != sm_evt ) {
    masl2xtuml_MSG_E * MSG_E_R1009_is_generated_by;
    Escher_Iterator_s iMSG_E_R1009_is_generated_by;
    Escher_IteratorReset( &iMSG_E_R1009_is_generated_by, &sm_evt->MSG_E_R1009_is_generated_by );
    while ( 0 != ( MSG_E_R1009_is_generated_by = (masl2xtuml_MSG_E *) Escher_IteratorNext( &iMSG_E_R1009_is_generated_by ) ) ) {
    masl2xtuml_MSG_AM * MSG_AM_R1019 = MSG_E_R1009_is_generated_by->MSG_AM_R1019;
    if ( 0 != MSG_AM_R1019 ) {
    {masl2xtuml_MSG_M * MSG_M_R1018 = MSG_AM_R1019->MSG_M_R1018;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) messages, MSG_M_R1018 ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) messages, MSG_M_R1018 );
    }}}}}}
    /* FOR EACH message IN messages */
    { Escher_Iterator_s itermessage;
    masl2xtuml_MSG_M * iimessage;
    Escher_IteratorReset( &itermessage, messages );
    while ( (iimessage = (masl2xtuml_MSG_M *)Escher_IteratorNext( &itermessage )) != 0 ) {
      message = iimessage; {
      masl2xtuml_MSG_EA * ea;masl2xtuml_MSG_A * arg;
      /* CREATE OBJECT INSTANCE arg OF MSG_A */
      arg = (masl2xtuml_MSG_A *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_MSG_A_CLASS_NUMBER );
      arg->Arg_ID = (Escher_UniqueID_t) arg;
      /* CREATE OBJECT INSTANCE ea OF MSG_EA */
      ea = (masl2xtuml_MSG_EA *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_MSG_EA_CLASS_NUMBER );
      ea->Arg_ID = (Escher_UniqueID_t) ea;
      /* RELATE ea TO parameter ACROSS R1017 */
      masl2xtuml_MSG_EA_R1017_Link_represents( parameter, ea );
      /* RELATE ea TO arg ACROSS R1013 */
      masl2xtuml_MSG_EA_R1013_Link( arg, ea );
      /* RELATE message TO arg ACROSS R1001 */
      masl2xtuml_MSG_A_R1001_Link_has_a_formal( message, arg );
    }}}
    Escher_ClearSet( messages ); 
  }
}

/*
 * instance operation:  StateMachineEventDataItem_setType
 */
void
masl2xtuml_ooapopulation_op_StateMachineEventDataItem_setType( masl2xtuml_ooapopulation * self, masl2xtuml_SM_EVTDI * p_sm_evtdi, c_t * p_type_name )
{
  c_t * type_name=0;masl2xtuml_SM_EVTDI * sm_evtdi;masl2xtuml_S_DT * s_dt=0;masl2xtuml_S_DT * cur_s_dt=0;
  /* ASSIGN sm_evtdi = PARAM.sm_evtdi */
  sm_evtdi = p_sm_evtdi;
  /* ASSIGN type_name = PARAM.type_name */
  type_name = Escher_strcpy( type_name, p_type_name );
  /* SELECT any s_dt FROM INSTANCES OF S_DT WHERE ( SELECTED.Name == type_name ) */
  s_dt = 0;
  { masl2xtuml_S_DT * selected;
    Escher_Iterator_s iters_dtmasl2xtuml_S_DT;
    Escher_IteratorReset( &iters_dtmasl2xtuml_S_DT, &pG_masl2xtuml_S_DT_extent.active );
    while ( (selected = (masl2xtuml_S_DT *) Escher_IteratorNext( &iters_dtmasl2xtuml_S_DT )) != 0 ) {
      if ( ( Escher_strcmp( selected->Name, type_name ) == 0 ) ) {
        s_dt = selected;
        break;
      }
    }
  }
  /* IF ( empty s_dt ) */
  if ( ( 0 == s_dt ) ) {
    /* TRACE::log( flavor:failure, id:0, message:( ( ( could not find datatype   + type_name ) +  to set for attribute  ) + sm_evtdi.Name ) ) */
    TRACE_log( "failure", 0, Escher_stradd( Escher_stradd( Escher_stradd( "could not find datatype  ", type_name ), " to set for attribute " ), sm_evtdi->Name ) );
  }
  /* SELECT one cur_s_dt RELATED BY sm_evtdi->S_DT[R524] */
  cur_s_dt = ( 0 != sm_evtdi ) ? sm_evtdi->S_DT_R524_is_defined_by : 0;
  /* IF ( ( s_dt != cur_s_dt ) ) */
  if ( ( s_dt != cur_s_dt ) ) {
    /* UNRELATE sm_evtdi FROM cur_s_dt ACROSS R524 */
    masl2xtuml_SM_EVTDI_R524_Unlink_defines_the_type_of( cur_s_dt, sm_evtdi );
    /* RELATE sm_evtdi TO s_dt ACROSS R524 */
    masl2xtuml_SM_EVTDI_R524_Link_defines_the_type_of( s_dt, sm_evtdi );
  }
}

/*
 * instance operation:  Package_newSubsuper
 */
void
masl2xtuml_ooapopulation_op_Package_newSubsuper( masl2xtuml_ooapopulation * self, masl2xtuml_EP_PKG * p_ep_pkg )
{
  masl2xtuml_EP_PKG * ep_pkg;Escher_ObjectSet_s toOOAParts_space={0}; Escher_ObjectSet_s * toOOAParts = &toOOAParts_space;masl2xtuml_ooaparticipation * fromOOAPart=0;masl2xtuml_O_OBJ * fromClass=0;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* SELECT any fromOOAPart FROM INSTANCES OF ooaparticipation WHERE ( SELECTED.isFirst == TRUE ) */
  fromOOAPart = 0;
  { masl2xtuml_ooaparticipation * selected;
    Escher_Iterator_s iterfromOOAPartmasl2xtuml_ooaparticipation;
    Escher_IteratorReset( &iterfromOOAPartmasl2xtuml_ooaparticipation, &pG_masl2xtuml_ooaparticipation_extent.active );
    while ( (selected = (masl2xtuml_ooaparticipation *) Escher_IteratorNext( &iterfromOOAPartmasl2xtuml_ooaparticipation )) != 0 ) {
      if ( ( selected->isFirst == TRUE ) ) {
        fromOOAPart = selected;
        break;
      }
    }
  }
  /* SELECT many toOOAParts FROM INSTANCES OF ooaparticipation WHERE ( SELECTED.isFirst == FALSE ) */
  Escher_ClearSet( toOOAParts );
  { masl2xtuml_ooaparticipation * selected;
    Escher_Iterator_s itertoOOAPartsmasl2xtuml_ooaparticipation;
    Escher_IteratorReset( &itertoOOAPartsmasl2xtuml_ooaparticipation, &pG_masl2xtuml_ooaparticipation_extent.active );
    while ( (selected = (masl2xtuml_ooaparticipation *) Escher_IteratorNext( &itertoOOAPartsmasl2xtuml_ooaparticipation )) != 0 ) {
      if ( ( selected->isFirst == FALSE ) ) {
        Escher_SetInsertElement( toOOAParts, selected );
      }
    }
  }
  /* SELECT any fromClass RELATED BY ep_pkg->PE_PE[R8000]->O_OBJ[R8001] WHERE ( ( SELECTED.Name == fromOOAPart.className ) ) */
  fromClass = 0;
  {  if ( 0 != ep_pkg ) {
  masl2xtuml_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
  while ( ( 0 == fromClass ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_O_OBJ_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {masl2xtuml_O_OBJ * selected = (masl2xtuml_O_OBJ *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, fromOOAPart->className ) == 0 ) ) {
    fromClass = selected;
  }}
}}}
  /* IF ( not_empty fromClass ) */
  if ( ( 0 != fromClass ) ) {
    masl2xtuml_ooaparticipation * toOOAPart=0;masl2xtuml_R_SUPER * fromSUPER;masl2xtuml_R_RTO * fromRTO;masl2xtuml_R_OIR * fromOIR;masl2xtuml_R_SUBSUP * subsuper;masl2xtuml_PE_PE * pe;masl2xtuml_R_REL * assoc;
    /* CREATE OBJECT INSTANCE assoc OF R_REL */
    assoc = (masl2xtuml_R_REL *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_REL_CLASS_NUMBER );
    assoc->Rel_ID = (Escher_UniqueID_t) assoc;
    /* CREATE OBJECT INSTANCE pe OF PE_PE */
    pe = (masl2xtuml_PE_PE *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_PE_PE_CLASS_NUMBER );
    pe->Element_ID = (Escher_UniqueID_t) pe;
    /* RELATE assoc TO pe ACROSS R8001 */
    masl2xtuml_R_REL_R8001_Link( pe, assoc );
    /* RELATE pe TO ep_pkg ACROSS R8000 */
    masl2xtuml_PE_PE_R8000_Link_contains( ep_pkg, pe );
    /* ASSIGN pe.type = ASSOCIATION */
    pe->type = masl2xtuml_ElementTypeConstants_ASSOCIATION_e;
    /* self.PackageableElement_initialize( pe_pe:pe ) */
    masl2xtuml_ooapopulation_op_PackageableElement_initialize( self,  pe );
    /* self.Association_initialize( r_rel:assoc ) */
    masl2xtuml_ooapopulation_op_Association_initialize( self,  assoc );
    /* CREATE OBJECT INSTANCE subsuper OF R_SUBSUP */
    subsuper = (masl2xtuml_R_SUBSUP *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_SUBSUP_CLASS_NUMBER );
    subsuper->Rel_ID = (Escher_UniqueID_t) subsuper;
    /* RELATE subsuper TO assoc ACROSS R206 */
    masl2xtuml_R_SUBSUP_R206_Link( assoc, subsuper );
    /* CREATE OBJECT INSTANCE fromOIR OF R_OIR */
    fromOIR = (masl2xtuml_R_OIR *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_OIR_CLASS_NUMBER );
    fromOIR->Obj_ID = (Escher_UniqueID_t) fromOIR;
fromOIR->Rel_ID = (Escher_UniqueID_t) fromOIR;
fromOIR->OIR_ID = (Escher_UniqueID_t) fromOIR;
    /* RELATE fromClass TO assoc ACROSS R201 USING fromOIR */
    masl2xtuml_R_OIR_R201_Link( assoc, fromClass, fromOIR );
    /* CREATE OBJECT INSTANCE fromRTO OF R_RTO */
    fromRTO = (masl2xtuml_R_RTO *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_RTO_CLASS_NUMBER );
    fromRTO->Obj_ID = (Escher_UniqueID_t) fromRTO;
fromRTO->Rel_ID = (Escher_UniqueID_t) fromRTO;
fromRTO->OIR_ID = (Escher_UniqueID_t) fromRTO;
    /* RELATE fromOIR TO fromRTO ACROSS R203 */
    masl2xtuml_R_RTO_R203_Link( fromOIR, fromRTO );
    /* CREATE OBJECT INSTANCE fromSUPER OF R_SUPER */
    fromSUPER = (masl2xtuml_R_SUPER *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_SUPER_CLASS_NUMBER );
    fromSUPER->Obj_ID = (Escher_UniqueID_t) fromSUPER;
fromSUPER->Rel_ID = (Escher_UniqueID_t) fromSUPER;
fromSUPER->OIR_ID = (Escher_UniqueID_t) fromSUPER;
    /* RELATE fromSUPER TO fromRTO ACROSS R204 */
    masl2xtuml_R_SUPER_R204_Link( fromRTO, fromSUPER );
    /* RELATE fromSUPER TO subsuper ACROSS R212 */
    masl2xtuml_R_SUPER_R212_Link_relates( subsuper, fromSUPER );
    /* FOR EACH toOOAPart IN toOOAParts */
    { Escher_Iterator_s itertoOOAPart;
    masl2xtuml_ooaparticipation * iitoOOAPart;
    Escher_IteratorReset( &itertoOOAPart, toOOAParts );
    while ( (iitoOOAPart = (masl2xtuml_ooaparticipation *)Escher_IteratorNext( &itertoOOAPart )) != 0 ) {
      toOOAPart = iitoOOAPart; {
      masl2xtuml_O_OBJ * toClass=0;
      /* SELECT any toClass RELATED BY ep_pkg->PE_PE[R8000]->O_OBJ[R8001] WHERE ( ( SELECTED.Name == toOOAPart.className ) ) */
      toClass = 0;
      {      if ( 0 != ep_pkg ) {
      masl2xtuml_PE_PE * PE_PE_R8000_contains;
      Escher_Iterator_s iPE_PE_R8000_contains;
      Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
      while ( ( 0 == toClass ) && ( 0 != ( PE_PE_R8000_contains = (masl2xtuml_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
      if ( ( 0 != PE_PE_R8000_contains ) && ( masl2xtuml_O_OBJ_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )      {masl2xtuml_O_OBJ * selected = (masl2xtuml_O_OBJ *) PE_PE_R8000_contains->R8001_subtype;
      if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, toOOAPart->className ) == 0 ) ) {
        toClass = selected;
      }}
}}}
      /* IF ( not_empty toClass ) */
      if ( ( 0 != toClass ) ) {
        masl2xtuml_R_SUB * toSUB;masl2xtuml_R_RGO * toRGO;masl2xtuml_R_OIR * toOIR;
        /* CREATE OBJECT INSTANCE toOIR OF R_OIR */
        toOIR = (masl2xtuml_R_OIR *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_OIR_CLASS_NUMBER );
        toOIR->Obj_ID = (Escher_UniqueID_t) toOIR;
toOIR->Rel_ID = (Escher_UniqueID_t) toOIR;
toOIR->OIR_ID = (Escher_UniqueID_t) toOIR;
        /* RELATE toClass TO assoc ACROSS R201 USING toOIR */
        masl2xtuml_R_OIR_R201_Link( assoc, toClass, toOIR );
        /* CREATE OBJECT INSTANCE toRGO OF R_RGO */
        toRGO = (masl2xtuml_R_RGO *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_RGO_CLASS_NUMBER );
        toRGO->Obj_ID = (Escher_UniqueID_t) toRGO;
toRGO->Rel_ID = (Escher_UniqueID_t) toRGO;
toRGO->OIR_ID = (Escher_UniqueID_t) toRGO;
        /* RELATE toOIR TO toRGO ACROSS R203 */
        masl2xtuml_R_RGO_R203_Link( toOIR, toRGO );
        /* CREATE OBJECT INSTANCE toSUB OF R_SUB */
        toSUB = (masl2xtuml_R_SUB *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_R_SUB_CLASS_NUMBER );
        toSUB->Obj_ID = (Escher_UniqueID_t) toSUB;
toSUB->Rel_ID = (Escher_UniqueID_t) toSUB;
toSUB->OIR_ID = (Escher_UniqueID_t) toSUB;
        /* RELATE toSUB TO toRGO ACROSS R205 */
        masl2xtuml_R_SUB_R205_Link( toRGO, toSUB );
        /* RELATE toSUB TO subsuper ACROSS R213 */
        masl2xtuml_R_SUB_R213_Link_relates( subsuper, toSUB );
      }
    }}}
  }
  Escher_ClearSet( toOOAParts );
}

/*
 * instance operation:  Function_setReturnType
 */
void
masl2xtuml_ooapopulation_op_Function_setReturnType( masl2xtuml_ooapopulation * self, masl2xtuml_S_SYNC * p_s_sync, c_t * p_type_name )
{
  c_t * type_name=0;masl2xtuml_S_SYNC * s_sync;masl2xtuml_S_DT * s_dt=0;
  /* ASSIGN s_sync = PARAM.s_sync */
  s_sync = p_s_sync;
  /* ASSIGN type_name = PARAM.type_name */
  type_name = Escher_strcpy( type_name, p_type_name );
  /* SELECT any s_dt FROM INSTANCES OF S_DT WHERE ( SELECTED.Name == type_name ) */
  s_dt = 0;
  { masl2xtuml_S_DT * selected;
    Escher_Iterator_s iters_dtmasl2xtuml_S_DT;
    Escher_IteratorReset( &iters_dtmasl2xtuml_S_DT, &pG_masl2xtuml_S_DT_extent.active );
    while ( (selected = (masl2xtuml_S_DT *) Escher_IteratorNext( &iters_dtmasl2xtuml_S_DT )) != 0 ) {
      if ( ( Escher_strcmp( selected->Name, type_name ) == 0 ) ) {
        s_dt = selected;
        break;
      }
    }
  }
  /* IF ( empty s_dt ) */
  if ( ( 0 == s_dt ) ) {
    /* TRACE::log( flavor:failure, id:0, message:( ( ( could not find datatype   + type_name ) +  to set for function  ) + s_sync.Name ) ) */
    TRACE_log( "failure", 0, Escher_stradd( Escher_stradd( Escher_stradd( "could not find datatype  ", type_name ), " to set for function " ), s_sync->Name ) );
  }
  else {
    masl2xtuml_S_DT * old_s_dt=0;
    /* SELECT one old_s_dt RELATED BY s_sync->S_DT[R25] */
    old_s_dt = ( 0 != s_sync ) ? s_sync->S_DT_R25_has_return_type_of : 0;
    /* IF ( not_empty old_s_dt ) */
    if ( ( 0 != old_s_dt ) ) {
      /* UNRELATE old_s_dt FROM s_sync ACROSS R25 */
      masl2xtuml_S_SYNC_R25_Unlink_defines_return_type( old_s_dt, s_sync );
    }
    /* RELATE s_dt TO s_sync ACROSS R25 */
    masl2xtuml_S_SYNC_R25_Link_defines_return_type( s_dt, s_sync );
  }
}

/*
 * instance operation:  Operation_setReturnType
 */
void
masl2xtuml_ooapopulation_op_Operation_setReturnType( masl2xtuml_ooapopulation * self, masl2xtuml_O_TFR * p_o_tfr, c_t * p_type_name )
{
  c_t * type_name=0;masl2xtuml_O_TFR * o_tfr;masl2xtuml_S_DT * s_dt=0;
  /* ASSIGN o_tfr = PARAM.o_tfr */
  o_tfr = p_o_tfr;
  /* ASSIGN type_name = PARAM.type_name */
  type_name = Escher_strcpy( type_name, p_type_name );
  /* SELECT any s_dt FROM INSTANCES OF S_DT WHERE ( SELECTED.Name == type_name ) */
  s_dt = 0;
  { masl2xtuml_S_DT * selected;
    Escher_Iterator_s iters_dtmasl2xtuml_S_DT;
    Escher_IteratorReset( &iters_dtmasl2xtuml_S_DT, &pG_masl2xtuml_S_DT_extent.active );
    while ( (selected = (masl2xtuml_S_DT *) Escher_IteratorNext( &iters_dtmasl2xtuml_S_DT )) != 0 ) {
      if ( ( Escher_strcmp( selected->Name, type_name ) == 0 ) ) {
        s_dt = selected;
        break;
      }
    }
  }
  /* IF ( empty s_dt ) */
  if ( ( 0 == s_dt ) ) {
    /* TRACE::log( flavor:failure, id:0, message:( ( ( could not find datatype   + type_name ) +  to set for operation  ) + o_tfr.Name ) ) */
    TRACE_log( "failure", 0, Escher_stradd( Escher_stradd( Escher_stradd( "could not find datatype  ", type_name ), " to set for operation " ), o_tfr->Name ) );
  }
  else {
    masl2xtuml_S_DT * old_s_dt=0;
    /* SELECT one old_s_dt RELATED BY o_tfr->S_DT[R116] */
    old_s_dt = ( 0 != o_tfr ) ? o_tfr->S_DT_R116_return_code_is_defined_by : 0;
    /* IF ( not_empty old_s_dt ) */
    if ( ( 0 != old_s_dt ) ) {
      /* UNRELATE old_s_dt FROM o_tfr ACROSS R116 */
      masl2xtuml_O_TFR_R116_Unlink_defines_the_type_of_return_code( old_s_dt, o_tfr );
    }
    /* RELATE s_dt TO o_tfr ACROSS R116 */
    masl2xtuml_O_TFR_R116_Link_defines_the_type_of_return_code( s_dt, o_tfr );
  }
}

/*
 * instance operation:  InterfaceOperation_setReturnType
 */
void
masl2xtuml_ooapopulation_op_InterfaceOperation_setReturnType( masl2xtuml_ooapopulation * self, masl2xtuml_C_IO * p_c_io, c_t * p_type_name )
{
  c_t * type_name=0;masl2xtuml_C_IO * c_io;masl2xtuml_S_DT * s_dt=0;
  /* ASSIGN c_io = PARAM.c_io */
  c_io = p_c_io;
  /* ASSIGN type_name = PARAM.type_name */
  type_name = Escher_strcpy( type_name, p_type_name );
  /* SELECT any s_dt FROM INSTANCES OF S_DT WHERE ( SELECTED.Name == type_name ) */
  s_dt = 0;
  { masl2xtuml_S_DT * selected;
    Escher_Iterator_s iters_dtmasl2xtuml_S_DT;
    Escher_IteratorReset( &iters_dtmasl2xtuml_S_DT, &pG_masl2xtuml_S_DT_extent.active );
    while ( (selected = (masl2xtuml_S_DT *) Escher_IteratorNext( &iters_dtmasl2xtuml_S_DT )) != 0 ) {
      if ( ( Escher_strcmp( selected->Name, type_name ) == 0 ) ) {
        s_dt = selected;
        break;
      }
    }
  }
  /* IF ( empty s_dt ) */
  if ( ( 0 == s_dt ) ) {
    /* TRACE::log( flavor:failure, id:0, message:( ( ( could not find datatype   + type_name ) +  to set for function  ) + c_io.Name ) ) */
    TRACE_log( "failure", 0, Escher_stradd( Escher_stradd( Escher_stradd( "could not find datatype  ", type_name ), " to set for function " ), c_io->Name ) );
  }
  else {
    masl2xtuml_S_DT * old_s_dt=0;
    /* SELECT one old_s_dt RELATED BY c_io->S_DT[R4008] */
    old_s_dt = ( 0 != c_io ) ? c_io->S_DT_R4008_has_return_defined_by : 0;
    /* IF ( not_empty old_s_dt ) */
    if ( ( 0 != old_s_dt ) ) {
      /* UNRELATE old_s_dt FROM c_io ACROSS R4008 */
      masl2xtuml_C_IO_R4008_Unlink_defines_return_type( old_s_dt, c_io );
    }
    /* RELATE s_dt TO c_io ACROSS R4008 */
    masl2xtuml_C_IO_R4008_Link_defines_return_type( s_dt, c_io );
  }
}

/*
 * instance operation:  ReferredToClassInAssoc_addAttributeToIdentifier
 */
void
masl2xtuml_ooapopulation_op_ReferredToClassInAssoc_addAttributeToIdentifier( masl2xtuml_ooapopulation * self, masl2xtuml_O_OIDA * p_oida, masl2xtuml_R_RTO * p_r_rto )
{
  masl2xtuml_O_OIDA * oida;masl2xtuml_R_RTO * r_rto;
  /* ASSIGN r_rto = PARAM.r_rto */
  r_rto = p_r_rto;
  /* ASSIGN oida = PARAM.oida */
  oida = p_oida;
  /* IF ( not_empty oida ) */
  if ( ( 0 != oida ) ) {
    masl2xtuml_R_RGO * rgo=0;Escher_ObjectSet_s rgo_set_space={0}; Escher_ObjectSet_s * rgo_set = &rgo_set_space;
    /* SELECT many rgo_set RELATED BY r_rto->R_OIR[R203]->R_REL[R201]->R_OIR[R201]->R_RGO[R203] WHERE ( ( ( SELECTED.OIR_ID != r_rto.OIR_ID ) and ( SELECTED.Rel_ID == r_rto.Rel_ID ) ) ) */
    Escher_ClearSet( rgo_set );
    {    if ( 0 != r_rto ) {
    masl2xtuml_R_OIR * R_OIR_R203 = r_rto->R_OIR_R203;
    if ( 0 != R_OIR_R203 ) {
    masl2xtuml_R_REL * R_REL_R201_has_instance_associations_abstracted = R_OIR_R203->R_REL_R201_has_instance_associations_abstracted;
    if ( 0 != R_REL_R201_has_instance_associations_abstracted ) {
    masl2xtuml_R_OIR * R_OIR_R201;
    Escher_Iterator_s iR_OIR_R201;
    Escher_IteratorReset( &iR_OIR_R201, &R_REL_R201_has_instance_associations_abstracted->R_OIR_R201 );
    while ( 0 != ( R_OIR_R201 = (masl2xtuml_R_OIR *) Escher_IteratorNext( &iR_OIR_R201 ) ) ) {
    if ( ( 0 != R_OIR_R201 ) && ( masl2xtuml_R_RGO_CLASS_NUMBER == R_OIR_R201->R203_object_id ) )    {masl2xtuml_R_RGO * selected = R_OIR_R201->R203_subtype;
    if ( ( 0 != selected ) && ( ( selected->OIR_ID != r_rto->OIR_ID ) && ( selected->Rel_ID == r_rto->Rel_ID ) ) ) {
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) rgo_set, selected ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) rgo_set, selected );
    }}}
}}}}}
    /* FOR EACH rgo IN rgo_set */
    { Escher_Iterator_s iterrgo;
    masl2xtuml_R_RGO * iirgo;
    Escher_IteratorReset( &iterrgo, rgo_set );
    while ( (iirgo = (masl2xtuml_R_RGO *)Escher_IteratorNext( &iterrgo )) != 0 ) {
      rgo = iirgo; {
      masl2xtuml_O_RATTR * new_o_rattr;i_t id_id;masl2xtuml_O_OBJ * form_obj=0;masl2xtuml_O_OBJ * part_obj=0;masl2xtuml_R_REL * r_rel=0;masl2xtuml_O_OIDA * ref_attr_id=0;
      /* SELECT any ref_attr_id RELATED BY rgo->O_REF[R111]->O_RATTR[R108]->O_ATTR[R106]->O_OIDA[R105] */
      ref_attr_id = 0;
      {      if ( 0 != rgo ) {
      masl2xtuml_O_REF * O_REF_R111;
      Escher_Iterator_s iO_REF_R111;
      Escher_IteratorReset( &iO_REF_R111, &rgo->O_REF_R111 );
      while ( ( 0 == ref_attr_id ) && ( 0 != ( O_REF_R111 = (masl2xtuml_O_REF *) Escher_IteratorNext( &iO_REF_R111 ) ) ) ) {
      masl2xtuml_O_RATTR * O_RATTR_R108_is_resolved_by = O_REF_R111->O_RATTR_R108_is_resolved_by;
      if ( 0 != O_RATTR_R108_is_resolved_by ) {
      masl2xtuml_O_ATTR * O_ATTR_R106 = O_RATTR_R108_is_resolved_by->O_ATTR_R106;
      if ( 0 != O_ATTR_R106 ) {
      ref_attr_id = ( 0 != O_ATTR_R106 ) ? (masl2xtuml_O_OIDA *) Escher_SetGetAny( &O_ATTR_R106->O_OIDA_R105 ) : 0;
}}}}}
      /* ASSIGN id_id = - 1 */
      id_id = -1;
      /* IF ( not_empty ref_attr_id ) */
      if ( ( 0 != ref_attr_id ) ) {
        masl2xtuml_R_SUBSUP * subsup=0;masl2xtuml_R_ASSOC * assoc=0;
        /* SELECT one assoc RELATED BY rgo->R_OIR[R203]->R_REL[R201]->R_ASSOC[R206] */
        assoc = 0;
        {        if ( 0 != rgo ) {
        masl2xtuml_R_OIR * R_OIR_R203 = rgo->R_OIR_R203;
        if ( 0 != R_OIR_R203 ) {
        masl2xtuml_R_REL * R_REL_R201_has_instance_associations_abstracted = R_OIR_R203->R_REL_R201_has_instance_associations_abstracted;
        if ( 0 != R_REL_R201_has_instance_associations_abstracted ) {
        if ( ( 0 != R_REL_R201_has_instance_associations_abstracted ) && ( masl2xtuml_R_ASSOC_CLASS_NUMBER == R_REL_R201_has_instance_associations_abstracted->R206_object_id ) )        assoc = (masl2xtuml_R_ASSOC *) R_REL_R201_has_instance_associations_abstracted->R206_subtype;
}}}}
        /* SELECT one subsup RELATED BY rgo->R_OIR[R203]->R_REL[R201]->R_SUBSUP[R206] */
        subsup = 0;
        {        if ( 0 != rgo ) {
        masl2xtuml_R_OIR * R_OIR_R203 = rgo->R_OIR_R203;
        if ( 0 != R_OIR_R203 ) {
        masl2xtuml_R_REL * R_REL_R201_has_instance_associations_abstracted = R_OIR_R203->R_REL_R201_has_instance_associations_abstracted;
        if ( 0 != R_REL_R201_has_instance_associations_abstracted ) {
        if ( ( 0 != R_REL_R201_has_instance_associations_abstracted ) && ( masl2xtuml_R_SUBSUP_CLASS_NUMBER == R_REL_R201_has_instance_associations_abstracted->R206_object_id ) )        subsup = (masl2xtuml_R_SUBSUP *) R_REL_R201_has_instance_associations_abstracted->R206_subtype;
}}}}
        /* IF ( ( not_empty assoc or not_empty subsup ) ) */
        if ( ( ( 0 != assoc ) || ( 0 != subsup ) ) ) {
          /* ASSIGN id_id = ref_attr_id.Oid_ID */
          id_id = ref_attr_id->Oid_ID;
        }
      }
      /* SELECT one r_rel RELATED BY rgo->R_OIR[R203]->R_REL[R201] */
      r_rel = 0;
      {      if ( 0 != rgo ) {
      masl2xtuml_R_OIR * R_OIR_R203 = rgo->R_OIR_R203;
      if ( 0 != R_OIR_R203 ) {
      r_rel = R_OIR_R203->R_REL_R201_has_instance_associations_abstracted;
}}}
      /* SELECT one part_obj RELATED BY r_rto->R_OIR[R203]->O_OBJ[R201] */
      part_obj = 0;
      {      if ( 0 != r_rto ) {
      masl2xtuml_R_OIR * R_OIR_R203 = r_rto->R_OIR_R203;
      if ( 0 != R_OIR_R203 ) {
      part_obj = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
}}}
      /* SELECT one form_obj RELATED BY rgo->R_OIR[R203]->O_OBJ[R201] */
      form_obj = 0;
      {      if ( 0 != rgo ) {
      masl2xtuml_R_OIR * R_OIR_R203 = rgo->R_OIR_R203;
      if ( 0 != R_OIR_R203 ) {
      form_obj = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
}}}
      /* ASSIGN new_o_rattr = self.ClassIdentifierAttribute_addReference(form_obj:form_obj, form_rgo:rgo, id:id_id, o_oida:oida, part_obj:part_obj, part_rto:r_rto, rel:r_rel) */
      new_o_rattr = masl2xtuml_ooapopulation_op_ClassIdentifierAttribute_addReference(self, form_obj, rgo, id_id, oida, part_obj, r_rto, r_rel);
      /* IF ( ( id_id != - 1 ) ) */
      if ( ( id_id != -1 ) ) {
        masl2xtuml_R_RTO * rto=0;Escher_ObjectSet_s rto_set_space={0}; Escher_ObjectSet_s * rto_set = &rto_set_space;
        /* SELECT many rto_set RELATED BY ref_attr_id->O_ID[R105]->R_RTO[R109] */
        Escher_ClearSet( rto_set );
        {        if ( 0 != ref_attr_id ) {
        masl2xtuml_O_ID * O_ID_R105_is_part_of_ = ref_attr_id->O_ID_R105_is_part_of_;
        if ( 0 != O_ID_R105_is_part_of_ ) {
        masl2xtuml_R_RTO * R_RTO_R109_identifies_for_this_association_;
        Escher_Iterator_s iR_RTO_R109_identifies_for_this_association_;
        Escher_IteratorReset( &iR_RTO_R109_identifies_for_this_association_, &O_ID_R105_is_part_of_->R_RTO_R109_identifies_for_this_association_ );
        while ( 0 != ( R_RTO_R109_identifies_for_this_association_ = (masl2xtuml_R_RTO *) Escher_IteratorNext( &iR_RTO_R109_identifies_for_this_association_ ) ) ) {
          if ( ! Escher_SetContains( (Escher_ObjectSet_s *) rto_set, R_RTO_R109_identifies_for_this_association_ ) ) {
            Escher_SetInsertElement( (Escher_ObjectSet_s *) rto_set, R_RTO_R109_identifies_for_this_association_ );
        }}}}}
        /* FOR EACH rto IN rto_set */
        { Escher_Iterator_s iterrto;
        masl2xtuml_R_RTO * iirto;
        Escher_IteratorReset( &iterrto, rto_set );
        while ( (iirto = (masl2xtuml_R_RTO *)Escher_IteratorNext( &iterrto )) != 0 ) {
          rto = iirto; {
          /* SELECT any oida RELATED BY rto->O_ID[R109]->O_OIDA[R105] WHERE ( ( SELECTED.Attr_ID == new_o_rattr.Attr_ID ) ) */
          oida = 0;
          {          if ( 0 != rto ) {
          masl2xtuml_O_ID * O_ID_R109_is_identified_in_this_association_by = rto->O_ID_R109_is_identified_in_this_association_by;
          if ( 0 != O_ID_R109_is_identified_in_this_association_by ) {
          masl2xtuml_O_OIDA * selected;
          Escher_Iterator_s iO_OIDA_R105;
          Escher_IteratorReset( &iO_OIDA_R105, &O_ID_R109_is_identified_in_this_association_by->O_OIDA_R105 );
          while ( 0 != ( selected = (masl2xtuml_O_OIDA *) Escher_IteratorNext( &iO_OIDA_R105 ) ) ) {
            if ( ( selected->Attr_ID == new_o_rattr->Attr_ID ) ) {
              oida = selected;
              break;
          }}
}}}
          /* self.ReferredToClassInAssoc_addAttributeToIdentifier( oida:oida, r_rto:rto ) */
          masl2xtuml_ooapopulation_op_ReferredToClassInAssoc_addAttributeToIdentifier( self,  oida, rto );
        }}}
        Escher_ClearSet( rto_set ); 
      }
    }}}
    Escher_ClearSet( rgo_set ); 
  }
}

/*
 * instance operation:  Attribute_migrateBaseToReferential
 */
void
masl2xtuml_ooapopulation_op_Attribute_migrateBaseToReferential( masl2xtuml_ooapopulation * self, masl2xtuml_O_ATTR * p_o_attr )
{
  masl2xtuml_O_ATTR * o_attr;masl2xtuml_O_RATTR * rattr;masl2xtuml_O_BATTR * battr=0;
  /* ASSIGN o_attr = PARAM.o_attr */
  o_attr = p_o_attr;
  /* SELECT one battr RELATED BY o_attr->O_BATTR[R106] */
  battr = 0;
  if ( ( 0 != o_attr ) && ( masl2xtuml_O_BATTR_CLASS_NUMBER == o_attr->R106_object_id ) )  battr = ( 0 != o_attr ) ? (masl2xtuml_O_BATTR *) o_attr->R106_subtype : 0;
  /* IF ( not_empty battr ) */
  if ( ( 0 != battr ) ) {
    /* self.BaseAttribute_dispose( o_battr:battr ) */
    masl2xtuml_ooapopulation_op_BaseAttribute_dispose( self,  battr );
  }
  /* CREATE OBJECT INSTANCE rattr OF O_RATTR */
  rattr = (masl2xtuml_O_RATTR *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_O_RATTR_CLASS_NUMBER );
  rattr->Attr_ID = (Escher_UniqueID_t) rattr;
rattr->Obj_ID = (Escher_UniqueID_t) rattr;
  /* ASSIGN rattr.Ref_Mode = 0 */
  rattr->Ref_Mode = 0;
  /* RELATE o_attr TO rattr ACROSS R106 */
  masl2xtuml_O_RATTR_R106_Link( o_attr, rattr );
}

/*
 * instance operation:  ReferentialAttribute_setDatatype
 */
void
masl2xtuml_ooapopulation_op_ReferentialAttribute_setDatatype( masl2xtuml_ooapopulation * self, masl2xtuml_O_RATTR * p_o_rattr )
{
  masl2xtuml_S_DT * ref_attr_dt;masl2xtuml_O_RATTR * o_rattr;masl2xtuml_S_SYS * system=0;masl2xtuml_EP_PKG * pkg=0;masl2xtuml_S_DT * dt=0;masl2xtuml_O_ATTR * attr=0;
  /* ASSIGN o_rattr = PARAM.o_rattr */
  o_rattr = p_o_rattr;
  /* SELECT one attr RELATED BY o_rattr->O_ATTR[R106] */
  attr = ( 0 != o_rattr ) ? o_rattr->O_ATTR_R106 : 0;
  /* SELECT one dt RELATED BY attr->S_DT[R114] */
  dt = ( 0 != attr ) ? attr->S_DT_R114_defines_type_of : 0;
  /* IF ( not_empty dt ) */
  if ( ( 0 != dt ) ) {
    /* IF ( ( dt.Name == same_as<Base_Attribute> ) ) */
    if ( ( Escher_strcmp( dt->Name, "same_as<Base_Attribute>" ) == 0 ) ) {
      /* RETURN  */
      return;    }
    else {
      /* UNRELATE attr FROM dt ACROSS R114 */
      masl2xtuml_O_ATTR_R114_Unlink_is_defined_by( dt, attr );
    }
  }
  /* SELECT one pkg RELATED BY attr->O_OBJ[R102]->PE_PE[R8001]->EP_PKG[R8000] */
  pkg = 0;
  {  if ( 0 != attr ) {
  masl2xtuml_O_OBJ * O_OBJ_R102_abstracts_characteristics_of = attr->O_OBJ_R102_abstracts_characteristics_of;
  if ( 0 != O_OBJ_R102_abstracts_characteristics_of ) {
  masl2xtuml_PE_PE * PE_PE_R8001 = O_OBJ_R102_abstracts_characteristics_of->PE_PE_R8001;
  if ( 0 != PE_PE_R8001 ) {
  pkg = PE_PE_R8001->EP_PKG_R8000_contained_by;
}}}}
  /* SELECT one system RELATED BY pkg->S_SYS[R1405] */
  system = ( 0 != pkg ) ? pkg->S_SYS_R1405 : 0;
  /* ASSIGN ref_attr_dt = self.SystemModel_getCoreTypeId(name:same_as<Base_Attribute>, s_sys:system) */
  ref_attr_dt = masl2xtuml_ooapopulation_op_SystemModel_getCoreTypeId(self, "same_as<Base_Attribute>", system);
  /* IF ( empty ref_attr_dt ) */
  if ( ( 0 == ref_attr_dt ) ) {
    /* TRACE::log( flavor:failure, id:42, message:Unable to locate expected data type: same_as<Base_Attribute> ) */
    TRACE_log( "failure", 42, "Unable to locate expected data type: same_as<Base_Attribute>" );
  }
  else {
    /* RELATE attr TO ref_attr_dt ACROSS R114 */
    masl2xtuml_O_ATTR_R114_Link_is_defined_by( ref_attr_dt, attr );
  }
}

/*
 * instance operation:  SystemModel_getCoreTypeId
 */
masl2xtuml_S_DT *
masl2xtuml_ooapopulation_op_SystemModel_getCoreTypeId( masl2xtuml_ooapopulation * self, c_t * p_name, masl2xtuml_S_SYS * p_s_sys )
{
  masl2xtuml_S_SYS * s_sys;masl2xtuml_S_DT * coreDt=0;
  /* ASSIGN s_sys = PARAM.s_sys */
  s_sys = p_s_sys;
  /* SELECT any coreDt FROM INSTANCES OF S_DT WHERE FALSE */
  coreDt = 0;
  /* IF ( s_sys.useGlobals ) */
  if ( s_sys->useGlobals ) {
    /* SELECT any coreDt RELATED BY s_sys->G_EIS[R9100]->PE_PE[R9100]->S_DT[R8001] WHERE ( ( SELECTED.Name == PARAM.name ) ) */
    coreDt = 0;
    {    if ( 0 != s_sys ) {
    masl2xtuml_G_EIS * G_EIS_R9100;
    Escher_Iterator_s iG_EIS_R9100;
    Escher_IteratorReset( &iG_EIS_R9100, &s_sys->G_EIS_R9100 );
    while ( ( 0 == coreDt ) && ( 0 != ( G_EIS_R9100 = (masl2xtuml_G_EIS *) Escher_IteratorNext( &iG_EIS_R9100 ) ) ) ) {
    masl2xtuml_PE_PE * PE_PE_R9100 = G_EIS_R9100->PE_PE_R9100;
    if ( 0 != PE_PE_R9100 ) {
    if ( ( 0 != PE_PE_R9100 ) && ( masl2xtuml_S_DT_CLASS_NUMBER == PE_PE_R9100->R8001_object_id ) )    {masl2xtuml_S_DT * selected = (masl2xtuml_S_DT *) PE_PE_R9100->R8001_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, p_name ) == 0 ) ) {
      coreDt = selected;
    }}
}}}}
  }
  /* RETURN coreDt */
  {masl2xtuml_S_DT * xtumlOALrv = coreDt;
  return xtumlOALrv;}
}

/*
 * instance operation:  ReferentialAttribute_combine_refs
 */
void
masl2xtuml_ooapopulation_op_ReferentialAttribute_combine_refs( masl2xtuml_ooapopulation * self, masl2xtuml_O_RATTR * p_o_rattr, masl2xtuml_O_ATTR * p_other_attr )
{
  masl2xtuml_O_REF * other_ref=0;masl2xtuml_O_ATTR * other_attr;masl2xtuml_O_RATTR * o_rattr;masl2xtuml_O_OIDA * oida=0;masl2xtuml_O_REF * next_ref=0;masl2xtuml_O_REF * ref=0;Escher_ObjectSet_s other_ref_set_space={0}; Escher_ObjectSet_s * other_ref_set = &other_ref_set_space;masl2xtuml_O_RATTR * other_rattr=0;
  /* ASSIGN o_rattr = PARAM.o_rattr */
  o_rattr = p_o_rattr;
  /* ASSIGN other_attr = PARAM.other_attr */
  other_attr = p_other_attr;
  /* SELECT one other_rattr RELATED BY other_attr->O_RATTR[R106] */
  other_rattr = 0;
  if ( ( 0 != other_attr ) && ( masl2xtuml_O_RATTR_CLASS_NUMBER == other_attr->R106_object_id ) )  other_rattr = ( 0 != other_attr ) ? (masl2xtuml_O_RATTR *) other_attr->R106_subtype : 0;
  /* SELECT many other_ref_set RELATED BY other_rattr->O_REF[R108] */
  Escher_ClearSet( other_ref_set );
  if ( 0 != other_rattr ) {
    Escher_CopySet( other_ref_set, &other_rattr->O_REF_R108_resolves_ );
  }
  /* SELECT any ref RELATED BY o_rattr->O_REF[R108] */
  ref = ( 0 != o_rattr ) ? (masl2xtuml_O_REF *) Escher_SetGetAny( &o_rattr->O_REF_R108_resolves_ ) : 0;
  /* SELECT one next_ref RELATED BY ref->O_REF[R112.precedes] */
  next_ref = ( 0 != ref ) ? ref->O_REF_R112_precedes : 0;
  /* WHILE ( not_empty next_ref ) */
  while ( ( 0 != next_ref ) ) {
    /* SELECT one next_ref RELATED BY ref->O_REF[R112.precedes] */
    next_ref = ( 0 != ref ) ? ref->O_REF_R112_precedes : 0;
    /* IF ( not_empty next_ref ) */
    if ( ( 0 != next_ref ) ) {
      /* ASSIGN ref = next_ref */
      ref = next_ref;
    }
  }
  /* FOR EACH other_ref IN other_ref_set */
  { Escher_Iterator_s iterother_ref;
  masl2xtuml_O_REF * iiother_ref;
  Escher_IteratorReset( &iterother_ref, other_ref_set );
  while ( (iiother_ref = (masl2xtuml_O_REF *)Escher_IteratorNext( &iterother_ref )) != 0 ) {
    other_ref = iiother_ref; {
    /* UNRELATE other_ref FROM other_rattr ACROSS R108 */
    masl2xtuml_O_REF_R108_Unlink_resolves_( other_rattr, other_ref );
    /* RELATE other_ref TO o_rattr ACROSS R108 */
    masl2xtuml_O_REF_R108_Link_resolves_( o_rattr, other_ref );
    /* RELATE other_ref TO ref ACROSS R112 */
    masl2xtuml_O_REF_R112_Link_succeeds( other_ref, ref );
    /* ASSIGN ref = other_ref */
    ref = other_ref;
  }}}
  /* SELECT any oida RELATED BY other_attr->O_OIDA[R105] */
  oida = ( 0 != other_attr ) ? (masl2xtuml_O_OIDA *) Escher_SetGetAny( &other_attr->O_OIDA_R105 ) : 0;
  /* IF ( not_empty oida ) */
  if ( ( 0 != oida ) ) {
    /* self.ReferentialAttribute_migrateToBase( o_rattr:other_rattr ) */
    masl2xtuml_ooapopulation_op_ReferentialAttribute_migrateToBase( self,  other_rattr );
  }
  else {
    /* self.Attribute_dispose( o_attr:other_attr ) */
    masl2xtuml_ooapopulation_op_Attribute_dispose( self,  other_attr );
  }
  Escher_ClearSet( other_ref_set ); 
}

/*
 * instance operation:  SubtypeSupertypeAssociation_formalize
 */
void
masl2xtuml_ooapopulation_op_SubtypeSupertypeAssociation_formalize( masl2xtuml_ooapopulation * self, const i_t p_id, masl2xtuml_R_SUBSUP * p_r_subsup )
{
  masl2xtuml_R_RGO * sub_rgo=0;masl2xtuml_O_OIDA * oida=0;masl2xtuml_R_SUBSUP * r_subsup;Escher_ObjectSet_s sub_rgo_set_space={0}; Escher_ObjectSet_s * sub_rgo_set = &sub_rgo_set_space;Escher_ObjectSet_s oida_set_space={0}; Escher_ObjectSet_s * oida_set = &oida_set_space;masl2xtuml_O_OBJ * sup_obj=0;masl2xtuml_R_RTO * sup_rto=0;masl2xtuml_O_ID * oid=0;
  /* ASSIGN r_subsup = PARAM.r_subsup */
  r_subsup = p_r_subsup;
  /* IF ( self.SubtypeSupertypeAssociation_isFormalized(r_subsup:r_subsup) ) */
  if ( masl2xtuml_ooapopulation_op_SubtypeSupertypeAssociation_isFormalized(self, r_subsup) ) {
    /* self.SubtypeSupertypeAssociation_unformalize( r_subsup:r_subsup ) */
    masl2xtuml_ooapopulation_op_SubtypeSupertypeAssociation_unformalize( self,  r_subsup );
  }
  /* SELECT one sup_rto RELATED BY r_subsup->R_SUPER[R212]->R_RTO[R204] */
  sup_rto = 0;
  {  if ( 0 != r_subsup ) {
  masl2xtuml_R_SUPER * R_SUPER_R212_relates = r_subsup->R_SUPER_R212_relates;
  if ( 0 != R_SUPER_R212_relates ) {
  sup_rto = R_SUPER_R212_relates->R_RTO_R204;
}}}
  /* SELECT one sup_obj RELATED BY sup_rto->R_OIR[R203]->O_OBJ[R201] */
  sup_obj = 0;
  {  if ( 0 != sup_rto ) {
  masl2xtuml_R_OIR * R_OIR_R203 = sup_rto->R_OIR_R203;
  if ( 0 != R_OIR_R203 ) {
  sup_obj = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
}}}
  /* SELECT any oid RELATED BY sup_obj->O_ID[R104] WHERE ( ( SELECTED.Oid_ID == PARAM.id ) ) */
  oid = 0;
  if ( 0 != sup_obj ) {
    masl2xtuml_O_ID * selected;
    Escher_Iterator_s iO_ID_R104_is_identified_by;
    Escher_IteratorReset( &iO_ID_R104_is_identified_by, &sup_obj->O_ID_R104_is_identified_by );
    while ( 0 != ( selected = (masl2xtuml_O_ID *) Escher_IteratorNext( &iO_ID_R104_is_identified_by ) ) ) {
      if ( ( selected->Oid_ID == p_id ) ) {
        oid = selected;
        break;
  }}}
  /* RELATE oid TO sup_rto ACROSS R109 */
  masl2xtuml_R_RTO_R109_Link_identifies_for_this_association_( oid, sup_rto );
  /* SELECT many oida_set RELATED BY oid->O_OIDA[R105] */
  Escher_ClearSet( oida_set );
  if ( 0 != oid ) {
    Escher_CopySet( oida_set, &oid->O_OIDA_R105 );
  }
  /* SELECT many sub_rgo_set RELATED BY r_subsup->R_SUB[R213]->R_RGO[R205] */
  Escher_ClearSet( sub_rgo_set );
  {  if ( 0 != r_subsup ) {
  masl2xtuml_R_SUB * R_SUB_R213_relates;
  Escher_Iterator_s iR_SUB_R213_relates;
  Escher_IteratorReset( &iR_SUB_R213_relates, &r_subsup->R_SUB_R213_relates );
  while ( 0 != ( R_SUB_R213_relates = (masl2xtuml_R_SUB *) Escher_IteratorNext( &iR_SUB_R213_relates ) ) ) {
  {masl2xtuml_R_RGO * R_RGO_R205 = R_SUB_R213_relates->R_RGO_R205;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) sub_rgo_set, R_RGO_R205 ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) sub_rgo_set, R_RGO_R205 );
  }}}}}
  /* FOR EACH oida IN oida_set */
  { Escher_Iterator_s iteroida;
  masl2xtuml_O_OIDA * iioida;
  Escher_IteratorReset( &iteroida, oida_set );
  while ( (iioida = (masl2xtuml_O_OIDA *)Escher_IteratorNext( &iteroida )) != 0 ) {
    oida = iioida; {
    masl2xtuml_O_RTIDA * rtida;
    /* CREATE OBJECT INSTANCE rtida OF O_RTIDA */
    rtida = (masl2xtuml_O_RTIDA *) Escher_CreateInstance( masl2xtuml_DOMAIN_ID, masl2xtuml_O_RTIDA_CLASS_NUMBER );
    rtida->Attr_ID = (Escher_UniqueID_t) rtida;
rtida->Obj_ID = (Escher_UniqueID_t) rtida;
rtida->Rel_ID = (Escher_UniqueID_t) rtida;
rtida->OIR_ID = (Escher_UniqueID_t) rtida;
    /* RELATE oida TO sup_rto ACROSS R110 USING rtida */
    masl2xtuml_O_RTIDA_R110_Link( sup_rto, oida, rtida );
  }}}
  /* FOR EACH sub_rgo IN sub_rgo_set */
  { Escher_Iterator_s itersub_rgo;
  masl2xtuml_R_RGO * iisub_rgo;
  Escher_IteratorReset( &itersub_rgo, sub_rgo_set );
  while ( (iisub_rgo = (masl2xtuml_R_RGO *)Escher_IteratorNext( &itersub_rgo )) != 0 ) {
    sub_rgo = iisub_rgo; {
    masl2xtuml_O_OBJ * sub_obj=0;
    /* SELECT one sub_obj RELATED BY sub_rgo->R_OIR[R203]->O_OBJ[R201] */
    sub_obj = 0;
    {    if ( 0 != sub_rgo ) {
    masl2xtuml_R_OIR * R_OIR_R203 = sub_rgo->R_OIR_R203;
    if ( 0 != R_OIR_R203 ) {
    sub_obj = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
}}}
    /* FOR EACH oida IN oida_set */
    { Escher_Iterator_s iteroida;
    masl2xtuml_O_OIDA * iioida;
    Escher_IteratorReset( &iteroida, oida_set );
    while ( (iioida = (masl2xtuml_O_OIDA *)Escher_IteratorNext( &iteroida )) != 0 ) {
      oida = iioida; {
      masl2xtuml_O_RATTR * newAttr;masl2xtuml_R_REL * rel=0;
      /* SELECT one rel RELATED BY r_subsup->R_REL[R206] */
      rel = ( 0 != r_subsup ) ? r_subsup->R_REL_R206 : 0;
      /* SELECT one sub_obj RELATED BY sub_rgo->R_OIR[R203]->O_OBJ[R201] */
      sub_obj = 0;
      {      if ( 0 != sub_rgo ) {
      masl2xtuml_R_OIR * R_OIR_R203 = sub_rgo->R_OIR_R203;
      if ( 0 != R_OIR_R203 ) {
      sub_obj = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
}}}
      /* ASSIGN newAttr = self.ClassIdentifierAttribute_addReference(form_obj:sub_obj, form_rgo:sub_rgo, id:- 1, o_oida:oida, part_obj:sup_obj, part_rto:sup_rto, rel:rel) */
      newAttr = masl2xtuml_ooapopulation_op_ClassIdentifierAttribute_addReference(self, sub_obj, sub_rgo, -1, oida, sup_obj, sup_rto, rel);
    }}}
  }}}
  Escher_ClearSet( sub_rgo_set ); Escher_ClearSet( oida_set ); 
}

/*
 * instance operation:  SubtypeSupertypeAssociation_isFormalized
 */
bool
masl2xtuml_ooapopulation_op_SubtypeSupertypeAssociation_isFormalized( masl2xtuml_ooapopulation * self, masl2xtuml_R_SUBSUP * p_r_subsup )
{
  masl2xtuml_R_SUBSUP * r_subsup;masl2xtuml_O_RTIDA * rtida=0;masl2xtuml_R_RTO * rto=0;
  /* ASSIGN r_subsup = PARAM.r_subsup */
  r_subsup = p_r_subsup;
  /* SELECT one rto RELATED BY r_subsup->R_SUPER[R212]->R_RTO[R204] */
  rto = 0;
  {  if ( 0 != r_subsup ) {
  masl2xtuml_R_SUPER * R_SUPER_R212_relates = r_subsup->R_SUPER_R212_relates;
  if ( 0 != R_SUPER_R212_relates ) {
  rto = R_SUPER_R212_relates->R_RTO_R204;
}}}
  /* SELECT any rtida RELATED BY rto->O_RTIDA[R110] */
  rtida = ( 0 != rto ) ? (masl2xtuml_O_RTIDA *) Escher_SetGetAny( &rto->O_RTIDA_R110 ) : 0;
  /* RETURN not_empty rtida */
  {bool xtumlOALrv = ( 0 != rtida );
  return xtumlOALrv;}
}

/*
 * instance operation:  SubtypeSupertypeAssociation_unformalize
 */
void
masl2xtuml_ooapopulation_op_SubtypeSupertypeAssociation_unformalize( masl2xtuml_ooapopulation * self, masl2xtuml_R_SUBSUP * p_r_subsup )
{
  masl2xtuml_R_SUBSUP * r_subsup;masl2xtuml_R_OIR * sup_oir=0;masl2xtuml_R_RTO * sup_rto=0;
  /* ASSIGN r_subsup = PARAM.r_subsup */
  r_subsup = p_r_subsup;
  /* SELECT one sup_rto RELATED BY r_subsup->R_SUPER[R212]->R_RTO[R204] */
  sup_rto = 0;
  {  if ( 0 != r_subsup ) {
  masl2xtuml_R_SUPER * R_SUPER_R212_relates = r_subsup->R_SUPER_R212_relates;
  if ( 0 != R_SUPER_R212_relates ) {
  sup_rto = R_SUPER_R212_relates->R_RTO_R204;
}}}
  /* SELECT one sup_oir RELATED BY sup_rto->R_OIR[R203] */
  sup_oir = ( 0 != sup_rto ) ? sup_rto->R_OIR_R203 : 0;
  /* self.ReferredToClassInAssoc_unformalize( r_rto:sup_rto ) */
  masl2xtuml_ooapopulation_op_ReferredToClassInAssoc_unformalize( self,  sup_rto );
  /* RELATE sup_oir TO sup_rto ACROSS R203 */
  masl2xtuml_R_RTO_R203_Link( sup_oir, sup_rto );
}

/*
 * instance operation:  ModelClass_removeDuplicateAttrs
 */
void
masl2xtuml_ooapopulation_op_ModelClass_removeDuplicateAttrs( masl2xtuml_ooapopulation * self, masl2xtuml_O_OBJ * p_o_obj )
{
  masl2xtuml_O_ATTR * battr=0;masl2xtuml_O_OBJ * o_obj;Escher_ObjectSet_s rattrs_space={0}; Escher_ObjectSet_s * rattrs = &rattrs_space;Escher_ObjectSet_s battrs_space={0}; Escher_ObjectSet_s * battrs = &battrs_space;
  /* ASSIGN o_obj = PARAM.o_obj */
  o_obj = p_o_obj;
  /* SELECT many battrs RELATED BY o_obj->O_ATTR[R102]->O_BATTR[R106]->O_ATTR[R106] */
  Escher_ClearSet( battrs );
  {  if ( 0 != o_obj ) {
  masl2xtuml_O_ATTR * O_ATTR_R102_has_characteristics_abstracted_by;
  Escher_Iterator_s iO_ATTR_R102_has_characteristics_abstracted_by;
  Escher_IteratorReset( &iO_ATTR_R102_has_characteristics_abstracted_by, &o_obj->O_ATTR_R102_has_characteristics_abstracted_by );
  while ( 0 != ( O_ATTR_R102_has_characteristics_abstracted_by = (masl2xtuml_O_ATTR *) Escher_IteratorNext( &iO_ATTR_R102_has_characteristics_abstracted_by ) ) ) {
  masl2xtuml_O_BATTR * R106_subtype = (masl2xtuml_O_BATTR *) O_ATTR_R102_has_characteristics_abstracted_by->R106_subtype;
  if ( 0 != R106_subtype )  if ( ( 0 != O_ATTR_R102_has_characteristics_abstracted_by ) && ( masl2xtuml_O_BATTR_CLASS_NUMBER == O_ATTR_R102_has_characteristics_abstracted_by->R106_object_id ) ) {
  {masl2xtuml_O_ATTR * O_ATTR_R106 = R106_subtype->O_ATTR_R106;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) battrs, O_ATTR_R106 ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) battrs, O_ATTR_R106 );
  }}}}}}
  /* SELECT many rattrs RELATED BY o_obj->O_ATTR[R102]->O_RATTR[R106]->O_ATTR[R106] */
  Escher_ClearSet( rattrs );
  {  if ( 0 != o_obj ) {
  masl2xtuml_O_ATTR * O_ATTR_R102_has_characteristics_abstracted_by;
  Escher_Iterator_s iO_ATTR_R102_has_characteristics_abstracted_by;
  Escher_IteratorReset( &iO_ATTR_R102_has_characteristics_abstracted_by, &o_obj->O_ATTR_R102_has_characteristics_abstracted_by );
  while ( 0 != ( O_ATTR_R102_has_characteristics_abstracted_by = (masl2xtuml_O_ATTR *) Escher_IteratorNext( &iO_ATTR_R102_has_characteristics_abstracted_by ) ) ) {
  masl2xtuml_O_RATTR * R106_subtype = (masl2xtuml_O_RATTR *) O_ATTR_R102_has_characteristics_abstracted_by->R106_subtype;
  if ( 0 != R106_subtype )  if ( ( 0 != O_ATTR_R102_has_characteristics_abstracted_by ) && ( masl2xtuml_O_RATTR_CLASS_NUMBER == O_ATTR_R102_has_characteristics_abstracted_by->R106_object_id ) ) {
  {masl2xtuml_O_ATTR * O_ATTR_R106 = R106_subtype->O_ATTR_R106;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) rattrs, O_ATTR_R106 ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) rattrs, O_ATTR_R106 );
  }}}}}}
  /* FOR EACH battr IN battrs */
  { Escher_Iterator_s iterbattr;
  masl2xtuml_O_ATTR * iibattr;
  Escher_IteratorReset( &iterbattr, battrs );
  while ( (iibattr = (masl2xtuml_O_ATTR *)Escher_IteratorNext( &iterbattr )) != 0 ) {
    battr = iibattr; {
    masl2xtuml_O_ATTR * rattr=0;
    /* FOR EACH rattr IN rattrs */
    { Escher_Iterator_s iterrattr;
    masl2xtuml_O_ATTR * iirattr;
    Escher_IteratorReset( &iterrattr, rattrs );
    while ( (iirattr = (masl2xtuml_O_ATTR *)Escher_IteratorNext( &iterrattr )) != 0 ) {
      rattr = iirattr; {
      /* IF ( ( rattr.Root_Nam == battr.Root_Nam ) ) */
      if ( ( Escher_strcmp( rattr->Root_Nam, battr->Root_Nam ) == 0 ) ) {
        /* self.Attribute_dispose( o_attr:battr ) */
        masl2xtuml_ooapopulation_op_Attribute_dispose( self,  battr );
      }
    }}}
  }}}
  Escher_ClearSet( rattrs ); Escher_ClearSet( battrs ); 
}

/*
 * instance operation:  LinkedAssociation_formalize
 */
void
masl2xtuml_ooapopulation_op_LinkedAssociation_formalize( masl2xtuml_ooapopulation * self, const i_t p_one_id, const i_t p_oth_id, masl2xtuml_R_ASSOC * p_r_assoc )
{
  masl2xtuml_O_OIDA * oida=0;masl2xtuml_R_ASSOC * r_assoc;Escher_ObjectSet_s aoth_oida_set_space={0}; Escher_ObjectSet_s * aoth_oida_set = &aoth_oida_set_space;Escher_ObjectSet_s aone_oida_set_space={0}; Escher_ObjectSet_s * aone_oida_set = &aone_oida_set_space;masl2xtuml_R_REL * rel=0;masl2xtuml_O_OBJ * assr_obj=0;masl2xtuml_R_RGO * assr_rgo=0;masl2xtuml_O_OBJ * aoth_obj=0;masl2xtuml_R_RTO * aoth_rto=0;masl2xtuml_O_OBJ * aone_obj=0;masl2xtuml_R_RTO * aone_rto=0;masl2xtuml_O_ID * aoth_oid=0;masl2xtuml_O_ID * aone_oid=0;
  /* ASSIGN r_assoc = PARAM.r_assoc */
  r_assoc = p_r_assoc;
  /* IF ( self.LinkedAssociation_isFormalized(r_assoc:r_assoc) ) */
  if ( masl2xtuml_ooapopulation_op_LinkedAssociation_isFormalized(self, r_assoc) ) {
    /* self.LinkedAssociation_unformalize( r_assoc:r_assoc ) */
    masl2xtuml_ooapopulation_op_LinkedAssociation_unformalize( self,  r_assoc );
  }
  /* SELECT one aone_rto RELATED BY r_assoc->R_AONE[R209]->R_RTO[R204] */
  aone_rto = 0;
  {  if ( 0 != r_assoc ) {
  masl2xtuml_R_AONE * R_AONE_R209_relates = r_assoc->R_AONE_R209_relates;
  if ( 0 != R_AONE_R209_relates ) {
  aone_rto = R_AONE_R209_relates->R_RTO_R204;
}}}
  /* SELECT one aone_obj RELATED BY aone_rto->R_OIR[R203]->O_OBJ[R201] */
  aone_obj = 0;
  {  if ( 0 != aone_rto ) {
  masl2xtuml_R_OIR * R_OIR_R203 = aone_rto->R_OIR_R203;
  if ( 0 != R_OIR_R203 ) {
  aone_obj = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
}}}
  /* SELECT any aone_oid RELATED BY aone_obj->O_ID[R104] WHERE ( ( SELECTED.Oid_ID == PARAM.one_id ) ) */
  aone_oid = 0;
  if ( 0 != aone_obj ) {
    masl2xtuml_O_ID * selected;
    Escher_Iterator_s iO_ID_R104_is_identified_by;
    Escher_IteratorReset( &iO_ID_R104_is_identified_by, &aone_obj->O_ID_R104_is_identified_by );
    while ( 0 != ( selected = (masl2xtuml_O_ID *) Escher_IteratorNext( &iO_ID_R104_is_identified_by ) ) ) {
      if ( ( selected->Oid_ID == p_one_id ) ) {
        aone_oid = selected;
        break;
  }}}
  /* RELATE aone_oid TO aone_rto ACROSS R109 */
  masl2xtuml_R_RTO_R109_Link_identifies_for_this_association_( aone_oid, aone_rto );
  /* SELECT one aoth_rto RELATED BY r_assoc->R_AOTH[R210]->R_RTO[R204] */
  aoth_rto = 0;
  {  if ( 0 != r_assoc ) {
  masl2xtuml_R_AOTH * R_AOTH_R210_relates = r_assoc->R_AOTH_R210_relates;
  if ( 0 != R_AOTH_R210_relates ) {
  aoth_rto = R_AOTH_R210_relates->R_RTO_R204;
}}}
  /* SELECT one aoth_obj RELATED BY aoth_rto->R_OIR[R203]->O_OBJ[R201] */
  aoth_obj = 0;
  {  if ( 0 != aoth_rto ) {
  masl2xtuml_R_OIR * R_OIR_R203 = aoth_rto->R_OIR_R203;
  if ( 0 != R_OIR_R203 ) {
  aoth_obj = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
}}}
  /* SELECT any aoth_oid RELATED BY aoth_obj->O_ID[R104] WHERE ( ( SELECTED.Oid_ID == PARAM.oth_id ) ) */
  aoth_oid = 0;
  if ( 0 != aoth_obj ) {
    masl2xtuml_O_ID * selected;
    Escher_Iterator_s iO_ID_R104_is_identified_by;
    Escher_IteratorReset( &iO_ID_R104_is_identified_by, &aoth_obj->O_ID_R104_is_identified_by );
    while ( 0 != ( selected = (masl2xtuml_O_ID *) Escher_IteratorNext( &iO_ID_R104_is_identified_by ) ) ) {
      if ( ( selected->Oid_ID == p_oth_id ) ) {
        aoth_oid = selected;
        break;
  }}}
  /* RELATE aoth_oid TO aoth_rto ACROSS R109 */
  masl2xtuml_R_RTO_R109_Link_identifies_for_this_association_( aoth_oid, aoth_rto );
  /* SELECT one assr_rgo RELATED BY r_assoc->R_ASSR[R211]->R_RGO[R205] */
  assr_rgo = 0;
  {  if ( 0 != r_assoc ) {
  masl2xtuml_R_ASSR * R_ASSR_R211_uses_a_formalizer = r_assoc->R_ASSR_R211_uses_a_formalizer;
  if ( 0 != R_ASSR_R211_uses_a_formalizer ) {
  assr_rgo = R_ASSR_R211_uses_a_formalizer->R_RGO_R205;
}}}
  /* SELECT one assr_obj RELATED BY assr_rgo->R_OIR[R203]->O_OBJ[R201] */
  assr_obj = 0;
  {  if ( 0 != assr_rgo ) {
  masl2xtuml_R_OIR * R_OIR_R203 = assr_rgo->R_OIR_R203;
  if ( 0 != R_OIR_R203 ) {
  assr_obj = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
}}}
  /* SELECT one rel RELATED BY r_assoc->R_REL[R206] */
  rel = ( 0 != r_assoc ) ? r_assoc->R_REL_R206 : 0;
  /* SELECT many aone_oida_set RELATED BY aone_oid->O_OIDA[R105] */
  Escher_ClearSet( aone_oida_set );
  if ( 0 != aone_oid ) {
    Escher_CopySet( aone_oida_set, &aone_oid->O_OIDA_R105 );
  }
  /* FOR EACH oida IN aone_oida_set */
  { Escher_Iterator_s iteroida;
  masl2xtuml_O_OIDA * iioida;
  Escher_IteratorReset( &iteroida, aone_oida_set );
  while ( (iioida = (masl2xtuml_O_OIDA *)Escher_IteratorNext( &iteroida )) != 0 ) {
    oida = iioida; {
    masl2xtuml_O_RATTR * newAttr;
    /* ASSIGN newAttr = self.ClassIdentifierAttribute_addReference(form_obj:assr_obj, form_rgo:assr_rgo, id:- 1, o_oida:oida, part_obj:aone_obj, part_rto:aone_rto, rel:rel) */
    newAttr = masl2xtuml_ooapopulation_op_ClassIdentifierAttribute_addReference(self, assr_obj, assr_rgo, -1, oida, aone_obj, aone_rto, rel);
  }}}
  /* SELECT many aoth_oida_set RELATED BY aoth_oid->O_OIDA[R105] */
  Escher_ClearSet( aoth_oida_set );
  if ( 0 != aoth_oid ) {
    Escher_CopySet( aoth_oida_set, &aoth_oid->O_OIDA_R105 );
  }
  /* FOR EACH oida IN aoth_oida_set */
  { Escher_Iterator_s iteroida;
  masl2xtuml_O_OIDA * iioida;
  Escher_IteratorReset( &iteroida, aoth_oida_set );
  while ( (iioida = (masl2xtuml_O_OIDA *)Escher_IteratorNext( &iteroida )) != 0 ) {
    oida = iioida; {
    masl2xtuml_O_RATTR * newAttr;
    /* ASSIGN newAttr = self.ClassIdentifierAttribute_addReference(form_obj:assr_obj, form_rgo:assr_rgo, id:- 1, o_oida:oida, part_obj:aoth_obj, part_rto:aoth_rto, rel:rel) */
    newAttr = masl2xtuml_ooapopulation_op_ClassIdentifierAttribute_addReference(self, assr_obj, assr_rgo, -1, oida, aoth_obj, aoth_rto, rel);
  }}}
  Escher_ClearSet( aoth_oida_set ); Escher_ClearSet( aone_oida_set ); 
}

/*
 * instance operation:  LinkedAssociation_isFormalized
 */
bool
masl2xtuml_ooapopulation_op_LinkedAssociation_isFormalized( masl2xtuml_ooapopulation * self, masl2xtuml_R_ASSOC * p_r_assoc )
{
  masl2xtuml_R_ASSOC * r_assoc;masl2xtuml_O_RTIDA * rtida2=0;masl2xtuml_R_RTO * rto2=0;masl2xtuml_O_RTIDA * rtida1=0;masl2xtuml_R_RTO * rto1=0;
  /* ASSIGN r_assoc = PARAM.r_assoc */
  r_assoc = p_r_assoc;
  /* SELECT one rto1 RELATED BY r_assoc->R_AONE[R209]->R_RTO[R204] */
  rto1 = 0;
  {  if ( 0 != r_assoc ) {
  masl2xtuml_R_AONE * R_AONE_R209_relates = r_assoc->R_AONE_R209_relates;
  if ( 0 != R_AONE_R209_relates ) {
  rto1 = R_AONE_R209_relates->R_RTO_R204;
}}}
  /* SELECT any rtida1 RELATED BY rto1->O_RTIDA[R110] */
  rtida1 = ( 0 != rto1 ) ? (masl2xtuml_O_RTIDA *) Escher_SetGetAny( &rto1->O_RTIDA_R110 ) : 0;
  /* SELECT one rto2 RELATED BY r_assoc->R_AOTH[R210]->R_RTO[R204] */
  rto2 = 0;
  {  if ( 0 != r_assoc ) {
  masl2xtuml_R_AOTH * R_AOTH_R210_relates = r_assoc->R_AOTH_R210_relates;
  if ( 0 != R_AOTH_R210_relates ) {
  rto2 = R_AOTH_R210_relates->R_RTO_R204;
}}}
  /* SELECT any rtida2 RELATED BY rto2->O_RTIDA[R110] */
  rtida2 = ( 0 != rto2 ) ? (masl2xtuml_O_RTIDA *) Escher_SetGetAny( &rto2->O_RTIDA_R110 ) : 0;
  /* RETURN ( not_empty rtida1 and not_empty rtida2 ) */
  {bool xtumlOALrv = ( ( 0 != rtida1 ) && ( 0 != rtida2 ) );
  return xtumlOALrv;}
}

/*
 * instance operation:  LinkedAssociation_unformalize
 */
void
masl2xtuml_ooapopulation_op_LinkedAssociation_unformalize( masl2xtuml_ooapopulation * self, masl2xtuml_R_ASSOC * p_r_assoc )
{
  masl2xtuml_R_ASSOC * r_assoc;masl2xtuml_R_OIR * aoth_oir=0;masl2xtuml_R_RTO * aoth_rto=0;masl2xtuml_R_OIR * aone_oir=0;masl2xtuml_R_RTO * aone_rto=0;
  /* ASSIGN r_assoc = PARAM.r_assoc */
  r_assoc = p_r_assoc;
  /* SELECT one aone_rto RELATED BY r_assoc->R_AONE[R209]->R_RTO[R204] */
  aone_rto = 0;
  {  if ( 0 != r_assoc ) {
  masl2xtuml_R_AONE * R_AONE_R209_relates = r_assoc->R_AONE_R209_relates;
  if ( 0 != R_AONE_R209_relates ) {
  aone_rto = R_AONE_R209_relates->R_RTO_R204;
}}}
  /* SELECT one aone_oir RELATED BY aone_rto->R_OIR[R203] */
  aone_oir = ( 0 != aone_rto ) ? aone_rto->R_OIR_R203 : 0;
  /* SELECT one aoth_rto RELATED BY r_assoc->R_AOTH[R210]->R_RTO[R204] */
  aoth_rto = 0;
  {  if ( 0 != r_assoc ) {
  masl2xtuml_R_AOTH * R_AOTH_R210_relates = r_assoc->R_AOTH_R210_relates;
  if ( 0 != R_AOTH_R210_relates ) {
  aoth_rto = R_AOTH_R210_relates->R_RTO_R204;
}}}
  /* SELECT one aoth_oir RELATED BY aoth_rto->R_OIR[R203] */
  aoth_oir = ( 0 != aoth_rto ) ? aoth_rto->R_OIR_R203 : 0;
  /* self.ReferredToClassInAssoc_unformalize( r_rto:aone_rto ) */
  masl2xtuml_ooapopulation_op_ReferredToClassInAssoc_unformalize( self,  aone_rto );
  /* self.ReferredToClassInAssoc_unformalize( r_rto:aoth_rto ) */
  masl2xtuml_ooapopulation_op_ReferredToClassInAssoc_unformalize( self,  aoth_rto );
  /* RELATE aone_oir TO aone_rto ACROSS R203 */
  masl2xtuml_R_RTO_R203_Link( aone_oir, aone_rto );
  /* RELATE aoth_oir TO aoth_rto ACROSS R203 */
  masl2xtuml_R_RTO_R203_Link( aoth_oir, aoth_rto );
}

/*
 * Dump instances in SQL format.
 */
void
masl2xtuml_ooapopulation_instancedumper( Escher_iHandle_t instance )
{
  masl2xtuml_ooapopulation * self = (masl2xtuml_ooapopulation *) instance;
}

/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      ooapopulation  (ooapopulation)
 * Component:  masl2xtuml
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s masl2xtuml_ooapopulation_container[ masl2xtuml_ooapopulation_MAX_EXTENT_SIZE ];
static masl2xtuml_ooapopulation masl2xtuml_ooapopulation_instances[ masl2xtuml_ooapopulation_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_masl2xtuml_ooapopulation_extent = {
  {0,0}, {0,0}, &masl2xtuml_ooapopulation_container[ 0 ],
  (Escher_iHandle_t) &masl2xtuml_ooapopulation_instances,
  sizeof( masl2xtuml_ooapopulation ), 0, masl2xtuml_ooapopulation_MAX_EXTENT_SIZE
  };

