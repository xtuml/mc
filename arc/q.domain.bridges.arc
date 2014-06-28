.//============================================================================
.// $RCSfile: q.domain.bridges.arc,v $
.//
.// Description:
.// External Entity bridge process skeleton generator.
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
.//
.//-- 010:20140307 Modified Start (nomura)
.invoke include_files = ClassAddIncludeFiles( te_c, false )
.for each te_ee in te_ees
  .invoke is_exist_real_func = fx_is_exist_real_func(te_ee)
  .// REAL_FUNCを含むExternalEntityだけヘッダファイルを生成する。
  .if (is_exist_real_func.result)
	.select many te_brgs related by te_ee->S_EE[R2020]->S_BRG[R19]->TE_BRG[R2025]
	.//
	.// Generate declaration file.
	.// Note: The order of these is important.  The body is generated first
	.//       to ensure that the data types are marked as used.
	.//.invoke ee_body = TE_BRG_CreateDeclarations( te_ee, te_brgs )
	.invoke ee_body = CreateBridgeDeclarationsSkelton( te_ee, te_brgs )
	.invoke includes = AddBridgeIncludeFiles( te_sys, te_ee, true )
	.invoke bridgeExtendPrefix = fx_get_bridge_extend_name_prefix(te_ee)
	.assign include_file_name = "${bridgeExtendPrefix.result}.${te_file.hdr_file_ext}"
	.include "${arc_path}/t.ee_ext.h"
	.emit to file "${te_file.system_include_path}/${include_file_name}"
	.// とりあえずsourceは生成しないことにする。
	.// Generate skeleton implementation file.
	.//.invoke ee_body = TE_BRG_CreateDefinition( te_sys, te_ee, te_brgs )
	.//.invoke includes = AddBridgeIncludeFiles( te_sys, te_ee, false )
	.//.include "${arc_path}/t.ee.c"
	.//.emit to file "${te_file.system_source_path}/${te_ee.file}.${te_file.src_file_ext}"
   .end if
.end for
.//-- 010:20140307 Modified End (nomura)
.//
