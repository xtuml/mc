/*----------------------------------------------------------------------------
 * File:  maslin_ooapopulation_class.c
 *
 * Class:       ooapopulation  (ooapopulation)
 * Component:   maslin
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "maslin_sys_types.h"
#include "LOG_bridge.h"
#include "STRING_bridge.h"
#include "TRACE_bridge.h"
#include "maslin_classes.h"

/*
 * Instance Loader (from string data).
 */
Escher_iHandle_t
maslin_ooapopulation_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  maslin_ooapopulation * self = (maslin_ooapopulation *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_memset( &self->current_sys, avlstring[ 1 ], sizeof( self->current_sys ) );
  Escher_memset( &self->lib_pkg, avlstring[ 1 ], sizeof( self->lib_pkg ) );
  Escher_memset( &self->systypes_pkg, avlstring[ 1 ], sizeof( self->systypes_pkg ) );
  Escher_memset( &self->wiring_pkg, avlstring[ 1 ], sizeof( self->wiring_pkg ) );
  Escher_memset( &self->current_attribute, avlstring[ 1 ], sizeof( self->current_attribute ) );
  Escher_memset( &self->current_class, avlstring[ 1 ], sizeof( self->current_class ) );
  Escher_memset( &self->current_class_op, avlstring[ 1 ], sizeof( self->current_class_op ) );
  Escher_memset( &self->current_component, avlstring[ 1 ], sizeof( self->current_component ) );
  Escher_memset( &self->current_domain_function, avlstring[ 1 ], sizeof( self->current_domain_function ) );
  self->processingIdentifier = Escher_atoi( avlstring[ 1 ] );
  self->processingISM = ( '0' != *avlstring[ 2 ] );
  return return_identifier;
}

/*
 * class operation:  populate
 */
void
maslin_ooapopulation_op_populate( c_t * p_element, c_t p_value[8][ESCHER_SYS_MAX_STRING_LEN] )
{
  c_t * value[8]={0,0,0,0,0,0,0,0};c_t * element=0;maslin_ooapopulation * ooapopulation=0;
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
  ooapopulation = (maslin_ooapopulation *) Escher_SetGetAny( &pG_maslin_ooapopulation_extent.active );
  /* IF ( empty ooapopulation ) */
  if ( ( 0 == ooapopulation ) ) {
    /* CREATE OBJECT INSTANCE ooapopulation OF ooapopulation */
    ooapopulation = (maslin_ooapopulation *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_ooapopulation_CLASS_NUMBER );
    /* ASSIGN ooapopulation.processingIdentifier = - 1 */
    ooapopulation->processingIdentifier = -1;
    /* ASSIGN ooapopulation.processingISM = TRUE */
    ooapopulation->processingISM = TRUE;
  }
  /* IF ( ( project == element ) ) */
  if ( ( Escher_strcmp( "project", element ) == 0 ) ) {
    /* IF ( (  != PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) != 0 ) ) {
      /* ooapopulation.transformProject( name:PARAM.value[0] ) */
      maslin_ooapopulation_op_transformProject( ooapopulation,  p_value[0] );
    }
  }
  else if ( ( Escher_strcmp( "domain", element ) == 0 ) ) {
    /* IF ( (  == PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) == 0 ) ) {
      maslin_C_C * c_c=0;
      /* SELECT any c_c FROM INSTANCES OF C_C WHERE FALSE */
      c_c = 0;
      /* ASSIGN ooapopulation.current_component = c_c */
      ooapopulation->current_component = c_c;
    }
    else {
      /* ooapopulation.transformDomain( name:PARAM.value[0] ) */
      maslin_ooapopulation_op_transformDomain( ooapopulation,  p_value[0] );
    }
  }
  else if ( ( Escher_strcmp( "object", element ) == 0 ) ) {
    /* IF ( (  == PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) == 0 ) ) {
      maslin_O_OBJ * o_obj=0;
      /* SELECT any o_obj FROM INSTANCES OF O_OBJ WHERE FALSE */
      o_obj = 0;
      /* ASSIGN ooapopulation.current_class = o_obj */
      ooapopulation->current_class = o_obj;
      /* ASSIGN ooapopulation.processingIdentifier = - 1 */
      ooapopulation->processingIdentifier = -1;
    }
    else {
      /* ooapopulation.transformObject( name:PARAM.value[0] ) */
      maslin_ooapopulation_op_transformObject( ooapopulation,  p_value[0] );
    }
  }
  else if ( ( Escher_strcmp( "terminator", element ) == 0 ) ) {
    /* IF ( (  != PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) != 0 ) ) {
      /* ooapopulation.transformTerminator( name:PARAM.value[0] ) */
      maslin_ooapopulation_op_transformTerminator( ooapopulation,  p_value[0] );
    }
  }
  else if ( ( Escher_strcmp( "activity", element ) == 0 ) ) {
    /* IF ( (  != PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) != 0 ) ) {
      /* ooapopulation.transformActivity() */
      maslin_ooapopulation_op_transformActivity( ooapopulation );
    }
  }
  else if ( ( Escher_strcmp( "parameter", element ) == 0 ) ) {
    /* IF ( (  != PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) != 0 ) ) {
      /* ooapopulation.transformParameter( direction:PARAM.value[1], name:PARAM.value[0] ) */
      maslin_ooapopulation_op_transformParameter( ooapopulation,  p_value[1], p_value[0] );
    }
  }
  else if ( ( Escher_strcmp( "identifier", element ) == 0 ) ) {
    /* IF ( (  != PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) != 0 ) ) {
      /* ASSIGN ooapopulation.processingIdentifier = ( ooapopulation.processingIdentifier + 1 ) */
      ooapopulation->processingIdentifier = ( ooapopulation->processingIdentifier + 1 );
      /* IF ( ( 3 == ooapopulation.processingIdentifier ) ) */
      if ( ( 3 == ooapopulation->processingIdentifier ) ) {
        /* ASSIGN ooapopulation.processingIdentifier = 2 */
        ooapopulation->processingIdentifier = 2;
      }
    }
  }
  else if ( ( Escher_strcmp( "attribute", element ) == 0 ) ) {
    /* IF ( (  == PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) == 0 ) ) {
      maslin_O_ATTR * o_attr=0;
      /* SELECT any o_attr FROM INSTANCES OF O_ATTR WHERE FALSE */
      o_attr = 0;
      /* ASSIGN ooapopulation.current_attribute = o_attr */
      ooapopulation->current_attribute = o_attr;
    }
    else {
      /* IF ( ( ooapopulation.processingIdentifier >= 0 ) ) */
      if ( ( ooapopulation->processingIdentifier >= 0 ) ) {
        maslin_O_OBJ * o_obj;maslin_O_ATTR * o_attr=0;
        /* ASSIGN o_obj = ooapopulation.current_class */
        o_obj = ooapopulation->current_class;
        /* SELECT any o_attr RELATED BY o_obj->O_ATTR[R102] WHERE ( ( SELECTED.Name == PARAM.value[0] ) ) */
        o_attr = 0;
        if ( 0 != o_obj ) {
          maslin_O_ATTR * selected;
          Escher_Iterator_s iO_ATTR_R102_has_characteristics_abstracted_by;
          Escher_IteratorReset( &iO_ATTR_R102_has_characteristics_abstracted_by, &o_obj->O_ATTR_R102_has_characteristics_abstracted_by );
          while ( 0 != ( selected = (maslin_O_ATTR *) Escher_IteratorNext( &iO_ATTR_R102_has_characteristics_abstracted_by ) ) ) {
            if ( ( Escher_strcmp( selected->Name, p_value[0] ) == 0 ) ) {
              o_attr = selected;
              break;
        }}}
        /* ooapopulation.Attribute_addToIdentifier( o_attr:o_attr, oid:ooapopulation.processingIdentifier ) */
        maslin_ooapopulation_op_Attribute_addToIdentifier( ooapopulation,  o_attr, ooapopulation->processingIdentifier );
      }
      else {
        /* ooapopulation.transformAttribute( initialization:PARAM.value[3], name:PARAM.value[0], preferred:PARAM.value[1], unique:PARAM.value[2] ) */
        maslin_ooapopulation_op_transformAttribute( ooapopulation,  p_value[3], p_value[0], p_value[1], p_value[2] );
      }
    }
  }
  else if ( ( Escher_strcmp( "state", element ) == 0 ) ) {
    /* IF ( (  != PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) != 0 ) ) {
      /* ooapopulation.transformState( name:PARAM.value[0], type:PARAM.value[1] ) */
      maslin_ooapopulation_op_transformState( ooapopulation,  p_value[0], p_value[1] );
    }
  }
  else if ( ( Escher_strcmp( "event", element ) == 0 ) ) {
    /* IF ( (  != PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) != 0 ) ) {
      /* ooapopulation.transformEvent( name:PARAM.value[0], type:PARAM.value[1] ) */
      maslin_ooapopulation_op_transformEvent( ooapopulation,  p_value[0], p_value[1] );
    }
  }
  else if ( ( Escher_strcmp( "type", element ) == 0 ) ) {
    /* IF ( (  != PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) != 0 ) ) {
      /* ooapopulation.transformType( name:PARAM.value[0], visibility:PARAM.value[1] ) */
      maslin_ooapopulation_op_transformType( ooapopulation,  p_value[0], p_value[1] );
    }
  }
  else if ( ( Escher_strcmp( "typeref", element ) == 0 ) ) {
    /* IF ( (  != PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) != 0 ) ) {
      maslin_O_ATTR * o_attr;
      /* ooapopulation.transformType( name:PARAM.value[0], visibility:public ) */
      maslin_ooapopulation_op_transformType( ooapopulation,  p_value[0], "public" );
      /* ASSIGN o_attr = ooapopulation.current_attribute */
      o_attr = ooapopulation->current_attribute;
      /* IF ( not_empty o_attr ) */
      if ( ( 0 != o_attr ) ) {
        /* ooapopulation.Attribute_setType( o_attr:ooapopulation.current_attribute, type_name:PARAM.value[0] ) */
        maslin_ooapopulation_op_Attribute_setType( ooapopulation,  ooapopulation->current_attribute, p_value[0] );
      }
    }
  }
  else if ( ( Escher_strcmp( "routine", element ) == 0 ) ) {
    /* IF ( (  == PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) == 0 ) ) {
      maslin_S_SYNC * s_sync=0;
      /* SELECT any s_sync FROM INSTANCES OF S_SYNC WHERE FALSE */
      s_sync = 0;
      /* ASSIGN ooapopulation.current_domain_function = s_sync */
      ooapopulation->current_domain_function = s_sync;
    }
    else {
      /* ooapopulation.transformDomainFunction( instance:PARAM.value[2], name:PARAM.value[1], relationship:PARAM.value[3], visibility:PARAM.value[0] ) */
      maslin_ooapopulation_op_transformDomainFunction( ooapopulation,  p_value[2], p_value[1], p_value[3], p_value[0] );
    }
  }
  else if ( ( Escher_strcmp( "operation", element ) == 0 ) ) {
    /* IF ( (  == PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) == 0 ) ) {
      maslin_O_TFR * o_tfr=0;
      /* SELECT any o_tfr FROM INSTANCES OF O_TFR WHERE FALSE */
      o_tfr = 0;
      /* ASSIGN ooapopulation.current_class_op = o_tfr */
      ooapopulation->current_class_op = o_tfr;
    }
    else {
      maslin_O_OBJ * clazz;
      /* ASSIGN clazz = ooapopulation.current_class */
      clazz = ooapopulation->current_class;
      /* IF ( not_empty clazz ) */
      if ( ( 0 != clazz ) ) {
        /* ooapopulation.transformObjectFunction( instance:PARAM.value[2], name:PARAM.value[1], relationship:PARAM.value[3], visibility:PARAM.value[0] ) */
        maslin_ooapopulation_op_transformObjectFunction( ooapopulation,  p_value[2], p_value[1], p_value[3], p_value[0] );
      }
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
    /* ooapopulation.transformTransition( endState:PARAM.value[2], eventName:PARAM.value[1], startState:PARAM.value[0] ) */
    maslin_ooapopulation_op_transformTransition( ooapopulation,  p_value[2], p_value[1], p_value[0] );
  }
  else {
    /* TRACE::log( flavor:failure, id:59, message:( maslin unrecognized element:   + element ) ) */
    // TRACE_log( "failure", 59, Escher_stradd( "maslin unrecognized element:  ", element ) );
  }
}

/*
 * instance operation:  transformProject
 */
void
maslin_ooapopulation_op_transformProject( maslin_ooapopulation * self, c_t * p_name )
{
  /* self.createSystem() */
  maslin_ooapopulation_op_createSystem( self );
  /* ASSIGN self.wiring_pkg = self.SystemModel_newPackage(pkg_name:PARAM.name, s_sys:self.current_sys) */
  self->wiring_pkg = maslin_ooapopulation_op_SystemModel_newPackage(self, p_name, self->current_sys);
}

/*
 * instance operation:  SystemModel_newPackage
 */
maslin_EP_PKG *
maslin_ooapopulation_op_SystemModel_newPackage( maslin_ooapopulation * self, c_t * p_pkg_name, maslin_S_SYS * p_s_sys )
{
  maslin_S_SYS * s_sys;maslin_PE_PE * pe;maslin_EP_PKG * package;
  /* ASSIGN s_sys = PARAM.s_sys */
  s_sys = p_s_sys;
  /* CREATE OBJECT INSTANCE package OF EP_PKG */
  package = (maslin_EP_PKG *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_EP_PKG_CLASS_NUMBER );
  package->Package_ID = (Escher_UniqueID_t) package;
  /* CREATE OBJECT INSTANCE pe OF PE_PE */
  pe = (maslin_PE_PE *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_PE_PE_CLASS_NUMBER );
  pe->Element_ID = (Escher_UniqueID_t) pe;
  /* RELATE pe TO package ACROSS R8001 */
  maslin_EP_PKG_R8001_Link( pe, package );
  /* RELATE package TO s_sys ACROSS R1401 */
  maslin_EP_PKG_R1401_Link_contains( s_sys, package );
  /* RELATE package TO s_sys ACROSS R1405 */
  maslin_EP_PKG_R1405_Link_contains( s_sys, package );
  /* ASSIGN pe.type = PACKAGE */
  pe->type = maslin_ElementTypeConstants_PACKAGE_e;
  /* self.PackageableElement_initialize( pe_pe:pe ) */
  maslin_ooapopulation_op_PackageableElement_initialize( self,  pe );
  /* self.Package_initialize( ep_pkg:package, name:PARAM.pkg_name ) */
  maslin_ooapopulation_op_Package_initialize( self,  package, p_pkg_name );
  /* RETURN package */
  {maslin_EP_PKG * xtumlOALrv = package;
  return xtumlOALrv;}
}

/*
 * instance operation:  PackageableElement_initialize
 */
void
maslin_ooapopulation_op_PackageableElement_initialize( maslin_ooapopulation * self, maslin_PE_PE * p_pe_pe )
{
  maslin_PE_PE * pe_pe;
  /* ASSIGN pe_pe = PARAM.pe_pe */
  pe_pe = p_pe_pe;
  /* ASSIGN pe_pe.Visibility = Public */
  pe_pe->Visibility = maslin_Visibility_Public_e;
}

/*
 * instance operation:  Package_initialize
 */
void
maslin_ooapopulation_op_Package_initialize( maslin_ooapopulation * self, maslin_EP_PKG * p_ep_pkg, c_t * p_name )
{
  /* ASSIGN PARAM.ep_pkg.Name = PARAM.name */
  p_ep_pkg->Name = Escher_strcpy( p_ep_pkg->Name, p_name );
}

/*
 * instance operation:  transformDomain
 */
