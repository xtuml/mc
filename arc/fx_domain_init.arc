.//============================================================================
.//
.// Domain Initialize Implementation
.//    Old style(.c, .hのtemplateを使わずにこのファイルで生成する)
.//
.//============================================================================
.function fx_generate_domain_init_file_prologue
.param inst_ref te_c
.param boolean p_gen_decl
    .invoke file_name = fx_get_domain_init_file_name(te_c)
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
.function fx_generate_domain_init_file_epilogue
.param inst_ref te_c
.param boolean p_gen_decl
    .//
    .if (p_gen_decl )
    .invoke file_name = fx_get_domain_init_file_name(te_c)
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
.function fx_generate_domain_init_definition_body
.param inst_ref te_c
    .//
    .select any te_file from instances of TE_FILE;
    .invoke base_arch_prefix = fx_get_base_arch_prefix_name()
    .assign domainName = te_c.Name
    .//
    .select one te_dci related by te_c->TE_DCI[R2090]
    .invoke class_dispatch_array = GetDomainDispatcherTableName(te_c.Name)
    .select any te_sm related by te_c->TE_CLASS[R2064]->TE_SM[R2072]
    .select any te_sync related by te_c->TE_SYNC[R2097]
    .invoke s = CreateDomainInitSegment( te_c, te_sync, te_sm )
    .assign init_segment = s.body
/******************************************************************************
 * Class Dispatcher array
 *****************************************************************************/
const ${class_dispatch_array.element_type} ${class_dispatch_array.result}[ ${te_dci.max_models} ] = {
    ${te_c.Name}_class_dispatchers
};

/******************************************************************************
 * Initialize function
 *****************************************************************************/
void ${te_c.Name}_execute_initialization()
{
${init_segment}\
}

/******************************************************************************
 * Domain Dispatcher for domain: ${te_c.Name}
 *****************************************************************************/
 /*
 extern void ${te_c.Name}_ShowEventInfo( const xtUMLEvent_t * evt );
 int ${te_c.Name}_ShowModelEvent = 0;
 */
 void ${te_c.Name}_DomainDispatcher( Escher_xtUMLEvent_t * event )
 {
     /*
     if (${te_c.Name}_ShowModelEvent > 0)
     {
         ${te_c.Name}_ShowEventInfo(event);
     }
     */
     ( *${te_c.Name}_EventDispatcher[ GetEventDestObjectNumber( event ) ] )( event );
 }


/******************************************************************************
 * System initialization method for domain: ${te_c.Name}
 *****************************************************************************/
 void InitializeDomain_${te_c.Name}()
 {
   /* Open object factories */
    .select many te_classes related by te_c->TE_CLASS[R2064] where ( not selected.ExcludeFromGen )
    .for each te_class in te_classes
    .//.print "te_class: ${te_class.Key_Lett}"
  ${te_c.name}_${te_class.Key_Lett}_FactoryInit();
    .end for
 }


/******************************************************************************
 * System shutdown method for domain: ${te_c.Name}
 *****************************************************************************/
 void ShutdownDomain_${te_c.Name}()
 {
     /* Close object factories */
 }

.end function
.//
.//============================================================================
.function fx_generate_domain_init_declaration_body
.param inst_ref te_c
    .//
    .select any te_file from instances of TE_FILE;
    .invoke base_arch_prefix = fx_get_base_arch_prefix_name()
    .assign domainName = te_c.Name
    .//
/******************************************************************************
 * System initialization method for domain: ${te_c.Name}
 *****************************************************************************/
 extern void InitializeDomain_${te_c.Name}(void);

/******************************************************************************
 * System shutdown method for domain: ${te_c.Name}
 *****************************************************************************/
extern void ShutdownDomain_${te_c.Name}(void);

extern void ${te_c.Name}_DomainDispatcher( Escher_xtUMLEvent_t *);

.end function
.//
.//
.//============================================================================
.// main
.select many te_c_set from instances of TE_C
.for each te_c in te_c_set
  .if (te_c.Name == "") then 
     .// 名前の無いTE_Cは無視する。
     .// 名前の無いTE_Cがなぜできるかは不明
      .print "unnamed component te_c ID:${te_c.ID}"
  .else
    .// header file
    .invoke prologue = fx_generate_domain_init_file_prologue(te_c, true)
    .invoke epilogue = fx_generate_domain_init_file_epilogue(te_c, true)
    .invoke decl_code = fx_generate_domain_init_declaration_body(te_c)
    .//
${prologue.body}

#include "${te_c.name}_mechs.${te_file.hdr_file_ext}"

${decl_code.body}

${epilogue.body}
    .invoke file_name = fx_get_domain_init_file_name(te_c)
    .emit to file "${te_file.domain_include_path}\${file_name.result}.${te_file.hdr_file_ext}"
    .//
    .// source file
    .invoke prologue = fx_generate_domain_init_file_prologue(te_c, false)
    .invoke epilogue = fx_generate_domain_init_file_epilogue(te_c, false)
    .invoke defn_code = fx_generate_domain_init_definition_body(te_c)
    .//
${prologue.body}

#include "sys_events.h"
#include "${te_c.name}_classes.${te_file.hdr_file_ext}"
    .select many te_classes related by te_c->TE_CLASS[R2064] where ( not selected.ExcludeFromGen )
    .for each te_class in te_classes
    .//.print "te_class: ${te_class.Key_Lett}"
#include "${te_c.name}_${te_class.Key_Lett}_class.${te_file.hdr_file_ext}"
    .end for

${defn_code.body}

${epilogue.body}
    .invoke file_name = fx_get_domain_init_file_name(te_c)
    .emit to file "${te_file.domain_source_path}\${file_name.result}.${te_file.src_file_ext}"
  .end if
.end for

