/*----------------------------------------------------------------------------
 * File:  ooaofooa_enums.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ENUMS_H
#define OOAOFOOA_ENUMS_H

#ifdef	__cplusplus
extern	"C"	{
#endif


/*
 * Enumerated Data Type:  SynchronizationType
 */
typedef enum {
 ooaofooa_SynchronizationType__UNINITIALIZED__e = -1,
 ooaofooa_SynchronizationType_Pull_e = 0,
 ooaofooa_SynchronizationType_Push_e = 1
} sys_SynchronizationType_t;

/*
 * Enumerated Data Type:  SearchScope
 */
typedef enum {
 ooaofooa_SearchScope__UNINITIALIZED__e = -1,
 ooaofooa_SearchScope_EnclosingSystem_e = 0,
 ooaofooa_SearchScope_Universe_e = 1,
 ooaofooa_SearchScope_Selection_e = 2
} sys_SearchScope_t;

/*
 * Enumerated Data Type:  ElementTypeConstants
 */
typedef enum {
 ooaofooa_ElementTypeConstants__UNINITIALIZED__e = -1,
 ooaofooa_ElementTypeConstants_FUNCTION_e = 0,
 ooaofooa_ElementTypeConstants_CLASS_e = 1,
 ooaofooa_ElementTypeConstants_DATATYPE_e = 2,
 ooaofooa_ElementTypeConstants_COMPONENT_e = 3,
 ooaofooa_ElementTypeConstants_EE_e = 4,
 ooaofooa_ElementTypeConstants_INTERFACE_e = 5,
 ooaofooa_ElementTypeConstants_PACKAGE_e = 6,
 ooaofooa_ElementTypeConstants_PORT_e = 7,
 ooaofooa_ElementTypeConstants_ASSOCIATION_e = 8,
 ooaofooa_ElementTypeConstants_CONSTANT_e = 9,
 ooaofooa_ElementTypeConstants_ACTIVITY_PARTITION_e = 10,
 ooaofooa_ElementTypeConstants_ACTIVITY_EDGE_e = 11,
 ooaofooa_ElementTypeConstants_TIMING_MARK_e = 12,
 ooaofooa_ElementTypeConstants_INTERACTION_PARTICIPANT_e = 13,
 ooaofooa_ElementTypeConstants_TIME_SPAN_e = 14,
 ooaofooa_ElementTypeConstants_USE_CASE_ASSOCIATION_e = 15,
 ooaofooa_ElementTypeConstants_MESSAGE_e = 16,
 ooaofooa_ElementTypeConstants_ACTIVITY_NODE_e = 17,
 ooaofooa_ElementTypeConstants_IMPORTED_CLASS_e = 18,
 ooaofooa_ElementTypeConstants_INTERFACE_REFERENCE_e = 19,
 ooaofooa_ElementTypeConstants_COMPONENT_REFERENCE_e = 20,
 ooaofooa_ElementTypeConstants_SATISFACTION_e = 21,
 ooaofooa_ElementTypeConstants_DELEGATION_e = 22
} sys_ElementTypeConstants_t;

/*
 * Enumerated Data Type:  StateEnum
 */
typedef enum {
 ooaofooa_StateEnum__UNINITIALIZED__e = -1,
 ooaofooa_StateEnum_Disabled_e = 0,
 ooaofooa_StateEnum_Enabled_e = 1
} sys_StateEnum_t;

/*
 * Enumerated Data Type:  IFDirectionType
 */
typedef enum {
 ooaofooa_IFDirectionType__UNINITIALIZED__e = -1,
 ooaofooa_IFDirectionType_ClientServer_e = 0,
 ooaofooa_IFDirectionType_ServerClient_e = 1
} sys_IFDirectionType_t;

/*
 * Enumerated Data Type:  EventProcessType
 */
typedef enum {
 ooaofooa_EventProcessType__UNINITIALIZED__e = -1,
 ooaofooa_EventProcessType_CantHappen_e = 0,
 ooaofooa_EventProcessType_Dequeued_e = 1,
 ooaofooa_EventProcessType_Enqueued_e = 2,
 ooaofooa_EventProcessType_Ignored_e = 3
} sys_EventProcessType_t;

/*
 * Enumerated Data Type:  StateChangeType
 */
