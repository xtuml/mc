.//============================================================================
.// 
.// Domain Facade Implementation
.//   Old style(.c、.hのtemplateを使わずにこのファイルで生成する)
.//
.//============================================================================
.function fx_generate_domain_facade_file_prologue
.param inst_ref te_c
.param boolean p_gen_decl
    .invoke file_name = fx_get_domain_facade_file_name(te_c)
    .select any te_file from instances of TE_FILE;
    .select any te_sys from instances of TE_SYS;
/******************************************************************************
    .if (p_gen_decl) .// header file
 * File: ${file_name.result}.${te_file.hdr_file_ext}
    .else
 * File: ${file_name.result}.${te_file.src_file_ext}
    .end if
 *
 * Domain: ${te_c.Name}
 * Project: ${te_sys.Name}
 *
    .invoke copyright = fx_get_copyright_notice()
 *
 *****************************************************************************/

    .if (p_gen_decl )
#ifndef _$ur{file_name.result}_${te_file.hdr_file_ext}_
#define _$ur{file_name.result}_${te_file.hdr_file_ext}_

#ifdef __cplusplus
extern "C" {
#endif

    .end if
    .//
.end function
.//
.//
.function fx_generate_domain_facade_file_epilogue
.param inst_ref te_c
.param boolean p_gen_decl
    .//
    .if (p_gen_decl )
    .invoke file_name = fx_get_domain_facade_file_name(te_c)
    .select any te_file from instances of TE_FILE;
#ifdef __cplusplus
}
#endif

#endif /* _$ur{file_name.result}_${te_file.hdr_file_ext}_ */
    .end if
    .//
.end function
.//
.//============================================================================
.//
.function fx_generate_domain_facade_declaration_body
.param inst_ref te_c
    .//
    .invoke base_arch_prefix = fx_get_base_arch_prefix_name()
    .select any te_file from instances of TE_FILE;
    .assign domainName = te_c.Name
    .//
void ${domainName}_DomainFacade_Initialize(
    ${base_arch_prefix.result}_waitForExternalEvents_Fp waitForExtEventFp,
    ${base_arch_prefix.result}_callOut_Fp eventEmptyCalloutFP,
    ${base_arch_prefix.result}_callOut_Fp nodeEmptyCalloutFP,
    ${base_arch_prefix.result}_callOut_Fp timerEmptyCalloutFP /* dummy */
);

.end function
.//
.//============================================================================
.//
.function fx_generate_domain_facade_definition_body
.param inst_ref te_c
    .//
    .invoke base_arch_prefix = fx_get_base_arch_prefix_name()
    .assign IsUseFacadeMaxSizeDef = false
    .assign domainName = te_c.Name

/* Domain Facade Database variable reference */
extern ${base_arch_prefix.result}_domainInfo_t ${domainName}_domainExecInfo;

/* Domain Event Database definifion */
static ${base_arch_prefix.result}_eventDB_t ${domainName}_domainEventDB;
/* Domain Object Node Database definifion */
static ${base_arch_prefix.result}_objNodeDB_t ${domainName}_domainObjNodeDB;

union ${domainName}_xtUMLEvents_u
{
    Escher_xtUMLEvent_t mc_event_base;
    ${domainName}_DomainEvents_u mc_events_in_domain_${domainName};
};
typedef union ${domainName}_xtUMLEvents_u ${domainName}_xtUMLEvents_u;

