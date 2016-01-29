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
#include "T_bridge.h"
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
  Escher_memset( &self->wiring_pkg, avlstring[ 1 ], sizeof( self->wiring_pkg ) );
  Escher_memset( &self->lib_pkg, avlstring[ 1 ], sizeof( self->lib_pkg ) );
  Escher_memset( &self->current_attribute, avlstring[ 1 ], sizeof( self->current_attribute ) );
  Escher_memset( &self->current_class, avlstring[ 1 ], sizeof( self->current_class ) );
  Escher_memset( &self->current_class_op, avlstring[ 1 ], sizeof( self->current_class_op ) );
  Escher_memset( &self->current_component, avlstring[ 1 ], sizeof( self->current_component ) );
  return return_identifier;
}

/*
 * class operation:  populate
 */
void
maslin_ooapopulation_op_populate( c_t * p_element, c_t * p_value[8] )
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
      maslin_C_C * current_component;maslin_C_C * c_c=0;
      /* SELECT any c_c FROM INSTANCES OF C_C WHERE FALSE */
      c_c = 0;
      /* ASSIGN current_component = c_c */
      current_component = c_c;
    }
    else {
      /* ooapopulation.transformDomain( name:PARAM.value[0] ) */
      maslin_ooapopulation_op_transformDomain( ooapopulation,  p_value[0] );
    }
  }
  else if ( ( Escher_strcmp( "object", element ) == 0 ) ) {
    /* IF ( (  == PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) == 0 ) ) {
      maslin_O_OBJ * current_class;maslin_O_OBJ * o_obj=0;
      /* SELECT any o_obj FROM INSTANCES OF O_OBJ WHERE FALSE */
      o_obj = 0;
      /* ASSIGN current_class = o_obj */
      current_class = o_obj;
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
      /* ooapopulation.transformParameter() */
      maslin_ooapopulation_op_transformParameter( ooapopulation );
    }
  }
  else if ( ( Escher_strcmp( "attribute", element ) == 0 ) ) {
    /* IF ( (  != PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) != 0 ) ) {
      /* ooapopulation.transformAttribute( initialization:PARAM.value[3], name:PARAM.value[0], preferred:PARAM.value[1], unique:PARAM.value[2] ) */
      maslin_ooapopulation_op_transformAttribute( ooapopulation,  p_value[3], p_value[0], p_value[1], p_value[2] );
    }
  }
  else if ( ( Escher_strcmp( "state", element ) == 0 ) ) {
    /* IF ( (  != PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) != 0 ) ) {
      /* ooapopulation.transformState() */
      maslin_ooapopulation_op_transformState( ooapopulation );
    }
  }
  else if ( ( Escher_strcmp( "event", element ) == 0 ) ) {
    /* IF ( (  != PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) != 0 ) ) {
      /* ooapopulation.transformEvent() */
      maslin_ooapopulation_op_transformEvent( ooapopulation );
    }
  }
  else if ( ( Escher_strcmp( "type", element ) == 0 ) ) {
    /* IF ( (  != PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) != 0 ) ) {
      /* ooapopulation.transformType( name:PARAM.value[0], visibility:PARAM.value[1] ) */
      maslin_ooapopulation_op_transformType( ooapopulation,  p_value[0], p_value[1] );
    }
  }
  else if ( ( Escher_strcmp( "function", element ) == 0 ) ) {
    /* IF ( (  != PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) != 0 ) ) {
      maslin_O_OBJ * clazz;
      /* ASSIGN clazz = ooapopulation.current_class */
      clazz = ooapopulation->current_class;
      /* IF ( not_empty clazz ) */
      if ( ( 0 != clazz ) ) {
        /* ooapopulation.transformObjectFunction( instance:PARAM.value[2], name:PARAM.value[1], relationship:PARAM.value[3], visibility:PARAM.value[0] ) */
        maslin_ooapopulation_op_transformObjectFunction( ooapopulation,  p_value[2], p_value[1], p_value[3], p_value[0] );
      }
      else {
        /* ooapopulation.transformDomainFunction( instance:PARAM.value[2], name:PARAM.value[1], relationship:PARAM.value[3], visibility:PARAM.value[0] ) */
        maslin_ooapopulation_op_transformDomainFunction( ooapopulation,  p_value[2], p_value[1], p_value[3], p_value[0] );
      }
    }
  }
  else if ( ( Escher_strcmp( "service", element ) == 0 ) ) {
    /* IF ( (  != PARAM.value[0] ) ) */
    if ( ( Escher_strcmp( "", p_value[0] ) != 0 ) ) {
      maslin_O_OBJ * clazz;
      /* ASSIGN clazz = ooapopulation.current_class */
      clazz = ooapopulation->current_class;
      /* IF ( not_empty clazz ) */
      if ( ( 0 != clazz ) ) {
        /* ooapopulation.transformObjectFunction( instance:PARAM.value[2], name:PARAM.value[1], relationship:PARAM.value[3], visibility:PARAM.value[0] ) */
        maslin_ooapopulation_op_transformObjectFunction( ooapopulation,  p_value[2], p_value[1], p_value[3], p_value[0] );
      }
      else {
        /* ooapopulation.transformDomainFunction( instance:PARAM.value[2], name:PARAM.value[1], relationship:PARAM.value[3], visibility:PARAM.value[0] ) */
        maslin_ooapopulation_op_transformDomainFunction( ooapopulation,  p_value[2], p_value[1], p_value[3], p_value[0] );
      }
    }
  }
  else {
    /* TRACE::log( flavor:failure, id:59, message:( maslin unrecognized element:   + element ) ) */
    TRACE_log( "failure", 59, Escher_stradd( "maslin unrecognized element:  ", element ) );
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
    maslin_EP_PKG * wiring_pkg;maslin_EP_PKG * internal_bhv_pkg;
    /* ASSIGN c_c = self.Package_newComponent(component_name:PARAM.name, ep_pkg:self.lib_pkg) */
    c_c = maslin_ooapopulation_op_Package_newComponent(self, p_name, self->lib_pkg);
    /* ASSIGN internal_bhv_pkg = self.Component_newPackage(c_c:c_c, pkg_name:PARAM.name) */
    internal_bhv_pkg = maslin_ooapopulation_op_Component_newPackage(self, c_c, p_name);
    /* ASSIGN wiring_pkg = self.wiring_pkg */
    wiring_pkg = self->wiring_pkg;
    /* IF ( not_empty wiring_pkg ) */
    if ( ( 0 != wiring_pkg ) ) {
      maslin_CL_IC * cl_ic;
      /* ASSIGN cl_ic = self.Package_newImportedComponent(ep_pkg:self.wiring_pkg) */
      cl_ic = maslin_ooapopulation_op_Package_newImportedComponent(self, self->wiring_pkg);
      /* self.ComponentReference_assignToComp( c_c:c_c, cl_ic:cl_ic ) */
      maslin_ooapopulation_op_ComponentReference_assignToComp( self,  c_c, cl_ic );
    }
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
    /* ASSIGN self.lib_pkg = self.SystemModel_newPackage(pkg_name:library, s_sys:s_sys) */
    self->lib_pkg = maslin_ooapopulation_op_SystemModel_newPackage(self, "library", s_sys);
  }
}

