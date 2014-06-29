.//============================================================================
.// 
.// Domain Debug Implementation
.//   Old style(.c、.hのtemplateを使わずにこのファイルで生成する)
.//
.//============================================================================
.function fx_generate_domain_debug_file_prologue
.param inst_ref te_c
.param boolean p_gen_decl
    .assign file_name = "${te_c.Name}_debug"
    .select any te_file from instances of TE_FILE
    .select any te_sys from instances of TE_SYS
/******************************************************************************
    .if (p_gen_decl) .// header file
 * File: ${file_name}.${te_file.hdr_file_ext}
    .else
 * File: ${file_name}.${te_file.src_file_ext}
    .end if
 *
 * Domain: ${te_c.Name}
 * Project: ${te_sys.Name}
 *
    .invoke copyright = fx_get_copyright_notice()
 *
 *****************************************************************************/

    .if (p_gen_decl )
#ifndef _$ur{file_name}_${te_file.hdr_file_ext}_
#define _$ur{file_name}_${te_file.hdr_file_ext}_

#ifdef __cplusplus
extern "C" {
#endif
    .end if
    .//
.end function
.//
.//
.function fx_generate_domain_debug_file_epilogue
.param inst_ref te_c
.param boolean p_gen_decl
    .//
    .if (p_gen_decl )
    .assign file_name = "${te_c.Name}_debug"
    .select any te_file from instances of TE_FILE;
#ifdef __cplusplus
}
#endif

#endif /* _$ur{file_name}_${te_file.hdr_file_ext}_ */
    .end if
    .//
.end function
.//
.//============================================================================
.//
.function fx_generate_domain_debug_declaration_body
.param inst_ref te_c
extern void ${te_c.Name}_debug_init(void);
.end function
.//
.//============================================================================
.//
.function fx_generate_domain_debug_definition_body
.param inst_ref te_c
    .// extentTable
static const struct mc3020fx_class_element extentTable[] = {
    .select many te_classs related by te_c->TE_CLASS[R2064] where ( not selected.ExcludeFromGen )
    .assign numClasses = cardinality te_classs
    .assign i = 0
.//-- 032:20140605 Modified Start (nomura)
    .invoke r = class_sort_by_keylet(te_classs)
    .assign cur_te_class = r.result
    .while (not_empty cur_te_class) 
{ &pG_${te_c.Name}_${cur_te_class.Key_Lett}_extent, &g_${te_c.Name}_${cur_te_class.Key_Lett}_instanceMax, "${cur_te_class.Key_Lett}"}\
      .assign i = i + 1
      .if (numClasses > i)
,
      .end if
      .select one cur_te_class related by cur_te_class->TE_CLASS[R2092.'succeeds']
    .end while
.//-- 032:20140605 Modified Start (nomura)
 };
    .//

    .invoke base_arch_prefix = fx_get_base_arch_prefix_name()
extern ${base_arch_prefix.result}_domainInfo_t ${te_c.Name}_domainExecInfo; 
void ${te_c.Name}_debug_init(void)
{
    ${base_arch_prefix.result}_debug_registDomain(
    "${te_c.Name}",
    extentTable,
    ${numClasses},
    &${te_c.Name}_domainExecInfo,
#ifdef MC3020_MAX_NUM_MEASURE
    &g_${te_c.Name}_maxUseNodeNum,
    &g_${te_c.Name}_maxUseEventNodeNum
#else
    0,
    0
#endif
    );
}

.end function
.//
.//
.// main
.// 全component(domain)についてdebugコードを生成する。
.// ふつうは1つしかないはず…
.select many te_c_set from instances of TE_C;
.for each te_c in te_c_set
  .if (te_c.Name == "") then
      .print "unnamed component te_c ID:${te_c.ID}"
  .else 
    .// header file
    .invoke prologue = fx_generate_domain_debug_file_prologue(te_c, true)
    .invoke epilogue = fx_generate_domain_debug_file_epilogue(te_c, true)
    .invoke decl_code = fx_generate_domain_debug_declaration_body(te_c)
    .//
${prologue.body}

${decl_code.body}

${epilogue.body}
    .//
    .assign file_name = "${te_c.Name}_debug"
    .emit to file "${te_file.domain_include_path}/${file_name}.${te_file.hdr_file_ext}"
    .//
    .// source file
    .invoke prologue = fx_generate_domain_debug_file_prologue(te_c, false)
    .invoke epilogue = fx_generate_domain_debug_file_epilogue(te_c, false)
    .invoke defn_code = fx_generate_domain_debug_definition_body(te_c)
    .//
${prologue.body}
    .// include file
#include "sys_mech_debug.h"
#include "${te_c.Name}_mechs.h"
#include "${te_c.Name}_classes.h"
    .select many te_classes related by te_c->TE_CLASS[R2064] where ( not selected.ExcludeFromGen )
    .for each te_class in te_classes
#include "${te_c.Name}_${te_class.Key_Lett}_class.${te_file.hdr_file_ext}"
    .end for

${defn_code.body}

${epilogue.body}
    .emit to file "${te_file.domain_source_path}/${file_name}.${te_file.src_file_ext}"
    .//
  .end if
.end for
