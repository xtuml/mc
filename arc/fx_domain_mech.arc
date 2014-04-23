.//============================================================================
.//
.// Domain Mech implementation
.//
.//
.//============================================================================
.function fx_generate_domain_mech_file_prologue
.param inst_ref te_c
.param boolean p_gen_decl
    .invoke file_name = fx_get_domain_mech_file_name(te_c)
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
.//============================================================================
.//
.function fx_generate_domain_mech_file_epilogue
.param inst_ref te_c
.param boolean p_gen_decl
    .//
    .if (p_gen_decl )
    .invoke file_name = fx_get_domain_mech_file_name(te_c)
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
.function fx_generate_domain_mech_declaration_body
.param inst_ref te_c
    .//
    .invoke base_arch_prefix = fx_get_base_arch_prefix_name()
    .invoke default_arch_prefix = fx_get_default_arch_prefix_name()
    .select any te_file from instances of TE_FILE;
    .assign domainName = te_c.Name
    .assign basePrefix = base_arch_prefix.result
    .assign defaultPrefix = default_arch_prefix.result
    .//
    .// Event
    .assign event_t = "${defaultPrefix}_xtUMLEvent_t"
    .assign eventconst_t = "${defaultPrefix}_xtUMLEventConstant_t"
    .assign domainEventPrefix = "${domainName}_MechEvent"
/***********************************************************************
 * Event instance management for Each Domain
 ***********************************************************************/
#define ${defaultPrefix}_AllocatextUMLEvent() ${domainEventPrefix}_AllocatextUMLEvent()
#define ${defaultPrefix}_NewxtUMLEvent(dest,info) ${domainEventPrefix}_NewxtUMLEvent((dest),(info))
#define ${defaultPrefix}_DeletextUMLEvent(evt) ${domainEventPrefix}_DeletextUMLEvent((evt))
.//#define ${defaultPrefix}_GetxtUMLEventSize(evt) ${domainEventPrefix}_GetxtUMLEventSize((evt))
#define ${defaultPrefix}_SendSelfEvent(evt) ${domainEventPrefix}_SendSelfEvent((evt))
.//#define ${defaultPrefix}_DequeueSelfEvent() ${domainEventPrefix}_DequeueSelfEvent()
#define ${defaultPrefix}_SendEvent(evt) ${domainEventPrefix}_SendNonSelfEvent((evt))
.//#define ${defaultPrefix}_DequeueNonSelfEvent() ${domainEventPrefix}_DequeueNonSelfEvent()

/***********************************************************************
 * Event instance management for Each Domain
 * function prototype declaration
 ***********************************************************************/

extern ${event_t} * ${domainEventPrefix}_AllocatextUMLEvent();
extern ${event_t} * ${domainEventPrefix}_NewxtUMLEvent(const void * const dest, const ${eventconst_t} * info);
extern void ${domainEventPrefix}_DeletextUMLEvent(${event_t} * evt);
extern unsigned ${domainEventPrefix}_GetxtUMLEventSize(${event_t} * evt);
extern void ${domainEventPrefix}_SendSelfEvent(${event_t} * evt);
extern ${event_t} * ${domainEventPrefix}_DequeuextUMLSelfEvent();
extern void ${domainEventPrefix}_SendNonSelfEvent(${event_t} * evt);
extern ${event_t} * ${domainEventPrefix}_DequeuextUMLNonSelfEvent();

    .// Object Node
    .assign objectSet = "${defaultPrefix}_ObjectSet_s"
    .assign domainObjNodePrefix = "${domainName}_MechObjNode"

/***********************************************************************
 * Object Collection Iteration node management for Each Domain
 ***********************************************************************/

#define ${defaultPrefix}_SetFactoryInit() ${domainObjNodePrefix}_SetFactoryInit()
#define ${defaultPrefix}_InitSet(set) ${domainObjNodePrefix}_InitSet((set))
#define ${defaultPrefix}_ClearSet(set) ${domainObjNodePrefix}_ClearSet((set))
#define ${defaultPrefix}_CopySet(to_set,from_set) ${domainObjNodePrefix}_CopySet((to_set),(from_set))
#define ${defaultPrefix}_SetInsertElement(set,substance) ${domainObjNodePrefix}_SetInsertElement((set),(substance))
#define ${defaultPrefix}_SetInsertBlock(container,instance,length,count) ${domainObjNodePrefix}_SetInsertBlock((container),(instance),(length),(count))
#define ${defaultPrefix}_SetRemoveElement(set ,elem) ${domainObjNodePrefix}_SetRemoveElement((set),(elem))

