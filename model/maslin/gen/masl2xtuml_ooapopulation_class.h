/*----------------------------------------------------------------------------
 * File:  masl2xtuml_ooapopulation_class.h
 *
 * Class:       ooapopulation  (ooapopulation)
 * Component:   masl2xtuml
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef MASL2XTUML_OOAPOPULATION_CLASS_H
#define MASL2XTUML_OOAPOPULATION_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   ooapopulation  (ooapopulation)
 */
struct masl2xtuml_ooapopulation {

  /* application analysis class attributes */
  masl2xtuml_S_SYS * current_sys;  
  masl2xtuml_EP_PKG * lib_pkg;  
  masl2xtuml_EP_PKG * systypes_pkg;  
  masl2xtuml_EP_PKG * wiring_pkg;  
  masl2xtuml_O_ATTR * current_attribute;  
  masl2xtuml_O_OBJ * current_class;  
  masl2xtuml_O_TFR * current_class_op;  
  masl2xtuml_C_C * current_component;  
  masl2xtuml_S_SYNC * current_domain_function;  
  masl2xtuml_S_SPARM * current_function_param;  
  masl2xtuml_O_TPARM * current_operation_param;  
  masl2xtuml_sdt_relationship_data current_rel;  
  i_t processingIdentifier;  
  bool processingISM;  
};
void masl2xtuml_ooapopulation_instancedumper( Escher_iHandle_t );
Escher_iHandle_t masl2xtuml_ooapopulation_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define masl2xtuml_ooapopulation_batch_relate 0
void masl2xtuml_ooapopulation_op_populate(  c_t *, c_t [8][ESCHER_SYS_MAX_STRING_LEN] );
void masl2xtuml_ooapopulation_op_transformProject( masl2xtuml_ooapopulation *, c_t * );
masl2xtuml_EP_PKG * masl2xtuml_ooapopulation_op_SystemModel_newPackage( masl2xtuml_ooapopulation *, c_t *, masl2xtuml_S_SYS * );
void masl2xtuml_ooapopulation_op_PackageableElement_initialize( masl2xtuml_ooapopulation *, masl2xtuml_PE_PE * );
void masl2xtuml_ooapopulation_op_Package_initialize( masl2xtuml_ooapopulation *, masl2xtuml_EP_PKG *, c_t * );
void masl2xtuml_ooapopulation_op_transformDomain( masl2xtuml_ooapopulation *, c_t * );
masl2xtuml_C_C * masl2xtuml_ooapopulation_op_Package_newComponent( masl2xtuml_ooapopulation *, c_t *, masl2xtuml_EP_PKG * );
void masl2xtuml_ooapopulation_op_Component_initialize( masl2xtuml_ooapopulation *, masl2xtuml_C_C *, c_t * );
void masl2xtuml_ooapopulation_op_ComponentReference_assignToComp( masl2xtuml_ooapopulation *, masl2xtuml_C_C *, masl2xtuml_CL_IC * );
void masl2xtuml_ooapopulation_op_transformObject( masl2xtuml_ooapopulation *, c_t * );
masl2xtuml_EP_PKG * masl2xtuml_ooapopulation_op_Component_newPackage( masl2xtuml_ooapopulation *, masl2xtuml_C_C *, c_t * );
Escher_UniqueID_t masl2xtuml_ooapopulation_op_Component_getRootComponentId( masl2xtuml_ooapopulation *, masl2xtuml_C_C * );
void masl2xtuml_ooapopulation_op_createSystem( masl2xtuml_ooapopulation * );
bool masl2xtuml_ooapopulation_op_InterfaceReference_isFormal( masl2xtuml_ooapopulation *, c_t * );
void masl2xtuml_ooapopulation_op_transformTerminator( masl2xtuml_ooapopulation *, c_t * );
void masl2xtuml_ooapopulation_op_transformActivity( masl2xtuml_ooapopulation * );
void masl2xtuml_ooapopulation_op_transformParameter( masl2xtuml_ooapopulation *, c_t *, c_t * );
void masl2xtuml_ooapopulation_op_transformAttribute( masl2xtuml_ooapopulation *, c_t *, c_t *, c_t * );
void masl2xtuml_ooapopulation_op_transformState( masl2xtuml_ooapopulation *, c_t *, c_t * );
void masl2xtuml_ooapopulation_op_transformEvent( masl2xtuml_ooapopulation *, c_t *, c_t * );
masl2xtuml_CL_IC * masl2xtuml_ooapopulation_op_Package_newImportedComponent( masl2xtuml_ooapopulation *, masl2xtuml_EP_PKG * );
masl2xtuml_O_OBJ * masl2xtuml_ooapopulation_op_Package_newClass( masl2xtuml_ooapopulation *, c_t *, masl2xtuml_EP_PKG * );
void masl2xtuml_ooapopulation_op_ModelClass_initialize( masl2xtuml_ooapopulation *, c_t *, masl2xtuml_O_OBJ * );
void masl2xtuml_ooapopulation_op_ModelClass_addIdentifiers( masl2xtuml_ooapopulation *, masl2xtuml_O_OBJ * );
masl2xtuml_O_ATTR * masl2xtuml_ooapopulation_op_ModelClass_newAttribute( masl2xtuml_ooapopulation *, c_t *, masl2xtuml_O_OBJ * );
void masl2xtuml_ooapopulation_op_ModelClass_addAttributeToOrdering( masl2xtuml_ooapopulation *, masl2xtuml_O_ATTR *, masl2xtuml_O_OBJ * );
void masl2xtuml_ooapopulation_op_Attribute_initialize( masl2xtuml_ooapopulation *, c_t *, masl2xtuml_O_ATTR * );
void masl2xtuml_ooapopulation_op_transformType( masl2xtuml_ooapopulation *, c_t *, c_t *, c_t * );
void masl2xtuml_ooapopulation_op_Package_newDatatype( masl2xtuml_ooapopulation *, c_t *, masl2xtuml_EP_PKG *, c_t * );
void masl2xtuml_ooapopulation_op_Datatype_initialize( masl2xtuml_ooapopulation *, c_t *, masl2xtuml_S_DT * );
void masl2xtuml_ooapopulation_op_transformDomainFunction( masl2xtuml_ooapopulation *, c_t *, c_t *, c_t *, c_t * );
void masl2xtuml_ooapopulation_op_transformObjectFunction( masl2xtuml_ooapopulation *, c_t *, c_t *, c_t *, c_t * );
masl2xtuml_O_TFR * masl2xtuml_ooapopulation_op_ModelClass_newOperation( masl2xtuml_ooapopulation *, masl2xtuml_O_OBJ *, c_t * );
void masl2xtuml_ooapopulation_op_Operation_initialize( masl2xtuml_ooapopulation *, c_t *, masl2xtuml_O_TFR * );
void masl2xtuml_ooapopulation_op_ModelClass_addOperationToOrdering( masl2xtuml_ooapopulation *, masl2xtuml_O_TFR *, masl2xtuml_O_OBJ * );
masl2xtuml_S_SYNC * masl2xtuml_ooapopulation_op_Package_newFunction( masl2xtuml_ooapopulation *, masl2xtuml_EP_PKG *, c_t * );
void masl2xtuml_ooapopulation_op_Function_initialize( masl2xtuml_ooapopulation *, c_t *, masl2xtuml_S_SYNC * );
masl2xtuml_EP_PKG * masl2xtuml_ooapopulation_op_Package_newPackage( masl2xtuml_ooapopulation *, masl2xtuml_EP_PKG *, c_t * );
masl2xtuml_C_I * masl2xtuml_ooapopulation_op_Package_newInterface( masl2xtuml_ooapopulation *, masl2xtuml_EP_PKG *, c_t * );
masl2xtuml_C_IR * masl2xtuml_ooapopulation_op_Component_initializeProvision( masl2xtuml_ooapopulation *, masl2xtuml_C_C *, masl2xtuml_C_I *, c_t * );
void masl2xtuml_ooapopulation_op_Port_initialize( masl2xtuml_ooapopulation *, masl2xtuml_C_PO *, c_t * );
void masl2xtuml_ooapopulation_op_InterfaceReference_formalize( masl2xtuml_ooapopulation *, masl2xtuml_C_I *, masl2xtuml_C_IR * );
void masl2xtuml_ooapopulation_op_InterfaceReference_createSignalsAndOperations( masl2xtuml_ooapopulation *, masl2xtuml_C_I *, masl2xtuml_C_IR * );
void masl2xtuml_ooapopulation_op_InterfaceOperation_initialize( masl2xtuml_ooapopulation *, masl2xtuml_C_IO *, c_t * );
masl2xtuml_C_EP * masl2xtuml_ooapopulation_op_Interface_newExecutableProperty( masl2xtuml_ooapopulation *, const bool, masl2xtuml_C_I *, c_t * );
void masl2xtuml_ooapopulation_op_Interface_addInterfaceOperationToOrder( masl2xtuml_ooapopulation *, masl2xtuml_C_I *, masl2xtuml_C_IO * );
void masl2xtuml_ooapopulation_op_Attribute_addToIdentifier( masl2xtuml_ooapopulation *, masl2xtuml_O_ATTR *, const i_t );
void masl2xtuml_ooapopulation_op_Attribute_setType( masl2xtuml_ooapopulation *, masl2xtuml_O_ATTR *, c_t * );
masl2xtuml_SM_SM * masl2xtuml_ooapopulation_op_ModelClass_create_sm( masl2xtuml_ooapopulation *, masl2xtuml_O_OBJ *, c_t * );
void masl2xtuml_ooapopulation_op_StateMachine_newState( masl2xtuml_ooapopulation *, c_t *, masl2xtuml_SM_SM * );
void masl2xtuml_ooapopulation_op_StateMachineState_initialize( masl2xtuml_ooapopulation *, c_t *, masl2xtuml_SM_STATE * );
void masl2xtuml_ooapopulation_op_StateMachine_newEvent( masl2xtuml_ooapopulation *, c_t *, masl2xtuml_SM_SM * );
void masl2xtuml_ooapopulation_op_StateMachineEvent_initialize( masl2xtuml_ooapopulation *, c_t *, masl2xtuml_SM_EVT * );
void masl2xtuml_ooapopulation_op_StateMachineEvent_setUniqueNumber( masl2xtuml_ooapopulation *, const bool, masl2xtuml_SM_EVT * );
void masl2xtuml_ooapopulation_op_SEMEvent_createDefaultMatrixEntries( masl2xtuml_ooapopulation *, masl2xtuml_SM_SEVT * );
void masl2xtuml_ooapopulation_op_transformTransition( masl2xtuml_ooapopulation *, c_t *, c_t *, c_t * );
void masl2xtuml_ooapopulation_op_StateMachine_newTransition( masl2xtuml_ooapopulation *, c_t *, c_t *, masl2xtuml_SM_SM *, c_t * );
void masl2xtuml_ooapopulation_op_Transition_initialize( masl2xtuml_ooapopulation *, masl2xtuml_SM_TXN * );
void masl2xtuml_ooapopulation_op_StateMachine_newCreationTransition( masl2xtuml_ooapopulation *, c_t *, c_t *, masl2xtuml_SM_SM * );
void masl2xtuml_ooapopulation_op_Transition_addEvent( masl2xtuml_ooapopulation *, c_t *, masl2xtuml_SM_TXN * );
masl2xtuml_O_TPARM * masl2xtuml_ooapopulation_op_Operation_newParameter( masl2xtuml_ooapopulation *, masl2xtuml_O_TFR *, c_t * );
void masl2xtuml_ooapopulation_op_OperationParameter_initialize( masl2xtuml_ooapopulation *, c_t *, masl2xtuml_O_TPARM * );
void masl2xtuml_ooapopulation_op_Operation_createParameterInInteractions( masl2xtuml_ooapopulation *, masl2xtuml_O_TFR *, masl2xtuml_O_TPARM * );
void masl2xtuml_ooapopulation_op_Operation_addParameterToOrdering( masl2xtuml_ooapopulation *, masl2xtuml_O_TFR *, masl2xtuml_O_TPARM * );
masl2xtuml_S_SPARM * masl2xtuml_ooapopulation_op_Function_newParameter( masl2xtuml_ooapopulation *, c_t *, masl2xtuml_S_SYNC * );
void masl2xtuml_ooapopulation_op_FunctionParameter_initialize( masl2xtuml_ooapopulation *, c_t *, masl2xtuml_S_SPARM * );
void masl2xtuml_ooapopulation_op_Function_addParameterToOrder( masl2xtuml_ooapopulation *, masl2xtuml_S_SPARM *, masl2xtuml_S_SYNC * );
void masl2xtuml_ooapopulation_op_Function_createMessageArgumentsForParameter( masl2xtuml_ooapopulation *, masl2xtuml_S_SPARM *, masl2xtuml_S_SYNC * );
void masl2xtuml_ooapopulation_op_FunctionParameter_setType( masl2xtuml_ooapopulation *, masl2xtuml_S_SPARM *, c_t * );
void masl2xtuml_ooapopulation_op_OperationParameter_setType( masl2xtuml_ooapopulation *, masl2xtuml_O_TPARM *, c_t * );
void masl2xtuml_ooapopulation_op_clearRelationshipCache( masl2xtuml_ooapopulation * );
void masl2xtuml_ooapopulation_op_Package_newAssociation( masl2xtuml_ooapopulation *, masl2xtuml_EP_PKG * );
void masl2xtuml_ooapopulation_op_Association_initialize( masl2xtuml_ooapopulation *, masl2xtuml_R_REL * );
void masl2xtuml_ooapopulation_op_transformAssociation( masl2xtuml_ooapopulation * );
void masl2xtuml_ooapopulation_op_Package_newAssociative( masl2xtuml_ooapopulation *, masl2xtuml_EP_PKG * );
void masl2xtuml_ooapopulation_op_SimpleAssociation_migrateToLinked( masl2xtuml_ooapopulation *, masl2xtuml_R_SIMP *, masl2xtuml_O_OBJ * );
bool masl2xtuml_ooapopulation_op_SimpleAssociation_isFormalized( masl2xtuml_ooapopulation *, masl2xtuml_R_SIMP * );
void masl2xtuml_ooapopulation_op_SimpleAssociation_unformalize( masl2xtuml_ooapopulation *, masl2xtuml_R_SIMP * );
void masl2xtuml_ooapopulation_op_ReferredToClassInAssoc_unformalize( masl2xtuml_ooapopulation *, masl2xtuml_R_RTO * );
void masl2xtuml_ooapopulation_op_ClassAsSimpleFormalizer_migrateToParticipant( masl2xtuml_ooapopulation *, masl2xtuml_R_FORM * );
void masl2xtuml_ooapopulation_op_ReferringClassInAssoc_dispose( masl2xtuml_ooapopulation *, masl2xtuml_R_RGO * );
void masl2xtuml_ooapopulation_op_ReferringClassInAssoc_clearReferences( masl2xtuml_ooapopulation *, masl2xtuml_R_RGO * );
void masl2xtuml_ooapopulation_op_AttributeReferenceInClass_migrateRefAttrOrDispose( masl2xtuml_ooapopulation *, masl2xtuml_O_REF * );
void masl2xtuml_ooapopulation_op_AttributeReferenceInClass_dispose( masl2xtuml_ooapopulation *, masl2xtuml_O_REF * );
void masl2xtuml_ooapopulation_op_Attribute_dispose( masl2xtuml_ooapopulation *, masl2xtuml_O_ATTR * );
void masl2xtuml_ooapopulation_op_ClassIdentifierAttribute_dispose( masl2xtuml_ooapopulation *, masl2xtuml_O_OIDA * );
void masl2xtuml_ooapopulation_op_ReferredToIdentifierAttribute_dispose( masl2xtuml_ooapopulation *, masl2xtuml_O_RTIDA * );
void masl2xtuml_ooapopulation_op_ReferentialAttribute_migrateToBase( masl2xtuml_ooapopulation *, masl2xtuml_O_RATTR * );
void masl2xtuml_ooapopulation_op_ReferentialAttribute_dispose( masl2xtuml_ooapopulation *, masl2xtuml_O_RATTR * );
void masl2xtuml_ooapopulation_op_BaseAttribute_dispose( masl2xtuml_ooapopulation *, masl2xtuml_O_BATTR * );
void masl2xtuml_ooapopulation_op_DerivedBaseAttribute_dispose( masl2xtuml_ooapopulation *, masl2xtuml_O_DBATTR * );
void masl2xtuml_ooapopulation_op_NewBaseAttribute_dispose( masl2xtuml_ooapopulation *, masl2xtuml_O_NBATTR * );
void masl2xtuml_ooapopulation_op_ClassAsLink_dispose( masl2xtuml_ooapopulation *, masl2xtuml_R_ASSR * );
void masl2xtuml_ooapopulation_op_ClassAsSimpleFormalizer_dispose( masl2xtuml_ooapopulation *, masl2xtuml_R_FORM * );


#define masl2xtuml_ooapopulation_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_masl2xtuml_ooapopulation_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* MASL2XTUML_OOAPOPULATION_CLASS_H */
