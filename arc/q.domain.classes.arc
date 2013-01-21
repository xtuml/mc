.//============================================================================
.// $RCSfile: q.domain.classes.arc,v $
.//
.// Description:
.// This archetype file contains the query functions for building a list
.// of class identifiers for a domain.
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
.function CreateDomainInitSegment
  .param inst_ref te_c
  .param inst_ref_set te_syncs
  .param inst_ref te_sm
  .select any te_file from instances of TE_FILE
  .select any te_instance from instances of TE_INSTANCE
  .select any te_set from instances of TE_SET
  .select any te_target from instances of TE_TARGET
  .invoke SortSetAlphabeticallyByNameAttr( te_syncs )
  .assign scount = 0
  .assign scardinality = cardinality te_syncs
  .assign attr_has_process_declaration = ""
  .if ( ( not_empty te_sm ) or ( scardinality > 0 ) )
    .if ( "SystemC" == te_target.language )
      .assign attr_has_process_declaration = "  SC_HAS_PROCESS( ${te_c.Name} );\n"
    .end if
  .end if
  .while ( scount < scardinality )
    .for each te_sync in te_syncs
      .if ( scount == te_sync.Order )
        .include "${te_file.arc_path}/t.domain_init.te_sync.c"
      .end if
    .end for
    .assign scount = scount + 1
  .end while
  .if ( "SystemC" == te_target.language )
    .invoke class_numbers_list = GetDomainClassNumberName( te_c.Name )
    .include "${te_file.arc_path}/t.domain_init.factories.c"
  .end if
