.//============================================================================
.// File:  $RCSfile: q.domain.analyze.arc,v $
.//
.// Description:
.// This query file provides the "first pass" of a multi-pass translation
.// model compiler.  The first pass analyzes the action semantics embodied
.// in the analysis domain, and applies optimization algorithms to the
.// action language statements encountered.  The results of these algorithmic
.// operations are then leveraged by subsequent passes of the structural
.// queries and templates to realize time/space/performance trade offs in
.// the generated application code.
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
.print "Analyzing model and making optimizations...."
.// Identify state models having at least one state, event and transition.
.invoke SM_SM_mark_valid()
.// Identify data types that are used.
.invoke datatype_used()
.// Determine externals entities that are needed.
.invoke ee_used()
.// Count up how many times each event is created/generated.
.invoke event_smt_used()
.// Find classes that are created in some way and identify invalid creates.
.invoke class_smt_created()
.// Detect invalid deletions.
.invoke class_smt_deleted()
.// Identify activity bodies that use break, continue and/or return.
.invoke act_break_continue_return()
.// Track down optimizable where clauses.
.invoke selection_whereclause_identify_special()
.// Identify the associations that need link and/or unlink methods.
.invoke association_mark_link_unlink_needed()
.// Identify associations that are navigated (in either or both directions).
.invoke association_R_OIR_mark_navigated()
.// Find which event queues are necessary.
.invoke qs = event_queue_analyze_needed()
.if ( qs.self_queue_needed )
  .print "Self queue is needed."
.end if
.if ( qs.nonself_queue_needed )
  .print "Nonself queue is needed."
.end if
.invoke as = te_attr_analyze_accesses()
.print "Attributes read is ${as.attributes_read_count}."
.print "Attributes written is ${as.attributes_written_count}."
.invoke asopt = te_attr_analyze_codegen( te_sys )
.print "${asopt.optimized_out_count} attributes got optimized out."
.invoke TE_TXN_used()
.//
