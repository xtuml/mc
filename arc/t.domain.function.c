.//============================================================================
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
.//-- 018:20140320 Add Start (saitou)
.//  過去BPとの互換性のために、最後にダミー引数を追加する(isCalledByExtの代わり)。
.//  void だけの場合は引数が無いということなので、取り除いておく
.//  初期化関数としてMarkされている場合は、対象外とする。
.if ( te_sync.IsInitFunction != TRUE )
  .if ( "$r{te_aba.ParameterDefinition}" == "void" )
    .assign te_aba.ParameterDefinition = ""
  .end if
  .if ( "$r{te_aba.ParameterDefinition}" != "" )
    .assign te_aba.ParameterDefinition = te_aba.ParameterDefinition + ","
  .end if
  .assign te_aba.ParameterDefinition = te_aba.ParameterDefinition + " int dummy "
.end if
.//-- 018:20140320 Add Start (saitou)
/*
 * Domain Function:  ${s_sync.Name}
.if ( te_c.RawComments )
 *
 * action language:
${s_sync.Action_Semantics}
.end if
 */
.if ( te_sync.IsSafeForInterrupts )
/* Declare deferred routine for posting.  */
static void ${te_sync.deferred_method}( void );
  .if ( not_empty s_sparms )
/* Declare package for packing, posting and unpacking arguments.  */
typedef struct {
${te_aba.ParameterStructure}\
} ${te_sync.GeneratedName}_arguments_t;
  .end if
.end if
${te_aba.ReturnDataType}
${te_aba.scope}${te_aba.GeneratedName}(${te_aba.ParameterDefinition})
{
.if ( s_sync.Suc_Pars == 1 )
  .//
  .// Add additional interfaces for deferring and deferred execution.
  .//
  .if ( te_sync.IsSafeForInterrupts )
${deferred_definition.body}\
    .// Get and unpack argument data.
${unpack_arguments.body}\
    .// Call the synchronous method from the deferred body.
  ${te_sync.intraface_method}(${te_aba.ParameterInvocation});
}

${te_aba.ReturnDataType}
${te_sync.intraface_method}(${te_aba.ParameterDefinition})
{
  .end if
  .if ( te_aba.NonSelfEventCount > 0 )
    .if ( event_prioritization_needed.result )
  /* Set up instance handle for priority event generation.  */
  static ${te_instance.handle} ${te_instance.self};
    .end if
  .end if
  .if ( "C++" == te_target.language )
  ${te_c.Name} * thismodule = this;
  .end if
${function_body}
.else
  .print "\n\tWARNING!  Skipping unsuccessful or unparsed function ${te_sync.Name}"
  /* WARNING!  Skipping unsuccessful or unparsed function in '${te_sync.Name}' */
.end if
}
.//
