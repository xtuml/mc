/*----------------------------------------------------------------------------
 * File:  maslin_ooapopulation_class.h
 *
 * Class:       ooapopulation  (ooapopulation)
 * Component:   maslin
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef MASLIN_OOAPOPULATION_CLASS_H
#define MASLIN_OOAPOPULATION_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   ooapopulation  (ooapopulation)
 */
struct maslin_ooapopulation {

  /* application analysis class attributes */
  maslin_S_SYS * current_sys;
  maslin_EP_PKG * lib_pkg;  
  maslin_EP_PKG * systypes_pkg;  
  maslin_EP_PKG * wiring_pkg;  
  maslin_O_ATTR * current_attribute;  
  maslin_O_OBJ * current_class;  
  maslin_O_TFR * current_class_op;  
  maslin_C_C * current_component;  
  maslin_S_SYNC * current_domain_function;  
  i_t processingIdentifier;  
  bool processingISM;  
};
void maslin_ooapopulation_instancedumper( Escher_iHandle_t );
Escher_iHandle_t maslin_ooapopulation_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define maslin_ooapopulation_batch_relate 0
void maslin_ooapopulation_op_populate(  c_t *, c_t [8][ESCHER_SYS_MAX_STRING_LEN] );
void maslin_ooapopulation_op_transformProject( maslin_ooapopulation *, c_t * );
maslin_EP_PKG * maslin_ooapopulation_op_SystemModel_newPackage( maslin_ooapopulation *, c_t *, maslin_S_SYS * );
void maslin_ooapopulation_op_PackageableElement_initialize( maslin_ooapopulation *, maslin_PE_PE * );
void maslin_ooapopulation_op_Package_initialize( maslin_ooapopulation *, maslin_EP_PKG *, c_t * );
void maslin_ooapopulation_op_transformDomain( maslin_ooapopulation *, c_t * );
maslin_C_C * maslin_ooapopulation_op_Package_newComponent( maslin_ooapopulation *, c_t *, maslin_EP_PKG * );
void maslin_ooapopulation_op_Component_initialize( maslin_ooapopulation *, maslin_C_C *, c_t * );
void maslin_ooapopulation_op_ComponentReference_assignToComp( maslin_ooapopulation *, maslin_C_C *, maslin_CL_IC * );
void maslin_ooapopulation_op_transformObject( maslin_ooapopulation *, c_t * );
maslin_EP_PKG * maslin_ooapopulation_op_Component_newPackage( maslin_ooapopulation *, maslin_C_C *, c_t * );
Escher_UniqueID_t maslin_ooapopulation_op_Component_getRootComponentId( maslin_ooapopulation *, maslin_C_C * );
void maslin_ooapopulation_op_createSystem( maslin_ooapopulation * );
bool maslin_ooapopulation_op_InterfaceReference_isFormal( maslin_ooapopulation *, c_t * );
void maslin_ooapopulation_op_transformTerminator( maslin_ooapopulation *, c_t * );
void maslin_ooapopulation_op_transformActivity( maslin_ooapopulation * );
void maslin_ooapopulation_op_transformParameter( maslin_ooapopulation *, c_t *, c_t * );
void maslin_ooapopulation_op_transformAttribute( maslin_ooapopulation *, c_t *, c_t *, c_t *, c_t * );
void maslin_ooapopulation_op_transformState( maslin_ooapopulation *, c_t *, c_t * );
void maslin_ooapopulation_op_transformEvent( maslin_ooapopulation *, c_t *, c_t * );
maslin_CL_IC * maslin_ooapopulation_op_Package_newImportedComponent( maslin_ooapopulation *, maslin_EP_PKG * );
maslin_O_OBJ * maslin_ooapopulation_op_Package_newClass( maslin_ooapopulation *, c_t *, maslin_EP_PKG * );
void maslin_ooapopulation_op_ModelClass_initialize( maslin_ooapopulation *, c_t *, maslin_O_OBJ * );
void maslin_ooapopulation_op_ModelClass_addIdentifiers( maslin_ooapopulation *, maslin_O_OBJ * );
maslin_O_ATTR * maslin_ooapopulation_op_ModelClass_newAttribute( maslin_ooapopulation *, c_t *, maslin_O_OBJ * );
void maslin_ooapopulation_op_ModelClass_addAttributeToOrdering( maslin_ooapopulation *, maslin_O_ATTR *, maslin_O_OBJ * );
void maslin_ooapopulation_op_Attribute_initialize( maslin_ooapopulation *, c_t *, maslin_O_ATTR * );
void maslin_ooapopulation_op_transformType( maslin_ooapopulation *, c_t *, c_t * );
void maslin_ooapopulation_op_Package_newDatatype( maslin_ooapopulation *, maslin_EP_PKG *, c_t * );
void maslin_ooapopulation_op_Datatype_initialize( maslin_ooapopulation *, c_t *, maslin_S_DT * );
void maslin_ooapopulation_op_transformDomainFunction( maslin_ooapopulation *, c_t *, c_t *, c_t *, c_t * );
void maslin_ooapopulation_op_transformObjectFunction( maslin_ooapopulation *, c_t *, c_t *, c_t *, c_t * );
maslin_O_TFR * maslin_ooapopulation_op_ModelClass_newOperation( maslin_ooapopulation *, maslin_O_OBJ *, c_t * );
void maslin_ooapopulation_op_Operation_initialize( maslin_ooapopulation *, c_t *, maslin_O_TFR * );
void maslin_ooapopulation_op_ModelClass_addOperationToOrdering( maslin_ooapopulation *, maslin_O_TFR *, maslin_O_OBJ * );
maslin_S_SYNC * maslin_ooapopulation_op_Package_newFunction( maslin_ooapopulation *, maslin_EP_PKG *, c_t * );
void maslin_ooapopulation_op_Function_initialize( maslin_ooapopulation *, c_t *, maslin_S_SYNC * );
maslin_EP_PKG * maslin_ooapopulation_op_Package_newPackage( maslin_ooapopulation *, maslin_EP_PKG *, c_t * );
maslin_C_I * maslin_ooapopulation_op_Package_newInterface( maslin_ooapopulation *, maslin_EP_PKG *, c_t * );
maslin_C_IR * maslin_ooapopulation_op_Component_initializeProvision( maslin_ooapopulation *, maslin_C_C *, maslin_C_I *, c_t * );
void maslin_ooapopulation_op_Port_initialize( maslin_ooapopulation *, maslin_C_PO *, c_t * );
void maslin_ooapopulation_op_InterfaceReference_formalize( maslin_ooapopulation *, maslin_C_I *, maslin_C_IR * );
void maslin_ooapopulation_op_InterfaceReference_createSignalsAndOperations( maslin_ooapopulation *, maslin_C_I *, maslin_C_IR * );
void maslin_ooapopulation_op_InterfaceOperation_initialize( maslin_ooapopulation *, maslin_C_IO *, c_t * );
maslin_C_EP * maslin_ooapopulation_op_Interface_newExecutableProperty( maslin_ooapopulation *, const bool, maslin_C_I *, c_t * );
void maslin_ooapopulation_op_Interface_addInterfaceOperationToOrder( maslin_ooapopulation *, maslin_C_I *, maslin_C_IO * );
void maslin_ooapopulation_op_Attribute_addToIdentifier( maslin_ooapopulation *, maslin_O_ATTR *, const i_t );
void maslin_ooapopulation_op_Attribute_setType( maslin_ooapopulation *, maslin_O_ATTR *, c_t * );
maslin_SM_SM * maslin_ooapopulation_op_ModelClass_create_sm( maslin_ooapopulation *, maslin_O_OBJ *, c_t * );
void maslin_ooapopulation_op_StateMachine_newState( maslin_ooapopulation *, c_t *, maslin_SM_SM * );
void maslin_ooapopulation_op_StateMachineState_initialize( maslin_ooapopulation *, c_t *, maslin_SM_STATE * );
void maslin_ooapopulation_op_StateMachine_newEvent( maslin_ooapopulation *, c_t *, maslin_SM_SM * );
void maslin_ooapopulation_op_StateMachineEvent_initialize( maslin_ooapopulation *, c_t *, maslin_SM_EVT * );
void maslin_ooapopulation_op_StateMachineEvent_setUniqueNumber( maslin_ooapopulation *, const bool, maslin_SM_EVT * );
void maslin_ooapopulation_op_SEMEvent_createDefaultMatrixEntries( maslin_ooapopulation *, maslin_SM_SEVT * );
void maslin_ooapopulation_op_transformTransition( maslin_ooapopulation *, c_t *, c_t *, c_t * );
void maslin_ooapopulation_op_StateMachine_newTransition( maslin_ooapopulation *, c_t *, c_t *, maslin_SM_SM *, c_t * );
void maslin_ooapopulation_op_Transition_initialize( maslin_ooapopulation *, maslin_SM_TXN * );
void maslin_ooapopulation_op_StateMachine_newCreationTransition( maslin_ooapopulation *, c_t *, c_t *, maslin_SM_SM * );
void maslin_ooapopulation_op_Transition_addEvent( maslin_ooapopulation *, c_t *, maslin_SM_TXN * );
void maslin_ooapopulation_op_Operation_newParameter( maslin_ooapopulation *, maslin_O_TFR *, c_t * );
void maslin_ooapopulation_op_OperationParameter_initialize( maslin_ooapopulation *, c_t *, maslin_O_TPARM * );
void maslin_ooapopulation_op_Operation_createParameterInInteractions( maslin_ooapopulation *, maslin_O_TFR *, maslin_O_TPARM * );
void maslin_ooapopulation_op_Operation_addParameterToOrdering( maslin_ooapopulation *, maslin_O_TFR *, maslin_O_TPARM * );
void maslin_ooapopulation_op_Function_newParameter( maslin_ooapopulation *, c_t *, maslin_S_SYNC * );
void maslin_ooapopulation_op_FunctionParameter_initialize( maslin_ooapopulation *, c_t *, maslin_S_SPARM * );
void maslin_ooapopulation_op_Function_addParameterToOrder( maslin_ooapopulation *, maslin_S_SPARM *, maslin_S_SYNC * );
void maslin_ooapopulation_op_Function_createMessageArgumentsForParameter( maslin_ooapopulation *, maslin_S_SPARM *, maslin_S_SYNC * );


#define maslin_ooapopulation_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_maslin_ooapopulation_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* MASLIN_OOAPOPULATION_CLASS_H */