.end function
.//
.function CreateClassIdentifierFile
  .param inst_ref te_c
  .select any te_copyright from instances of TE_COPYRIGHT
  .select any te_file from instances of TE_FILE
  .select any te_sys from instances of TE_SYS
  .select any te_target from instances of TE_TARGET
  .assign class_or_struct = "struct"
  .if ( ( "SystemC" == te_target.language ) or ( "C++" == te_target.language ) )
    .assign class_or_struct = "class"
  .end if
  .assign class_numbers = ""
  .assign class_number_count = 0
  .assign task_numbers = ""
  .assign class_dispatchers = ""
  .assign class_typedefs = ""
  .assign attr_class_info_init = ""
  .assign class_union = "  char ${te_c.Name}_dummy;\\n"
  .assign class_includes = "#include ""${te_c.module_file}.${te_file.hdr_file_ext}"""
  .assign ee_includes = ""
  .assign function_include = ""
  .assign instance_loaders = ""
  .assign batch_relaters = ""
  .assign attr_instance_dumpers = ""
  .assign type_name = ""
  .assign class_name = ""
  .assign number_of_state_machines = 0
  .assign delimiter = ""
  .// Get collections of active classes, assigner/class-based classes
  .// and passive classes.
  .select many te_classes related by te_c->TE_CLASS[R2064] where ( not selected.ExcludeFromGen )
  .select many o_objs related by te_classes->O_OBJ[R2019]
  .select many ism_o_objs related by o_objs->SM_ISM[R518]->O_OBJ[R518]
  .select many asm_o_objs related by o_objs->SM_ASM[R519]->O_OBJ[R519]
  .assign passive_o_objs = o_objs - ism_o_objs
  .assign passive_o_objs = passive_o_objs - asm_o_objs
  .assign sm_o_objs = o_objs - passive_o_objs
  .assign object_set_type = 0
  .while ( object_set_type < 3 )
    .if ( object_set_type == 0 )
      .assign o_objs = sm_o_objs
    .elif ( object_set_type == 1 )
      .assign o_objs = asm_o_objs
    .elif ( object_set_type == 2 )
      .assign o_objs = passive_o_objs
    .else
      .print "Logic error with O_OBJ subset types."
      .exit 100
    .end if
    .if ( object_set_type < 2 )
      .assign number_of_state_machines = number_of_state_machines + ( cardinality o_objs )
    .end if
    .for each o_obj in o_objs
      .assign dispatcher = "0"
      .invoke extent_info = GetFixedSizeClassExtentInfo( o_obj )
      .select one te_class related by o_obj->TE_CLASS[R2019]
      .if ( object_set_type == 1 )
        .// assigner
        .assign type_name = te_class.CBsystem_class_number
        .assign class_name = te_class.CBGeneratedName
        .assign dispatcher = te_class.CBdispatcher
        .assign attr_class_info_init = ( attr_class_info_init + delimiter ) + "\n  0"
      .else
        .assign attr_class_info_init = ( attr_class_info_init + delimiter ) + ( "\n  &" + extent_info.extent )
        .assign type_name = te_class.system_class_number
        .assign class_name = te_class.GeneratedName
        .if ( object_set_type == 0 )
          .select one sm_ism related by o_obj->SM_ISM[R518]
          .if ( not_empty sm_ism )
            .assign dispatcher = te_class.dispatcher
          .end if
        .end if
      .end if
      .if ( object_set_type < 2 )
        .assign class_dispatchers = class_dispatchers + "${delimiter}\\n  ${dispatcher}"
        .assign task_numbers = task_numbers + "${delimiter} ${te_class.Task}"
      .end if
      .if ( ( 0 == object_set_type ) or ( 2 == object_set_type ) )
        .assign class_name = te_class.GeneratedName
        .assign instance_loaders = instance_loaders + "${delimiter}\\n {""${o_obj.Key_Lett}"", ${type_name}, ${class_name}_instanceloader}"
        .assign batch_relaters = batch_relaters + "${delimiter}\\n ${class_name}_batch_relate"
        .assign attr_instance_dumpers = attr_instance_dumpers + "${delimiter}\n  ${class_name}_instancedumper"
      .end if
      .assign class_numbers = class_numbers + "#define ${type_name} ${class_number_count}\n"
      .assign class_number_count = class_number_count + 1
      .assign class_typedefs = class_typedefs + "\ntypedef ${class_or_struct} ${class_name} ${class_name};"
      .if ( te_class.Persistent )
        .assign class_union = class_union + "\\n  ${class_name} ${class_name}_u;"
      .end if
      .assign delimiter = ","
    .end for
    .assign object_set_type = object_set_type + 1
  .end while
  .//
  .invoke class_numbers_list = GetDomainClassNumberName( te_c.Name )
  .invoke domain_class_info = GetDomainClassInfoName( te_c.Name )
  .// These includes are for MISRA-C compliance.  The above typedefs
  .// normally are enough.
  .for each te_class in te_classes
    .assign class_includes = class_includes + "\n#include ""${te_class.class_file}.${te_file.hdr_file_ext}"""
  .end for
  .invoke event_unions = CreateUnionOfDomainEvents( te_c )
  .// TE_C may have no associated behavior/datatypes, accordingly include ${te_c.datatypes_file} should be omitted
  .select many te_ees related by te_c->TE_EE[R2085] where ( selected.Included )
  .select many global_te_ees from instances of TE_EE where ( ( selected.te_cID == 0 ) and ( selected.Included ) )
  .assign te_ees = te_ees | global_te_ees
  .for each te_ee in te_ees
    .assign ee_includes = ee_includes + "\n#include ""${te_ee.Include_File}"""
  .end for
  .//
  .assign enumeration_info = ""
  .select many enumeration_te_dts related by te_c->TE_DT[R2086] where ( selected.Is_Enum )
  .for each te_dt in enumeration_te_dts
    .invoke r = TE_DT_EnumerationDataTypes( te_dt )
    .assign enumeration_info = enumeration_info + r.body
  .end for
  .//
  .select many structured_te_dts related by te_c->TE_DT[R2086]->S_DT[R2021]->S_SDT[R17]->S_DT[R17]->TE_DT[R2021]
  .invoke r = TE_DT_StructuredDataTypes( structured_te_dts )
  .assign structured_data_types = r.body
  .//
  .// functions
  .assign function_declarations = ""
  .select any te_sync related by te_c->TE_SYNC[R2084]
  .if ( not_empty te_sync )
    .invoke r = CreateSynchronousServiceClassDeclaration( te_c )
    .assign function_declarations = r.body
    .assign te_sync.Included = true
  .end if
  .//
  .// Build the domain init file containing data structures collecting
  .// class info for the entire domain.
  .invoke class_dispatch_array = GetDomainDispatcherTableName( te_c.Name )
  .invoke dci = GetClassInfoArrayNaming()
  .select any te_sm related by te_c->TE_CLASS[R2064]->TE_SM[R2072]
  .//
  .// Create file for enums "owned" by this domain.
  .include "${te_file.arc_path}/t.domain_classes.h"
  .//
.end function
.//