/***********************************************************************
 * Object Collection Iteration node management for Each Domain
 * function prototype declaration
 ***********************************************************************/

    .assign ihandle = "${defaultPrefix}_iHandle_t"
    .assign classsize = "${defaultPrefix}_ClassSize_t"
    .assign instanceindex = "${defaultPrefix}_InstanceIndex_t"
extern void ${domainObjNodePrefix}_SetFactoryInit();
extern void ${domainObjNodePrefix}_InitSet(${objectSet} * set);
extern void ${domainObjNodePrefix}_ClearSet(${objectSet} * set);
extern void ${domainObjNodePrefix}_CopySet(${objectSet} * to_set, ${objectSet} * from_set);
extern void ${domainObjNodePrefix}_SetInsertElement(${objectSet} * set, void * const substance);
extern ${defaultPrefix}_SetElement_s * ${domainObjNodePrefix}_SetInsertBlock(${defaultPrefix}_SetElement_s * container, const ${ihandle} * instance, const ${classsize} length, ${instanceindex} count);
extern void ${domainObjNodePrefix}_SetRemoveElement(${objectSet} * set, void * const elem);
    .// Misc
    .assign domainMiscPrefix = "${domainName}_Mech"

/* Max Mesuring Macro */
#ifdef MC3020_MAX_NUM_MEASURE
extern int g_${te_c.Name}_maxUseEventNodeNum;
extern int g_${te_c.Name}_maxUseNodeNum;
#endif

/***********************************************************************
 * Misc
 ***********************************************************************/

#define ${defaultPrefix}_strcpy(dst, src) ${domainMiscPrefix}_strcpy((dst), (src))
#define ${defaultPrefix}_IteratorNext(iter) ${domainMiscPrefix}_IteratorNext((iter))
#define ${defaultPrefix}_SetContains(set, element) ${domainMiscPrefix}_SetContains((set), (element))
#define ${defaultPrefix}_SetCardinality(set) ${domainMiscPrefix}_SetCardinality((set))

/***********************************************************************
 * Misc
 * function prototype declaration
 ***********************************************************************/

extern char * ${domainMiscPrefix}_strcpy(char * dst, const char * src);
extern void * ${domainMiscPrefix}_IteratorNext(${defaultPrefix}_Iterator_s * const iter);
extern const void * ${domainMiscPrefix}_SetContains(${objectSet} * set, const void * const element);
extern unsigned short ${domainMiscPrefix}_SetCardinality(const ${objectSet} * const set);

    .// Timer(Not Support)
    .// Mutex
    .assign domainMutexPrefix = "${domainName}_MechMutex"

/***********************************************************************
 * Mutex management for Each Domain
 * function prototype declaration
 ***********************************************************************/

extern void ${domainName}_MechMutex_LockWithOther( void* mutex);
extern void ${domainName}_MechMutex_UnLockWithOther( void* mutex);
.//
.end function
.//
.//
.//============================================================================
.//
.function fx_generate_domain_mech_definition_body
.param inst_ref te_c
    .//
    .invoke base_arch_prefix = fx_get_base_arch_prefix_name()
    .invoke default_arch_prefix = fx_get_default_arch_prefix_name()
    .select any te_file from instances of TE_FILE;
    .assign domainName = te_c.Name
    .assign basePrefix = base_arch_prefix.result
    .assign defaultPrefix = default_arch_prefix.result
    .//
    .assign domainInfo = "${domainName}_domainExecInfo"
    .assign event_t = "${defaultPrefix}_xtUMLEvent_t"
    .assign eventconst_t = "${defaultPrefix}_xtUMLEventConstant_t"
    .assign domainEventPrefix = "${domainName}_MechEvent"

/* Max Mesuring macro */
#ifdef MC3020_MAX_NUM_MEASURE
int g_${te_c.Name}_maxUseEventNodeNum = 0;
static int g_${te_c.Name}_useEventNodeNum = 0;
int g_${te_c.Name}_maxUseNodeNum = 0;
static int g_${te_c.Name}_useNodeNum = 0;
#endif

/***********************************************************************
 * Domain mechanism database body
 ***********************************************************************/
${basePrefix}_domainInfo_t ${domainInfo};

    .//
    .// Event
    .assign event_t = "${defaultPrefix}_xtUMLEvent_t"
    .assign domainEventPrefix = "${domainName}_MechEvent"
