.//============================================================================
.// $RCSfile: m.domain.arc,v $
.//
.// Description:
.// This archetype file contains the implementation functions for colors
.// specified in the (user supplied/modified) domain.mark file.
.//
.// Notice:
.// (C) Copyright 1998-2011 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
.//
.//============================================================================
.// Disable the translation of function processing semantics.
.// The default is for all functions to be translated.
.//============================================================================
.function TagFunctionTranslationOff
  .param string function_name
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkFunctionTranslationOff( te_c.Name, function_name )
  .end for
.end function
.function MarkFunctionTranslationOff
  .param string component_name
  .param string function_name
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign msg = ""
    .if ( "*" == function_name )
      .select many te_syncs related by te_c->TE_SYNC[R2084]
      .for each te_sync in te_syncs
        .assign te_sync.XlateSemantics = FALSE
        .assign msg = "Turned off translation of ${te_sync.Name} function semantics."
      .end for
    .else
      .select any te_sync related by te_c->TE_SYNC[R2084] where ( selected.Name == function_name )
      .if ( not_empty te_sync )
        .assign te_sync.XlateSemantics = FALSE
        .assign msg = "Turned off translation of ${function_name} function semantics."
      .else
        .assign msg = "ERROR:  Function (${function_name}) not found in component ${te_c.Name}."
        .assign msg = msg + "\n  => TagFunctionTranslationOff( ""${function_name}"" )"
      .end if
    .end if
    .print "${msg}"
  .end for
.end function
.//
.//============================================================================
.// Mark a function as being executed during the initialization sequence.
.// All functions marked with this interface will be run during bring-up.
.// Functions bearing input arguments are not allowed to be tagged as
.// initialization functions.
.//============================================================================
.function TagInitializationFunction
  .param string function_name
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkInitializationFunction( te_c.Name, function_name )
  .end for
.end function
.function MarkInitializationFunction
  .param string component_name
  .param string function_name
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign msg = ""
    .select any te_sync related by te_c->TE_SYNC[R2084] where ( selected.Name == function_name )
    .if ( not_empty te_sync )
      .select any te_parm related by te_sync->TE_ABA[R2010]->TE_PARM[R2062]
      .if ( empty te_parm )
        .assign te_sync.IsInitFunction = true
        .assign msg = "Function ${te_sync.Name} marked as initialization function."
      .else
        .assign msg = "ERROR:  Initialization function (${function_name}) in component ${te_c.Name}"
        .assign msg = msg + "\ntakes arguments.  This is not allowed at initialization."
        .assign msg = msg + "\n  => TagInitializationFunction( ""${function_name}"" )"
      .end if
    .else
      .assign msg = "ERROR:  Initialization function (${function_name}) not found in component ${te_c.Name}."
      .assign msg = msg + "\n  => TagInitializationFunction( ""${function_name}"" )"
    .end if
    .print "${msg}"
  .end for
.end function
.//
.//============================================================================
.function TagExcludeObjectFromCodeGen
  .param string obj_key_letters
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkExcludeObjectFromCodeGen( te_c.Name, obj_key_letters )
  .end for
.end function
.function MarkExcludeObjectFromCodeGen
  .param string component_name
  .param string obj_key_letters
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign msg = ""
    .select any te_class related by te_c->TE_CLASS[R2064] where ( selected.Key_Lett == obj_key_letters )
    .if ( not_empty te_class )
      .assign te_class.ExcludeFromGen = true
      .assign msg = "Object ${te_class.Name} (${te_class.Key_Lett}) excluded from code generation."
    .else
      .assign msg = "ERROR:  Class (${obj_key_letters}) not found in component ${te_c.Name}"
      .assign msg = msg + "\n => TagExcludeObjectFromCodeGen( ""${obj_key_letters}"" )"
    .end if
    .print "${msg}"
  .end for
.end function
.//
.//============================================================================
.function TagExcludeSubsystemFromCodeGen
  .param string subsystem_name
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkExcludeSubsystemFromCodeGen( te_c.Name, subsystem_name )
  .end for
.end function
.function MarkExcludeSubsystemFromCodeGen
  .param string component_name
  .param string subsystem_name
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign msg = ""
    .select any s_ss related by te_c->S_DOM[R2017]->S_SS[R1] where ( selected.Name == subsystem_name )
    .if ( not_empty s_ss )
      .select many te_classes related by s_ss->O_OBJ[R2]->TE_CLASS[R2019]
      .for each te_class in te_classes
        .assign te_class.ExcludeFromGen = true
      .end for
      .assign msg = "All classes in subsystem ${subsystem_name} excluded from code generation."
    .else
      .assign msg = "ERROR:  Subsystem ${subsystem_name} not found in component ${te_c.Name}."
      .assign msg = msg + "\n => TagExcludeSubsystemFromCodeGen( ""${subsystem_name}"" )"
    .end if
    .print "${msg}"
  .end for
.end function
.//
.//============================================================================
.function TagStateTransitionTracingOn
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkStateTransitionTracingOn( te_c.Name )
  .end for
.end function
.function MarkStateTransitionTracingOn
  .param string component_name
  .print "Enabling state transition tracing for component(s) ${component_name}."
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign te_c.StateTrace = true
  .end for
.end function
.//
.//============================================================================
.function TagActionStatementTracingOn
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkActionStatementTracingOn( te_c.Name )
  .end for
.end function
.function MarkActionStatementTracingOn
  .param string component_name
  .print "Enabling action statement tracing for component(s) ${component_name}."
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign te_c.StmtTrace = true
  .end for
.end function
.//
.//============================================================================
.function TagEmptyHandleDetectionOn
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkEmptyHandleDetectionOn( te_c.Name )
  .end for
.end function
.function MarkEmptyHandleDetectionOn
  .param string component_name
  .print "Enabling detection of empty handles for component(s) ${component_name}."
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign te_c.DetectEmpty = true
  .end for
.end function
.//
.//============================================================================
.function TagFirstPassOptimizationsOff
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkFirstPassOptimizationsOff( te_c.Name )
  .end for
.end function
.function MarkFirstPassOptimizationsOff
  .param string component_name
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign te_c.OptDisabled = true
    .print "Code optimizations DISABLED for component ${te_c.Name}"
  .end for
.end function
.//
.//============================================================================
.function TagStateActionCommentBlocksEnabled
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkStateActionCommentBlocksEnabled( te_c.Name )
  .end for
.end function
.function MarkStateActionCommentBlocksEnabled
  .param string component_name
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign te_c.RawComments = true
    .print "State action sematics will be included as comments for component ${te_c.Name}."
  .end for
.end function
.//
.//============================================================================
.function TagStateActionStatementCommentsDisabled
  .select many te_cs from instances of TE_C
  .for each te_c in te_cs
    .invoke MarkStateActionStatementCommentsDisabled( te_c.Name )
  .end for
.end function
.function MarkStateActionStatementCommentsDisabled
  .param string component_name
  .select many te_cs from instances of TE_C where ( selected.Name == component_name )
  .if ( ( "" == component_name ) or ( "*" == component_name ) )
    .select many te_cs from instances of TE_C
  .end if
  .for each te_c in te_cs
    .assign te_c.CodeComments = false
    .print "State action statement level comments disabled for component ${te_c.Name}"
  .end for
.end function
.//
.function TagStateActionVariableNamesEnabled
.end function
.//
.function TagVerboseReflexivePhrasesEnabled
.end function
.//