typedef enum {
 ooaofooa_StateChangeType__UNINITIALIZED__e = -1,
 ooaofooa_StateChangeType_Entry_e = 0,
 ooaofooa_StateChangeType_Exit_e = 1
} sys_StateChangeType_t;

/*
 * Enumerated Data Type:  Breakpoint_Type
 */
typedef enum {
 ooaofooa_Breakpoint_Type__UNINITIALIZED__e = -1,
 ooaofooa_Breakpoint_Type_Association_e = 0,
 ooaofooa_Breakpoint_Type_Attribute_e = 1,
 ooaofooa_Breakpoint_Type_Event_BP_e = 2,
 ooaofooa_Breakpoint_Type_Instance_e = 3,
 ooaofooa_Breakpoint_Type_OAL_e = 4,
 ooaofooa_Breakpoint_Type_State_e = 5
} sys_Breakpoint_Type_t;

/*
 * Enumerated Data Type:  RunStateType
 */
typedef enum {
 ooaofooa_RunStateType__UNINITIALIZED__e = -1,
 ooaofooa_RunStateType_Running_e = 0,
 ooaofooa_RunStateType_Stepping_e = 1,
 ooaofooa_RunStateType_Suspended_e = 2,
 ooaofooa_RunStateType_Terminated_e = 3
} sys_RunStateType_t;

/*
 * Enumerated Data Type:  OalConstants
 */
typedef enum {
 ooaofooa_OalConstants__UNINITIALIZED__e = -1,
 ooaofooa_OalConstants_BRIDGE_TYPE_e = 0,
 ooaofooa_OalConstants_FUNCTION_TYPE_e = 1,
 ooaofooa_OalConstants_IB_OPERATION_TYPE_e = 2,
 ooaofooa_OalConstants_MDA_TYPE_e = 3,
 ooaofooa_OalConstants_OPERATION_TYPE_e = 4,
 ooaofooa_OalConstants_PROV_OPERATION_TYPE_e = 5,
 ooaofooa_OalConstants_PROV_SIGNAL_TYPE_e = 6,
 ooaofooa_OalConstants_REQ_OPERATION_TYPE_e = 7,
 ooaofooa_OalConstants_REQ_SIGNAL_TYPE_e = 8,
 ooaofooa_OalConstants_STATE_TYPE_e = 9,
 ooaofooa_OalConstants_TRANSITION_TYPE_e = 10
} sys_OalConstants_t;

/*
 * Enumerated Data Type:  Visibility
 */
typedef enum {
 ooaofooa_Visibility__UNINITIALIZED__e = -1,
 ooaofooa_Visibility_Private_e = 0,
 ooaofooa_Visibility_Public_e = 1,
 ooaofooa_Visibility_Protected_e = 2
} sys_Visibility_t;

/*
 * Enumerated Data Type:  ModelEventNotification
 */
typedef enum {
 ooaofooa_ModelEventNotification__UNINITIALIZED__e = -1,
 ooaofooa_ModelEventNotification_DELTA_ATTRIBUTE_CHANGE_e = 1024,
 ooaofooa_ModelEventNotification_DELTA_DELETE_e = 2048,
 ooaofooa_ModelEventNotification_DELTA_ELEMENT_RELATED_e = 512,
 ooaofooa_ModelEventNotification_DELTA_ELEMENT_UNRELATED_e = 256,
 ooaofooa_ModelEventNotification_DELTA_NEW_e = 4096,
 ooaofooa_ModelEventNotification_MASK_ALL_DELTAS_e = 7936,
 ooaofooa_ModelEventNotification_MASK_ALL_EVENTS_e = 127,
 ooaofooa_ModelEventNotification_MASK_NO_DELTAS_e = 255,
 ooaofooa_ModelEventNotification_MASK_NO_EVENTS_e = 0,
 ooaofooa_ModelEventNotification_MODEL_ELEMENT_CHANGED_e = 64,
 ooaofooa_ModelEventNotification_MODEL_ELEMENT_LOADED_e = 8,
 ooaofooa_ModelEventNotification_MODEL_ELEMENT_PRE_DELETE_e = 4,
 ooaofooa_ModelEventNotification_MODEL_ELEMENT_PRE_RELOAD_e = 16,
 ooaofooa_ModelEventNotification_MODEL_ELEMENT_RELOAD_e = 32,
 ooaofooa_ModelEventNotification_MODEL_ELEMENT_UNLOADED_e = 2,
 ooaofooa_ModelEventNotification_MODEL_EXECUTION_STOPPED_e = 128,
 ooaofooa_ModelEventNotification_UNKNOWN_e = 1
} sys_ModelEventNotification_t;

