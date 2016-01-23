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
    /* ooapopulation.transformProject( name:PARAM.value[0] ) */
    maslin_ooapopulation_op_transformProject( ooapopulation,  p_value[0] );
  }
  else if ( ( Escher_strcmp( "domain", element ) == 0 ) ) {
    /* ooapopulation.transformDomain( name:PARAM.value[0] ) */
    maslin_ooapopulation_op_transformDomain( ooapopulation,  p_value[0] );
  }
  else if ( ( Escher_strcmp( "object", element ) == 0 ) ) {
    /* ooapopulation.transformObject( name:PARAM.value[0] ) */
    maslin_ooapopulation_op_transformObject( ooapopulation,  p_value[0] );
  }
  else if ( ( Escher_strcmp( "terminator", element ) == 0 ) ) {
    /* ooapopulation.transformTerminator( name:PARAM.value[0] ) */
    maslin_ooapopulation_op_transformTerminator( ooapopulation,  p_value[0] );
  }
  else if ( ( Escher_strcmp( "activity", element ) == 0 ) ) {
    /* ooapopulation.transformActivity() */
    maslin_ooapopulation_op_transformActivity( ooapopulation );
  }
  else if ( ( Escher_strcmp( "parameter", element ) == 0 ) ) {
    /* ooapopulation.transformParameter() */
    maslin_ooapopulation_op_transformParameter( ooapopulation );
  }
  else if ( ( Escher_strcmp( "attribute", element ) == 0 ) ) {
    /* ooapopulation.transformAttribute() */
    maslin_ooapopulation_op_transformAttribute( ooapopulation );
  }
  else if ( ( Escher_strcmp( "state", element ) == 0 ) ) {
    /* ooapopulation.transformState() */
    maslin_ooapopulation_op_transformState( ooapopulation );
  }
  else if ( ( Escher_strcmp( "event", element ) == 0 ) ) {
    /* ooapopulation.transformEvent() */
    maslin_ooapopulation_op_transformEvent( ooapopulation );
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
  maslin_CL_IC * cl_ic;maslin_C_C * c_c;
  /* self.createSystem() */
  maslin_ooapopulation_op_createSystem( self );
  /* ASSIGN c_c = self.Package_newComponent(component_name:PARAM.name, ep_pkg:self.lib_pkg) */
  c_c = maslin_ooapopulation_op_Package_newComponent(self, p_name, self->lib_pkg);
  /* self.Component_newPackage( c_c:c_c, pkg_name:internals ) */
  maslin_ooapopulation_op_Component_newPackage( self,  c_c, "internals" );
  /* ASSIGN cl_ic = self.Package_newImportedComponent(ep_pkg:self.wiring_pkg) */
  cl_ic = maslin_ooapopulation_op_Package_newImportedComponent(self, self->wiring_pkg);
  /* self.ComponentReference_assignToComp( c_c:c_c, cl_ic:cl_ic ) */
  maslin_ooapopulation_op_ComponentReference_assignToComp( self,  c_c, cl_ic );
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

}

/*
 * instance operation:  Component_newPackage
 */
void
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
    /* ASSIGN self.lib_pkg = self.SystemModel_newPackage(pkg_name:Library, s_sys:s_sys) */
    self->lib_pkg = maslin_ooapopulation_op_SystemModel_newPackage(self, "Library", s_sys);
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
maslin_ooapopulation_op_transformAttribute( maslin_ooapopulation * self)
{

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
 * Dump instances in SQL format.
 */
void
maslin_ooapopulation_instancedumper( Escher_iHandle_t instance )
{
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