void
maslin_ooapopulation_op_transformDomain( maslin_ooapopulation * self, c_t * p_name )
{
  maslin_EP_PKG * lib_pkg;maslin_C_C * c_c=0;
  /* self.createSystem() */
  maslin_ooapopulation_op_createSystem( self );
  /* ASSIGN self.lib_pkg = self.SystemModel_newPackage(pkg_name:PARAM.name, s_sys:self.current_sys) */
  self->lib_pkg = maslin_ooapopulation_op_SystemModel_newPackage(self, p_name, self->current_sys);
  /* ASSIGN lib_pkg = self.lib_pkg */
  lib_pkg = self->lib_pkg;
  /* SELECT any c_c RELATED BY lib_pkg->PE_PE[R8000]->C_C[R8001] WHERE ( ( PARAM.name == SELECTED.Name ) ) */
  c_c = 0;
  {  if ( 0 != lib_pkg ) {
  maslin_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &lib_pkg->PE_PE_R8000_contains );
  while ( ( 0 == c_c ) && ( 0 != ( PE_PE_R8000_contains = (maslin_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( maslin_C_C_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {maslin_C_C * selected = (maslin_C_C *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( p_name, selected->Name ) == 0 ) ) {
    c_c = selected;
  }}
}}}
  /* IF ( empty c_c ) */
  if ( ( 0 == c_c ) ) {
    maslin_EP_PKG * shared_pkg;maslin_EP_PKG * internal_bhv_pkg;
    /* ASSIGN c_c = self.Package_newComponent(component_name:PARAM.name, ep_pkg:self.lib_pkg) */
    c_c = maslin_ooapopulation_op_Package_newComponent(self, p_name, self->lib_pkg);
    /* ASSIGN internal_bhv_pkg = self.Component_newPackage(c_c:c_c, pkg_name:PARAM.name) */
    internal_bhv_pkg = maslin_ooapopulation_op_Component_newPackage(self, c_c, p_name);
    /* ASSIGN shared_pkg = self.Package_newPackage(ep_pkg:self.lib_pkg, package_name:Shared) */
    shared_pkg = maslin_ooapopulation_op_Package_newPackage(self, self->lib_pkg, "Shared");
  }
  /* ASSIGN self.current_component = c_c */
  self->current_component = c_c;
}

/*
 * instance operation:  Package_newComponent
 */
maslin_C_C *
maslin_ooapopulation_op_Package_newComponent( maslin_ooapopulation * self, c_t * p_component_name, maslin_EP_PKG * p_ep_pkg )
{
  maslin_EP_PKG * ep_pkg;maslin_PE_PE * pe;maslin_C_C * component;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* CREATE OBJECT INSTANCE component OF C_C */
  component = (maslin_C_C *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_C_C_CLASS_NUMBER );
  component->Id = (Escher_UniqueID_t) component;
  /* CREATE OBJECT INSTANCE pe OF PE_PE */
  pe = (maslin_PE_PE *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_PE_PE_CLASS_NUMBER );
  pe->Element_ID = (Escher_UniqueID_t) pe;
  /* RELATE component TO pe ACROSS R8001 */
  maslin_C_C_R8001_Link( pe, component );
  /* RELATE pe TO ep_pkg ACROSS R8000 */
  maslin_PE_PE_R8000_Link_contains( ep_pkg, pe );
  /* ASSIGN pe.type = COMPONENT */
  pe->type = maslin_ElementTypeConstants_COMPONENT_e;
  /* self.PackageableElement_initialize( pe_pe:pe ) */
  maslin_ooapopulation_op_PackageableElement_initialize( self,  pe );
  /* self.Component_initialize( c_c:component, name:PARAM.component_name ) */
  maslin_ooapopulation_op_Component_initialize( self,  component, p_component_name );
  /* RETURN component */
  {maslin_C_C * xtumlOALrv = component;
  return xtumlOALrv;}
}

/*
 * instance operation:  Component_initialize
 */
void
maslin_ooapopulation_op_Component_initialize( maslin_ooapopulation * self, maslin_C_C * p_c_c, c_t * p_name )
{
  /* ASSIGN PARAM.c_c.Name = PARAM.name */
  p_c_c->Name = Escher_strcpy( p_c_c->Name, p_name );
}

/*
 * instance operation:  ComponentReference_assignToComp
 */
void
maslin_ooapopulation_op_ComponentReference_assignToComp( maslin_ooapopulation * self, maslin_C_C * p_c_c, maslin_CL_IC * p_cl_ic )
{
  maslin_C_C * comp;maslin_CL_IC * cl_ic;maslin_C_C * contComponent=0;maslin_EP_PKG * contPackage=0;maslin_PE_PE * packageableElem=0;
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
    maslin_C_IR * formalInterface=0;Escher_ObjectSet_s formalInterfaces_space={0}; Escher_ObjectSet_s * formalInterfaces = &formalInterfaces_space;
    /* RELATE cl_ic TO comp ACROSS R4201 */
    maslin_CL_IC_R4201_Link_is_represented_by( comp, cl_ic );
    /* SELECT many formalInterfaces RELATED BY comp->C_PO[R4010]->C_IR[R4016] */
    Escher_ClearSet( formalInterfaces );
    {    if ( 0 != comp ) {
    maslin_C_PO * C_PO_R4010_communicates_through;
    Escher_Iterator_s iC_PO_R4010_communicates_through;
    Escher_IteratorReset( &iC_PO_R4010_communicates_through, &comp->C_PO_R4010_communicates_through );
    while ( 0 != ( C_PO_R4010_communicates_through = (maslin_C_PO *) Escher_IteratorNext( &iC_PO_R4010_communicates_through ) ) ) {
    maslin_C_IR * C_IR_R4016_exposes;
    Escher_Iterator_s iC_IR_R4016_exposes;
    Escher_IteratorReset( &iC_IR_R4016_exposes, &C_PO_R4010_communicates_through->C_IR_R4016_exposes );
    while ( 0 != ( C_IR_R4016_exposes = (maslin_C_IR *) Escher_IteratorNext( &iC_IR_R4016_exposes ) ) ) {
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) formalInterfaces, C_IR_R4016_exposes ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) formalInterfaces, C_IR_R4016_exposes );
    }}}}}
    /* FOR EACH formalInterface IN formalInterfaces */
    { Escher_Iterator_s iterformalInterface;
    maslin_C_IR * iiformalInterface;
    Escher_IteratorReset( &iterformalInterface, formalInterfaces );
    while ( (iiformalInterface = (maslin_C_IR *)Escher_IteratorNext( &iterformalInterface )) != 0 ) {
      formalInterface = iiformalInterface; {
      maslin_C_I * c_i=0;
      /* SELECT one c_i RELATED BY formalInterface->C_I[R4012] */
      c_i = ( 0 != formalInterface ) ? formalInterface->C_I_R4012_may_be_defined_by : 0;
      /* IF ( not_empty c_i ) */
      if ( ( 0 != c_i ) ) {
        maslin_C_IR * existingImportRef=0;
        /* SELECT any existingImportRef RELATED BY cl_ic->CL_POR[R4707]->CL_IIR[R4708]->C_IR[R4701] WHERE ( ( SELECTED.Id == formalInterface.Id ) ) */
        existingImportRef = 0;
        {        if ( 0 != cl_ic ) {
        maslin_CL_POR * CL_POR_R4707_communicates_through;
        Escher_Iterator_s iCL_POR_R4707_communicates_through;
        Escher_IteratorReset( &iCL_POR_R4707_communicates_through, &cl_ic->CL_POR_R4707_communicates_through );
        while ( ( 0 == existingImportRef ) && ( 0 != ( CL_POR_R4707_communicates_through = (maslin_CL_POR *) Escher_IteratorNext( &iCL_POR_R4707_communicates_through ) ) ) ) {
        maslin_CL_IIR * CL_IIR_R4708_exposes;
        Escher_Iterator_s iCL_IIR_R4708_exposes;
        Escher_IteratorReset( &iCL_IIR_R4708_exposes, &CL_POR_R4707_communicates_through->CL_IIR_R4708_exposes );
        while ( ( 0 == existingImportRef ) && ( 0 != ( CL_IIR_R4708_exposes = (maslin_CL_IIR *) Escher_IteratorNext( &iCL_IIR_R4708_exposes ) ) ) ) {
        {maslin_C_IR * selected = CL_IIR_R4708_exposes->C_IR_R4701_imports;
        if ( ( 0 != selected ) && ( selected->Id == formalInterface->Id ) ) {
          existingImportRef = selected;
        }}
}}}}
        /* IF ( empty existingImportRef ) */
        if ( ( 0 == existingImportRef ) ) {
          maslin_CL_POR * portRef;maslin_CL_IIR * newImportedRef;maslin_C_PO * existingPort=0;maslin_C_P * provision=0;
          /* SELECT one provision RELATED BY formalInterface->C_P[R4009] */
          provision = 0;
          if ( ( 0 != formalInterface ) && ( maslin_C_P_CLASS_NUMBER == formalInterface->R4009_object_id ) )          provision = ( 0 != formalInterface ) ? (maslin_C_P *) formalInterface->R4009_subtype : 0;
          /* CREATE OBJECT INSTANCE newImportedRef OF CL_IIR */
          newImportedRef = (maslin_CL_IIR *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_CL_IIR_CLASS_NUMBER );
          newImportedRef->Id = (Escher_UniqueID_t) newImportedRef;
          /* IF ( not_empty provision ) */
          if ( ( 0 != provision ) ) {
            maslin_CL_IP * importedPro;
            /* CREATE OBJECT INSTANCE importedPro OF CL_IP */
            importedPro = (maslin_CL_IP *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_CL_IP_CLASS_NUMBER );
            importedPro->Id = (Escher_UniqueID_t) importedPro;
            /* RELATE importedPro TO newImportedRef ACROSS R4703 */
            maslin_CL_IP_R4703_Link( newImportedRef, importedPro );
          }
          else {
            maslin_CL_IR * importedReq;
            /* CREATE OBJECT INSTANCE importedReq OF CL_IR */
            importedReq = (maslin_CL_IR *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_CL_IR_CLASS_NUMBER );
            importedReq->Id = (Escher_UniqueID_t) importedReq;
            /* RELATE importedReq TO newImportedRef ACROSS R4703 */
            maslin_CL_IR_R4703_Link( newImportedRef, importedReq );
          }
          /* CREATE OBJECT INSTANCE portRef OF CL_POR */
          portRef = (maslin_CL_POR *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_CL_POR_CLASS_NUMBER );
          portRef->Id = (Escher_UniqueID_t) portRef;
          /* SELECT one existingPort RELATED BY formalInterface->C_PO[R4016] */
          existingPort = ( 0 != formalInterface ) ? formalInterface->C_PO_R4016_originates_from : 0;
          /* RELATE existingPort TO portRef ACROSS R4709 */
          maslin_CL_POR_R4709_Link_is_referenced_by( existingPort, portRef );
          /* RELATE portRef TO cl_ic ACROSS R4707 */
          maslin_CL_POR_R4707_Link_communicates_through( cl_ic, portRef );
          /* RELATE portRef TO newImportedRef ACROSS R4708 */
          maslin_CL_IIR_R4708_Link_exposes( portRef, newImportedRef );
          /* RELATE newImportedRef TO formalInterface ACROSS R4701 */
          maslin_CL_IIR_R4701_Link_is_imported( formalInterface, newImportedRef );
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
maslin_ooapopulation_op_transformObject( maslin_ooapopulation * self, c_t * p_name )
{
  maslin_C_C * current_component;maslin_O_OBJ * o_obj=0;maslin_EP_PKG * internals_pkg=0;
  /* ASSIGN current_component = self.current_component */
  current_component = self->current_component;
  /* SELECT any internals_pkg RELATED BY current_component->PE_PE[R8003]->EP_PKG[R8001] WHERE ( ( SELECTED.Name == current_component.Name ) ) */
  internals_pkg = 0;
  {  if ( 0 != current_component ) {
  maslin_PE_PE * PE_PE_R8003_contains;
  Escher_Iterator_s iPE_PE_R8003_contains;
  Escher_IteratorReset( &iPE_PE_R8003_contains, &current_component->PE_PE_R8003_contains );
  while ( ( 0 == internals_pkg ) && ( 0 != ( PE_PE_R8003_contains = (maslin_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8003_contains ) && ( maslin_EP_PKG_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) )  {maslin_EP_PKG * selected = (maslin_EP_PKG *) PE_PE_R8003_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, current_component->Name ) == 0 ) ) {
    internals_pkg = selected;
  }}
}}}
  /* SELECT any o_obj RELATED BY internals_pkg->PE_PE[R8000]->O_OBJ[R8001] WHERE ( ( SELECTED.Name == PARAM.name ) ) */
  o_obj = 0;
  {  if ( 0 != internals_pkg ) {
  maslin_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &internals_pkg->PE_PE_R8000_contains );
  while ( ( 0 == o_obj ) && ( 0 != ( PE_PE_R8000_contains = (maslin_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( maslin_O_OBJ_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {maslin_O_OBJ * selected = (maslin_O_OBJ *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, p_name ) == 0 ) ) {
    o_obj = selected;
  }}
}}}
  /* ASSIGN self.current_class = o_obj */
  self->current_class = o_obj;
  /* IF ( empty o_obj ) */
  if ( ( 0 == o_obj ) ) {
    /* ASSIGN self.current_class = self.Package_newClass(class_name:PARAM.name, ep_pkg:internals_pkg) */
    self->current_class = maslin_ooapopulation_op_Package_newClass(self, p_name, internals_pkg);
  }
}

/*
 * instance operation:  Component_newPackage
 */
maslin_EP_PKG *
maslin_ooapopulation_op_Component_newPackage( maslin_ooapopulation * self, maslin_C_C * p_c_c, c_t * p_pkg_name )
{
  Escher_UniqueID_t rootCompIdInPkg;maslin_C_C * c_c;maslin_PE_PE * pe;maslin_EP_PKG * package;maslin_C_C * rootComponent=0;maslin_S_SYS * system=0;
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* CREATE OBJECT INSTANCE package OF EP_PKG */
  package = (maslin_EP_PKG *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_EP_PKG_CLASS_NUMBER );
  package->Package_ID = (Escher_UniqueID_t) package;
  /* CREATE OBJECT INSTANCE pe OF PE_PE */
  pe = (maslin_PE_PE *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_PE_PE_CLASS_NUMBER );
  pe->Element_ID = (Escher_UniqueID_t) pe;
  /* RELATE package TO pe ACROSS R8001 */
  maslin_EP_PKG_R8001_Link( pe, package );
  /* ASSIGN rootCompIdInPkg = self.Component_getRootComponentId(c_c:c_c) */
  rootCompIdInPkg = maslin_ooapopulation_op_Component_getRootComponentId(self, c_c);
  /* SELECT any rootComponent FROM INSTANCES OF C_C WHERE ( SELECTED.Id == rootCompIdInPkg ) */
  rootComponent = 0;
  { maslin_C_C * selected;
    Escher_Iterator_s iterrootComponentmaslin_C_C;
    Escher_IteratorReset( &iterrootComponentmaslin_C_C, &pG_maslin_C_C_extent.active );
    while ( (selected = (maslin_C_C *) Escher_IteratorNext( &iterrootComponentmaslin_C_C )) != 0 ) {
      if ( ( selected->Id == rootCompIdInPkg ) ) {
        rootComponent = selected;
        break;
      }
    }
  }
  /* SELECT one system RELATED BY rootComponent->PE_PE[R8001]->EP_PKG[R8000]->S_SYS[R1405] */
  system = 0;
  {  if ( 0 != rootComponent ) {
  maslin_PE_PE * PE_PE_R8001 = rootComponent->PE_PE_R8001;
  if ( 0 != PE_PE_R8001 ) {
  maslin_EP_PKG * EP_PKG_R8000_contained_by = PE_PE_R8001->EP_PKG_R8000_contained_by;
  if ( 0 != EP_PKG_R8000_contained_by ) {
  system = EP_PKG_R8000_contained_by->S_SYS_R1405;
}}}}
  /* RELATE package TO system ACROSS R1405 */
  maslin_EP_PKG_R1405_Link_contains( system, package );
  /* RELATE c_c TO pe ACROSS R8003 */
  maslin_PE_PE_R8003_Link_contains( c_c, pe );
  /* self.Package_initialize( ep_pkg:package, name:PARAM.pkg_name ) */
  maslin_ooapopulation_op_Package_initialize( self,  package, p_pkg_name );
  /* ASSIGN pe.type = PACKAGE */
  pe->type = maslin_ElementTypeConstants_PACKAGE_e;
  /* self.PackageableElement_initialize( pe_pe:pe ) */
  maslin_ooapopulation_op_PackageableElement_initialize( self,  pe );
  /* RETURN package */
  {maslin_EP_PKG * xtumlOALrv = package;
  return xtumlOALrv;}
}

/*
 * instance operation:  Component_getRootComponentId
 */
Escher_UniqueID_t
maslin_ooapopulation_op_Component_getRootComponentId( maslin_ooapopulation * self, maslin_C_C * p_c_c )
{
  maslin_C_C * c_c;maslin_C_C * parentComponent=0;
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* SELECT one parentComponent RELATED BY c_c->PE_PE[R8001]->C_C[R8003] */
  parentComponent = 0;
  {  if ( 0 != c_c ) {
  maslin_PE_PE * PE_PE_R8001 = c_c->PE_PE_R8001;
  if ( 0 != PE_PE_R8001 ) {
  parentComponent = PE_PE_R8001->C_C_R8003_contained_in;
}}}
  /* IF ( not_empty parentComponent ) */
  if ( ( 0 != parentComponent ) ) {
    /* RETURN self.Component_getRootComponentId(c_c:parentComponent) */
    {Escher_UniqueID_t xtumlOALrv = maslin_ooapopulation_op_Component_getRootComponentId(self, parentComponent);
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
maslin_ooapopulation_op_createSystem( maslin_ooapopulation * self)
{
  maslin_S_SYS * s_sys;
  /* ASSIGN s_sys = self.current_sys */
  s_sys = self->current_sys;
  /* IF ( empty s_sys ) */
  if ( ( 0 == s_sys ) ) {
    /* CREATE OBJECT INSTANCE s_sys OF S_SYS */
    s_sys = (maslin_S_SYS *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_S_SYS_CLASS_NUMBER );
    s_sys->Sys_ID = (Escher_UniqueID_t) s_sys;
    /* ASSIGN s_sys.Name = ConvertedModel */
    s_sys->Name = Escher_strcpy( s_sys->Name, "ConvertedModel" );
    /* ASSIGN self.current_sys = s_sys */
    self->current_sys = s_sys;
    /* ASSIGN self.systypes_pkg = self.SystemModel_newPackage(pkg_name:types, s_sys:s_sys) */
    self->systypes_pkg = maslin_ooapopulation_op_SystemModel_newPackage(self, "types", s_sys);
    /* self.Package_newDatatype( ep_pkg:self.systypes_pkg, type_name:void ) */
    maslin_ooapopulation_op_Package_newDatatype( self,  self->systypes_pkg, "void" );
    /* self.Package_newDatatype( ep_pkg:self.systypes_pkg, type_name:character ) */
    maslin_ooapopulation_op_Package_newDatatype( self,  self->systypes_pkg, "character" );
    /* self.Package_newDatatype( ep_pkg:self.systypes_pkg, type_name:wcharacter ) */
    maslin_ooapopulation_op_Package_newDatatype( self,  self->systypes_pkg, "wcharacter" );
    /* self.Package_newDatatype( ep_pkg:self.systypes_pkg, type_name:boolean ) */
    maslin_ooapopulation_op_Package_newDatatype( self,  self->systypes_pkg, "boolean" );
    /* self.Package_newDatatype( ep_pkg:self.systypes_pkg, type_name:byte ) */
    maslin_ooapopulation_op_Package_newDatatype( self,  self->systypes_pkg, "byte" );
    /* self.Package_newDatatype( ep_pkg:self.systypes_pkg, type_name:string ) */
    maslin_ooapopulation_op_Package_newDatatype( self,  self->systypes_pkg, "string" );
    /* self.Package_newDatatype( ep_pkg:self.systypes_pkg, type_name:wstring ) */
    maslin_ooapopulation_op_Package_newDatatype( self,  self->systypes_pkg, "wstring" );
    /* self.Package_newDatatype( ep_pkg:self.systypes_pkg, type_name:device ) */
    maslin_ooapopulation_op_Package_newDatatype( self,  self->systypes_pkg, "device" );
    /* self.Package_newDatatype( ep_pkg:self.systypes_pkg, type_name:enum ) */
    maslin_ooapopulation_op_Package_newDatatype( self,  self->systypes_pkg, "enum" );
    /* self.Package_newDatatype( ep_pkg:self.systypes_pkg, type_name:event ) */
    maslin_ooapopulation_op_Package_newDatatype( self,  self->systypes_pkg, "event" );
    /* self.Package_newDatatype( ep_pkg:self.systypes_pkg, type_name:instance ) */
    maslin_ooapopulation_op_Package_newDatatype( self,  self->systypes_pkg, "instance" );
  }
}

/*
 * instance operation:  InterfaceReference_isFormal
 */
bool
maslin_ooapopulation_op_InterfaceReference_isFormal( maslin_ooapopulation * self, c_t * p_c_ir )
{
  /* RETURN FALSE */
  {bool xtumlOALrv = FALSE;
  return xtumlOALrv;}
}

/*
 * instance operation:  transformTerminator
 */
void
maslin_ooapopulation_op_transformTerminator( maslin_ooapopulation * self, c_t * p_name )
{

}

/*
 * instance operation:  transformActivity
 */
void
maslin_ooapopulation_op_transformActivity( maslin_ooapopulation * self)
{

}

/*
 * instance operation:  transformParameter
 */
void
maslin_ooapopulation_op_transformParameter( maslin_ooapopulation * self, c_t * p_direction, c_t * p_name )
{
  maslin_S_SYNC * domain_function;maslin_O_TFR * class_op;
  /* ASSIGN class_op = self.current_class_op */
  class_op = self->current_class_op;
  /* ASSIGN domain_function = self.current_domain_function */
  domain_function = self->current_domain_function;
  /* IF ( not_empty class_op ) */
  if ( ( 0 != class_op ) ) {
    /* self.Operation_newParameter( o_tfr:class_op, parameter_name:PARAM.name ) */
    maslin_ooapopulation_op_Operation_newParameter( self,  class_op, p_name );
  }
  else if ( ( 0 != domain_function ) ) {
    /* self.Function_newParameter( parameter_name:PARAM.name, s_sync:domain_function ) */
    maslin_ooapopulation_op_Function_newParameter( self,  p_name, domain_function );
  }
}

/*
 * instance operation:  transformAttribute
 */
void
maslin_ooapopulation_op_transformAttribute( maslin_ooapopulation * self, c_t * p_initialization, c_t * p_name, c_t * p_preferred, c_t * p_unique )
{
  c_t * attr_name=0;
  /* ASSIGN attr_name = PARAM.name */
  attr_name = Escher_strcpy( attr_name, p_name );
  /* ASSIGN self.current_attribute = self.ModelClass_newAttribute(attr_name:attr_name, o_obj:self.current_class) */
  self->current_attribute = maslin_ooapopulation_op_ModelClass_newAttribute(self, attr_name, self->current_class);
}

/*
 * instance operation:  transformState
 */
void
maslin_ooapopulation_op_transformState( maslin_ooapopulation * self, c_t * p_name, c_t * p_type )
{
  maslin_O_OBJ * current_class;maslin_SM_SM * sm_sm=0;
  /* ASSIGN current_class = self.current_class */
  current_class = self->current_class;
  /* SELECT any sm_sm FROM INSTANCES OF SM_SM WHERE FALSE */
  sm_sm = 0;
  /* IF ( ( assigner == PARAM.type ) ) */
  if ( ( Escher_strcmp( "assigner", p_type ) == 0 ) ) {
    /* ASSIGN sm_sm = self.ModelClass_create_sm(o_obj:current_class, sm_type:ASM) */
    sm_sm = maslin_ooapopulation_op_ModelClass_create_sm(self, current_class, "ASM");
  }
  else {
    /* ASSIGN sm_sm = self.ModelClass_create_sm(o_obj:current_class, sm_type:ISM) */
    sm_sm = maslin_ooapopulation_op_ModelClass_create_sm(self, current_class, "ISM");
  }
  /* self.StateMachine_newState( name:PARAM.name, sm_sm:sm_sm ) */
  maslin_ooapopulation_op_StateMachine_newState( self,  p_name, sm_sm );
}

/*
 * instance operation:  transformEvent
 */
void
maslin_ooapopulation_op_transformEvent( maslin_ooapopulation * self, c_t * p_name, c_t * p_type )
{
  maslin_O_OBJ * current_class;maslin_SM_SM * sm_sm=0;
  /* ASSIGN current_class = self.current_class */
  current_class = self->current_class;
  /* SELECT any sm_sm FROM INSTANCES OF SM_SM WHERE FALSE */
  sm_sm = 0;
  /* IF ( ( assigner == PARAM.type ) ) */
  if ( ( Escher_strcmp( "assigner", p_type ) == 0 ) ) {
    /* ASSIGN sm_sm = self.ModelClass_create_sm(o_obj:current_class, sm_type:ASM) */
    sm_sm = maslin_ooapopulation_op_ModelClass_create_sm(self, current_class, "ASM");
  }
  else {
    /* ASSIGN sm_sm = self.ModelClass_create_sm(o_obj:current_class, sm_type:ISM) */
    sm_sm = maslin_ooapopulation_op_ModelClass_create_sm(self, current_class, "ISM");
  }
  /* self.StateMachine_newEvent( name:PARAM.name, sm_sm:sm_sm ) */
  maslin_ooapopulation_op_StateMachine_newEvent( self,  p_name, sm_sm );
}

/*
 * instance operation:  Package_newImportedComponent
 */
maslin_CL_IC *
maslin_ooapopulation_op_Package_newImportedComponent( maslin_ooapopulation * self, maslin_EP_PKG * p_ep_pkg )
{
  maslin_EP_PKG * ep_pkg;maslin_PE_PE * pe;maslin_CL_IC * importedComp;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* CREATE OBJECT INSTANCE importedComp OF CL_IC */
  importedComp = (maslin_CL_IC *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_CL_IC_CLASS_NUMBER );
  importedComp->Id = (Escher_UniqueID_t) importedComp;
  /* CREATE OBJECT INSTANCE pe OF PE_PE */
  pe = (maslin_PE_PE *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_PE_PE_CLASS_NUMBER );
  pe->Element_ID = (Escher_UniqueID_t) pe;
  /* RELATE importedComp TO pe ACROSS R8001 */
  maslin_CL_IC_R8001_Link( pe, importedComp );
  /* RELATE pe TO ep_pkg ACROSS R8000 */
  maslin_PE_PE_R8000_Link_contains( ep_pkg, pe );
  /* ASSIGN pe.type = COMPONENT_REFERENCE */
  pe->type = maslin_ElementTypeConstants_COMPONENT_REFERENCE_e;
  /* self.PackageableElement_initialize( pe_pe:pe ) */
  maslin_ooapopulation_op_PackageableElement_initialize( self,  pe );
  /* RETURN importedComp */
  {maslin_CL_IC * xtumlOALrv = importedComp;
  return xtumlOALrv;}
}

/*
 * instance operation:  Package_newClass
 */
maslin_O_OBJ *
maslin_ooapopulation_op_Package_newClass( maslin_ooapopulation * self, c_t * p_class_name, maslin_EP_PKG * p_ep_pkg )
{
  maslin_EP_PKG * ep_pkg;maslin_PE_PE * pe;maslin_O_OBJ * cl;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* CREATE OBJECT INSTANCE cl OF O_OBJ */
  cl = (maslin_O_OBJ *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_O_OBJ_CLASS_NUMBER );
  cl->Obj_ID = (Escher_UniqueID_t) cl;
  /* CREATE OBJECT INSTANCE pe OF PE_PE */
  pe = (maslin_PE_PE *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_PE_PE_CLASS_NUMBER );
  pe->Element_ID = (Escher_UniqueID_t) pe;
  /* RELATE cl TO pe ACROSS R8001 */
  maslin_O_OBJ_R8001_Link( pe, cl );
  /* ASSIGN pe.type = CLASS */
  pe->type = maslin_ElementTypeConstants_CLASS_e;
  /* self.PackageableElement_initialize( pe_pe:pe ) */
  maslin_ooapopulation_op_PackageableElement_initialize( self,  pe );
  /* RELATE ep_pkg TO pe ACROSS R8000 */
  maslin_PE_PE_R8000_Link_contains( ep_pkg, pe );
  /* self.ModelClass_initialize( name:PARAM.class_name, o_obj:cl ) */
  maslin_ooapopulation_op_ModelClass_initialize( self,  p_class_name, cl );
  /* RETURN cl */
  {maslin_O_OBJ * xtumlOALrv = cl;
  return xtumlOALrv;}
}

/*
 * instance operation:  ModelClass_initialize
 */
void
maslin_ooapopulation_op_ModelClass_initialize( maslin_ooapopulation * self, c_t * p_name, maslin_O_OBJ * p_o_obj )
{
  maslin_O_OBJ * clazz=0;maslin_O_OBJ * o_obj;Escher_ObjectSet_s classes_space={0}; Escher_ObjectSet_s * classes = &classes_space;maslin_C_C * component=0;maslin_EP_PKG * package=0;maslin_PE_PE * packageableElem=0;
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
  maslin_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &package->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (maslin_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( maslin_O_OBJ_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {maslin_O_OBJ * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) classes, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) classes, R8001_subtype );
  }}}}}
  /* IF ( not_empty package ) */
  if ( ( 0 != package ) ) {
    /* SELECT many classes RELATED BY package->PE_PE[R8000]->O_OBJ[R8001] */
    Escher_ClearSet( classes );
    {    if ( 0 != package ) {
    maslin_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &package->PE_PE_R8000_contains );
    while ( 0 != ( PE_PE_R8000_contains = (maslin_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( maslin_O_OBJ_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    {maslin_O_OBJ * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
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
    Escher_UniqueID_t rootCompIdInPkg;maslin_C_C * rootComponent=0;
    /* ASSIGN rootCompIdInPkg = self.Component_getRootComponentId(c_c:component) */
    rootCompIdInPkg = maslin_ooapopulation_op_Component_getRootComponentId(self, component);
    /* SELECT any rootComponent FROM INSTANCES OF C_C WHERE ( SELECTED.Id == rootCompIdInPkg ) */
    rootComponent = 0;
    { maslin_C_C * selected;
      Escher_Iterator_s iterrootComponentmaslin_C_C;
      Escher_IteratorReset( &iterrootComponentmaslin_C_C, &pG_maslin_C_C_extent.active );
      while ( (selected = (maslin_C_C *) Escher_IteratorNext( &iterrootComponentmaslin_C_C )) != 0 ) {
        if ( ( selected->Id == rootCompIdInPkg ) ) {
          rootComponent = selected;
          break;
        }
      }
    }
    /* SELECT one package RELATED BY rootComponent->PE_PE[R8001]->EP_PKG[R8000] */
    package = 0;
    {    if ( 0 != rootComponent ) {
    maslin_PE_PE * PE_PE_R8001 = rootComponent->PE_PE_R8001;
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
  maslin_O_OBJ * iiclazz;
  Escher_IteratorReset( &iterclazz, classes );
  while ( (iiclazz = (maslin_O_OBJ *)Escher_IteratorNext( &iterclazz )) != 0 ) {
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
  maslin_ooapopulation_op_ModelClass_addIdentifiers( self,  o_obj );
  Escher_ClearSet( classes ); 
}

/*
 * instance operation:  ModelClass_addIdentifiers
 */
void
maslin_ooapopulation_op_ModelClass_addIdentifiers( maslin_ooapopulation * self, maslin_O_OBJ * p_o_obj )
{
  maslin_O_OBJ * o_obj;maslin_O_ID * oid3=0;maslin_O_ID * oid2=0;maslin_O_ID * oid1=0;
  /* ASSIGN o_obj = PARAM.o_obj */
  o_obj = p_o_obj;
  /* SELECT any oid1 RELATED BY o_obj->O_ID[R104] WHERE ( ( SELECTED.Oid_ID == 0 ) ) */
  oid1 = 0;
  if ( 0 != o_obj ) {
    maslin_O_ID * selected;
    Escher_Iterator_s iO_ID_R104_is_identified_by;
    Escher_IteratorReset( &iO_ID_R104_is_identified_by, &o_obj->O_ID_R104_is_identified_by );
    while ( 0 != ( selected = (maslin_O_ID *) Escher_IteratorNext( &iO_ID_R104_is_identified_by ) ) ) {
      if ( ( selected->Oid_ID == 0 ) ) {
        oid1 = selected;
        break;
  }}}
  /* IF ( empty oid1 ) */
  if ( ( 0 == oid1 ) ) {
    /* CREATE OBJECT INSTANCE oid1 OF O_ID */
    oid1 = (maslin_O_ID *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_O_ID_CLASS_NUMBER );
    oid1->Obj_ID = (Escher_UniqueID_t) oid1;
    /* ASSIGN oid1.Oid_ID = 0 */
    oid1->Oid_ID = 0;
    /* RELATE oid1 TO o_obj ACROSS R104 */
    maslin_O_ID_R104_Link_is_identified_by( o_obj, oid1 );
  }
  /* SELECT any oid2 RELATED BY o_obj->O_ID[R104] WHERE ( ( SELECTED.Oid_ID == 1 ) ) */
  oid2 = 0;
  if ( 0 != o_obj ) {
    maslin_O_ID * selected;
    Escher_Iterator_s iO_ID_R104_is_identified_by;
    Escher_IteratorReset( &iO_ID_R104_is_identified_by, &o_obj->O_ID_R104_is_identified_by );
    while ( 0 != ( selected = (maslin_O_ID *) Escher_IteratorNext( &iO_ID_R104_is_identified_by ) ) ) {
      if ( ( selected->Oid_ID == 1 ) ) {
        oid2 = selected;
        break;
  }}}
  /* IF ( empty oid2 ) */
  if ( ( 0 == oid2 ) ) {
    /* CREATE OBJECT INSTANCE oid2 OF O_ID */
    oid2 = (maslin_O_ID *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_O_ID_CLASS_NUMBER );
    oid2->Obj_ID = (Escher_UniqueID_t) oid2;
    /* ASSIGN oid2.Oid_ID = 1 */
    oid2->Oid_ID = 1;
    /* RELATE oid2 TO o_obj ACROSS R104 */
    maslin_O_ID_R104_Link_is_identified_by( o_obj, oid2 );
  }
  /* SELECT any oid3 RELATED BY o_obj->O_ID[R104] WHERE ( ( SELECTED.Oid_ID == 2 ) ) */
  oid3 = 0;
  if ( 0 != o_obj ) {
    maslin_O_ID * selected;
    Escher_Iterator_s iO_ID_R104_is_identified_by;
    Escher_IteratorReset( &iO_ID_R104_is_identified_by, &o_obj->O_ID_R104_is_identified_by );
    while ( 0 != ( selected = (maslin_O_ID *) Escher_IteratorNext( &iO_ID_R104_is_identified_by ) ) ) {
      if ( ( selected->Oid_ID == 2 ) ) {
        oid3 = selected;
        break;
  }}}
  /* IF ( empty oid3 ) */
  if ( ( 0 == oid3 ) ) {
    /* CREATE OBJECT INSTANCE oid3 OF O_ID */
    oid3 = (maslin_O_ID *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_O_ID_CLASS_NUMBER );
    oid3->Obj_ID = (Escher_UniqueID_t) oid3;
    /* ASSIGN oid3.Oid_ID = 2 */
    oid3->Oid_ID = 2;
    /* RELATE oid3 TO o_obj ACROSS R104 */
    maslin_O_ID_R104_Link_is_identified_by( o_obj, oid3 );
  }
}

/*
 * instance operation:  ModelClass_newAttribute
 */
maslin_O_ATTR *
maslin_ooapopulation_op_ModelClass_newAttribute( maslin_ooapopulation * self, c_t * p_attr_name, maslin_O_OBJ * p_o_obj )
{
  maslin_O_OBJ * o_obj;maslin_O_ATTR * newAttr;
  /* ASSIGN o_obj = PARAM.o_obj */
  o_obj = p_o_obj;
  /* CREATE OBJECT INSTANCE newAttr OF O_ATTR */
  newAttr = (maslin_O_ATTR *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_O_ATTR_CLASS_NUMBER );
  newAttr->Attr_ID = (Escher_UniqueID_t) newAttr;
newAttr->Obj_ID = (Escher_UniqueID_t) newAttr;
  /* self.ModelClass_addAttributeToOrdering( newAttr:newAttr, o_obj:o_obj ) */
  maslin_ooapopulation_op_ModelClass_addAttributeToOrdering( self,  newAttr, o_obj );
  /* RELATE o_obj TO newAttr ACROSS R102 */
  maslin_O_ATTR_R102_Link_has_characteristics_abstracted_by( o_obj, newAttr );
  /* self.Attribute_initialize( name:PARAM.attr_name, o_attr:newAttr ) */
  maslin_ooapopulation_op_Attribute_initialize( self,  p_attr_name, newAttr );
  /* RETURN newAttr */
  {maslin_O_ATTR * xtumlOALrv = newAttr;
  return xtumlOALrv;}
}

/*
 * instance operation:  ModelClass_addAttributeToOrdering
 */
void
maslin_ooapopulation_op_ModelClass_addAttributeToOrdering( maslin_ooapopulation * self, maslin_O_ATTR * p_newAttr, maslin_O_OBJ * p_o_obj )
{
  maslin_O_ATTR * attr=0;maslin_O_ATTR * newAttr;maslin_O_OBJ * o_obj;Escher_ObjectSet_s attrs_space={0}; Escher_ObjectSet_s * attrs = &attrs_space;
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
  maslin_O_ATTR * iiattr;
  Escher_IteratorReset( &iterattr, attrs );
  while ( (iiattr = (maslin_O_ATTR *)Escher_IteratorNext( &iterattr )) != 0 ) {
    attr = iiattr; {
    maslin_O_ATTR * nextAttr=0;
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
    maslin_O_ATTR_R103_Link_precedes( attr, newAttr );
  }
  Escher_ClearSet( attrs ); 
}

/*
 * instance operation:  Attribute_initialize
 */
void
maslin_ooapopulation_op_Attribute_initialize( maslin_ooapopulation * self, c_t * p_name, maslin_O_ATTR * p_o_attr )
{
  maslin_EP_PKG * systypes_pkg;maslin_O_ATTR * o_attr;maslin_O_NBATTR * nba;maslin_O_BATTR * ba;maslin_S_DT * def_dt=0;
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
  maslin_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &systypes_pkg->PE_PE_R8000_contains );
  while ( ( 0 == def_dt ) && ( 0 != ( PE_PE_R8000_contains = (maslin_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( maslin_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {maslin_S_DT * selected = (maslin_S_DT *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "string" ) == 0 ) ) {
    def_dt = selected;
  }}
}}}
  /* RELATE o_attr TO def_dt ACROSS R114 */
  maslin_O_ATTR_R114_Link_is_defined_by( def_dt, o_attr );
  /* CREATE OBJECT INSTANCE ba OF O_BATTR */
  ba = (maslin_O_BATTR *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_O_BATTR_CLASS_NUMBER );
  ba->Attr_ID = (Escher_UniqueID_t) ba;
ba->Obj_ID = (Escher_UniqueID_t) ba;
  /* RELATE o_attr TO ba ACROSS R106 */
  maslin_O_BATTR_R106_Link( o_attr, ba );
  /* CREATE OBJECT INSTANCE nba OF O_NBATTR */
  nba = (maslin_O_NBATTR *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_O_NBATTR_CLASS_NUMBER );
  nba->Attr_ID = (Escher_UniqueID_t) nba;
nba->Obj_ID = (Escher_UniqueID_t) nba;
  /* RELATE ba TO nba ACROSS R107 */
  maslin_O_NBATTR_R107_Link( ba, nba );
}

/*
 * instance operation:  transformType
 */
void
maslin_ooapopulation_op_transformType( maslin_ooapopulation * self, c_t * p_name, c_t * p_visibility )
{
  maslin_EP_PKG * systypes_pkg;maslin_EP_PKG * lib_pkg;maslin_S_DT * s_dt=0;maslin_S_DT * sys_s_dt=0;maslin_EP_PKG * types_pkg=0;
  /* ASSIGN lib_pkg = self.lib_pkg */
  lib_pkg = self->lib_pkg;
  /* SELECT any types_pkg RELATED BY lib_pkg->PE_PE[R8000]->EP_PKG[R8001] WHERE ( ( SELECTED.Name == Shared ) ) */
  types_pkg = 0;
  {  if ( 0 != lib_pkg ) {
  maslin_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &lib_pkg->PE_PE_R8000_contains );
  while ( ( 0 == types_pkg ) && ( 0 != ( PE_PE_R8000_contains = (maslin_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( maslin_EP_PKG_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {maslin_EP_PKG * selected = (maslin_EP_PKG *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "Shared" ) == 0 ) ) {
    types_pkg = selected;
  }}
}}}
  /* IF ( ( private == PARAM.visibility ) ) */
  if ( ( Escher_strcmp( "private", p_visibility ) == 0 ) ) {
    maslin_C_C * current_component;
    /* ASSIGN current_component = self.current_component */
    current_component = self->current_component;
    /* SELECT any types_pkg RELATED BY current_component->PE_PE[R8003]->EP_PKG[R8001] WHERE ( ( SELECTED.Name == types ) ) */
    types_pkg = 0;
    {    if ( 0 != current_component ) {
    maslin_PE_PE * PE_PE_R8003_contains;
    Escher_Iterator_s iPE_PE_R8003_contains;
    Escher_IteratorReset( &iPE_PE_R8003_contains, &current_component->PE_PE_R8003_contains );
    while ( ( 0 == types_pkg ) && ( 0 != ( PE_PE_R8003_contains = (maslin_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) ) {
    if ( ( 0 != PE_PE_R8003_contains ) && ( maslin_EP_PKG_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) )    {maslin_EP_PKG * selected = (maslin_EP_PKG *) PE_PE_R8003_contains->R8001_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "types" ) == 0 ) ) {
      types_pkg = selected;
    }}
}}}
    /* IF ( empty types_pkg ) */
    if ( ( 0 == types_pkg ) ) {
      /* ASSIGN types_pkg = self.Component_newPackage(c_c:current_component, pkg_name:types) */
      types_pkg = maslin_ooapopulation_op_Component_newPackage(self, current_component, "types");
    }
  }
  /* ASSIGN systypes_pkg = self.systypes_pkg */
  systypes_pkg = self->systypes_pkg;
  /* SELECT any sys_s_dt RELATED BY systypes_pkg->PE_PE[R8000]->S_DT[R8001] WHERE ( ( SELECTED.Name == PARAM.name ) ) */
  sys_s_dt = 0;
  {  if ( 0 != systypes_pkg ) {
  maslin_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &systypes_pkg->PE_PE_R8000_contains );
  while ( ( 0 == sys_s_dt ) && ( 0 != ( PE_PE_R8000_contains = (maslin_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( maslin_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {maslin_S_DT * selected = (maslin_S_DT *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, p_name ) == 0 ) ) {
    sys_s_dt = selected;
  }}
}}}
  /* SELECT any s_dt RELATED BY types_pkg->PE_PE[R8000]->S_DT[R8001] WHERE ( ( SELECTED.Name == PARAM.name ) ) */
  s_dt = 0;
  {  if ( 0 != types_pkg ) {
  maslin_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &types_pkg->PE_PE_R8000_contains );
  while ( ( 0 == s_dt ) && ( 0 != ( PE_PE_R8000_contains = (maslin_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( maslin_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {maslin_S_DT * selected = (maslin_S_DT *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, p_name ) == 0 ) ) {
    s_dt = selected;
  }}
}}}
  /* IF ( ( empty sys_s_dt and empty s_dt ) ) */
  if ( ( ( 0 == sys_s_dt ) && ( 0 == s_dt ) ) ) {
    /* self.Package_newDatatype( ep_pkg:types_pkg, type_name:PARAM.name ) */
    maslin_ooapopulation_op_Package_newDatatype( self,  types_pkg, p_name );
  }
}

/*
 * instance operation:  Package_newDatatype
 */
void
maslin_ooapopulation_op_Package_newDatatype( maslin_ooapopulation * self, maslin_EP_PKG * p_ep_pkg, c_t * p_type_name )
{
  maslin_EP_PKG * ep_pkg;maslin_S_UDT * udt;maslin_PE_PE * pe;maslin_S_DT * dt;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* CREATE OBJECT INSTANCE dt OF S_DT */
  dt = (maslin_S_DT *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_S_DT_CLASS_NUMBER );
  dt->DT_ID = (Escher_UniqueID_t) dt;
  /* CREATE OBJECT INSTANCE pe OF PE_PE */
  pe = (maslin_PE_PE *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_PE_PE_CLASS_NUMBER );
  pe->Element_ID = (Escher_UniqueID_t) pe;
  /* RELATE dt TO pe ACROSS R8001 */
  maslin_S_DT_R8001_Link( pe, dt );
  /* RELATE pe TO ep_pkg ACROSS R8000 */
  maslin_PE_PE_R8000_Link_contains( ep_pkg, pe );
  /* CREATE OBJECT INSTANCE udt OF S_UDT */
  udt = (maslin_S_UDT *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_S_UDT_CLASS_NUMBER );
  udt->DT_ID = (Escher_UniqueID_t) udt;
  /* RELATE dt TO udt ACROSS R17 */
  maslin_S_UDT_R17_Link( dt, udt );
  /* self.Datatype_initialize( name:PARAM.type_name, s_dt:dt ) */
  maslin_ooapopulation_op_Datatype_initialize( self,  p_type_name, dt );
  /* ASSIGN pe.type = DATATYPE */
  pe->type = maslin_ElementTypeConstants_DATATYPE_e;
  /* self.PackageableElement_initialize( pe_pe:pe ) */
  maslin_ooapopulation_op_PackageableElement_initialize( self,  pe );
}

/*
 * instance operation:  Datatype_initialize
 */
void
maslin_ooapopulation_op_Datatype_initialize( maslin_ooapopulation * self, c_t * p_name, maslin_S_DT * p_s_dt )
{
  /* ASSIGN PARAM.s_dt.Name = PARAM.name */
  p_s_dt->Name = Escher_strcpy( p_s_dt->Name, p_name );
}

/*
 * instance operation:  transformDomainFunction
 */
void
maslin_ooapopulation_op_transformDomainFunction( maslin_ooapopulation * self, c_t * p_instance, c_t * p_name, c_t * p_relationship, c_t * p_visibility )
{
  maslin_C_C * current_component;maslin_EP_PKG * functions_pkg=0;
  /* ASSIGN current_component = self.current_component */
  current_component = self->current_component;
  /* SELECT any functions_pkg RELATED BY current_component->PE_PE[R8003]->EP_PKG[R8001] WHERE ( ( SELECTED.Name == functions ) ) */
  functions_pkg = 0;
  {  if ( 0 != current_component ) {
  maslin_PE_PE * PE_PE_R8003_contains;
  Escher_Iterator_s iPE_PE_R8003_contains;
  Escher_IteratorReset( &iPE_PE_R8003_contains, &current_component->PE_PE_R8003_contains );
  while ( ( 0 == functions_pkg ) && ( 0 != ( PE_PE_R8003_contains = (maslin_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8003_contains ) && ( maslin_EP_PKG_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) )  {maslin_EP_PKG * selected = (maslin_EP_PKG *) PE_PE_R8003_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "functions" ) == 0 ) ) {
    functions_pkg = selected;
  }}
}}}
  /* IF ( empty functions_pkg ) */
  if ( ( 0 == functions_pkg ) ) {
    /* ASSIGN functions_pkg = self.Component_newPackage(c_c:current_component, pkg_name:functions) */
    functions_pkg = maslin_ooapopulation_op_Component_newPackage(self, current_component, "functions");
  }
  /* ASSIGN self.current_domain_function = self.Package_newFunction(ep_pkg:functions_pkg, function_name:PARAM.name) */
  self->current_domain_function = maslin_ooapopulation_op_Package_newFunction(self, functions_pkg, p_name);
  /* IF ( ( public == PARAM.visibility ) ) */
  if ( ( Escher_strcmp( "public", p_visibility ) == 0 ) ) {
    maslin_C_EP * c_ep;c_t * comp_if_name=0;maslin_EP_PKG * lib_pkg;maslin_SPR_PO * spr_po=0;maslin_C_I * comp_if=0;maslin_EP_PKG * shared_pkg=0;
    /* ASSIGN lib_pkg = self.lib_pkg */
    lib_pkg = self->lib_pkg;
    /* SELECT any shared_pkg RELATED BY lib_pkg->PE_PE[R8000]->EP_PKG[R8001] WHERE ( ( SELECTED.Name == Shared ) ) */
    shared_pkg = 0;
    {    if ( 0 != lib_pkg ) {
    maslin_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &lib_pkg->PE_PE_R8000_contains );
    while ( ( 0 == shared_pkg ) && ( 0 != ( PE_PE_R8000_contains = (maslin_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( maslin_EP_PKG_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    {maslin_EP_PKG * selected = (maslin_EP_PKG *) PE_PE_R8000_contains->R8001_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "Shared" ) == 0 ) ) {
      shared_pkg = selected;
    }}
}}}
    /* ASSIGN comp_if_name = ( current_component.Name + _if ) */
    comp_if_name = Escher_strcpy( comp_if_name, Escher_stradd( current_component->Name, "_if" ) );
    /* SELECT any comp_if RELATED BY shared_pkg->PE_PE[R8000]->C_I[R8001] WHERE ( ( SELECTED.Name == comp_if_name ) ) */
    comp_if = 0;
    {    if ( 0 != shared_pkg ) {
    maslin_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &shared_pkg->PE_PE_R8000_contains );
    while ( ( 0 == comp_if ) && ( 0 != ( PE_PE_R8000_contains = (maslin_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( maslin_C_I_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    {maslin_C_I * selected = (maslin_C_I *) PE_PE_R8000_contains->R8001_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, comp_if_name ) == 0 ) ) {
      comp_if = selected;
    }}
}}}
    /* IF ( empty comp_if ) */
    if ( ( 0 == comp_if ) ) {
      maslin_C_IR * new_ir;c_t * comp_port_name=0;
      /* ASSIGN comp_if = self.Package_newInterface(ep_pkg:shared_pkg, interface_name:comp_if_name) */
      comp_if = maslin_ooapopulation_op_Package_newInterface(self, shared_pkg, comp_if_name);
      /* ASSIGN comp_port_name = ( current_component.Name + _port ) */
      comp_port_name = Escher_strcpy( comp_port_name, Escher_stradd( current_component->Name, "_port" ) );
      /* ASSIGN new_ir = self.Component_initializeProvision(c_c:current_component, c_i:comp_if, port_name:comp_port_name) */
      new_ir = maslin_ooapopulation_op_Component_initializeProvision(self, current_component, comp_if, comp_port_name);
      /* self.InterfaceReference_formalize( c_i:comp_if, c_ir:new_ir ) */
      maslin_ooapopulation_op_InterfaceReference_formalize( self,  comp_if, new_ir );
    }
    /* ASSIGN c_ep = self.Interface_newExecutableProperty(asynchronous:FALSE, c_i:comp_if, ep_name:PARAM.name) */
    c_ep = maslin_ooapopulation_op_Interface_newExecutableProperty(self, FALSE, comp_if, p_name);
    /* SELECT any spr_po RELATED BY c_ep->SPR_PEP[R4501]->SPR_PO[R4503] */
    spr_po = 0;
    {    if ( 0 != c_ep ) {
    maslin_SPR_PEP * SPR_PEP_R4501;
    Escher_Iterator_s iSPR_PEP_R4501;
    Escher_IteratorReset( &iSPR_PEP_R4501, &c_ep->SPR_PEP_R4501 );
    while ( ( 0 == spr_po ) && ( 0 != ( SPR_PEP_R4501 = (maslin_SPR_PEP *) Escher_IteratorNext( &iSPR_PEP_R4501 ) ) ) ) {
    if ( ( 0 != SPR_PEP_R4501 ) && ( maslin_SPR_PO_CLASS_NUMBER == SPR_PEP_R4501->R4503_object_id ) )    spr_po = (maslin_SPR_PO *) SPR_PEP_R4501->R4503_subtype;
}}}
  }
}

/*
 * instance operation:  transformObjectFunction
 */
void
maslin_ooapopulation_op_transformObjectFunction( maslin_ooapopulation * self, c_t * p_instance, c_t * p_name, c_t * p_relationship, c_t * p_visibility )
{
  c_t * op_name=0;
  /* ASSIGN op_name = PARAM.name */
  op_name = Escher_strcpy( op_name, p_name );
  /* ASSIGN self.current_class_op = self.ModelClass_newOperation(o_obj:self.current_class, op_name:op_name) */
  self->current_class_op = maslin_ooapopulation_op_ModelClass_newOperation(self, self->current_class, op_name);
}

/*
 * instance operation:  ModelClass_newOperation
 */
maslin_O_TFR *
maslin_ooapopulation_op_ModelClass_newOperation( maslin_ooapopulation * self, maslin_O_OBJ * p_o_obj, c_t * p_op_name )
{
  maslin_O_OBJ * o_obj;maslin_O_TFR * operation;
  /* ASSIGN o_obj = PARAM.o_obj */
  o_obj = p_o_obj;
  /* CREATE OBJECT INSTANCE operation OF O_TFR */
  operation = (maslin_O_TFR *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_O_TFR_CLASS_NUMBER );
  operation->Tfr_ID = (Escher_UniqueID_t) operation;
  /* RELATE o_obj TO operation ACROSS R115 */
  maslin_O_TFR_R115_Link_may_contain( o_obj, operation );
  /* self.Operation_initialize( name:PARAM.op_name, o_tfr:operation ) */
  maslin_ooapopulation_op_Operation_initialize( self,  p_op_name, operation );
  /* RETURN operation */
  {maslin_O_TFR * xtumlOALrv = operation;
  return xtumlOALrv;}
}

/*
 * instance operation:  Operation_initialize
 */
void
maslin_ooapopulation_op_Operation_initialize( maslin_ooapopulation * self, c_t * p_name, maslin_O_TFR * p_o_tfr )
{
  maslin_EP_PKG * systypes_pkg;maslin_O_TFR * o_tfr;maslin_O_OBJ * clazz=0;maslin_S_DT * def_dt=0;
  /* ASSIGN o_tfr = PARAM.o_tfr */
  o_tfr = p_o_tfr;
  /* SELECT one clazz RELATED BY o_tfr->O_OBJ[R115] */
  clazz = ( 0 != o_tfr ) ? o_tfr->O_OBJ_R115_is_associated_with : 0;
  /* self.ModelClass_addOperationToOrdering( newTfr:o_tfr, o_obj:clazz ) */
  maslin_ooapopulation_op_ModelClass_addOperationToOrdering( self,  o_tfr, clazz );
  /* ASSIGN systypes_pkg = self.systypes_pkg */
  systypes_pkg = self->systypes_pkg;
  /* SELECT any def_dt RELATED BY systypes_pkg->PE_PE[R8000]->S_DT[R8001] WHERE ( ( SELECTED.Name == void ) ) */
  def_dt = 0;
  {  if ( 0 != systypes_pkg ) {
  maslin_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &systypes_pkg->PE_PE_R8000_contains );
  while ( ( 0 == def_dt ) && ( 0 != ( PE_PE_R8000_contains = (maslin_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( maslin_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {maslin_S_DT * selected = (maslin_S_DT *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "void" ) == 0 ) ) {
    def_dt = selected;
  }}
}}}
  /* RELATE o_tfr TO def_dt ACROSS R116 */
  maslin_O_TFR_R116_Link_defines_the_type_of_return_code( def_dt, o_tfr );
  /* ASSIGN o_tfr.Name = PARAM.name */
  o_tfr->Name = Escher_strcpy( o_tfr->Name, p_name );
  /* ASSIGN o_tfr.Instance_Based = Instance */
  o_tfr->Instance_Based = maslin_Scope_Instance_e;
  /* ASSIGN o_tfr.Suc_Pars = parseInitial */
  o_tfr->Suc_Pars = maslin_ParseStatus_parseInitial_e;
}

/*
 * instance operation:  ModelClass_addOperationToOrdering
 */
void
maslin_ooapopulation_op_ModelClass_addOperationToOrdering( maslin_ooapopulation * self, maslin_O_TFR * p_newTfr, maslin_O_OBJ * p_o_obj )
{
  maslin_O_TFR * operation;maslin_O_OBJ * o_obj;
  /* ASSIGN o_obj = PARAM.o_obj */
  o_obj = p_o_obj;
  /* ASSIGN operation = PARAM.newTfr */
  operation = p_newTfr;
  /* IF ( not_empty operation ) */
  if ( ( 0 != operation ) ) {
    maslin_O_TFR * peer=0;Escher_ObjectSet_s peers_space={0}; Escher_ObjectSet_s * peers = &peers_space;
    /* SELECT many peers RELATED BY o_obj->O_TFR[R115] */
    Escher_ClearSet( peers );
    if ( 0 != o_obj ) {
      Escher_CopySet( peers, &o_obj->O_TFR_R115_may_contain );
    }
    /* FOR EACH peer IN peers */
    { Escher_Iterator_s iterpeer;
    maslin_O_TFR * iipeer;
    Escher_IteratorReset( &iterpeer, peers );
    while ( (iipeer = (maslin_O_TFR *)Escher_IteratorNext( &iterpeer )) != 0 ) {
      peer = iipeer; {
      /* IF ( ( peer != operation ) ) */
      if ( ( peer != operation ) ) {
        maslin_O_TFR * predecessor=0;
        /* SELECT one predecessor RELATED BY peer->O_TFR[R125.precedes] */
        predecessor = ( 0 != peer ) ? peer->O_TFR_R125_precedes : 0;
        /* IF ( empty predecessor ) */
        if ( ( 0 == predecessor ) ) {
          /* RELATE operation TO peer ACROSS R125 */
          maslin_O_TFR_R125_Link_succeeds( operation, peer );
        }
      }
    }}}
    Escher_ClearSet( peers ); 
  }
}

/*
 * instance operation:  Package_newFunction
 */
maslin_S_SYNC *
maslin_ooapopulation_op_Package_newFunction( maslin_ooapopulation * self, maslin_EP_PKG * p_ep_pkg, c_t * p_function_name )
{
  maslin_EP_PKG * ep_pkg;maslin_PE_PE * pe;maslin_S_SYNC * fn;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* CREATE OBJECT INSTANCE fn OF S_SYNC */
  fn = (maslin_S_SYNC *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_S_SYNC_CLASS_NUMBER );
  fn->Sync_ID = (Escher_UniqueID_t) fn;
  /* CREATE OBJECT INSTANCE pe OF PE_PE */
  pe = (maslin_PE_PE *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_PE_PE_CLASS_NUMBER );
  pe->Element_ID = (Escher_UniqueID_t) pe;
  /* RELATE fn TO pe ACROSS R8001 */
  maslin_S_SYNC_R8001_Link( pe, fn );
  /* RELATE pe TO ep_pkg ACROSS R8000 */
  maslin_PE_PE_R8000_Link_contains( ep_pkg, pe );
  /* ASSIGN pe.type = FUNCTION */
  pe->type = maslin_ElementTypeConstants_FUNCTION_e;
  /* self.PackageableElement_initialize( pe_pe:pe ) */
  maslin_ooapopulation_op_PackageableElement_initialize( self,  pe );
  /* self.Function_initialize( name:PARAM.function_name, s_sync:fn ) */
  maslin_ooapopulation_op_Function_initialize( self,  p_function_name, fn );
  /* RETURN fn */
  {maslin_S_SYNC * xtumlOALrv = fn;
  return xtumlOALrv;}
}

/*
 * instance operation:  Function_initialize
 */
void
maslin_ooapopulation_op_Function_initialize( maslin_ooapopulation * self, c_t * p_name, maslin_S_SYNC * p_s_sync )
{
  maslin_EP_PKG * systypes_pkg;maslin_S_SYNC * s_sync;maslin_C_C * component=0;maslin_EP_PKG * package=0;maslin_PE_PE * packageableElem=0;maslin_S_DT * def_dt=0;
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
  maslin_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &systypes_pkg->PE_PE_R8000_contains );
  while ( ( 0 == def_dt ) && ( 0 != ( PE_PE_R8000_contains = (maslin_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( maslin_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {maslin_S_DT * selected = (maslin_S_DT *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "void" ) == 0 ) ) {
    def_dt = selected;
  }}
}}}
  /* RELATE s_sync TO def_dt ACROSS R25 */
  maslin_S_SYNC_R25_Link_defines_return_type( def_dt, s_sync );
  /* ASSIGN s_sync.Name = PARAM.name */
  s_sync->Name = Escher_strcpy( s_sync->Name, p_name );
  /* ASSIGN s_sync.Suc_Pars = parseInitial */
  s_sync->Suc_Pars = maslin_ParseStatus_parseInitial_e;
}

/*
 * instance operation:  Package_newPackage
 */
maslin_EP_PKG *
maslin_ooapopulation_op_Package_newPackage( maslin_ooapopulation * self, maslin_EP_PKG * p_ep_pkg, c_t * p_package_name )
{
  maslin_EP_PKG * ep_pkg;maslin_PE_PE * pe;maslin_EP_PKG * package;maslin_S_SYS * system=0;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* CREATE OBJECT INSTANCE package OF EP_PKG */
  package = (maslin_EP_PKG *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_EP_PKG_CLASS_NUMBER );
  package->Package_ID = (Escher_UniqueID_t) package;
  /* CREATE OBJECT INSTANCE pe OF PE_PE */
  pe = (maslin_PE_PE *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_PE_PE_CLASS_NUMBER );
  pe->Element_ID = (Escher_UniqueID_t) pe;
  /* RELATE package TO pe ACROSS R8001 */
  maslin_EP_PKG_R8001_Link( pe, package );
  /* SELECT one system RELATED BY ep_pkg->S_SYS[R1405] */
  system = ( 0 != ep_pkg ) ? ep_pkg->S_SYS_R1405 : 0;
  /* RELATE package TO system ACROSS R1405 */
  maslin_EP_PKG_R1405_Link_contains( system, package );
  /* RELATE ep_pkg TO pe ACROSS R8000 */
  maslin_PE_PE_R8000_Link_contains( ep_pkg, pe );
  /* ASSIGN package.Name = PARAM.package_name */
  package->Name = Escher_strcpy( package->Name, p_package_name );
  /* ASSIGN pe.type = PACKAGE */
  pe->type = maslin_ElementTypeConstants_PACKAGE_e;
  /* self.PackageableElement_initialize( pe_pe:pe ) */
  maslin_ooapopulation_op_PackageableElement_initialize( self,  pe );
  /* RETURN package */
  {maslin_EP_PKG * xtumlOALrv = package;
  return xtumlOALrv;}
}

/*
 * instance operation:  Package_newInterface
 */
maslin_C_I *
maslin_ooapopulation_op_Package_newInterface( maslin_ooapopulation * self, maslin_EP_PKG * p_ep_pkg, c_t * p_interface_name )
{
  maslin_EP_PKG * ep_pkg;maslin_PE_PE * pe;maslin_C_I * interface;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* CREATE OBJECT INSTANCE interface OF C_I */
  interface = (maslin_C_I *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_C_I_CLASS_NUMBER );
  interface->Id = (Escher_UniqueID_t) interface;
  /* CREATE OBJECT INSTANCE pe OF PE_PE */
  pe = (maslin_PE_PE *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_PE_PE_CLASS_NUMBER );
  pe->Element_ID = (Escher_UniqueID_t) pe;
  /* RELATE interface TO pe ACROSS R8001 */
  maslin_C_I_R8001_Link( pe, interface );
  /* RELATE pe TO ep_pkg ACROSS R8000 */
  maslin_PE_PE_R8000_Link_contains( ep_pkg, pe );
  /* ASSIGN pe.type = INTERFACE */
  pe->type = maslin_ElementTypeConstants_INTERFACE_e;
  /* self.PackageableElement_initialize( pe_pe:pe ) */
  maslin_ooapopulation_op_PackageableElement_initialize( self,  pe );
  /* ASSIGN interface.Name = PARAM.interface_name */
  interface->Name = Escher_strcpy( interface->Name, p_interface_name );
  /* RETURN interface */
  {maslin_C_I * xtumlOALrv = interface;
  return xtumlOALrv;}
}

/*
 * instance operation:  Component_initializeProvision
 */
maslin_C_IR *
maslin_ooapopulation_op_Component_initializeProvision( maslin_ooapopulation * self, maslin_C_C * p_c_c, maslin_C_I * p_c_i, c_t * p_port_name )
{
  maslin_C_I * c_i;maslin_C_C * c_c;maslin_C_PO * port;maslin_C_IR * interfaceRef;maslin_C_P * provision;
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* ASSIGN c_i = PARAM.c_i */
  c_i = p_c_i;
  /* CREATE OBJECT INSTANCE provision OF C_P */
  provision = (maslin_C_P *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_C_P_CLASS_NUMBER );
  provision->Provision_Id = (Escher_UniqueID_t) provision;
  /* CREATE OBJECT INSTANCE interfaceRef OF C_IR */
  interfaceRef = (maslin_C_IR *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_C_IR_CLASS_NUMBER );
  interfaceRef->Id = (Escher_UniqueID_t) interfaceRef;
  /* CREATE OBJECT INSTANCE port OF C_PO */
  port = (maslin_C_PO *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_C_PO_CLASS_NUMBER );
  port->Id = (Escher_UniqueID_t) port;
  /* RELATE provision TO interfaceRef ACROSS R4009 */
  maslin_C_P_R4009_Link( interfaceRef, provision );
  /* RELATE interfaceRef TO port ACROSS R4016 */
  maslin_C_IR_R4016_Link_exposes( port, interfaceRef );
  /* RELATE port TO c_c ACROSS R4010 */
  maslin_C_PO_R4010_Link_communicates_through( c_c, port );
  /* ASSIGN provision.InformalName = Unnamed_Interface */
  provision->InformalName = Escher_strcpy( provision->InformalName, "Unnamed_Interface" );
  /* self.Port_initialize( c_po:port, name:PARAM.port_name ) */
  maslin_ooapopulation_op_Port_initialize( self,  port, p_port_name );
  /* RETURN interfaceRef */
  {maslin_C_IR * xtumlOALrv = interfaceRef;
  return xtumlOALrv;}
}

/*
 * instance operation:  Port_initialize
 */
void
maslin_ooapopulation_op_Port_initialize( maslin_ooapopulation * self, maslin_C_PO * p_c_po, c_t * p_name )
{
  maslin_C_PO * c_po;
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
maslin_ooapopulation_op_InterfaceReference_formalize( maslin_ooapopulation * self, maslin_C_I * p_c_i, maslin_C_IR * p_c_ir )
{
  maslin_C_IR * c_ir;maslin_C_I * c_i;
  /* ASSIGN c_i = PARAM.c_i */
  c_i = p_c_i;
  /* ASSIGN c_ir = PARAM.c_ir */
  c_ir = p_c_ir;
  /* self.InterfaceReference_createSignalsAndOperations( c_i:c_i, c_ir:c_ir ) */
  maslin_ooapopulation_op_InterfaceReference_createSignalsAndOperations( self,  c_i, c_ir );
  /* RELATE c_i TO c_ir ACROSS R4012 */
  maslin_C_IR_R4012_Link_is_formal_definition( c_i, c_ir );
}

/*
 * instance operation:  InterfaceReference_createSignalsAndOperations
 */
void
maslin_ooapopulation_op_InterfaceReference_createSignalsAndOperations( maslin_ooapopulation * self, maslin_C_I * p_c_i, maslin_C_IR * p_c_ir )
{
  maslin_C_IR * c_ir;maslin_C_I * interface;
  /* ASSIGN interface = PARAM.c_i */
  interface = p_c_i;
  /* ASSIGN c_ir = PARAM.c_ir */
  c_ir = p_c_ir;
  /* IF ( not_empty interface ) */
  if ( ( 0 != interface ) ) {
    maslin_C_R * requirement=0;Escher_ObjectSet_s signals_space={0}; Escher_ObjectSet_s * signals = &signals_space;Escher_ObjectSet_s operations_space={0}; Escher_ObjectSet_s * operations = &operations_space;
    /* SELECT many operations RELATED BY interface->C_EP[R4003]->C_IO[R4004] */
    Escher_ClearSet( operations );
    {    if ( 0 != interface ) {
    maslin_C_EP * C_EP_R4003_is_defined_by;
    Escher_Iterator_s iC_EP_R4003_is_defined_by;
    Escher_IteratorReset( &iC_EP_R4003_is_defined_by, &interface->C_EP_R4003_is_defined_by );
    while ( 0 != ( C_EP_R4003_is_defined_by = (maslin_C_EP *) Escher_IteratorNext( &iC_EP_R4003_is_defined_by ) ) ) {
    if ( ( 0 != C_EP_R4003_is_defined_by ) && ( maslin_C_IO_CLASS_NUMBER == C_EP_R4003_is_defined_by->R4004_object_id ) )    {maslin_C_IO * R4004_subtype = C_EP_R4003_is_defined_by->R4004_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) operations, R4004_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) operations, R4004_subtype );
    }}}}}
    /* SELECT many signals RELATED BY interface->C_EP[R4003]->C_AS[R4004] */
    Escher_ClearSet( signals );
    {    if ( 0 != interface ) {
    maslin_C_EP * C_EP_R4003_is_defined_by;
    Escher_Iterator_s iC_EP_R4003_is_defined_by;
    Escher_IteratorReset( &iC_EP_R4003_is_defined_by, &interface->C_EP_R4003_is_defined_by );
    while ( 0 != ( C_EP_R4003_is_defined_by = (maslin_C_EP *) Escher_IteratorNext( &iC_EP_R4003_is_defined_by ) ) ) {
    if ( ( 0 != C_EP_R4003_is_defined_by ) && ( maslin_C_AS_CLASS_NUMBER == C_EP_R4003_is_defined_by->R4004_object_id ) )    {maslin_C_AS * R4004_subtype = C_EP_R4003_is_defined_by->R4004_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) signals, R4004_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) signals, R4004_subtype );
    }}}}}
    /* SELECT one requirement RELATED BY c_ir->C_R[R4009] */
    requirement = 0;
    if ( ( 0 != c_ir ) && ( maslin_C_R_CLASS_NUMBER == c_ir->R4009_object_id ) )    requirement = ( 0 != c_ir ) ? (maslin_C_R *) c_ir->R4009_subtype : 0;
    /* IF ( not_empty requirement ) */
    if ( ( 0 != requirement ) ) {
      maslin_C_IO * operation=0;maslin_C_AS * signal=0;
      /* FOR EACH signal IN signals */
      { Escher_Iterator_s itersignal;
      maslin_C_AS * iisignal;
      Escher_IteratorReset( &itersignal, signals );
      while ( (iisignal = (maslin_C_AS *)Escher_IteratorNext( &itersignal )) != 0 ) {
        signal = iisignal; {
        maslin_SPR_RS * req_signal;maslin_SPR_REP * req_ep;maslin_C_EP * ep=0;
        /* SELECT one ep RELATED BY signal->C_EP[R4004] */
        ep = ( 0 != signal ) ? signal->C_EP_R4004 : 0;
        /* CREATE OBJECT INSTANCE req_ep OF SPR_REP */
        req_ep = (maslin_SPR_REP *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SPR_REP_CLASS_NUMBER );
        req_ep->Id = (Escher_UniqueID_t) req_ep;
        /* CREATE OBJECT INSTANCE req_signal OF SPR_RS */
        req_signal = (maslin_SPR_RS *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SPR_RS_CLASS_NUMBER );
        req_signal->Id = (Escher_UniqueID_t) req_signal;
        /* ASSIGN req_signal.Suc_Pars = parseInitial */
        req_signal->Suc_Pars = maslin_ParseStatus_parseInitial_e;
        /* RELATE requirement TO ep ACROSS R4500 USING req_ep */
        maslin_SPR_REP_R4500_Link( ep, requirement, req_ep );
        /* RELATE req_signal TO req_ep ACROSS R4502 */
        maslin_SPR_RS_R4502_Link( req_ep, req_signal );
      }}}
      /* FOR EACH operation IN operations */
      { Escher_Iterator_s iteroperation;
      maslin_C_IO * iioperation;
      Escher_IteratorReset( &iteroperation, operations );
      while ( (iioperation = (maslin_C_IO *)Escher_IteratorNext( &iteroperation )) != 0 ) {
        operation = iioperation; {
        maslin_SPR_RO * req_operation;maslin_SPR_REP * req_ep;maslin_C_EP * ep=0;
        /* SELECT one ep RELATED BY operation->C_EP[R4004] */
        ep = ( 0 != operation ) ? operation->C_EP_R4004 : 0;
        /* CREATE OBJECT INSTANCE req_ep OF SPR_REP */
        req_ep = (maslin_SPR_REP *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SPR_REP_CLASS_NUMBER );
        req_ep->Id = (Escher_UniqueID_t) req_ep;
        /* CREATE OBJECT INSTANCE req_operation OF SPR_RO */
        req_operation = (maslin_SPR_RO *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SPR_RO_CLASS_NUMBER );
        req_operation->Id = (Escher_UniqueID_t) req_operation;
        /* ASSIGN req_operation.Suc_Pars = parseInitial */
        req_operation->Suc_Pars = maslin_ParseStatus_parseInitial_e;
        /* RELATE requirement TO ep ACROSS R4500 USING req_ep */
        maslin_SPR_REP_R4500_Link( ep, requirement, req_ep );
        /* RELATE req_operation TO req_ep ACROSS R4502 */
        maslin_SPR_RO_R4502_Link( req_ep, req_operation );
      }}}
    }
    else {
      maslin_C_IO * operation=0;maslin_C_AS * signal=0;maslin_C_P * provision=0;
      /* SELECT one provision RELATED BY c_ir->C_P[R4009] */
      provision = 0;
      if ( ( 0 != c_ir ) && ( maslin_C_P_CLASS_NUMBER == c_ir->R4009_object_id ) )      provision = ( 0 != c_ir ) ? (maslin_C_P *) c_ir->R4009_subtype : 0;
      /* FOR EACH signal IN signals */
      { Escher_Iterator_s itersignal;
      maslin_C_AS * iisignal;
      Escher_IteratorReset( &itersignal, signals );
      while ( (iisignal = (maslin_C_AS *)Escher_IteratorNext( &itersignal )) != 0 ) {
        signal = iisignal; {
        maslin_SPR_PS * pro_signal;maslin_SPR_PEP * pro_ep;maslin_C_EP * ep=0;
        /* SELECT one ep RELATED BY signal->C_EP[R4004] */
        ep = ( 0 != signal ) ? signal->C_EP_R4004 : 0;
        /* CREATE OBJECT INSTANCE pro_ep OF SPR_PEP */
        pro_ep = (maslin_SPR_PEP *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SPR_PEP_CLASS_NUMBER );
        pro_ep->Id = (Escher_UniqueID_t) pro_ep;
        /* CREATE OBJECT INSTANCE pro_signal OF SPR_PS */
        pro_signal = (maslin_SPR_PS *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SPR_PS_CLASS_NUMBER );
        pro_signal->Id = (Escher_UniqueID_t) pro_signal;
        /* ASSIGN pro_signal.Suc_Pars = parseInitial */
        pro_signal->Suc_Pars = maslin_ParseStatus_parseInitial_e;
        /* RELATE provision TO ep ACROSS R4501 USING pro_ep */
        maslin_SPR_PEP_R4501_Link( ep, provision, pro_ep );
        /* RELATE pro_signal TO pro_ep ACROSS R4503 */
        maslin_SPR_PS_R4503_Link( pro_ep, pro_signal );
      }}}
      /* FOR EACH operation IN operations */
      { Escher_Iterator_s iteroperation;
      maslin_C_IO * iioperation;
      Escher_IteratorReset( &iteroperation, operations );
      while ( (iioperation = (maslin_C_IO *)Escher_IteratorNext( &iteroperation )) != 0 ) {
        operation = iioperation; {
        maslin_SPR_PO * pro_operation;maslin_SPR_PEP * pro_ep;maslin_C_EP * ep=0;
        /* SELECT one ep RELATED BY operation->C_EP[R4004] */
        ep = ( 0 != operation ) ? operation->C_EP_R4004 : 0;
        /* CREATE OBJECT INSTANCE pro_ep OF SPR_PEP */
        pro_ep = (maslin_SPR_PEP *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SPR_PEP_CLASS_NUMBER );
        pro_ep->Id = (Escher_UniqueID_t) pro_ep;
        /* CREATE OBJECT INSTANCE pro_operation OF SPR_PO */
        pro_operation = (maslin_SPR_PO *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SPR_PO_CLASS_NUMBER );
        pro_operation->Id = (Escher_UniqueID_t) pro_operation;
        /* ASSIGN pro_operation.Suc_Pars = parseInitial */
        pro_operation->Suc_Pars = maslin_ParseStatus_parseInitial_e;
        /* RELATE provision TO ep ACROSS R4501 USING pro_ep */
        maslin_SPR_PEP_R4501_Link( ep, provision, pro_ep );
        /* RELATE pro_operation TO pro_ep ACROSS R4503 */
        maslin_SPR_PO_R4503_Link( pro_ep, pro_operation );
      }}}
    }
    Escher_ClearSet( signals ); Escher_ClearSet( operations ); 
  }
}

/*
 * instance operation:  InterfaceOperation_initialize
 */
void
maslin_ooapopulation_op_InterfaceOperation_initialize( maslin_ooapopulation * self, maslin_C_IO * p_c_io, c_t * p_name )
{
  maslin_EP_PKG * systypes_pkg;maslin_C_IO * c_io;maslin_C_I * interface=0;maslin_C_C * component=0;maslin_EP_PKG * package=0;maslin_PE_PE * packageableElem=0;maslin_S_DT * def_dt=0;
  /* ASSIGN c_io = PARAM.c_io */
  c_io = p_c_io;
  /* SELECT one packageableElem RELATED BY c_io->C_EP[R4004]->C_I[R4003]->PE_PE[R8001] */
  packageableElem = 0;
  {  if ( 0 != c_io ) {
  maslin_C_EP * C_EP_R4004 = c_io->C_EP_R4004;
  if ( 0 != C_EP_R4004 ) {
  maslin_C_I * C_I_R4003_provides_signature_of = C_EP_R4004->C_I_R4003_provides_signature_of;
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
  maslin_C_EP * C_EP_R4004 = c_io->C_EP_R4004;
  if ( 0 != C_EP_R4004 ) {
  interface = C_EP_R4004->C_I_R4003_provides_signature_of;
}}}
  /* self.Interface_addInterfaceOperationToOrder( c_i:interface, c_io:c_io ) */
  maslin_ooapopulation_op_Interface_addInterfaceOperationToOrder( self,  interface, c_io );
  /* ASSIGN systypes_pkg = self.systypes_pkg */
  systypes_pkg = self->systypes_pkg;
  /* SELECT any def_dt RELATED BY systypes_pkg->PE_PE[R8000]->S_DT[R8001] WHERE ( ( SELECTED.Name == void ) ) */
  def_dt = 0;
  {  if ( 0 != systypes_pkg ) {
  maslin_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &systypes_pkg->PE_PE_R8000_contains );
  while ( ( 0 == def_dt ) && ( 0 != ( PE_PE_R8000_contains = (maslin_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( maslin_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {maslin_S_DT * selected = (maslin_S_DT *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "void" ) == 0 ) ) {
    def_dt = selected;
  }}
}}}
  /* RELATE c_io TO def_dt ACROSS R4008 */
  maslin_C_IO_R4008_Link_defines_return_type( def_dt, c_io );
  /* ASSIGN c_io.Name = PARAM.name */
  c_io->Name = Escher_strcpy( c_io->Name, p_name );
  /* ASSIGN c_io.Direction = ServerClient */
  c_io->Direction = maslin_IFDirectionType_ServerClient_e;
}

/*
 * instance operation:  Interface_newExecutableProperty
 */
maslin_C_EP *
maslin_ooapopulation_op_Interface_newExecutableProperty( maslin_ooapopulation * self, const bool p_asynchronous, maslin_C_I * p_c_i, c_t * p_ep_name )
{
  maslin_C_I * c_i;maslin_C_EP * signal;Escher_ObjectSet_s references_space={0}; Escher_ObjectSet_s * references = &references_space;
  /* ASSIGN c_i = PARAM.c_i */
  c_i = p_c_i;
  /* CREATE OBJECT INSTANCE signal OF C_EP */
  signal = (maslin_C_EP *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_C_EP_CLASS_NUMBER );
  signal->Id = (Escher_UniqueID_t) signal;
  /* RELATE c_i TO signal ACROSS R4003 */
  maslin_C_EP_R4003_Link_is_defined_by( c_i, signal );
  /* SELECT many references RELATED BY c_i->C_IR[R4012] */
  Escher_ClearSet( references );
  if ( 0 != c_i ) {
    Escher_CopySet( references, &c_i->C_IR_R4012_is_formal_definition );
  }
  /* IF ( PARAM.asynchronous ) */
  if ( p_asynchronous ) {
  }
  else {
    maslin_C_IO * ssignal;
    /* CREATE OBJECT INSTANCE ssignal OF C_IO */
    ssignal = (maslin_C_IO *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_C_IO_CLASS_NUMBER );
    ssignal->Id = (Escher_UniqueID_t) ssignal;
    /* RELATE signal TO ssignal ACROSS R4004 */
    maslin_C_IO_R4004_Link( signal, ssignal );
    /* self.InterfaceOperation_initialize( c_io:ssignal, name:PARAM.ep_name ) */
    maslin_ooapopulation_op_InterfaceOperation_initialize( self,  ssignal, p_ep_name );
  }
  /* RETURN signal */
  {maslin_C_EP * xtumlOALrv = signal;
  Escher_ClearSet( references ); 
  return xtumlOALrv;}
  Escher_ClearSet( references ); 
}

/*
 * instance operation:  Interface_addInterfaceOperationToOrder
 */
void
maslin_ooapopulation_op_Interface_addInterfaceOperationToOrder( maslin_ooapopulation * self, maslin_C_I * p_c_i, maslin_C_IO * p_c_io )
{
  maslin_C_IO * interfaceOperation;maslin_C_I * c_i;
  /* ASSIGN c_i = PARAM.c_i */
  c_i = p_c_i;
  /* ASSIGN interfaceOperation = PARAM.c_io */
  interfaceOperation = p_c_io;
  /* IF ( not_empty interfaceOperation ) */
  if ( ( 0 != interfaceOperation ) ) {
    maslin_C_IO * peer=0;Escher_ObjectSet_s peers_space={0}; Escher_ObjectSet_s * peers = &peers_space;
    /* SELECT many peers RELATED BY c_i->C_EP[R4003]->C_IO[R4004] */
    Escher_ClearSet( peers );
    {    if ( 0 != c_i ) {
    maslin_C_EP * C_EP_R4003_is_defined_by;
    Escher_Iterator_s iC_EP_R4003_is_defined_by;
    Escher_IteratorReset( &iC_EP_R4003_is_defined_by, &c_i->C_EP_R4003_is_defined_by );
    while ( 0 != ( C_EP_R4003_is_defined_by = (maslin_C_EP *) Escher_IteratorNext( &iC_EP_R4003_is_defined_by ) ) ) {
    if ( ( 0 != C_EP_R4003_is_defined_by ) && ( maslin_C_IO_CLASS_NUMBER == C_EP_R4003_is_defined_by->R4004_object_id ) )    {maslin_C_IO * R4004_subtype = C_EP_R4003_is_defined_by->R4004_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) peers, R4004_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) peers, R4004_subtype );
    }}}}}
    /* FOR EACH peer IN peers */
    { Escher_Iterator_s iterpeer;
    maslin_C_IO * iipeer;
    Escher_IteratorReset( &iterpeer, peers );
    while ( (iipeer = (maslin_C_IO *)Escher_IteratorNext( &iterpeer )) != 0 ) {
      peer = iipeer; {
      /* IF ( ( peer != interfaceOperation ) ) */
      if ( ( peer != interfaceOperation ) ) {
        maslin_C_IO * predecessor=0;
        /* SELECT one predecessor RELATED BY peer->C_IO[R4019.precedes] */
        predecessor = ( 0 != peer ) ? peer->C_IO_R4019_precedes : 0;
        /* IF ( empty predecessor ) */
        if ( ( 0 == predecessor ) ) {
          /* RELATE interfaceOperation TO peer ACROSS R4019 */
          maslin_C_IO_R4019_Link_succeeds( interfaceOperation, peer );
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
maslin_ooapopulation_op_Attribute_addToIdentifier( maslin_ooapopulation * self, maslin_O_ATTR * p_o_attr, const i_t p_oid )
{
  maslin_O_ATTR * o_attr;maslin_O_OIDA * oida;maslin_O_ID * oid=0;
  /* ASSIGN o_attr = PARAM.o_attr */
  o_attr = p_o_attr;
  /* SELECT any oid RELATED BY o_attr->O_OBJ[R102]->O_ID[R104] WHERE ( ( SELECTED.Oid_ID == PARAM.oid ) ) */
  oid = 0;
  {  if ( 0 != o_attr ) {
  maslin_O_OBJ * O_OBJ_R102_abstracts_characteristics_of = o_attr->O_OBJ_R102_abstracts_characteristics_of;
  if ( 0 != O_OBJ_R102_abstracts_characteristics_of ) {
  maslin_O_ID * selected;
  Escher_Iterator_s iO_ID_R104_is_identified_by;
  Escher_IteratorReset( &iO_ID_R104_is_identified_by, &O_OBJ_R102_abstracts_characteristics_of->O_ID_R104_is_identified_by );
  while ( 0 != ( selected = (maslin_O_ID *) Escher_IteratorNext( &iO_ID_R104_is_identified_by ) ) ) {
    if ( ( selected->Oid_ID == p_oid ) ) {
      oid = selected;
      break;
  }}
}}}
  /* CREATE OBJECT INSTANCE oida OF O_OIDA */
  oida = (maslin_O_OIDA *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_O_OIDA_CLASS_NUMBER );
  oida->Attr_ID = (Escher_UniqueID_t) oida;
oida->Obj_ID = (Escher_UniqueID_t) oida;
  /* RELATE o_attr TO oid ACROSS R105 USING oida */
  maslin_O_OIDA_R105_Link( oid, o_attr, oida );
}

/*
 * instance operation:  Attribute_setType
 */
void
maslin_ooapopulation_op_Attribute_setType( maslin_ooapopulation * self, maslin_O_ATTR * p_o_attr, c_t * p_type_name )
{
  c_t * type_name=0;maslin_O_ATTR * o_attr;maslin_S_DT * s_dt=0;maslin_S_DT * cur_s_dt=0;
  /* ASSIGN o_attr = PARAM.o_attr */
  o_attr = p_o_attr;
  /* ASSIGN type_name = PARAM.type_name */
  type_name = Escher_strcpy( type_name, p_type_name );
  /* SELECT any s_dt FROM INSTANCES OF S_DT WHERE ( SELECTED.Name == type_name ) */
  s_dt = 0;
  { maslin_S_DT * selected;
    Escher_Iterator_s iters_dtmaslin_S_DT;
    Escher_IteratorReset( &iters_dtmaslin_S_DT, &pG_maslin_S_DT_extent.active );
    while ( (selected = (maslin_S_DT *) Escher_IteratorNext( &iters_dtmaslin_S_DT )) != 0 ) {
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
  /* IF ( ( s_dt != cur_s_dt ) ) */
  if ( ( s_dt != cur_s_dt ) ) {
    /* UNRELATE o_attr FROM cur_s_dt ACROSS R114 */
    maslin_O_ATTR_R114_Unlink_is_defined_by( cur_s_dt, o_attr );
    /* RELATE o_attr TO s_dt ACROSS R114 */
    maslin_O_ATTR_R114_Link_is_defined_by( s_dt, o_attr );
  }
}

/*
 * instance operation:  ModelClass_create_sm
 */
maslin_SM_SM *
maslin_ooapopulation_op_ModelClass_create_sm( maslin_ooapopulation * self, maslin_O_OBJ * p_o_obj, c_t * p_sm_type )
{
  maslin_O_OBJ * o_obj;maslin_SM_SM * sm_sm=0;
  /* ASSIGN o_obj = PARAM.o_obj */
  o_obj = p_o_obj;
  /* IF ( ( PARAM.sm_type == ISM ) ) */
  if ( ( Escher_strcmp( p_sm_type, "ISM" ) == 0 ) ) {
    maslin_SM_ISM * ism=0;
    /* SELECT one ism RELATED BY o_obj->SM_ISM[R518] */
    ism = ( 0 != o_obj ) ? o_obj->SM_ISM_R518 : 0;
    /* IF ( not_empty ism ) */
    if ( ( 0 != ism ) ) {
      maslin_SM_SM * sm_sm=0;
      /* SELECT one sm_sm RELATED BY ism->SM_SM[R517] */
      sm_sm = ( 0 != ism ) ? ism->SM_SM_R517 : 0;
      /* RETURN sm_sm */
      {maslin_SM_SM * xtumlOALrv = sm_sm;
      return xtumlOALrv;}
    }
    else {
      maslin_O_ATTR * newAttr;maslin_SM_MOORE * moore;maslin_SM_SM * sm;
      /* CREATE OBJECT INSTANCE ism OF SM_ISM */
      ism = (maslin_SM_ISM *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_ISM_CLASS_NUMBER );
      ism->SM_ID = (Escher_UniqueID_t) ism;
      /* RELATE o_obj TO ism ACROSS R518 */
      maslin_SM_ISM_R518_Link( o_obj, ism );
      /* CREATE OBJECT INSTANCE sm OF SM_SM */
      sm = (maslin_SM_SM *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_SM_CLASS_NUMBER );
      sm->SM_ID = (Escher_UniqueID_t) sm;
      /* RELATE ism TO sm ACROSS R517 */
      maslin_SM_ISM_R517_Link( sm, ism );
      /* CREATE OBJECT INSTANCE moore OF SM_MOORE */
      moore = (maslin_SM_MOORE *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_MOORE_CLASS_NUMBER );
      moore->SM_ID = (Escher_UniqueID_t) moore;
      /* RELATE sm TO moore ACROSS R510 */
      maslin_SM_MOORE_R510_Link( sm, moore );
      /* ASSIGN newAttr = self.ModelClass_newAttribute(attr_name:current_state, o_obj:o_obj) */
      newAttr = maslin_ooapopulation_op_ModelClass_newAttribute(self, "current_state", o_obj);
      /* RETURN sm */
      {maslin_SM_SM * xtumlOALrv = sm;
      return xtumlOALrv;}
    }
  }
  else if ( ( Escher_strcmp( p_sm_type, "ASM" ) == 0 ) ) {
    maslin_SM_ASM * sm_asm=0;
    /* SELECT one sm_asm RELATED BY o_obj->SM_ASM[R519] */
    sm_asm = ( 0 != o_obj ) ? o_obj->SM_ASM_R519 : 0;
    /* IF ( not_empty sm_asm ) */
    if ( ( 0 != sm_asm ) ) {
      maslin_SM_SM * sm_sm=0;
      /* SELECT one sm_sm RELATED BY sm_asm->SM_SM[R517] */
      sm_sm = ( 0 != sm_asm ) ? sm_asm->SM_SM_R517 : 0;
      /* RETURN sm_sm */
      {maslin_SM_SM * xtumlOALrv = sm_sm;
      return xtumlOALrv;}
    }
    else {
      maslin_SM_MOORE * moore;maslin_SM_SM * sm;
      /* CREATE OBJECT INSTANCE sm_asm OF SM_ASM */
      sm_asm = (maslin_SM_ASM *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_ASM_CLASS_NUMBER );
      sm_asm->SM_ID = (Escher_UniqueID_t) sm_asm;
      /* RELATE o_obj TO sm_asm ACROSS R519 */
      maslin_SM_ASM_R519_Link( o_obj, sm_asm );
      /* CREATE OBJECT INSTANCE sm OF SM_SM */
      sm = (maslin_SM_SM *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_SM_CLASS_NUMBER );
      sm->SM_ID = (Escher_UniqueID_t) sm;
      /* RELATE sm_asm TO sm ACROSS R517 */
      maslin_SM_ASM_R517_Link( sm, sm_asm );
      /* CREATE OBJECT INSTANCE moore OF SM_MOORE */
      moore = (maslin_SM_MOORE *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_MOORE_CLASS_NUMBER );
      moore->SM_ID = (Escher_UniqueID_t) moore;
      /* RELATE sm TO moore ACROSS R510 */
      maslin_SM_MOORE_R510_Link( sm, moore );
      /* RETURN sm */
      {maslin_SM_SM * xtumlOALrv = sm;
      return xtumlOALrv;}
    }
  }
  /* SELECT any sm_sm FROM INSTANCES OF SM_SM WHERE FALSE */
  sm_sm = 0;
  /* RETURN sm_sm */
  {maslin_SM_SM * xtumlOALrv = sm_sm;
  return xtumlOALrv;}
}

/*
 * instance operation:  StateMachine_newState
 */
void
maslin_ooapopulation_op_StateMachine_newState( maslin_ooapopulation * self, c_t * p_name, maslin_SM_SM * p_sm_sm )
{
  maslin_SM_SM * sm_sm;maslin_SM_STATE * st;
  /* ASSIGN sm_sm = PARAM.sm_sm */
  sm_sm = p_sm_sm;
  /* CREATE OBJECT INSTANCE st OF SM_STATE */
  st = (maslin_SM_STATE *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_STATE_CLASS_NUMBER );
  st->SMstt_ID = (Escher_UniqueID_t) st;
st->SM_ID = (Escher_UniqueID_t) st;
st->SMspd_ID = (Escher_UniqueID_t) st;
  /* RELATE sm_sm TO st ACROSS R501 */
  maslin_SM_STATE_R501_Link_is_decomposed_into( sm_sm, st );
  /* self.StateMachineState_initialize( name:PARAM.name, sm_state:st ) */
  maslin_ooapopulation_op_StateMachineState_initialize( self,  p_name, st );
}

/*
 * instance operation:  StateMachineState_initialize
 */
void
maslin_ooapopulation_op_StateMachineState_initialize( maslin_ooapopulation * self, c_t * p_name, maslin_SM_STATE * p_sm_state )
{
  maslin_SM_SEVT * event=0;maslin_SM_STATE * state=0;maslin_SM_STATE * sm_state;maslin_SM_ACT * act;maslin_SM_MOAH * moah;maslin_SM_AH * ah;Escher_ObjectSet_s event_set_space={0}; Escher_ObjectSet_s * event_set = &event_set_space;maslin_SM_MOORE * msm=0;maslin_SM_SM * sm=0;Escher_ObjectSet_s states_space={0}; Escher_ObjectSet_s * states = &states_space;
  /* ASSIGN sm_state = PARAM.sm_state */
  sm_state = p_sm_state;
  /* ASSIGN sm_state.Name = PARAM.name */
  sm_state->Name = Escher_strcpy( sm_state->Name, p_name );
  /* ASSIGN sm_state.Numb = 1 */
  sm_state->Numb = 1;
  /* SELECT many states RELATED BY sm_state->SM_SM[R501]->SM_STATE[R501] */
  Escher_ClearSet( states );
  {  if ( 0 != sm_state ) {
  maslin_SM_SM * SM_SM_R501 = sm_state->SM_SM_R501;
  if ( 0 != SM_SM_R501 ) {
  maslin_SM_STATE * SM_STATE_R501_is_decomposed_into;
  Escher_Iterator_s iSM_STATE_R501_is_decomposed_into;
  Escher_IteratorReset( &iSM_STATE_R501_is_decomposed_into, &SM_SM_R501->SM_STATE_R501_is_decomposed_into );
  while ( 0 != ( SM_STATE_R501_is_decomposed_into = (maslin_SM_STATE *) Escher_IteratorNext( &iSM_STATE_R501_is_decomposed_into ) ) ) {
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) states, SM_STATE_R501_is_decomposed_into ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) states, SM_STATE_R501_is_decomposed_into );
  }}}}}
  /* FOR EACH state IN states */
  { Escher_Iterator_s iterstate;
  maslin_SM_STATE * iistate;
  Escher_IteratorReset( &iterstate, states );
  while ( (iistate = (maslin_SM_STATE *)Escher_IteratorNext( &iterstate )) != 0 ) {
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
  /* CREATE OBJECT INSTANCE ah OF SM_AH */
  ah = (maslin_SM_AH *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_AH_CLASS_NUMBER );
  ah->Act_ID = (Escher_UniqueID_t) ah;
ah->SM_ID = (Escher_UniqueID_t) ah;
  /* CREATE OBJECT INSTANCE moah OF SM_MOAH */
  moah = (maslin_SM_MOAH *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_MOAH_CLASS_NUMBER );
  moah->Act_ID = (Escher_UniqueID_t) moah;
moah->SM_ID = (Escher_UniqueID_t) moah;
moah->SMstt_ID = (Escher_UniqueID_t) moah;
  /* RELATE ah TO moah ACROSS R513 */
  maslin_SM_MOAH_R513_Link( ah, moah );
  /* SELECT one sm RELATED BY sm_state->SM_SM[R501] */
  sm = ( 0 != sm_state ) ? sm_state->SM_SM_R501 : 0;
  /* SELECT one msm RELATED BY sm->SM_MOORE[R510] */
  msm = 0;
  if ( ( 0 != sm ) && ( maslin_SM_MOORE_CLASS_NUMBER == sm->R510_object_id ) )  msm = ( 0 != sm ) ? (maslin_SM_MOORE *) sm->R510_subtype : 0;
  /* RELATE sm_state TO msm ACROSS R511 USING moah */
  maslin_SM_MOAH_R511_Link( msm, sm_state, moah );
  /* CREATE OBJECT INSTANCE act OF SM_ACT */
  act = (maslin_SM_ACT *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_ACT_CLASS_NUMBER );
  act->Act_ID = (Escher_UniqueID_t) act;
act->SM_ID = (Escher_UniqueID_t) act;
  /* RELATE act TO ah ACROSS R514 */
  maslin_SM_AH_R514_Link_resides_in( act, ah );
  /* RELATE act TO sm ACROSS R515 */
  maslin_SM_ACT_R515_Link_contains( sm, act );
  /* SELECT many event_set RELATED BY sm->SM_EVT[R502]->SM_SEVT[R525] */
  Escher_ClearSet( event_set );
  {  if ( 0 != sm ) {
  maslin_SM_EVT * SM_EVT_R502_can_be_communicated_to_via;
  Escher_Iterator_s iSM_EVT_R502_can_be_communicated_to_via;
  Escher_IteratorReset( &iSM_EVT_R502_can_be_communicated_to_via, &sm->SM_EVT_R502_can_be_communicated_to_via );
  while ( 0 != ( SM_EVT_R502_can_be_communicated_to_via = (maslin_SM_EVT *) Escher_IteratorNext( &iSM_EVT_R502_can_be_communicated_to_via ) ) ) {
  if ( ( 0 != SM_EVT_R502_can_be_communicated_to_via ) && ( maslin_SM_SEVT_CLASS_NUMBER == SM_EVT_R502_can_be_communicated_to_via->R525_object_id ) )  {maslin_SM_SEVT * R525_subtype = SM_EVT_R502_can_be_communicated_to_via->R525_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) event_set, R525_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) event_set, R525_subtype );
  }}}}}
  /* FOR EACH event IN event_set */
  { Escher_Iterator_s iterevent;
  maslin_SM_SEVT * iievent;
  Escher_IteratorReset( &iterevent, event_set );
  while ( (iievent = (maslin_SM_SEVT *)Escher_IteratorNext( &iterevent )) != 0 ) {
    event = iievent; {
    maslin_SM_CH * ch;maslin_SM_SEME * sem;
    /* CREATE OBJECT INSTANCE sem OF SM_SEME */
    sem = (maslin_SM_SEME *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_SEME_CLASS_NUMBER );
    sem->SMstt_ID = (Escher_UniqueID_t) sem;
sem->SMevt_ID = (Escher_UniqueID_t) sem;
sem->SM_ID = (Escher_UniqueID_t) sem;
sem->SMspd_ID = (Escher_UniqueID_t) sem;
    /* CREATE OBJECT INSTANCE ch OF SM_CH */
    ch = (maslin_SM_CH *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_CH_CLASS_NUMBER );
    ch->SMstt_ID = (Escher_UniqueID_t) ch;
ch->SMevt_ID = (Escher_UniqueID_t) ch;
ch->SM_ID = (Escher_UniqueID_t) ch;
ch->SMspd_ID = (Escher_UniqueID_t) ch;
    /* RELATE sm_state TO event ACROSS R503 USING sem */
    maslin_SM_SEME_R503_Link( sm_state, event, sem );
    /* RELATE ch TO sem ACROSS R504 */
    maslin_SM_CH_R504_Link( sem, ch );
  }}}
  /* ASSIGN act.Suc_Pars = parseInitial */
  act->Suc_Pars = maslin_ParseStatus_parseInitial_e;
  Escher_ClearSet( event_set ); Escher_ClearSet( states ); 
}

/*
 * instance operation:  StateMachine_newEvent
 */
void
maslin_ooapopulation_op_StateMachine_newEvent( maslin_ooapopulation * self, c_t * p_name, maslin_SM_SM * p_sm_sm )
{
  maslin_SM_SM * sm_sm;maslin_SM_EVT * newEvent;
  /* ASSIGN sm_sm = PARAM.sm_sm */
  sm_sm = p_sm_sm;
  /* CREATE OBJECT INSTANCE newEvent OF SM_EVT */
  newEvent = (maslin_SM_EVT *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_EVT_CLASS_NUMBER );
  newEvent->SMevt_ID = (Escher_UniqueID_t) newEvent;
newEvent->SM_ID = (Escher_UniqueID_t) newEvent;
newEvent->SMspd_ID = (Escher_UniqueID_t) newEvent;
  /* RELATE sm_sm TO newEvent ACROSS R502 */
  maslin_SM_EVT_R502_Link_can_be_communicated_to_via( sm_sm, newEvent );
  /* self.StateMachineEvent_initialize( name:PARAM.name, sm_evt:newEvent ) */
  maslin_ooapopulation_op_StateMachineEvent_initialize( self,  p_name, newEvent );
}

/*
 * instance operation:  StateMachineEvent_initialize
 */
void
maslin_ooapopulation_op_StateMachineEvent_initialize( maslin_ooapopulation * self, c_t * p_name, maslin_SM_EVT * p_sm_evt )
{
  maslin_SM_EVT * sm_evt;maslin_SM_LEVT * locEvt;maslin_SM_SEVT * semEvt;maslin_SM_SM * sm=0;
  /* ASSIGN sm_evt = PARAM.sm_evt */
  sm_evt = p_sm_evt;
  /* ASSIGN sm_evt.Mning = PARAM.name */
  sm_evt->Mning = Escher_strcpy( sm_evt->Mning, p_name );
  /* ASSIGN sm_evt.Numb = 1 */
  sm_evt->Numb = 1;
  /* self.StateMachineEvent_setUniqueNumber( checkForDuplicate:FALSE, sm_evt:sm_evt ) */
  maslin_ooapopulation_op_StateMachineEvent_setUniqueNumber( self,  FALSE, sm_evt );
  /* SELECT one sm RELATED BY sm_evt->SM_SM[R502] */
  sm = ( 0 != sm_evt ) ? sm_evt->SM_SM_R502 : 0;
  /* CREATE OBJECT INSTANCE semEvt OF SM_SEVT */
  semEvt = (maslin_SM_SEVT *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_SEVT_CLASS_NUMBER );
  semEvt->SMevt_ID = (Escher_UniqueID_t) semEvt;
semEvt->SM_ID = (Escher_UniqueID_t) semEvt;
semEvt->SMspd_ID = (Escher_UniqueID_t) semEvt;
  /* RELATE sm_evt TO semEvt ACROSS R525 */
  maslin_SM_SEVT_R525_Link( sm_evt, semEvt );
  /* CREATE OBJECT INSTANCE locEvt OF SM_LEVT */
  locEvt = (maslin_SM_LEVT *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_LEVT_CLASS_NUMBER );
  locEvt->SMevt_ID = (Escher_UniqueID_t) locEvt;
locEvt->SM_ID = (Escher_UniqueID_t) locEvt;
  /* RELATE semEvt TO locEvt ACROSS R526 */
  maslin_SM_LEVT_R526_Link( semEvt, locEvt );
  /* self.SEMEvent_createDefaultMatrixEntries( sm_sevt:semEvt ) */
  maslin_ooapopulation_op_SEMEvent_createDefaultMatrixEntries( self,  semEvt );
}

/*
 * instance operation:  StateMachineEvent_setUniqueNumber
 */
void
maslin_ooapopulation_op_StateMachineEvent_setUniqueNumber( maslin_ooapopulation * self, const bool p_checkForDuplicate, maslin_SM_EVT * p_sm_evt )
{
  maslin_SM_EVT * event=0;i_t originalNumb;bool foundDuplicate;bool checkForDuplicate;maslin_SM_EVT * sm_evt;Escher_ObjectSet_s events_space={0}; Escher_ObjectSet_s * events = &events_space;maslin_SM_SM * sm=0;
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
  maslin_SM_EVT * iievent;
  Escher_IteratorReset( &iterevent, events );
  while ( (iievent = (maslin_SM_EVT *)Escher_IteratorNext( &iterevent )) != 0 ) {
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
maslin_ooapopulation_op_SEMEvent_createDefaultMatrixEntries( maslin_ooapopulation * self, maslin_SM_SEVT * p_sm_sevt )
{
  maslin_SM_STATE * state=0;maslin_SM_SEVT * sm_sevt;Escher_ObjectSet_s states_space={0}; Escher_ObjectSet_s * states = &states_space;
  /* ASSIGN sm_sevt = PARAM.sm_sevt */
  sm_sevt = p_sm_sevt;
  /* SELECT many states RELATED BY sm_sevt->SM_EVT[R525]->SM_SM[R502]->SM_STATE[R501] */
  Escher_ClearSet( states );
  {  if ( 0 != sm_sevt ) {
  maslin_SM_EVT * SM_EVT_R525 = sm_sevt->SM_EVT_R525;
  if ( 0 != SM_EVT_R525 ) {
  maslin_SM_SM * SM_SM_R502 = SM_EVT_R525->SM_SM_R502;
  if ( 0 != SM_SM_R502 ) {
  maslin_SM_STATE * SM_STATE_R501_is_decomposed_into;
  Escher_Iterator_s iSM_STATE_R501_is_decomposed_into;
  Escher_IteratorReset( &iSM_STATE_R501_is_decomposed_into, &SM_SM_R502->SM_STATE_R501_is_decomposed_into );
  while ( 0 != ( SM_STATE_R501_is_decomposed_into = (maslin_SM_STATE *) Escher_IteratorNext( &iSM_STATE_R501_is_decomposed_into ) ) ) {
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) states, SM_STATE_R501_is_decomposed_into ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) states, SM_STATE_R501_is_decomposed_into );
  }}}}}}
  /* FOR EACH state IN states */
  { Escher_Iterator_s iterstate;
  maslin_SM_STATE * iistate;
  Escher_IteratorReset( &iterstate, states );
  while ( (iistate = (maslin_SM_STATE *)Escher_IteratorNext( &iterstate )) != 0 ) {
    state = iistate; {
    maslin_SM_CH * cantHappen;maslin_SM_SEME * entry;
    /* CREATE OBJECT INSTANCE entry OF SM_SEME */
    entry = (maslin_SM_SEME *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_SEME_CLASS_NUMBER );
    entry->SMstt_ID = (Escher_UniqueID_t) entry;
entry->SMevt_ID = (Escher_UniqueID_t) entry;
entry->SM_ID = (Escher_UniqueID_t) entry;
entry->SMspd_ID = (Escher_UniqueID_t) entry;
    /* RELATE state TO sm_sevt ACROSS R503 USING entry */
    maslin_SM_SEME_R503_Link( state, sm_sevt, entry );
    /* CREATE OBJECT INSTANCE cantHappen OF SM_CH */
    cantHappen = (maslin_SM_CH *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_CH_CLASS_NUMBER );
    cantHappen->SMstt_ID = (Escher_UniqueID_t) cantHappen;
cantHappen->SMevt_ID = (Escher_UniqueID_t) cantHappen;
cantHappen->SM_ID = (Escher_UniqueID_t) cantHappen;
cantHappen->SMspd_ID = (Escher_UniqueID_t) cantHappen;
    /* RELATE cantHappen TO entry ACROSS R504 */
    maslin_SM_CH_R504_Link( entry, cantHappen );
  }}}
  Escher_ClearSet( states ); 
}

/*
 * instance operation:  transformTransition
 */
void
maslin_ooapopulation_op_transformTransition( maslin_ooapopulation * self, c_t * p_endState, c_t * p_eventName, c_t * p_startState )
{
  maslin_O_OBJ * current_class;maslin_SM_SM * sm_sm=0;
  /* ASSIGN current_class = self.current_class */
  current_class = self->current_class;
  /* SELECT any sm_sm FROM INSTANCES OF SM_SM WHERE FALSE */
  sm_sm = 0;
  /* IF ( ( TRUE == self.processingISM ) ) */
  if ( ( TRUE == self->processingISM ) ) {
    /* SELECT one sm_sm RELATED BY current_class->SM_ISM[R518]->SM_SM[R517] */
    sm_sm = 0;
    {    if ( 0 != current_class ) {
    maslin_SM_ISM * SM_ISM_R518 = current_class->SM_ISM_R518;
    if ( 0 != SM_ISM_R518 ) {
    sm_sm = SM_ISM_R518->SM_SM_R517;
}}}
  }
  else {
    /* SELECT one sm_sm RELATED BY current_class->SM_ASM[R519]->SM_SM[R517] */
    sm_sm = 0;
    {    if ( 0 != current_class ) {
    maslin_SM_ASM * SM_ASM_R519 = current_class->SM_ASM_R519;
    if ( 0 != SM_ASM_R519 ) {
    sm_sm = SM_ASM_R519->SM_SM_R517;
}}}
  }
  /* IF ( ( ( Non_Existent == PARAM.startState ) or ( Non_Existant == PARAM.startState ) ) ) */
  if ( ( ( Escher_strcmp( "Non_Existent", p_startState ) == 0 ) || ( Escher_strcmp( "Non_Existant", p_startState ) == 0 ) ) ) {
    /* self.StateMachine_newCreationTransition( endState:PARAM.endState, eventName:PARAM.eventName, sm_sm:sm_sm ) */
    maslin_ooapopulation_op_StateMachine_newCreationTransition( self,  p_endState, p_eventName, sm_sm );
  }
  else {
    /* self.StateMachine_newTransition( endState:PARAM.endState, eventName:PARAM.eventName, sm_sm:sm_sm, startState:PARAM.startState ) */
    maslin_ooapopulation_op_StateMachine_newTransition( self,  p_endState, p_eventName, sm_sm, p_startState );
  }
}

/*
 * instance operation:  StateMachine_newTransition
 */
void
maslin_ooapopulation_op_StateMachine_newTransition( maslin_ooapopulation * self, c_t * p_endState, c_t * p_eventName, maslin_SM_SM * p_sm_sm, c_t * p_startState )
{
  maslin_SM_SM * sm_sm;maslin_SM_STATE * fromState=0;
  /* ASSIGN sm_sm = PARAM.sm_sm */
  sm_sm = p_sm_sm;
  /* SELECT any fromState RELATED BY sm_sm->SM_STATE[R501] WHERE ( ( SELECTED.Name == PARAM.startState ) ) */
  fromState = 0;
  if ( 0 != sm_sm ) {
    maslin_SM_STATE * selected;
    Escher_Iterator_s iSM_STATE_R501_is_decomposed_into;
    Escher_IteratorReset( &iSM_STATE_R501_is_decomposed_into, &sm_sm->SM_STATE_R501_is_decomposed_into );
    while ( 0 != ( selected = (maslin_SM_STATE *) Escher_IteratorNext( &iSM_STATE_R501_is_decomposed_into ) ) ) {
      if ( ( Escher_strcmp( selected->Name, p_startState ) == 0 ) ) {
        fromState = selected;
        break;
  }}}
  /* IF ( ( Ignore == PARAM.endState ) ) */
  if ( ( Escher_strcmp( "Ignore", p_endState ) == 0 ) ) {
  }
  else if ( ( Escher_strcmp( "Cannot_Happen", p_endState ) == 0 ) ) {
  }
  else {
    maslin_SM_STATE * toState=0;
    /* SELECT any toState RELATED BY sm_sm->SM_STATE[R501] WHERE ( ( SELECTED.Name == PARAM.endState ) ) */
    toState = 0;
    if ( 0 != sm_sm ) {
      maslin_SM_STATE * selected;
      Escher_Iterator_s iSM_STATE_R501_is_decomposed_into;
      Escher_IteratorReset( &iSM_STATE_R501_is_decomposed_into, &sm_sm->SM_STATE_R501_is_decomposed_into );
      while ( 0 != ( selected = (maslin_SM_STATE *) Escher_IteratorNext( &iSM_STATE_R501_is_decomposed_into ) ) ) {
        if ( ( Escher_strcmp( selected->Name, p_endState ) == 0 ) ) {
          toState = selected;
          break;
    }}}
    /* IF ( ( not_empty fromState and not_empty toState ) ) */
    if ( ( ( 0 != fromState ) && ( 0 != toState ) ) ) {
      maslin_SM_NETXN * net;maslin_SM_TXN * tr;
      /* CREATE OBJECT INSTANCE tr OF SM_TXN */
      tr = (maslin_SM_TXN *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_TXN_CLASS_NUMBER );
      tr->Trans_ID = (Escher_UniqueID_t) tr;
tr->SM_ID = (Escher_UniqueID_t) tr;
      /* CREATE OBJECT INSTANCE net OF SM_NETXN */
      net = (maslin_SM_NETXN *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_NETXN_CLASS_NUMBER );
      net->Trans_ID = (Escher_UniqueID_t) net;
net->SM_ID = (Escher_UniqueID_t) net;
      /* RELATE tr TO net ACROSS R507 */
      maslin_SM_NETXN_R507_Link( tr, net );
      /* RELATE net TO fromState ACROSS R508 */
      maslin_SM_NETXN_R508_Link_is_origination_of( fromState, net );
      /* RELATE tr TO toState ACROSS R506 */
      maslin_SM_TXN_R506_Link_is_destination_of( toState, tr );
      /* RELATE sm_sm TO tr ACROSS R505 */
      maslin_SM_TXN_R505_Link_contains( sm_sm, tr );
      /* self.Transition_initialize( sm_txn:tr ) */
      maslin_ooapopulation_op_Transition_initialize( self,  tr );
    }
  }
}

/*
 * instance operation:  Transition_initialize
 */
void
maslin_ooapopulation_op_Transition_initialize( maslin_ooapopulation * self, maslin_SM_TXN * p_sm_txn )
{
  maslin_SM_TXN * sm_txn;maslin_SM_ACT * act;maslin_SM_TAH * tah;maslin_SM_AH * ah;maslin_SM_SM * sm=0;
  /* ASSIGN sm_txn = PARAM.sm_txn */
  sm_txn = p_sm_txn;
  /* CREATE OBJECT INSTANCE ah OF SM_AH */
  ah = (maslin_SM_AH *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_AH_CLASS_NUMBER );
  ah->Act_ID = (Escher_UniqueID_t) ah;
ah->SM_ID = (Escher_UniqueID_t) ah;
  /* CREATE OBJECT INSTANCE tah OF SM_TAH */
  tah = (maslin_SM_TAH *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_TAH_CLASS_NUMBER );
  tah->Act_ID = (Escher_UniqueID_t) tah;
tah->SM_ID = (Escher_UniqueID_t) tah;
  /* RELATE ah TO tah ACROSS R513 */
  maslin_SM_TAH_R513_Link( ah, tah );
  /* SELECT one sm RELATED BY sm_txn->SM_SM[R505] */
  sm = ( 0 != sm_txn ) ? sm_txn->SM_SM_R505 : 0;
  /* CREATE OBJECT INSTANCE act OF SM_ACT */
  act = (maslin_SM_ACT *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_ACT_CLASS_NUMBER );
  act->Act_ID = (Escher_UniqueID_t) act;
act->SM_ID = (Escher_UniqueID_t) act;
  /* ASSIGN act.Suc_Pars = parseInitial */
  act->Suc_Pars = maslin_ParseStatus_parseInitial_e;
  /* RELATE act TO ah ACROSS R514 */
  maslin_SM_AH_R514_Link_resides_in( act, ah );
  /* RELATE act TO sm ACROSS R515 */
  maslin_SM_ACT_R515_Link_contains( sm, act );
  /* RELATE sm_txn TO tah ACROSS R530 */
  maslin_SM_TAH_R530_Link_houses_action_for( sm_txn, tah );
}

/*
 * instance operation:  StateMachine_newCreationTransition
 */
void
maslin_ooapopulation_op_StateMachine_newCreationTransition( maslin_ooapopulation * self, c_t * p_endState, c_t * p_eventName, maslin_SM_SM * p_sm_sm )
{
  maslin_SM_SM * sm_sm;
  /* ASSIGN sm_sm = PARAM.sm_sm */
  sm_sm = p_sm_sm;
  /* IF ( ( Ignore == PARAM.endState ) ) */
  if ( ( Escher_strcmp( "Ignore", p_endState ) == 0 ) ) {
  }
  else if ( ( Escher_strcmp( "Cannot_Happen", p_endState ) == 0 ) ) {
  }
  else {
    maslin_SM_STATE * state=0;
    /* SELECT any state RELATED BY sm_sm->SM_STATE[R501] WHERE ( ( SELECTED.Name == PARAM.endState ) ) */
    state = 0;
    if ( 0 != sm_sm ) {
      maslin_SM_STATE * selected;
      Escher_Iterator_s iSM_STATE_R501_is_decomposed_into;
      Escher_IteratorReset( &iSM_STATE_R501_is_decomposed_into, &sm_sm->SM_STATE_R501_is_decomposed_into );
      while ( 0 != ( selected = (maslin_SM_STATE *) Escher_IteratorNext( &iSM_STATE_R501_is_decomposed_into ) ) ) {
        if ( ( Escher_strcmp( selected->Name, p_endState ) == 0 ) ) {
          state = selected;
          break;
    }}}
    /* IF ( not_empty state ) */
    if ( ( 0 != state ) ) {
      maslin_SM_CRTXN * ct;maslin_SM_TXN * tr;
      /* CREATE OBJECT INSTANCE tr OF SM_TXN */
      tr = (maslin_SM_TXN *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_TXN_CLASS_NUMBER );
      tr->Trans_ID = (Escher_UniqueID_t) tr;
tr->SM_ID = (Escher_UniqueID_t) tr;
      /* CREATE OBJECT INSTANCE ct OF SM_CRTXN */
      ct = (maslin_SM_CRTXN *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_SM_CRTXN_CLASS_NUMBER );
      ct->Trans_ID = (Escher_UniqueID_t) ct;
ct->SM_ID = (Escher_UniqueID_t) ct;
      /* RELATE tr TO ct ACROSS R507 */
      maslin_SM_CRTXN_R507_Link( tr, ct );
      /* RELATE tr TO state ACROSS R506 */
      maslin_SM_TXN_R506_Link_is_destination_of( state, tr );
      /* RELATE sm_sm TO tr ACROSS R505 */
      maslin_SM_TXN_R505_Link_contains( sm_sm, tr );
      /* self.Transition_initialize( sm_txn:tr ) */
      maslin_ooapopulation_op_Transition_initialize( self,  tr );
    }
  }
}

/*
 * instance operation:  Transition_addEvent
 */
void
maslin_ooapopulation_op_Transition_addEvent( maslin_ooapopulation * self, c_t * p_eventName, maslin_SM_TXN * p_sm_txn )
{
  maslin_SM_TXN * sm_txn;
  /* ASSIGN sm_txn = PARAM.sm_txn */
  sm_txn = p_sm_txn;
}

/*
 * instance operation:  Operation_newParameter
 */
void
maslin_ooapopulation_op_Operation_newParameter( maslin_ooapopulation * self, maslin_O_TFR * p_o_tfr, c_t * p_parameter_name )
{
  maslin_O_TFR * o_tfr;maslin_O_TPARM * parm;
  /* ASSIGN o_tfr = PARAM.o_tfr */
  o_tfr = p_o_tfr;
  /* CREATE OBJECT INSTANCE parm OF O_TPARM */
  parm = (maslin_O_TPARM *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_O_TPARM_CLASS_NUMBER );
  parm->TParm_ID = (Escher_UniqueID_t) parm;
  /* RELATE o_tfr TO parm ACROSS R117 */
  maslin_O_TPARM_R117_Link_contains( o_tfr, parm );
  /* self.OperationParameter_initialize( name:PARAM.parameter_name, o_tparm:parm ) */
  maslin_ooapopulation_op_OperationParameter_initialize( self,  p_parameter_name, parm );
  /* self.Operation_createParameterInInteractions( o_tfr:o_tfr, o_tparm:parm ) */
  maslin_ooapopulation_op_Operation_createParameterInInteractions( self,  o_tfr, parm );
}

/*
 * instance operation:  OperationParameter_initialize
 */
void
maslin_ooapopulation_op_OperationParameter_initialize( maslin_ooapopulation * self, c_t * p_name, maslin_O_TPARM * p_o_tparm )
{
  maslin_EP_PKG * systypes_pkg;maslin_O_TPARM * o_tparm;maslin_O_TFR * operation=0;maslin_S_DT * def_dt=0;
  /* ASSIGN o_tparm = PARAM.o_tparm */
  o_tparm = p_o_tparm;
  /* SELECT one operation RELATED BY o_tparm->O_TFR[R117] */
  operation = ( 0 != o_tparm ) ? o_tparm->O_TFR_R117_is_part_of_ : 0;
  /* self.Operation_addParameterToOrdering( o_tfr:operation, o_tparm:o_tparm ) */
  maslin_ooapopulation_op_Operation_addParameterToOrdering( self,  operation, o_tparm );
  /* ASSIGN systypes_pkg = self.systypes_pkg */
  systypes_pkg = self->systypes_pkg;
  /* SELECT any def_dt RELATED BY systypes_pkg->PE_PE[R8000]->S_DT[R8001] WHERE ( ( SELECTED.Name == string ) ) */
  def_dt = 0;
  {  if ( 0 != systypes_pkg ) {
  maslin_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &systypes_pkg->PE_PE_R8000_contains );
  while ( ( 0 == def_dt ) && ( 0 != ( PE_PE_R8000_contains = (maslin_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( maslin_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {maslin_S_DT * selected = (maslin_S_DT *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "string" ) == 0 ) ) {
    def_dt = selected;
  }}
}}}
  /* RELATE o_tparm TO def_dt ACROSS R118 */
  maslin_O_TPARM_R118_Link_defines_the_type_of_( def_dt, o_tparm );
  /* ASSIGN o_tparm.Name = PARAM.name */
  o_tparm->Name = Escher_strcpy( o_tparm->Name, p_name );
}

/*
 * instance operation:  Operation_createParameterInInteractions
 */
void
maslin_ooapopulation_op_Operation_createParameterInInteractions( maslin_ooapopulation * self, maslin_O_TFR * p_o_tfr, maslin_O_TPARM * p_o_tparm )
{
  maslin_MSG_M * message=0;maslin_O_TFR * o_tfr;maslin_O_TPARM * o_tparm;Escher_ObjectSet_s messages_space={0}; Escher_ObjectSet_s * messages = &messages_space;
  /* ASSIGN o_tparm = PARAM.o_tparm */
  o_tparm = p_o_tparm;
  /* ASSIGN o_tfr = PARAM.o_tfr */
  o_tfr = p_o_tfr;
  /* SELECT many messages RELATED BY o_tfr->MSG_O[R1011]->MSG_SM[R1020]->MSG_M[R1018] */
  Escher_ClearSet( messages );
  {  if ( 0 != o_tfr ) {
  maslin_MSG_O * MSG_O_R1011_is_invoked_by;
  Escher_Iterator_s iMSG_O_R1011_is_invoked_by;
  Escher_IteratorReset( &iMSG_O_R1011_is_invoked_by, &o_tfr->MSG_O_R1011_is_invoked_by );
  while ( 0 != ( MSG_O_R1011_is_invoked_by = (maslin_MSG_O *) Escher_IteratorNext( &iMSG_O_R1011_is_invoked_by ) ) ) {
  maslin_MSG_SM * MSG_SM_R1020 = MSG_O_R1011_is_invoked_by->MSG_SM_R1020;
  if ( 0 != MSG_SM_R1020 ) {
  {maslin_MSG_M * MSG_M_R1018 = MSG_SM_R1020->MSG_M_R1018;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) messages, MSG_M_R1018 ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) messages, MSG_M_R1018 );
  }}}}}}
  /* FOR EACH message IN messages */
  { Escher_Iterator_s itermessage;
  maslin_MSG_M * iimessage;
  Escher_IteratorReset( &itermessage, messages );
  while ( (iimessage = (maslin_MSG_M *)Escher_IteratorNext( &itermessage )) != 0 ) {
    message = iimessage; {
    maslin_MSG_OA * oa;maslin_MSG_A * arg;
    /* CREATE OBJECT INSTANCE arg OF MSG_A */
    arg = (maslin_MSG_A *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_MSG_A_CLASS_NUMBER );
    arg->Arg_ID = (Escher_UniqueID_t) arg;
    /* CREATE OBJECT INSTANCE oa OF MSG_OA */
    oa = (maslin_MSG_OA *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_MSG_OA_CLASS_NUMBER );
    oa->Arg_ID = (Escher_UniqueID_t) oa;
    /* RELATE oa TO o_tparm ACROSS R1015 */
    maslin_MSG_OA_R1015_Link_represents( o_tparm, oa );
    /* RELATE oa TO arg ACROSS R1013 */
    maslin_MSG_OA_R1013_Link( arg, oa );
    /* RELATE message TO arg ACROSS R1001 */
    maslin_MSG_A_R1001_Link_has_a_formal( message, arg );
  }}}
  Escher_ClearSet( messages ); 
}

/*
 * instance operation:  Operation_addParameterToOrdering
 */
void
maslin_ooapopulation_op_Operation_addParameterToOrdering( maslin_ooapopulation * self, maslin_O_TFR * p_o_tfr, maslin_O_TPARM * p_o_tparm )
{
  maslin_O_TPARM * parameter;maslin_O_TFR * o_tfr;
  /* ASSIGN o_tfr = PARAM.o_tfr */
  o_tfr = p_o_tfr;
  /* ASSIGN parameter = PARAM.o_tparm */
  parameter = p_o_tparm;
  /* IF ( not_empty parameter ) */
  if ( ( 0 != parameter ) ) {
    maslin_O_TPARM * peer=0;Escher_ObjectSet_s peers_space={0}; Escher_ObjectSet_s * peers = &peers_space;
    /* SELECT many peers RELATED BY o_tfr->O_TPARM[R117] */
    Escher_ClearSet( peers );
    if ( 0 != o_tfr ) {
      Escher_CopySet( peers, &o_tfr->O_TPARM_R117_contains );
    }
    /* FOR EACH peer IN peers */
    { Escher_Iterator_s iterpeer;
    maslin_O_TPARM * iipeer;
    Escher_IteratorReset( &iterpeer, peers );
    while ( (iipeer = (maslin_O_TPARM *)Escher_IteratorNext( &iterpeer )) != 0 ) {
      peer = iipeer; {
      /* IF ( ( peer != parameter ) ) */
      if ( ( peer != parameter ) ) {
        maslin_O_TPARM * predecessor=0;
        /* SELECT one predecessor RELATED BY peer->O_TPARM[R124.precedes] */
        predecessor = ( 0 != peer ) ? peer->O_TPARM_R124_precedes : 0;
        /* IF ( empty predecessor ) */
        if ( ( 0 == predecessor ) ) {
          /* RELATE parameter TO peer ACROSS R124 */
          maslin_O_TPARM_R124_Link_succeeds( parameter, peer );
        }
      }
    }}}
    Escher_ClearSet( peers ); 
  }
}

/*
 * instance operation:  Function_newParameter
 */
void
maslin_ooapopulation_op_Function_newParameter( maslin_ooapopulation * self, c_t * p_parameter_name, maslin_S_SYNC * p_s_sync )
{
  maslin_S_SYNC * s_sync;maslin_S_SPARM * parm;
  /* ASSIGN s_sync = PARAM.s_sync */
  s_sync = p_s_sync;
  /* CREATE OBJECT INSTANCE parm OF S_SPARM */
  parm = (maslin_S_SPARM *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_S_SPARM_CLASS_NUMBER );
  parm->SParm_ID = (Escher_UniqueID_t) parm;
  /* RELATE s_sync TO parm ACROSS R24 */
  maslin_S_SPARM_R24_Link_defines( s_sync, parm );
  /* self.FunctionParameter_initialize( name:PARAM.parameter_name, s_sparm:parm ) */
  maslin_ooapopulation_op_FunctionParameter_initialize( self,  p_parameter_name, parm );
  /* self.Function_createMessageArgumentsForParameter( s_sparm:parm, s_sync:s_sync ) */
  maslin_ooapopulation_op_Function_createMessageArgumentsForParameter( self,  parm, s_sync );
}

/*
 * instance operation:  FunctionParameter_initialize
 */
void
maslin_ooapopulation_op_FunctionParameter_initialize( maslin_ooapopulation * self, c_t * p_name, maslin_S_SPARM * p_s_sparm )
{
  maslin_EP_PKG * systypes_pkg;bool isInGenericPkg;maslin_S_SPARM * s_sparm;maslin_EP_PKG * pkg=0;maslin_S_SYNC * function=0;maslin_S_DT * def_dt=0;
  /* ASSIGN s_sparm = PARAM.s_sparm */
  s_sparm = p_s_sparm;
  /* SELECT one function RELATED BY s_sparm->S_SYNC[R24] */
  function = ( 0 != s_sparm ) ? s_sparm->S_SYNC_R24_is_defined_for : 0;
  /* self.Function_addParameterToOrder( s_sparm:s_sparm, s_sync:function ) */
  maslin_ooapopulation_op_Function_addParameterToOrder( self,  s_sparm, function );
  /* ASSIGN isInGenericPkg = FALSE */
  isInGenericPkg = FALSE;
  /* SELECT one pkg RELATED BY s_sparm->S_SYNC[R24]->PE_PE[R8001]->EP_PKG[R8000] */
  pkg = 0;
  {  if ( 0 != s_sparm ) {
  maslin_S_SYNC * S_SYNC_R24_is_defined_for = s_sparm->S_SYNC_R24_is_defined_for;
  if ( 0 != S_SYNC_R24_is_defined_for ) {
  maslin_PE_PE * PE_PE_R8001 = S_SYNC_R24_is_defined_for->PE_PE_R8001;
  if ( 0 != PE_PE_R8001 ) {
  pkg = PE_PE_R8001->EP_PKG_R8000_contained_by;
}}}}
  /* ASSIGN systypes_pkg = self.systypes_pkg */
  systypes_pkg = self->systypes_pkg;
  /* SELECT any def_dt RELATED BY systypes_pkg->PE_PE[R8000]->S_DT[R8001] WHERE ( ( SELECTED.Name == string ) ) */
  def_dt = 0;
  {  if ( 0 != systypes_pkg ) {
  maslin_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &systypes_pkg->PE_PE_R8000_contains );
  while ( ( 0 == def_dt ) && ( 0 != ( PE_PE_R8000_contains = (maslin_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( maslin_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {maslin_S_DT * selected = (maslin_S_DT *) PE_PE_R8000_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "string" ) == 0 ) ) {
    def_dt = selected;
  }}
}}}
  /* RELATE s_sparm TO def_dt ACROSS R26 */
  maslin_S_SPARM_R26_Link_describes_type_of( def_dt, s_sparm );
  /* ASSIGN s_sparm.Name = PARAM.name */
  s_sparm->Name = Escher_strcpy( s_sparm->Name, p_name );
}

/*
 * instance operation:  Function_addParameterToOrder
 */
void
maslin_ooapopulation_op_Function_addParameterToOrder( maslin_ooapopulation * self, maslin_S_SPARM * p_s_sparm, maslin_S_SYNC * p_s_sync )
{
  maslin_S_SPARM * parameter;maslin_S_SYNC * s_sync;
  /* ASSIGN s_sync = PARAM.s_sync */
  s_sync = p_s_sync;
  /* ASSIGN parameter = PARAM.s_sparm */
  parameter = p_s_sparm;
  /* IF ( not_empty parameter ) */
  if ( ( 0 != parameter ) ) {
    maslin_S_SPARM * peer=0;Escher_ObjectSet_s peers_space={0}; Escher_ObjectSet_s * peers = &peers_space;
    /* SELECT many peers RELATED BY s_sync->S_SPARM[R24] */
    Escher_ClearSet( peers );
    if ( 0 != s_sync ) {
      Escher_CopySet( peers, &s_sync->S_SPARM_R24_defines );
    }
    /* FOR EACH peer IN peers */
    { Escher_Iterator_s iterpeer;
    maslin_S_SPARM * iipeer;
    Escher_IteratorReset( &iterpeer, peers );
    while ( (iipeer = (maslin_S_SPARM *)Escher_IteratorNext( &iterpeer )) != 0 ) {
      peer = iipeer; {
      /* IF ( ( peer != parameter ) ) */
      if ( ( peer != parameter ) ) {
        maslin_S_SPARM * predecessor=0;
        /* SELECT one predecessor RELATED BY peer->S_SPARM[R54.precedes] */
        predecessor = ( 0 != peer ) ? peer->S_SPARM_R54_precedes : 0;
        /* IF ( empty predecessor ) */
        if ( ( 0 == predecessor ) ) {
          /* RELATE parameter TO peer ACROSS R54 */
          maslin_S_SPARM_R54_Link_succeeds( parameter, peer );
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
maslin_ooapopulation_op_Function_createMessageArgumentsForParameter( maslin_ooapopulation * self, maslin_S_SPARM * p_s_sparm, maslin_S_SYNC * p_s_sync )
{
  maslin_S_SPARM * parameter;maslin_S_SYNC * s_sync;
  /* ASSIGN s_sync = PARAM.s_sync */
  s_sync = p_s_sync;
  /* ASSIGN parameter = PARAM.s_sparm */
  parameter = p_s_sparm;
  /* IF ( not_empty parameter ) */
  if ( ( 0 != parameter ) ) {
    maslin_MSG_M * message=0;Escher_ObjectSet_s messages_space={0}; Escher_ObjectSet_s * messages = &messages_space;
    /* SELECT many messages RELATED BY s_sync->MSG_F[R1010]->MSG_SM[R1020]->MSG_M[R1018] */
    Escher_ClearSet( messages );
    {    if ( 0 != s_sync ) {
    maslin_MSG_F * MSG_F_R1010_is_invoked_by;
    Escher_Iterator_s iMSG_F_R1010_is_invoked_by;
    Escher_IteratorReset( &iMSG_F_R1010_is_invoked_by, &s_sync->MSG_F_R1010_is_invoked_by );
    while ( 0 != ( MSG_F_R1010_is_invoked_by = (maslin_MSG_F *) Escher_IteratorNext( &iMSG_F_R1010_is_invoked_by ) ) ) {
    maslin_MSG_SM * MSG_SM_R1020 = MSG_F_R1010_is_invoked_by->MSG_SM_R1020;
    if ( 0 != MSG_SM_R1020 ) {
    {maslin_MSG_M * MSG_M_R1018 = MSG_SM_R1020->MSG_M_R1018;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) messages, MSG_M_R1018 ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) messages, MSG_M_R1018 );
    }}}}}}
    /* FOR EACH message IN messages */
    { Escher_Iterator_s itermessage;
    maslin_MSG_M * iimessage;
    Escher_IteratorReset( &itermessage, messages );
    while ( (iimessage = (maslin_MSG_M *)Escher_IteratorNext( &itermessage )) != 0 ) {
      message = iimessage; {
      maslin_MSG_FA * fa;maslin_MSG_A * arg;
      /* CREATE OBJECT INSTANCE arg OF MSG_A */
      arg = (maslin_MSG_A *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_MSG_A_CLASS_NUMBER );
      arg->Arg_ID = (Escher_UniqueID_t) arg;
      /* CREATE OBJECT INSTANCE fa OF MSG_FA */
      fa = (maslin_MSG_FA *) Escher_CreateInstance( maslin_DOMAIN_ID, maslin_MSG_FA_CLASS_NUMBER );
      fa->Arg_ID = (Escher_UniqueID_t) fa;
      /* RELATE fa TO parameter ACROSS R1016 */
      maslin_MSG_FA_R1016_Link_represents( parameter, fa );
      /* RELATE fa TO arg ACROSS R1013 */
      maslin_MSG_FA_R1013_Link( arg, fa );
      /* RELATE message TO arg ACROSS R1001 */
      maslin_MSG_A_R1001_Link_has_a_formal( message, arg );
    }}}
    Escher_ClearSet( messages ); 
  }
}

/*
 * Dump instances in SQL format.
 */
void
maslin_ooapopulation_instancedumper( Escher_iHandle_t instance )
{
  maslin_ooapopulation * self = (maslin_ooapopulation *) instance;
}

/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      ooapopulation  (ooapopulation)
 * Component:  maslin
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s maslin_ooapopulation_container[ maslin_ooapopulation_MAX_EXTENT_SIZE ];
static maslin_ooapopulation maslin_ooapopulation_instances[ maslin_ooapopulation_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_maslin_ooapopulation_extent = {
  {0,0}, {0,0}, &maslin_ooapopulation_container[ 0 ],
  (Escher_iHandle_t) &maslin_ooapopulation_instances,
  sizeof( maslin_ooapopulation ), 0, maslin_ooapopulation_MAX_EXTENT_SIZE
  };