/*
 * instance operation:  InterfaceReference_isFormal
 */
bool
maslin_ooapopulation_op_InterfaceReference_isFormal( maslin_ooapopulation * self, c_t * p_c_ir )
{

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
maslin_ooapopulation_op_transformParameter( maslin_ooapopulation * self)
{

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
maslin_ooapopulation_op_transformState( maslin_ooapopulation * self)
{

}

/*
 * instance operation:  transformEvent
 */
void
maslin_ooapopulation_op_transformEvent( maslin_ooapopulation * self)
{

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
  maslin_O_ATTR * o_attr;maslin_O_NBATTR * nba;maslin_O_BATTR * ba;
  /* ASSIGN o_attr = PARAM.o_attr */
  o_attr = p_o_attr;
  /* ASSIGN o_attr.Prefix =  */
  o_attr->Prefix = Escher_strcpy( o_attr->Prefix, "" );
  /* ASSIGN o_attr.Pfx_Mode = 0 */
  o_attr->Pfx_Mode = 0;
  /* ASSIGN o_attr.Root_Nam = PARAM.name */
  o_attr->Root_Nam = Escher_strcpy( o_attr->Root_Nam, p_name );
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
  maslin_C_C * current_component;maslin_S_DT * s_dt=0;maslin_EP_PKG * types_pkg=0;
  /* ASSIGN current_component = self.current_component */
  current_component = self->current_component;
  /* SELECT any types_pkg RELATED BY current_component->PE_PE[R8003]->EP_PKG[R8001] WHERE ( ( SELECTED.Name == types ) ) */
  types_pkg = 0;
  {  if ( 0 != current_component ) {
  maslin_PE_PE * PE_PE_R8003_contains;
  Escher_Iterator_s iPE_PE_R8003_contains;
  Escher_IteratorReset( &iPE_PE_R8003_contains, &current_component->PE_PE_R8003_contains );
  while ( ( 0 == types_pkg ) && ( 0 != ( PE_PE_R8003_contains = (maslin_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) ) {
  if ( ( 0 != PE_PE_R8003_contains ) && ( maslin_EP_PKG_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) )  {maslin_EP_PKG * selected = (maslin_EP_PKG *) PE_PE_R8003_contains->R8001_subtype;
  if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "types" ) == 0 ) ) {
    types_pkg = selected;
  }}
}}}
  /* IF ( empty types_pkg ) */
  if ( ( 0 == types_pkg ) ) {
    /* ASSIGN types_pkg = self.Component_newPackage(c_c:current_component, pkg_name:types) */
    types_pkg = maslin_ooapopulation_op_Component_newPackage(self, current_component, "types");
  }
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
  /* IF ( empty s_dt ) */
  if ( ( 0 == s_dt ) ) {
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
  /* self.Package_newFunction( ep_pkg:functions_pkg, function_name:PARAM.name ) */
  maslin_ooapopulation_op_Package_newFunction( self,  functions_pkg, p_name );
  /* IF ( ( public == PARAM.visibility ) ) */
  if ( ( Escher_strcmp( "public", p_visibility ) == 0 ) ) {
    maslin_C_EP * c_ep;c_t * comp_if_name=0;maslin_EP_PKG * lib_pkg;maslin_SPR_PO * spr_po=0;maslin_C_I * comp_if=0;maslin_EP_PKG * interfaces_pkg=0;
    /* ASSIGN lib_pkg = self.lib_pkg */
    lib_pkg = self->lib_pkg;
    /* SELECT any interfaces_pkg RELATED BY lib_pkg->PE_PE[R8000]->EP_PKG[R8001] WHERE ( ( SELECTED.Name == interfaces ) ) */
    interfaces_pkg = 0;
    {    if ( 0 != lib_pkg ) {
    maslin_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &lib_pkg->PE_PE_R8000_contains );
    while ( ( 0 == interfaces_pkg ) && ( 0 != ( PE_PE_R8000_contains = (maslin_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( maslin_EP_PKG_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    {maslin_EP_PKG * selected = (maslin_EP_PKG *) PE_PE_R8000_contains->R8001_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, "interfaces" ) == 0 ) ) {
      interfaces_pkg = selected;
    }}
}}}
    /* IF ( empty interfaces_pkg ) */
    if ( ( 0 == interfaces_pkg ) ) {
      /* ASSIGN interfaces_pkg = self.Package_newPackage(ep_pkg:lib_pkg, package_name:interfaces) */
      interfaces_pkg = maslin_ooapopulation_op_Package_newPackage(self, lib_pkg, "interfaces");
    }
    /* ASSIGN comp_if_name = ( current_component.Name + _if ) */
    comp_if_name = Escher_strcpy( comp_if_name, Escher_stradd( current_component->Name, "_if" ) );
    /* SELECT any comp_if RELATED BY interfaces_pkg->PE_PE[R8000]->C_I[R8001] WHERE ( ( SELECTED.Name == comp_if_name ) ) */
    comp_if = 0;
    {    if ( 0 != interfaces_pkg ) {
    maslin_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &interfaces_pkg->PE_PE_R8000_contains );
    while ( ( 0 == comp_if ) && ( 0 != ( PE_PE_R8000_contains = (maslin_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( maslin_C_I_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    {maslin_C_I * selected = (maslin_C_I *) PE_PE_R8000_contains->R8001_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->Name, comp_if_name ) == 0 ) ) {
      comp_if = selected;
    }}
}}}
    /* IF ( empty comp_if ) */
    if ( ( 0 == comp_if ) ) {
      maslin_C_IR * new_ir;c_t * comp_port_name=0;
      /* ASSIGN comp_if = self.Package_newInterface(ep_pkg:interfaces_pkg, interface_name:comp_if_name) */
      comp_if = maslin_ooapopulation_op_Package_newInterface(self, interfaces_pkg, comp_if_name);
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
    /* ASSIGN spr_po.Action_Semantics = ( ( :: + PARAM.name ) + (); ) */
    spr_po->Action_Semantics = Escher_strcpy( spr_po->Action_Semantics, Escher_stradd( Escher_stradd( "::", p_name ), "();" ) );
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
  maslin_O_TFR * o_tfr;maslin_O_OBJ * clazz=0;
  /* ASSIGN o_tfr = PARAM.o_tfr */
  o_tfr = p_o_tfr;
  /* SELECT one clazz RELATED BY o_tfr->O_OBJ[R115] */
  clazz = ( 0 != o_tfr ) ? o_tfr->O_OBJ_R115_is_associated_with : 0;
  /* self.ModelClass_addOperationToOrdering( newTfr:o_tfr, o_obj:clazz ) */
  maslin_ooapopulation_op_ModelClass_addOperationToOrdering( self,  o_tfr, clazz );
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
void
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
}

/*
 * instance operation:  Function_initialize
 */
void
maslin_ooapopulation_op_Function_initialize( maslin_ooapopulation * self, c_t * p_name, maslin_S_SYNC * p_s_sync )
{
  maslin_S_SYNC * s_sync;maslin_C_C * component=0;maslin_EP_PKG * package=0;maslin_PE_PE * packageableElem=0;
  /* ASSIGN s_sync = PARAM.s_sync */
  s_sync = p_s_sync;
  /* SELECT one packageableElem RELATED BY s_sync->PE_PE[R8001] */
  packageableElem = ( 0 != s_sync ) ? s_sync->PE_PE_R8001 : 0;
  /* SELECT one package RELATED BY packageableElem->EP_PKG[R8000] */
  package = ( 0 != packageableElem ) ? packageableElem->EP_PKG_R8000_contained_by : 0;
  /* SELECT one component RELATED BY packageableElem->C_C[R8003] */
  component = ( 0 != packageableElem ) ? packageableElem->C_C_R8003_contained_in : 0;
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
  maslin_C_IO * c_io;maslin_C_I * interface=0;maslin_C_C * component=0;maslin_EP_PKG * package=0;maslin_PE_PE * packageableElem=0;
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

