.//============================================================================
.// $RCSfile: m.bridge.arc,v $
.//
.// Description:
.// This archetype file contains the implementation functions for colors
.// specified in the (user supplied/modified) bridge.clr file.
.//============================================================================
.//
.//============================================================================
.function WireSynchServiceOoaBridge
  .param string  initiant
  .param string  ee_key_letters
  .param string  recipient
  .print "Note:  WireSynchServiceOoaBridge is no longer supported.  Use components and interfaces."
.end function
.//
.//============================================================================
.function WireRealizeExternalEntity
  .param string a
  .param string b
  .param string c
  .param string d
  .param string e
  .print "Note:  WireRealizeExternalEntity is no longer supported.  Use components and interfaces."
.end function
.//
.//============================================================================
.function WireRealizedExternalEntity
  .param string a
  .param string b
  .param string c
  .param string d
  .param string e
  .print "Note:  WireRealizeExternalEntity is no longer supported.  Use components and interfaces."
.end function
.//
.//
.//============================================================================
.// Mark a function (synchronous service) as being safe for 
.// interrupt service routine (ISR) invocation.  This is also useful
.// for task communication and other multi-context situations.
.//============================================================================
.function TagSyncServiceSafeForInterrupts
  .param string  component_name
  .param string  function_name
  .assign component_name = "$r{component_name}"
  .select any tm_sync from instances of TM_SYNC where ( ( selected.RegisteredDomain == component_name ) and ( selected.Name == function_name ) )
  .if ( empty tm_sync )
    .create object instance tm_sync of TM_SYNC
    .assign tm_sync.RegisteredDomain = component_name
    .assign tm_sync.Name = function_name
  .end if
  .assign tm_sync.IsSafeForInterrupts = true
  .print "Function ${function_name} in component ${component_name} marked as safe for interrupt invocation."
.end function
.//