void ${domainName}_DomainFacade_Initialize(
    ${base_arch_prefix.result}_waitForExternalEvents_Fp waitForExtEventFp,
    ${base_arch_prefix.result}_callOut_Fp eventEmptyCalloutFP,
    ${base_arch_prefix.result}_callOut_Fp nodeEmptyCalloutFP,
    ${base_arch_prefix.result}_callOut_Fp timerEmptyCalloutFP /* dummy */
)
{
    ${domainName}_domainExecInfo.eventDB = &${domainName}_domainEventDB;
    ${domainName}_domainExecInfo.objNodeDB = &${domainName}_domainObjNodeDB;

    ${base_arch_prefix.result}_DomainDB_Initialize(
	    &${domainName}_domainExecInfo,
	    sizeof(${domainName}_xtUMLEvents_u),	/* event size */
    .if ( te_c.isUseFacadeMaxDef )
            .assign event_max_no = "${domainName}_INTERNAL_EVENT_MAX_NO"
	    ${event_max_no},	/* max number of event */
	    .assign obj_collection = "${domainName}_SELECTNODE_MAX_NO + ${domainName}_RELNODE_MAX_NO"
	    ${obj_collection},  /* max number of objekct node */
    .else
            .assign event_max_no = te_c.MaxInternalEvents + te_c.MaxExternalEvents
	    ${event_max_no},	/* max number of event */
	    .// MaxSelectionNodeExtentsが0ならデフォルト値(100)にする
	    .if (te_c.MaxSelectionNodeExtents == 0) 
	        .assign te_c.MaxSelectionNodeExtents = 100
	    .end if
	    .assign obj_collection = te_c.MaxRelationExtents + te_c.MaxSelectionNodeExtents
	    ${obj_collection},  /* max number of object node */
    .end if
    	    .// interleavedBridgeはとりあえず0固定
	    .assign interleavedBridge = 0
	    ${interleavedBridge}, /* interleaved bridge max no */
	    $lr{te_c.isUseMutexLock}, /* true=>use, false=>no use */
	    (void*)0,  /* dummy */
	    .invoke domainDispatcherName = fx_get_domain_dispatcher_name(te_c)
	    ${domainDispatcherName.result}, /* domain event dispatcher */
	    waitForExtEventFp,
	    eventEmptyCalloutFP,
	    nodeEmptyCalloutFP
    );

    /* Initialize Domain OOA Model */
    InitializeDomain_${domainName}();

    /* Initialize SubSystem */
    ${domainName}_execute_initialization();

}

void ${domainName}_DomainFacade_Execute(${base_arch_prefix.result}_threadInfo_t* thread)
{
    ${base_arch_prefix.result}_startDispatch(thread, &${domainName}_domainExecInfo);
}
.end function
.//
.//
.// main
.// 全component(domain)についてfacadeコードを生成する。
.// ふつうは1つしかないはず…
.select many te_c_set from instances of TE_C;
.for each te_c in te_c_set
  .if (te_c.Name == "") then
      .print "unnamed component te_c ID:${te_c.ID}"
  .else 
    .// header file
    .invoke prologue = fx_generate_domain_facade_file_prologue(te_c, true)
    .invoke epilogue = fx_generate_domain_facade_file_epilogue(te_c, true)
    .invoke decl_code = fx_generate_domain_facade_declaration_body(te_c)
    .//
${prologue.body}
    .invoke file_name = fx_get_domain_classes_file_name(te_c)
#include "${file_name.result}.${te_file.hdr_file_ext}"

${decl_code.body}

${epilogue.body}
    .//
    .invoke file_name = fx_get_domain_facade_file_name(te_c)
    .emit to file "${te_file.domain_include_path}/${file_name.result}.${te_file.hdr_file_ext}"
    .//
    .// source file
    .invoke prologue = fx_generate_domain_facade_file_prologue(te_c, false)
    .invoke epilogue = fx_generate_domain_facade_file_epilogue(te_c, false)
    .invoke defn_code = fx_generate_domain_facade_definition_body(te_c)
    .//
${prologue.body}
    .invoke file_name = fx_get_domain_mech_file_name(te_c)
#include "${file_name.result}.${te_file.hdr_file_ext}"
    .invoke file_name = fx_get_domain_init_file_name(te_c)
#include "${file_name.result}.${te_file.hdr_file_ext}"
    .invoke file_name = fx_get_domain_facade_file_name(te_c)
#include "${file_name.result}.${te_file.hdr_file_ext}"
    .invoke file_name = fx_get_domain_classes_file_name(te_c)
#include "${file_name.result}.${te_file.hdr_file_ext}"

    .if ( te_c.isUseFacadeMaxDef )
    #include "${te_c.Name}_domainfacade_size_def.h"

    .end if
    .//
${defn_code.body}

${epilogue.body}
    .invoke file_name = fx_get_domain_facade_file_name(te_c)
    .emit to file "${te_file.domain_source_path}/${file_name.result}.${te_file.src_file_ext}"
    .//
  .end if
.end for