/* control flag to distinguish events senf from internal or external thread */
static int ${domainName}_Mech_InThreadFlag = 1;

/***********************************************************************
 * Event instance management for Each Domain
 ***********************************************************************/

${event_t} * ${domainEventPrefix}_AllocatextUMLEvent()
{
    return ${basePrefix}_AllocatextUMLEvent(${domainInfo}.eventDB);
}

${event_t} * ${domainEventPrefix}_NewxtUMLEvent(const void * const dest, const ${eventconst_t} * info)
{
    return ${basePrefix}_NewxtUMLEvent(dest, info, ${domainInfo}.eventDB);
}

void ${domainEventPrefix}_DeletextUMLEvent(${event_t} * evt)
{
    ${basePrefix}_DeletextUMLEvent(evt, ${domainInfo}.eventDB);
}
.//
.//unsigned ${domainEventPrefix}_GetxtUMLEventSize(${event_t} * evt)
.//{
.//    return ${basePrefix}_GetxtUMLEventSize(evt, ${domainInfo}.eventDB);
.//}

void ${domainEventPrefix}_SendSelfEvent(${event_t} * evt)
{
    ${basePrefix}_SendSelfEvent(evt, ${domainInfo}.eventDB);
}
.//
.//${event_t} * ${domainEventPrefix}_DequeuextUMLSelfEvent()
.//{
.//    return ${basePrefix}_DequeuextUMLSelfEvent(${domainInfo}.eventDB);
.//}

void ${domainEventPrefix}_SendNonSelfEvent(${event_t} * evt)
{
    ${basePrefix}_SendNonSelfEvent(evt, ${domainInfo}.eventDB);
}
.//
.//${event_t} * ${domainEventPrefix}_DequeuextUMLNonSelfEvent()
.//{
.//    return ${basePrefix}_DequeuextUMLNonSelfEvent(${domainInfo}.eventDB);
.//}

    .// Object Node
    .assign objectSet = "${defaultPrefix}_ObjectSet_s"
    .assign domainObjNodePrefix = "${domainName}_MechObjNode"
/***********************************************************************
 * Object Collection Iteration node management for Each Domain
 ***********************************************************************/
void ${domainObjNodePrefix}_SetFactoryInit()
{
    ${basePrefix}_SetFactoryInit(${domainInfo}.objNodeDB);
}

void ${domainObjNodePrefix}_InitSet(${objectSet} * set)
{
    ${basePrefix}_InitSet(set);
}

void ${domainObjNodePrefix}_ClearSet(${objectSet} * set)
{
    ${basePrefix}_ClearSet(set, ${domainInfo}.objNodeDB);
}

void ${domainObjNodePrefix}_CopySet(${objectSet} * to_set, ${objectSet} * from_set)
{
    ${basePrefix}_CopySet(to_set, from_set, ${domainInfo}.objNodeDB);
}

void ${domainObjNodePrefix}_SetInsertElement(${objectSet} * set, void * const substance)
{
    ${basePrefix}_SetInsertElement(set, substance, ${domainInfo}.objNodeDB);
#ifdef MC3020_MAX_NUM_MEASURE
    g_${te_c.Name}_useNodeNum++;
    g_${te_c.Name}_maxUseNodeNum = ((g_${te_c.Name}_useNodeNum>g_${te_c.Name}_maxUseNodeNum)?g_${te_c.Name}_useNodeNum:g_${te_c.Name}_maxUseNodeNum);
#endif
}

    .assign ihandle = "${defaultPrefix}_iHandle_t"
    .assign classsize = "${defaultPrefix}_ClassSize_t"
    .assign instanceindex = "${defaultPrefix}_InstanceIndex_t"
${defaultPrefix}_SetElement_s * ${domainObjNodePrefix}_SetInsertBlock(${defaultPrefix}_SetElement_s * container, const ${ihandle} * instance, const ${classsize} length, ${instanceindex} count)
{
    return ${basePrefix}_SetInsertBlock(container, instance, length, count);
}

void ${domainObjNodePrefix}_SetRemoveElement(${objectSet} * set, void * const elem)
{
    ${basePrefix}_SetRemoveElement(set, elem, ${domainInfo}.objNodeDB);
#ifdef MC3020_MAX_NUM_MEASURE
    g_${te_c.Name}_useNodeNum--;
#endif
}

    .// Misc
    .assign domainMiscPrefix = "${domainName}_Mech"