/*
 * Enumerated Data Type:  Scope
 */
typedef enum {
 ooaofooa_Scope__UNINITIALIZED__e = -1,
 ooaofooa_Scope_Class_e = 0,
 ooaofooa_Scope_Instance_e = 1
} sys_Scope_t;

/*
 * Enumerated Data Type:  ParseStatus
 */
typedef enum {
 ooaofooa_ParseStatus__UNINITIALIZED__e = -1,
 ooaofooa_ParseStatus_doNotParse_e = 0,
 ooaofooa_ParseStatus_parseInitial_e = 3,
 ooaofooa_ParseStatus_parseSuccessful_e = 1,
 ooaofooa_ParseStatus_parseUnsuccessful_e = 2
} sys_ParseStatus_t;

/*
 * Enumerated Data Type:  End
 */
typedef enum {
 ooaofooa_End__UNINITIALIZED__e = -1,
 ooaofooa_End_End_e = 0,
 ooaofooa_End_End_Fixed_e = 1,
 ooaofooa_End_Floating_e = 2,
 ooaofooa_End_Middle_e = 3,
 ooaofooa_End_None_e = 4,
 ooaofooa_End_Start_e = 5,
 ooaofooa_End_Start_Fixed_e = 6
} sys_End_t;

/*
 * Enumerated Data Type:  Style
 */
typedef enum {
 ooaofooa_Style__UNINITIALIZED__e = -1,
 ooaofooa_Style_Box_e = 0,
 ooaofooa_Style_Broken_e = 1,
 ooaofooa_Style_BullsEye_e = 2,
 ooaofooa_Style_Circle_e = 3,
 ooaofooa_Style_CircleCross_e = 4,
 ooaofooa_Style_Component_e = 5,
 ooaofooa_Style_ComponentContainer_e = 6,
 ooaofooa_Style_ConcavePentagon_e = 7,
 ooaofooa_Style_ConvexPentagon_e = 8,
 ooaofooa_Style_Cross_e = 9,
 ooaofooa_Style_Dash_e = 10,
 ooaofooa_Style_DashDouble_e = 11,
 ooaofooa_Style_Diamond_e = 12,
 ooaofooa_Style_Ellipse_e = 13,
 ooaofooa_Style_FilledArrow_e = 14,
 ooaofooa_Style_FilledCircle_e = 15,
 ooaofooa_Style_FilledSquare_e = 16,
 ooaofooa_Style_Folder_e = 17,
 ooaofooa_Style_Hourglass_e = 18,
 ooaofooa_Style_None_e = 19,
 ooaofooa_Style_OpenArrow_e = 20,
 ooaofooa_Style_RoundBox_e = 21,
 ooaofooa_Style_SemiCircle_e = 22,
 ooaofooa_Style_Solid_e = 23,
 ooaofooa_Style_StickFigure_e = 24,
 ooaofooa_Style_Triangle_e = 25,
 ooaofooa_Style_Underlined_e = 26,
 ooaofooa_Style_BoxArrowIn_e = 27,
 ooaofooa_Style_BoxArrowOut_e = 28,
 ooaofooa_Style_BoxArrowInOut_e = 29
} sys_Style_t;

/*
 * Enumerated Data Type:  Justification
 */
typedef enum {
 ooaofooa_Justification__UNINITIALIZED__e = -1,
 ooaofooa_Justification_Bottom_e = 0,
 ooaofooa_Justification_Center_e = 1,
 ooaofooa_Justification_Center_in_X_e = 2,
 ooaofooa_Justification_Floating_e = 3,
 ooaofooa_Justification_Left_e = 4,
 ooaofooa_Justification_Right_e = 5
} sys_Justification_t;

/*
 * Enumerated Data Type:  Multiplicity
 */
typedef enum {
 ooaofooa_Multiplicity__UNINITIALIZED__e = -1,
 ooaofooa_Multiplicity_Many_e = 0,
 ooaofooa_Multiplicity_One_e = 1,
 ooaofooa_Multiplicity_Unknown_e = 2
} sys_Multiplicity_t;


#ifdef	__cplusplus
}
#endif
#endif  /* OOAOFOOA_ENUMS_H */
