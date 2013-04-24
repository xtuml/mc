.//============================================================================
.// $RCSfile: q.domain.init.arc,v $
.//
.// Description:
.// This set of queries drives the generation of initialization and
.// top-level domain connection to the rest of the system.
.//
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
.//
.select any sm_ism related by te_c->TE_CLASS[R2064]->O_OBJ[R2019]->SM_ISM[R518]
.select any sm_asm related by te_c->TE_CLASS[R2064]->O_OBJ[R2019]->SM_ASM[R519]
.invoke class_info = GetClassInfoArrayNaming()
.invoke domain_class_info = GetDomainClassInfoName( te_c.Name )
.invoke max_class_number = GetDomainClassNumberName( te_c.Name )
.select many te_syncs related by s_dom->S_SYNC[R23]->TE_SYNC[R2023] where ( ( selected.IsInitFunction ) and ( selected.XlateSemantics ) )
.invoke init_segment = CreateDomainInitSegment( te_c, te_syncs )
.//
.//
.// Build the domain init file containing data structures collecting
.// class info for the entire domain.
.invoke class_dispatch_array = GetDomainDispatcherTableName( te_c.Name )
.invoke class_numbers = GetDomainClassNumberName( te_c.Name )
.clear
.include "${te_file.arc_path}/t.domain_init.h"
.// <registered domain>_init.h
.emit to file "${te_file.domain_include_path}/${te_c.init_file}.${te_file.hdr_file_ext}"
.//
.// Create domain level initialization source file.
.include "${te_file.arc_path}/t.domain_init.c"
.// <domain>_dom_init.c
.emit to file "${te_file.domain_source_path}/${te_c.init_file}.${te_file.src_file_ext}"
.//
.// This file contains an enumerated list of the classes in this domain.
.invoke class_type_identifiers = CreateClassIdentifierFile( te_c )
${class_type_identifiers.body}
.// <domain>_classes.h
.emit to file "${te_file.domain_include_path}/${te_c.classes_file}.${te_file.hdr_file_ext}"
.//