/***********************************************************************
 * Misc
 * function prototype declaration
 ***********************************************************************/
char * ${domainMiscPrefix}_strcpy(char * dst, const char * src)
{
    return ${basePrefix}_strcpy(dst, src);
}

void * ${domainMiscPrefix}_IteratorNext(${defaultPrefix}_Iterator_s * const iter)
{
    return ${basePrefix}_IteratorNext(iter);
}

const void * ${domainMiscPrefix}_SetContains(${objectSet} * set, const void * const element)
{
    return ${basePrefix}_SetContains(set, element);
}

unsigned short ${domainMiscPrefix}_SetCardinality(const ${objectSet} * const set)
{
    return ${basePrefix}_SetCardinality(set);
}

    .// Timer(Not Support)
    .//
    .// Mutex
    .assign domainMutexPrefix = "${domainName}_MechMutex"
    .assign mutexInfo = "${basePrefix}_mutexInfo_t"

/***********************************************************************
 * Mutex management for Each Domain
 * function prototype declaration
 ***********************************************************************/

int ${domainMutexPrefix}_Lock()
{
    return ${basePrefix}_MutexLock(${domainInfo}.mutex);
}

int ${domainMutexPrefix}_UnLock()
{
    return ${basePrefix}_MutexUnlock(${domainInfo}.mutex);
}

void ${domainMutexPrefix}_LockWithOther( void* callerMutex)
{
    /* mutex locking ... */
    /* 1st. unlock caller's mutex */
    if ( callerMutex ) {
        ${basePrefix}_MutexUnlock((${mutexInfo}*)callerMutex);
    }

    /* 2nd. lock self mutex */
    ${basePrefix}_MutexLock(${domainInfo}.mutex);

    if ((${mutexInfo}*)callerMutex == ${domainInfo}.mutex ) {
        ${domainName}_Mech_InThreadFlag = 1;
    }
    else {
        ${domainName}_Mech_InThreadFlag = 0;
    }
}


void ${domainMutexPrefix}_UnLockWithOther( void* callerMutex)
{
    if ((${mutexInfo}*)callerMutex == ${domainInfo}.mutex ) {
        ${domainName}_Mech_InThreadFlag = 0;
    }
    else {
        ${domainName}_Mech_InThreadFlag = 1;
    }

    /* mutex unlocking ... */
    /* 1st. unlock self mutex */
    ${basePrefix}_MutexUnlock(${domainInfo}.mutex);

    /* 2nd. lock caller's mutex */
    if ( callerMutex ) {
        ${basePrefix}_MutexLock((${mutexInfo}*)callerMutex);
    }
}

.//
.end function
.//
.//
.//
.// main
.// 全component(domain)についてmechコードを生成する。
.// ふつうは1つしかないはず…
.select many te_c_set from instances of TE_C;
.for each te_c in te_c_set
  .if (te_c.Name == "")
    .print "unnamed component te_c ID:${te_c.ID}"
  .else
    .// header file
    .invoke prologue = fx_generate_domain_mech_file_prologue(te_c, true)
    .invoke epilogue = fx_generate_domain_mech_file_epilogue(te_c, true)
    .invoke decl_code = fx_generate_domain_mech_declaration_body(te_c)
    .//
${prologue.body}
    .// include files
    .invoke file_name = fx_get_sys_mech_file_name()
#include "${file_name.result}.${te_file.hdr_file_ext}"
    .invoke file_name = fx_get_sys_types_file_name()
#include "${file_name.result}.${te_file.hdr_file_ext}"

${decl_code.body}

${epilogue.body}
    .//
    .invoke file_name = fx_get_domain_mech_file_name(te_c)
    .emit to file "${te_file.domain_include_path}/${file_name.result}.${te_file.hdr_file_ext}"
    .//
    .// source file
    .invoke prologue = fx_generate_domain_mech_file_prologue(te_c, false)
    .invoke epilogue = fx_generate_domain_mech_file_epilogue(te_c, false)
    .invoke defn_code = fx_generate_domain_mech_definition_body(te_c)
    .//
${prologue.body}
    .invoke file_name = fx_get_domain_mech_file_name(te_c)
#include "${file_name.result}.${te_file.hdr_file_ext}"

${defn_code.body}

${epilogue.body}
    .emit to file "${te_file.domain_source_path}/${file_name.result}.${te_file.src_file_ext}"
    .//
  .end if
.end for
