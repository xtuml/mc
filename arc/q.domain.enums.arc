.//-- 017:20140319 Add Start (nomura)
.//
.select any te_file from instances of TE_FILE
.select many te_c_set from instances of TE_C
.for each te_c in te_c_set
  .assign enumeration_info = ""
.//-- 026:20140411 Modified Start (nomura)
  .select many enumeration_te_dts related by te_c->TE_DT[R2086] where (( selected.Is_Enum ) and ( not selected.IsExternalMacro ))
.//-- 026:20140411 Modified End (nomura)
  .for each te_dt in enumeration_te_dts
    .invoke r = TE_DT_EnumerationDataTypes( te_dt )
    .assign enumeration_info = enumeration_info + r.body
  .end for
  .//
  .include "${te_file.arc_path}/t.domain_enums.h"
  .invoke domainenums = fx_get_domain_enums_file_name(te_c)
  .emit to file "${te_file.domain_include_path}/${domainenums.result}.${te_file.hdr_file_ext}"
.end for
.//-- 017:20140319 Add End (nomura)
