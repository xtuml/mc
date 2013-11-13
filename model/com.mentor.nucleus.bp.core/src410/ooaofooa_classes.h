/*----------------------------------------------------------------------------
 * File:  ooaofooa_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CLASSES_H
#define OOAOFOOA_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  ooaofooa
 */
extern Escher_Extent_t * const ooaofooa_class_info[];
void ooaofooa_execute_initialization( void );

#define ooaofooa_STATE_MODELS 0
/* Define constants to map to class numbers.  */
#define ooaofooa_MSG_M_CLASS_NUMBER 0
#define ooaofooa_MSG_A_CLASS_NUMBER 1
#define ooaofooa_MSG_O_CLASS_NUMBER 2
#define ooaofooa_MSG_B_CLASS_NUMBER 3
#define ooaofooa_MSG_E_CLASS_NUMBER 4
#define ooaofooa_MSG_F_CLASS_NUMBER 5
#define ooaofooa_MSG_BA_CLASS_NUMBER 6
#define ooaofooa_MSG_OA_CLASS_NUMBER 7
#define ooaofooa_MSG_FA_CLASS_NUMBER 8
#define ooaofooa_MSG_EA_CLASS_NUMBER 9
#define ooaofooa_MSG_R_CLASS_NUMBER 10
#define ooaofooa_MSG_SM_CLASS_NUMBER 11
#define ooaofooa_MSG_AM_CLASS_NUMBER 12
#define ooaofooa_MSG_ISM_CLASS_NUMBER 13
#define ooaofooa_MSG_IAM_CLASS_NUMBER 14
#define ooaofooa_MSG_IA_CLASS_NUMBER 15
#define ooaofooa_MSG_SIG_CLASS_NUMBER 16
#define ooaofooa_MSG_IOP_CLASS_NUMBER 17
#define ooaofooa_MSG_EPA_CLASS_NUMBER 18
#define ooaofooa_O_OBJ_CLASS_NUMBER 19
#define ooaofooa_O_IOBJ_CLASS_NUMBER 20
#define ooaofooa_O_ATTR_CLASS_NUMBER 21
#define ooaofooa_O_ID_CLASS_NUMBER 22
#define ooaofooa_O_OIDA_CLASS_NUMBER 23
#define ooaofooa_O_BATTR_CLASS_NUMBER 24
#define ooaofooa_O_DBATTR_CLASS_NUMBER 25
#define ooaofooa_O_NBATTR_CLASS_NUMBER 26
#define ooaofooa_O_RATTR_CLASS_NUMBER 27
#define ooaofooa_S_CDT_CLASS_NUMBER 28
#define ooaofooa_A_A_CLASS_NUMBER 29
#define ooaofooa_A_N_CLASS_NUMBER 30
#define ooaofooa_A_E_CLASS_NUMBER 31
#define ooaofooa_A_ACT_CLASS_NUMBER 32
#define ooaofooa_A_OBJ_CLASS_NUMBER 33
#define ooaofooa_A_CTL_CLASS_NUMBER 34
#define ooaofooa_A_INI_CLASS_NUMBER 35
#define ooaofooa_A_AF_CLASS_NUMBER 36
#define ooaofooa_A_FF_CLASS_NUMBER 37
#define ooaofooa_A_DM_CLASS_NUMBER 38
#define ooaofooa_O_REF_CLASS_NUMBER 39
#define ooaofooa_A_FJ_CLASS_NUMBER 40
#define ooaofooa_A_GA_CLASS_NUMBER 41
#define ooaofooa_A_AE_CLASS_NUMBER 42
#define ooaofooa_A_SS_CLASS_NUMBER 43
#define ooaofooa_A_AIA_CLASS_NUMBER 44
#define ooaofooa_O_RTIDA_CLASS_NUMBER 45
#define ooaofooa_COMM_COMM_CLASS_NUMBER 46
#define ooaofooa_COMM_LNK_CLASS_NUMBER 47
#define ooaofooa_COMM_CIC_CLASS_NUMBER 48
#define ooaofooa_COMM_MIC_CLASS_NUMBER 49
#define ooaofooa_COMM_PIC_CLASS_NUMBER 50
#define ooaofooa_O_TFR_CLASS_NUMBER 51
#define ooaofooa_O_TPARM_CLASS_NUMBER 52
#define ooaofooa_O_RAVR_CLASS_NUMBER 53
#define ooaofooa_S_UDT_CLASS_NUMBER 54
#define ooaofooa_UC_UCC_CLASS_NUMBER 55
#define ooaofooa_UC_UCA_CLASS_NUMBER 56
#define ooaofooa_UC_PIUC_CLASS_NUMBER 57
#define ooaofooa_UC_UIU_CLASS_NUMBER 58
#define ooaofooa_UC_BA_CLASS_NUMBER 59
#define ooaofooa_UC_G_CLASS_NUMBER 60
#define ooaofooa_UC_I_CLASS_NUMBER 61
#define ooaofooa_UC_E_CLASS_NUMBER 62
#define ooaofooa_UC_AIUC_CLASS_NUMBER 63
#define ooaofooa_S_BRG_CLASS_NUMBER 64
#define ooaofooa_A_AP_CLASS_NUMBER 65
#define ooaofooa_A_ATE_CLASS_NUMBER 66
#define ooaofooa_A_AEA_CLASS_NUMBER 67
#define ooaofooa_S_BPARM_CLASS_NUMBER 68
#define ooaofooa_EP_PKG_CLASS_NUMBER 69
#define ooaofooa_EP_SPKG_CLASS_NUMBER 70
#define ooaofooa_EP_PIP_CLASS_NUMBER 71
#define ooaofooa_S_EDT_CLASS_NUMBER 72
#define ooaofooa_CNST_CSP_CLASS_NUMBER 73
#define ooaofooa_CNST_SYC_CLASS_NUMBER 74
#define ooaofooa_CNST_LFSC_CLASS_NUMBER 75
#define ooaofooa_CNST_LSC_CLASS_NUMBER 76
#define ooaofooa_CNST_CIP_CLASS_NUMBER 77
#define ooaofooa_S_ENUM_CLASS_NUMBER 78
#define ooaofooa_S_SYNC_CLASS_NUMBER 79
#define ooaofooa_S_SPARM_CLASS_NUMBER 80
#define ooaofooa_S_SYS_CLASS_NUMBER 81
#define ooaofooa_S_FPK_CLASS_NUMBER 82
#define ooaofooa_G_EIS_CLASS_NUMBER 83
#define ooaofooa_PL_EEPID_CLASS_NUMBER 84
#define ooaofooa_S_DOM_CLASS_NUMBER 85
#define ooaofooa_TE_SWC_CLASS_NUMBER 86
#define ooaofooa_TE_CI_CLASS_NUMBER 87
#define ooaofooa_TE_OIR_CLASS_NUMBER 88
#define ooaofooa_TE_SYS_CLASS_NUMBER 89
#define ooaofooa_TE_DISP_CLASS_NUMBER 90
#define ooaofooa_TE_QUEUE_CLASS_NUMBER 91
#define ooaofooa_TE_ABA_CLASS_NUMBER 92
#define ooaofooa_TE_C_CLASS_NUMBER 93
#define ooaofooa_TE_MBR_CLASS_NUMBER 94
#define ooaofooa_TE_EE_CLASS_NUMBER 95
#define ooaofooa_TE_DT_CLASS_NUMBER 96
#define ooaofooa_TE_ACT_CLASS_NUMBER 97
#define ooaofooa_TE_SYNC_CLASS_NUMBER 98
#define ooaofooa_TE_TFR_CLASS_NUMBER 99
#define ooaofooa_R_REL_CLASS_NUMBER 100
#define ooaofooa_TE_BRG_CLASS_NUMBER 101
#define ooaofooa_TE_DBATTR_CLASS_NUMBER 102
#define ooaofooa_TE_ENUM_CLASS_NUMBER 103
#define ooaofooa_TE_PARM_CLASS_NUMBER 104
#define ooaofooa_TE_WHERE_CLASS_NUMBER 105
#define ooaofooa_TE_ATTR_CLASS_NUMBER 106
#define ooaofooa_TE_REL_CLASS_NUMBER 107
#define ooaofooa_TE_EVT_CLASS_NUMBER 108
#define ooaofooa_TE_STATE_CLASS_NUMBER 109
#define ooaofooa_R_OIR_CLASS_NUMBER 110
#define ooaofooa_TE_PO_CLASS_NUMBER 111
#define ooaofooa_TE_VAL_CLASS_NUMBER 112
#define ooaofooa_TE_VAR_CLASS_NUMBER 113
#define ooaofooa_TE_SM_CLASS_NUMBER 114
#define ooaofooa_TE_CLASS_CLASS_NUMBER 115
#define ooaofooa_TE_PREFIX_CLASS_NUMBER 116
#define ooaofooa_TE_SET_CLASS_NUMBER 117
#define ooaofooa_TE_PERSIST_CLASS_NUMBER 118
#define ooaofooa_R_RTO_CLASS_NUMBER 119
#define ooaofooa_TE_EQ_CLASS_NUMBER 120
#define ooaofooa_TE_ILB_CLASS_NUMBER 121
#define ooaofooa_TE_THREAD_CLASS_NUMBER 122
#define ooaofooa_TE_FILE_CLASS_NUMBER 123
#define ooaofooa_TE_CALLOUT_CLASS_NUMBER 124
#define ooaofooa_TE_STRING_CLASS_NUMBER 125
#define ooaofooa_TE_TRACE_CLASS_NUMBER 126
#define ooaofooa_TE_COPYRIGHT_CLASS_NUMBER 127
#define ooaofooa_TE_DMA_CLASS_NUMBER 128
#define ooaofooa_TE_CONTAINER_CLASS_NUMBER 129
#define ooaofooa_R_RGO_CLASS_NUMBER 130
#define ooaofooa_TE_DLIST_CLASS_NUMBER 131
#define ooaofooa_TE_SLIST_CLASS_NUMBER 132
#define ooaofooa_TE_TARGET_CLASS_NUMBER 133
#define ooaofooa_R_SIMP_CLASS_NUMBER 134
#define ooaofooa_TE_RELINFO_CLASS_NUMBER 135
#define ooaofooa_TE_RELSTORE_CLASS_NUMBER 136
#define ooaofooa_TE_INSTANCE_CLASS_NUMBER 137
#define ooaofooa_TE_TIM_CLASS_NUMBER 138
#define ooaofooa_TE_TYPEMAP_CLASS_NUMBER 139
#define ooaofooa_TE_EXTENT_CLASS_NUMBER 140
#define ooaofooa_TE_DIM_CLASS_NUMBER 141
#define ooaofooa_TE_PAR_CLASS_NUMBER 142
#define ooaofooa_TE_MACT_CLASS_NUMBER 143
#define ooaofooa_R_PART_CLASS_NUMBER 144
#define ooaofooa_TE_IIR_CLASS_NUMBER 145
#define ooaofooa_TE_DCI_CLASS_NUMBER 146
#define ooaofooa_TE_CIA_CLASS_NUMBER 147
#define ooaofooa_R_FORM_CLASS_NUMBER 148
#define ooaofooa_R_ASSOC_CLASS_NUMBER 149
#define ooaofooa_R_AONE_CLASS_NUMBER 150
#define ooaofooa_S_FIP_CLASS_NUMBER 151
#define ooaofooa_TE_BLK_CLASS_NUMBER 152
#define ooaofooa_TE_LNK_CLASS_NUMBER 153
#define ooaofooa_TE_SMT_CLASS_NUMBER 154
#define ooaofooa_TE_ASSIGN_CLASS_NUMBER 155
#define ooaofooa_TE_BREAK_CLASS_NUMBER 156
#define ooaofooa_TE_BRIDGE_CLASS_NUMBER 157
#define ooaofooa_TE_CONTINUE_CLASS_NUMBER 158
#define ooaofooa_TE_CONTROL_CLASS_NUMBER 159
#define ooaofooa_TE_CREATE_EVENT_CLASS_NUMBER 160
#define ooaofooa_TE_CREATE_INSTANCE_CLASS_NUMBER 161
#define ooaofooa_R_AOTH_CLASS_NUMBER 162
#define ooaofooa_TE_DELETE_INSTANCE_CLASS_NUMBER 163
#define ooaofooa_TE_ELIF_CLASS_NUMBER 164
#define ooaofooa_TE_ELSE_CLASS_NUMBER 165
#define ooaofooa_TE_EVENT_PARAMETERS_CLASS_NUMBER 166
#define ooaofooa_TE_FOR_CLASS_NUMBER 167
#define ooaofooa_TE_FUNCTION_CLASS_NUMBER 168
#define ooaofooa_TE_GENERATE_CLASS_NUMBER 169
#define ooaofooa_TE_GENERATE_CREATOR_EVENT_CLASS_NUMBER 170
#define ooaofooa_TE_GENERATE_PRECREATED_EVENT_CLASS_NUMBER 171
#define ooaofooa_TE_GENERATE_TO_CLASS_CLASS_NUMBER 172
#define ooaofooa_R_ASSR_CLASS_NUMBER 173
#define ooaofooa_TE_IF_CLASS_NUMBER 174
#define ooaofooa_TE_IOP_CLASS_NUMBER 175
#define ooaofooa_TE_OPERATION_CLASS_NUMBER 176
#define ooaofooa_TE_RELATE_CLASS_NUMBER 177
#define ooaofooa_TE_RELATE_USING_CLASS_NUMBER 178
#define ooaofooa_TE_RETURN_CLASS_NUMBER 179
#define ooaofooa_TE_SELECT_CLASS_NUMBER 180
#define ooaofooa_TE_SELECT_RELATED_CLASS_NUMBER 181
#define ooaofooa_TE_SELECT_WHERE_CLASS_NUMBER 182
#define ooaofooa_TE_SGN_CLASS_NUMBER 183
#define ooaofooa_R_SUBSUP_CLASS_NUMBER 184
#define ooaofooa_TE_UNRELATE_CLASS_NUMBER 185
#define ooaofooa_R_SUPER_CLASS_NUMBER 186
#define ooaofooa_TE_UNRELATE_USING_CLASS_NUMBER 187
#define ooaofooa_R_SUB_CLASS_NUMBER 188
#define ooaofooa_TE_WHILE_CLASS_NUMBER 189
#define ooaofooa_R_COMP_CLASS_NUMBER 190
#define ooaofooa_R_CONE_CLASS_NUMBER 191
#define ooaofooa_R_COTH_CLASS_NUMBER 192
#define ooaofooa_S_FPIP_CLASS_NUMBER 193
#define ooaofooa_TE_OUTFILE_CLASS_NUMBER 194
#define ooaofooa_TM_C_CLASS_NUMBER 195
#define ooaofooa_TM_SYNC_CLASS_NUMBER 196
#define ooaofooa_TM_POINTER_CLASS_NUMBER 197
#define ooaofooa_TM_PRECISION_CLASS_NUMBER 198
#define ooaofooa_TM_ENUMVAL_CLASS_NUMBER 199
#define ooaofooa_TM_ENUMINIT_CLASS_NUMBER 200
#define ooaofooa_TM_THREAD_CLASS_NUMBER 201
#define ooaofooa_TM_SYSTAG_CLASS_NUMBER 202
#define ooaofooa_TM_BUILD_CLASS_NUMBER 203
#define ooaofooa_TM_TEMPLATE_CLASS_NUMBER 204
#define ooaofooa_TM_TP_CLASS_NUMBER 205
#define ooaofooa_TM_IF_CLASS_NUMBER 206
#define ooaofooa_TM_TPV_CLASS_NUMBER 207
#define ooaofooa_S_EEPK_CLASS_NUMBER 208
#define ooaofooa_DOC_DOC_CLASS_NUMBER 209
#define ooaofooa_DOC_SEC_CLASS_NUMBER 210
#define ooaofooa_DOC_DATE_CLASS_NUMBER 211
#define ooaofooa_DOC_HEAD_CLASS_NUMBER 212
#define ooaofooa_DOC_FOOT_CLASS_NUMBER 213
#define ooaofooa_DOC_ADDR_CLASS_NUMBER 214
#define ooaofooa_DOC_PAR_CLASS_NUMBER 215
#define ooaofooa_DOC_FIG_CLASS_NUMBER 216
#define ooaofooa_DOC_LINK_CLASS_NUMBER 217
#define ooaofooa_DOC_TBL_CLASS_NUMBER 218
#define ooaofooa_DOC_IMG_CLASS_NUMBER 219
#define ooaofooa_DOC_CELL_CLASS_NUMBER 220
#define ooaofooa_DOC_ROW_CLASS_NUMBER 221
#define ooaofooa_S_EEIP_CLASS_NUMBER 222
#define ooaofooa_S_EEPIP_CLASS_NUMBER 223
#define ooaofooa_S_DPK_CLASS_NUMBER 224
#define ooaofooa_S_DIP_CLASS_NUMBER 225
#define ooaofooa_S_DPIP_CLASS_NUMBER 226
#define ooaofooa_I_LNK_CLASS_NUMBER 227
#define ooaofooa_I_EVI_CLASS_NUMBER 228
#define ooaofooa_I_AVL_CLASS_NUMBER 229
#define ooaofooa_I_INS_CLASS_NUMBER 230
#define ooaofooa_I_EXE_CLASS_NUMBER 231
#define ooaofooa_I_STF_CLASS_NUMBER 232
#define ooaofooa_I_BSF_CLASS_NUMBER 233
#define ooaofooa_I_STACK_CLASS_NUMBER 234
#define ooaofooa_I_DIV_CLASS_NUMBER 235
#define ooaofooa_I_TIM_CLASS_NUMBER 236
#define ooaofooa_I_EQE_CLASS_NUMBER 237
#define ooaofooa_I_SQE_CLASS_NUMBER 238
#define ooaofooa_I_MON_CLASS_NUMBER 239
#define ooaofooa_CSME_CLM_CLASS_NUMBER 240
#define ooaofooa_I_VSF_CLASS_NUMBER 241
#define ooaofooa_I_LIP_CLASS_NUMBER 242
#define ooaofooa_I_RCH_CLASS_NUMBER 243
#define ooaofooa_I_CIN_CLASS_NUMBER 244
#define ooaofooa_I_ICQE_CLASS_NUMBER 245
#define ooaofooa_CSME_CIE_CLASS_NUMBER 246
#define ooaofooa_CSME_CIS_CLASS_NUMBER 247
#define ooaofooa_S_SS_CLASS_NUMBER 248
#define ooaofooa_PL_FPID_CLASS_NUMBER 249
#define ooaofooa_S_SIS_CLASS_NUMBER 250
#define ooaofooa_BP_BP_CLASS_NUMBER 251
#define ooaofooa_BP_OAL_CLASS_NUMBER 252
#define ooaofooa_BP_EV_CLASS_NUMBER 253
#define ooaofooa_BP_CON_CLASS_NUMBER 254
#define ooaofooa_BP_ST_CLASS_NUMBER 255
#define ooaofooa_S_SID_CLASS_NUMBER 256
#define ooaofooa_S_AW_CLASS_NUMBER 257
#define ooaofooa_S_IRDT_CLASS_NUMBER 258
#define ooaofooa_S_SDT_CLASS_NUMBER 259
#define ooaofooa_S_MBR_CLASS_NUMBER 260
#define ooaofooa_S_DIS_CLASS_NUMBER 261
#define ooaofooa_S_DIM_CLASS_NUMBER 262
#define ooaofooa_S_EE_CLASS_NUMBER 263
#define ooaofooa_C_C_CLASS_NUMBER 264
#define ooaofooa_C_I_CLASS_NUMBER 265
#define ooaofooa_C_P_CLASS_NUMBER 266
#define ooaofooa_C_R_CLASS_NUMBER 267
#define ooaofooa_C_EP_CLASS_NUMBER 268
#define ooaofooa_C_AS_CLASS_NUMBER 269
#define ooaofooa_C_IO_CLASS_NUMBER 270
#define ooaofooa_C_SF_CLASS_NUMBER 271
#define ooaofooa_C_PP_CLASS_NUMBER 272
#define ooaofooa_C_IR_CLASS_NUMBER 273
#define ooaofooa_C_DG_CLASS_NUMBER 274
#define ooaofooa_C_PO_CLASS_NUMBER 275
#define ooaofooa_C_RID_CLASS_NUMBER 276
#define ooaofooa_CA_COMM_CLASS_NUMBER 277
#define ooaofooa_CA_EESMC_CLASS_NUMBER 278
#define ooaofooa_CA_SMSMC_CLASS_NUMBER 279
#define ooaofooa_CA_SMEEC_CLASS_NUMBER 280
#define ooaofooa_CA_EESME_CLASS_NUMBER 281
#define ooaofooa_CA_SMSME_CLASS_NUMBER 282
#define ooaofooa_CA_SMEEE_CLASS_NUMBER 283
#define ooaofooa_CA_ACC_CLASS_NUMBER 284
#define ooaofooa_CA_SMOA_CLASS_NUMBER 285
#define ooaofooa_CA_SMEEA_CLASS_NUMBER 286
#define ooaofooa_CA_SMOAA_CLASS_NUMBER 287
#define ooaofooa_CA_SMEED_CLASS_NUMBER 288
#define ooaofooa_CN_CIC_CLASS_NUMBER 289
#define ooaofooa_CN_DC_CLASS_NUMBER 290
#define ooaofooa_IP_IP_CLASS_NUMBER 291
#define ooaofooa_IP_IPINIP_CLASS_NUMBER 292
#define ooaofooa_SLD_SDP_CLASS_NUMBER 293
#define ooaofooa_SLD_SDINP_CLASS_NUMBER 294
#define ooaofooa_SLD_SCINP_CLASS_NUMBER 295
#define ooaofooa_SPR_REP_CLASS_NUMBER 296
#define ooaofooa_SPR_PEP_CLASS_NUMBER 297
#define ooaofooa_SPR_RO_CLASS_NUMBER 298
#define ooaofooa_SPR_RS_CLASS_NUMBER 299
#define ooaofooa_SPR_PO_CLASS_NUMBER 300
#define ooaofooa_SPR_PS_CLASS_NUMBER 301
#define ooaofooa_CP_CP_CLASS_NUMBER 302
#define ooaofooa_CP_CPINP_CLASS_NUMBER 303
#define ooaofooa_CL_IPINS_CLASS_NUMBER 304
#define ooaofooa_CL_IP_CLASS_NUMBER 305
#define ooaofooa_CL_IR_CLASS_NUMBER 306
#define ooaofooa_CL_IIR_CLASS_NUMBER 307
#define ooaofooa_CL_IC_CLASS_NUMBER 308
#define ooaofooa_S_EEM_CLASS_NUMBER 309
#define ooaofooa_SM_SM_CLASS_NUMBER 310
#define ooaofooa_SM_STATE_CLASS_NUMBER 311
#define ooaofooa_SM_EVT_CLASS_NUMBER 312
#define ooaofooa_SM_SEME_CLASS_NUMBER 313
#define ooaofooa_SM_NSTXN_CLASS_NUMBER 314
#define ooaofooa_SM_EIGN_CLASS_NUMBER 315
#define ooaofooa_SM_CH_CLASS_NUMBER 316
#define ooaofooa_SM_TXN_CLASS_NUMBER 317
#define ooaofooa_SM_NETXN_CLASS_NUMBER 318
#define ooaofooa_SM_CRTXN_CLASS_NUMBER 319
#define ooaofooa_SM_MOORE_CLASS_NUMBER 320
#define ooaofooa_SM_MEALY_CLASS_NUMBER 321
#define ooaofooa_SM_MOAH_CLASS_NUMBER 322
#define ooaofooa_SM_MEAH_CLASS_NUMBER 323
#define ooaofooa_SM_AH_CLASS_NUMBER 324
#define ooaofooa_SM_ACT_CLASS_NUMBER 325
#define ooaofooa_SM_EVTDI_CLASS_NUMBER 326
#define ooaofooa_SM_SUPDT_CLASS_NUMBER 327
#define ooaofooa_SM_SDI_CLASS_NUMBER 328
#define ooaofooa_SM_ISM_CLASS_NUMBER 329
#define ooaofooa_SM_ASM_CLASS_NUMBER 330
#define ooaofooa_SM_PEVT_CLASS_NUMBER 331
#define ooaofooa_SM_SEVT_CLASS_NUMBER 332
#define ooaofooa_SM_NLEVT_CLASS_NUMBER 333
#define ooaofooa_SM_LEVT_CLASS_NUMBER 334
#define ooaofooa_SM_SGEVT_CLASS_NUMBER 335
#define ooaofooa_SM_TAH_CLASS_NUMBER 336
#define ooaofooa_S_EEDI_CLASS_NUMBER 337
#define ooaofooa_ACT_BLK_CLASS_NUMBER 338
#define ooaofooa_ACT_ACT_CLASS_NUMBER 339
#define ooaofooa_ACT_SMT_CLASS_NUMBER 340
#define ooaofooa_ACT_AI_CLASS_NUMBER 341
#define ooaofooa_ACT_SRW_CLASS_NUMBER 342
#define ooaofooa_ACT_SEL_CLASS_NUMBER 343
#define ooaofooa_ACT_FOR_CLASS_NUMBER 344
#define ooaofooa_ACT_CNV_CLASS_NUMBER 345
#define ooaofooa_ACT_REL_CLASS_NUMBER 346
#define ooaofooa_ACT_UNR_CLASS_NUMBER 347
#define ooaofooa_ACT_E_CLASS_NUMBER 348
#define ooaofooa_ACT_FIW_CLASS_NUMBER 349
#define ooaofooa_ACT_FIO_CLASS_NUMBER 350
#define ooaofooa_ACT_CR_CLASS_NUMBER 351
#define ooaofooa_ACT_DEL_CLASS_NUMBER 352
#define ooaofooa_ACT_RU_CLASS_NUMBER 353
#define ooaofooa_ACT_URU_CLASS_NUMBER 354
#define ooaofooa_ACT_IF_CLASS_NUMBER 355
#define ooaofooa_ACT_TFM_CLASS_NUMBER 356
#define ooaofooa_ACT_WHL_CLASS_NUMBER 357
#define ooaofooa_ACT_BRG_CLASS_NUMBER 358
#define ooaofooa_ACT_EL_CLASS_NUMBER 359
#define ooaofooa_ACT_SR_CLASS_NUMBER 360
#define ooaofooa_ACT_RET_CLASS_NUMBER 361
#define ooaofooa_ACT_FNC_CLASS_NUMBER 362
#define ooaofooa_ACT_IOP_CLASS_NUMBER 363
#define ooaofooa_ACT_LNK_CLASS_NUMBER 364
#define ooaofooa_ACT_SGN_CLASS_NUMBER 365
#define ooaofooa_ACT_CTL_CLASS_NUMBER 366
#define ooaofooa_ACT_BRK_CLASS_NUMBER 367
#define ooaofooa_ACT_CON_CLASS_NUMBER 368
#define ooaofooa_ACT_SAB_CLASS_NUMBER 369
#define ooaofooa_ACT_DAB_CLASS_NUMBER 370
#define ooaofooa_ACT_FNB_CLASS_NUMBER 371
#define ooaofooa_ACT_OPB_CLASS_NUMBER 372
#define ooaofooa_ACT_BRB_CLASS_NUMBER 373
#define ooaofooa_ACT_POB_CLASS_NUMBER 374
#define ooaofooa_ACT_PSB_CLASS_NUMBER 375
#define ooaofooa_ACT_ROB_CLASS_NUMBER 376
#define ooaofooa_ACT_RSB_CLASS_NUMBER 377
#define ooaofooa_ACT_BIC_CLASS_NUMBER 378
#define ooaofooa_ACT_TAB_CLASS_NUMBER 379
#define ooaofooa_ACT_BIE_CLASS_NUMBER 380
#define ooaofooa_S_EEEVT_CLASS_NUMBER 381
#define ooaofooa_E_CEI_CLASS_NUMBER 382
#define ooaofooa_E_GEN_CLASS_NUMBER 383
#define ooaofooa_E_GPR_CLASS_NUMBER 384
#define ooaofooa_E_CEA_CLASS_NUMBER 385
#define ooaofooa_E_GAR_CLASS_NUMBER 386
#define ooaofooa_E_GEC_CLASS_NUMBER 387
#define ooaofooa_E_CEE_CLASS_NUMBER 388
#define ooaofooa_E_GEE_CLASS_NUMBER 389
#define ooaofooa_E_CEC_CLASS_NUMBER 390
#define ooaofooa_E_ESS_CLASS_NUMBER 391
#define ooaofooa_E_CES_CLASS_NUMBER 392
#define ooaofooa_E_GES_CLASS_NUMBER 393
#define ooaofooa_E_CSME_CLASS_NUMBER 394
#define ooaofooa_E_GSME_CLASS_NUMBER 395
#define ooaofooa_S_EEEDI_CLASS_NUMBER 396
#define ooaofooa_PE_PE_CLASS_NUMBER 397
#define ooaofooa_PE_VIS_CLASS_NUMBER 398
#define ooaofooa_PE_CVS_CLASS_NUMBER 399
#define ooaofooa_PE_SRS_CLASS_NUMBER 400
#define ooaofooa_PE_CRS_CLASS_NUMBER 401
#define ooaofooa_V_VAL_CLASS_NUMBER 402
#define ooaofooa_V_PAR_CLASS_NUMBER 403
#define ooaofooa_V_BIN_CLASS_NUMBER 404
#define ooaofooa_V_LBO_CLASS_NUMBER 405
#define ooaofooa_V_LRL_CLASS_NUMBER 406
#define ooaofooa_V_TVL_CLASS_NUMBER 407
#define ooaofooa_V_EDV_CLASS_NUMBER 408
#define ooaofooa_V_ISR_CLASS_NUMBER 409
#define ooaofooa_V_TRV_CLASS_NUMBER 410
#define ooaofooa_V_UNY_CLASS_NUMBER 411
#define ooaofooa_V_LST_CLASS_NUMBER 412
#define ooaofooa_V_LIN_CLASS_NUMBER 413
#define ooaofooa_V_AVL_CLASS_NUMBER 414
#define ooaofooa_V_IRF_CLASS_NUMBER 415
#define ooaofooa_V_BRV_CLASS_NUMBER 416
#define ooaofooa_V_VAR_CLASS_NUMBER 417
#define ooaofooa_V_INT_CLASS_NUMBER 418
#define ooaofooa_V_INS_CLASS_NUMBER 419
#define ooaofooa_V_TRN_CLASS_NUMBER 420
#define ooaofooa_V_SLR_CLASS_NUMBER 421
#define ooaofooa_V_PVL_CLASS_NUMBER 422
#define ooaofooa_V_FNV_CLASS_NUMBER 423
#define ooaofooa_V_LEN_CLASS_NUMBER 424
#define ooaofooa_V_LOC_CLASS_NUMBER 425
#define ooaofooa_V_MVL_CLASS_NUMBER 426
#define ooaofooa_V_AER_CLASS_NUMBER 427
#define ooaofooa_V_ALV_CLASS_NUMBER 428
#define ooaofooa_V_MSV_CLASS_NUMBER 429
#define ooaofooa_V_EPR_CLASS_NUMBER 430
#define ooaofooa_V_SCV_CLASS_NUMBER 431
#define ooaofooa_S_EEEDT_CLASS_NUMBER 432
#define ooaofooa_PA_SIC_CLASS_NUMBER 433
#define ooaofooa_PA_SICP_CLASS_NUMBER 434
#define ooaofooa_PA_DIC_CLASS_NUMBER 435
#define ooaofooa_SQ_S_CLASS_NUMBER 436
#define ooaofooa_SQ_LS_CLASS_NUMBER 437
#define ooaofooa_SQ_CIP_CLASS_NUMBER 438
#define ooaofooa_SQ_COP_CLASS_NUMBER 439
#define ooaofooa_SQ_TM_CLASS_NUMBER 440
#define ooaofooa_SQ_TS_CLASS_NUMBER 441
#define ooaofooa_SQ_SIS_CLASS_NUMBER 442
#define ooaofooa_SQ_MIS_CLASS_NUMBER 443
#define ooaofooa_SQ_CP_CLASS_NUMBER 444
#define ooaofooa_SQ_P_CLASS_NUMBER 445
#define ooaofooa_SQ_EEP_CLASS_NUMBER 446
#define ooaofooa_SQ_FPP_CLASS_NUMBER 447
#define ooaofooa_SQ_CPA_CLASS_NUMBER 448
#define ooaofooa_SQ_AV_CLASS_NUMBER 449
#define ooaofooa_SQ_AP_CLASS_NUMBER 450
#define ooaofooa_SQ_IA_CLASS_NUMBER 451
#define ooaofooa_SQ_FA_CLASS_NUMBER 452
#define ooaofooa_SQ_FAV_CLASS_NUMBER 453
#define ooaofooa_SQ_IAV_CLASS_NUMBER 454
#define ooaofooa_IA_UCP_CLASS_NUMBER 455
#define ooaofooa_SQ_PP_CLASS_NUMBER 456
#define ooaofooa_SEN_E_CLASS_NUMBER 457
#define ooaofooa_SEN_ALE_CLASS_NUMBER 458
#define ooaofooa_SEN_DE_CLASS_NUMBER 459
#define ooaofooa_SEN_DCE_CLASS_NUMBER 460
#define ooaofooa_SEN_RE_CLASS_NUMBER 461
#define ooaofooa_SQU_Q_CLASS_NUMBER 462
#define ooaofooa_SQU_D_CLASS_NUMBER 463
#define ooaofooa_SQU_R_CLASS_NUMBER 464
#define ooaofooa_SQU_DE_CLASS_NUMBER 465
#define ooaofooa_SQU_A_CLASS_NUMBER 466
#define ooaofooa_SP_SP_CLASS_NUMBER 467
#define ooaofooa_SP_SE_CLASS_NUMBER 468
#define ooaofooa_SP_ALS_CLASS_NUMBER 469
#define ooaofooa_SP_DS_CLASS_NUMBER 470
#define ooaofooa_SP_NS_CLASS_NUMBER 471
#define ooaofooa_SR_SR_CLASS_NUMBER 472
#define ooaofooa_SR_M_CLASS_NUMBER 473
#define ooaofooa_SR_CM_CLASS_NUMBER 474
#define ooaofooa_SR_NM_CLASS_NUMBER 475
#define ooaofooa_SR_CMR_CLASS_NUMBER 476
#define ooaofooa_S_DT_CLASS_NUMBER 477
#define ooaofooa_MAX_CLASS_NUMBERS 478

/* Provide a map of classes to task numbers.  */
#define ooaofooa_TASK_NUMBERS 

#define ooaofooa_class_dispatchers
#define ESCHER_IDDUMP_MASK 0x0fffffff
#define ooaofooa_instance_loaders\
 {"MSG_M", ooaofooa_MSG_M_CLASS_NUMBER, ooaofooa_MSG_M_instanceloader},\
 {"MSG_A", ooaofooa_MSG_A_CLASS_NUMBER, ooaofooa_MSG_A_instanceloader},\
 {"MSG_O", ooaofooa_MSG_O_CLASS_NUMBER, ooaofooa_MSG_O_instanceloader},\
 {"MSG_B", ooaofooa_MSG_B_CLASS_NUMBER, ooaofooa_MSG_B_instanceloader},\
 {"MSG_E", ooaofooa_MSG_E_CLASS_NUMBER, ooaofooa_MSG_E_instanceloader},\
 {"MSG_F", ooaofooa_MSG_F_CLASS_NUMBER, ooaofooa_MSG_F_instanceloader},\
 {"MSG_BA", ooaofooa_MSG_BA_CLASS_NUMBER, ooaofooa_MSG_BA_instanceloader},\
 {"MSG_OA", ooaofooa_MSG_OA_CLASS_NUMBER, ooaofooa_MSG_OA_instanceloader},\
 {"MSG_FA", ooaofooa_MSG_FA_CLASS_NUMBER, ooaofooa_MSG_FA_instanceloader},\
 {"MSG_EA", ooaofooa_MSG_EA_CLASS_NUMBER, ooaofooa_MSG_EA_instanceloader},\
 {"MSG_R", ooaofooa_MSG_R_CLASS_NUMBER, ooaofooa_MSG_R_instanceloader},\
 {"MSG_SM", ooaofooa_MSG_SM_CLASS_NUMBER, ooaofooa_MSG_SM_instanceloader},\
 {"MSG_AM", ooaofooa_MSG_AM_CLASS_NUMBER, ooaofooa_MSG_AM_instanceloader},\
 {"MSG_ISM", ooaofooa_MSG_ISM_CLASS_NUMBER, ooaofooa_MSG_ISM_instanceloader},\
 {"MSG_IAM", ooaofooa_MSG_IAM_CLASS_NUMBER, ooaofooa_MSG_IAM_instanceloader},\
 {"MSG_IA", ooaofooa_MSG_IA_CLASS_NUMBER, ooaofooa_MSG_IA_instanceloader},\
 {"MSG_SIG", ooaofooa_MSG_SIG_CLASS_NUMBER, ooaofooa_MSG_SIG_instanceloader},\
 {"MSG_IOP", ooaofooa_MSG_IOP_CLASS_NUMBER, ooaofooa_MSG_IOP_instanceloader},\
 {"MSG_EPA", ooaofooa_MSG_EPA_CLASS_NUMBER, ooaofooa_MSG_EPA_instanceloader},\
 {"O_OBJ", ooaofooa_O_OBJ_CLASS_NUMBER, ooaofooa_O_OBJ_instanceloader},\
 {"O_IOBJ", ooaofooa_O_IOBJ_CLASS_NUMBER, ooaofooa_O_IOBJ_instanceloader},\
 {"O_ATTR", ooaofooa_O_ATTR_CLASS_NUMBER, ooaofooa_O_ATTR_instanceloader},\
 {"O_ID", ooaofooa_O_ID_CLASS_NUMBER, ooaofooa_O_ID_instanceloader},\
 {"O_OIDA", ooaofooa_O_OIDA_CLASS_NUMBER, ooaofooa_O_OIDA_instanceloader},\
 {"O_BATTR", ooaofooa_O_BATTR_CLASS_NUMBER, ooaofooa_O_BATTR_instanceloader},\
 {"O_DBATTR", ooaofooa_O_DBATTR_CLASS_NUMBER, ooaofooa_O_DBATTR_instanceloader},\
 {"O_NBATTR", ooaofooa_O_NBATTR_CLASS_NUMBER, ooaofooa_O_NBATTR_instanceloader},\
 {"O_RATTR", ooaofooa_O_RATTR_CLASS_NUMBER, ooaofooa_O_RATTR_instanceloader},\
 {"S_CDT", ooaofooa_S_CDT_CLASS_NUMBER, ooaofooa_S_CDT_instanceloader},\
 {"A_A", ooaofooa_A_A_CLASS_NUMBER, ooaofooa_A_A_instanceloader},\
 {"A_N", ooaofooa_A_N_CLASS_NUMBER, ooaofooa_A_N_instanceloader},\
 {"A_E", ooaofooa_A_E_CLASS_NUMBER, ooaofooa_A_E_instanceloader},\
 {"A_ACT", ooaofooa_A_ACT_CLASS_NUMBER, ooaofooa_A_ACT_instanceloader},\
 {"A_OBJ", ooaofooa_A_OBJ_CLASS_NUMBER, ooaofooa_A_OBJ_instanceloader},\
 {"A_CTL", ooaofooa_A_CTL_CLASS_NUMBER, ooaofooa_A_CTL_instanceloader},\
 {"A_INI", ooaofooa_A_INI_CLASS_NUMBER, ooaofooa_A_INI_instanceloader},\
 {"A_AF", ooaofooa_A_AF_CLASS_NUMBER, ooaofooa_A_AF_instanceloader},\
 {"A_FF", ooaofooa_A_FF_CLASS_NUMBER, ooaofooa_A_FF_instanceloader},\
 {"A_DM", ooaofooa_A_DM_CLASS_NUMBER, ooaofooa_A_DM_instanceloader},\
 {"O_REF", ooaofooa_O_REF_CLASS_NUMBER, ooaofooa_O_REF_instanceloader},\
 {"A_FJ", ooaofooa_A_FJ_CLASS_NUMBER, ooaofooa_A_FJ_instanceloader},\
 {"A_GA", ooaofooa_A_GA_CLASS_NUMBER, ooaofooa_A_GA_instanceloader},\
 {"A_AE", ooaofooa_A_AE_CLASS_NUMBER, ooaofooa_A_AE_instanceloader},\
 {"A_SS", ooaofooa_A_SS_CLASS_NUMBER, ooaofooa_A_SS_instanceloader},\
 {"A_AIA", ooaofooa_A_AIA_CLASS_NUMBER, ooaofooa_A_AIA_instanceloader},\
 {"O_RTIDA", ooaofooa_O_RTIDA_CLASS_NUMBER, ooaofooa_O_RTIDA_instanceloader},\
 {"COMM_COMM", ooaofooa_COMM_COMM_CLASS_NUMBER, ooaofooa_COMM_COMM_instanceloader},\
 {"COMM_LNK", ooaofooa_COMM_LNK_CLASS_NUMBER, ooaofooa_COMM_LNK_instanceloader},\
 {"COMM_CIC", ooaofooa_COMM_CIC_CLASS_NUMBER, ooaofooa_COMM_CIC_instanceloader},\
 {"COMM_MIC", ooaofooa_COMM_MIC_CLASS_NUMBER, ooaofooa_COMM_MIC_instanceloader},\
 {"COMM_PIC", ooaofooa_COMM_PIC_CLASS_NUMBER, ooaofooa_COMM_PIC_instanceloader},\
 {"O_TFR", ooaofooa_O_TFR_CLASS_NUMBER, ooaofooa_O_TFR_instanceloader},\
 {"O_TPARM", ooaofooa_O_TPARM_CLASS_NUMBER, ooaofooa_O_TPARM_instanceloader},\
 {"O_RAVR", ooaofooa_O_RAVR_CLASS_NUMBER, ooaofooa_O_RAVR_instanceloader},\
 {"S_UDT", ooaofooa_S_UDT_CLASS_NUMBER, ooaofooa_S_UDT_instanceloader},\
 {"UC_UCC", ooaofooa_UC_UCC_CLASS_NUMBER, ooaofooa_UC_UCC_instanceloader},\
 {"UC_UCA", ooaofooa_UC_UCA_CLASS_NUMBER, ooaofooa_UC_UCA_instanceloader},\
 {"UC_PIUC", ooaofooa_UC_PIUC_CLASS_NUMBER, ooaofooa_UC_PIUC_instanceloader},\
 {"UC_UIU", ooaofooa_UC_UIU_CLASS_NUMBER, ooaofooa_UC_UIU_instanceloader},\
 {"UC_BA", ooaofooa_UC_BA_CLASS_NUMBER, ooaofooa_UC_BA_instanceloader},\
 {"UC_G", ooaofooa_UC_G_CLASS_NUMBER, ooaofooa_UC_G_instanceloader},\
 {"UC_I", ooaofooa_UC_I_CLASS_NUMBER, ooaofooa_UC_I_instanceloader},\
 {"UC_E", ooaofooa_UC_E_CLASS_NUMBER, ooaofooa_UC_E_instanceloader},\
 {"UC_AIUC", ooaofooa_UC_AIUC_CLASS_NUMBER, ooaofooa_UC_AIUC_instanceloader},\
 {"S_BRG", ooaofooa_S_BRG_CLASS_NUMBER, ooaofooa_S_BRG_instanceloader},\
 {"A_AP", ooaofooa_A_AP_CLASS_NUMBER, ooaofooa_A_AP_instanceloader},\
 {"A_ATE", ooaofooa_A_ATE_CLASS_NUMBER, ooaofooa_A_ATE_instanceloader},\
 {"A_AEA", ooaofooa_A_AEA_CLASS_NUMBER, ooaofooa_A_AEA_instanceloader},\
 {"S_BPARM", ooaofooa_S_BPARM_CLASS_NUMBER, ooaofooa_S_BPARM_instanceloader},\
 {"EP_PKG", ooaofooa_EP_PKG_CLASS_NUMBER, ooaofooa_EP_PKG_instanceloader},\
 {"EP_SPKG", ooaofooa_EP_SPKG_CLASS_NUMBER, ooaofooa_EP_SPKG_instanceloader},\
 {"EP_PIP", ooaofooa_EP_PIP_CLASS_NUMBER, ooaofooa_EP_PIP_instanceloader},\
 {"S_EDT", ooaofooa_S_EDT_CLASS_NUMBER, ooaofooa_S_EDT_instanceloader},\
 {"CNST_CSP", ooaofooa_CNST_CSP_CLASS_NUMBER, ooaofooa_CNST_CSP_instanceloader},\
 {"CNST_SYC", ooaofooa_CNST_SYC_CLASS_NUMBER, ooaofooa_CNST_SYC_instanceloader},\
 {"CNST_LFSC", ooaofooa_CNST_LFSC_CLASS_NUMBER, ooaofooa_CNST_LFSC_instanceloader},\
 {"CNST_LSC", ooaofooa_CNST_LSC_CLASS_NUMBER, ooaofooa_CNST_LSC_instanceloader},\
 {"CNST_CIP", ooaofooa_CNST_CIP_CLASS_NUMBER, ooaofooa_CNST_CIP_instanceloader},\
 {"S_ENUM", ooaofooa_S_ENUM_CLASS_NUMBER, ooaofooa_S_ENUM_instanceloader},\
 {"S_SYNC", ooaofooa_S_SYNC_CLASS_NUMBER, ooaofooa_S_SYNC_instanceloader},\
 {"S_SPARM", ooaofooa_S_SPARM_CLASS_NUMBER, ooaofooa_S_SPARM_instanceloader},\
 {"S_SYS", ooaofooa_S_SYS_CLASS_NUMBER, ooaofooa_S_SYS_instanceloader},\
 {"S_FPK", ooaofooa_S_FPK_CLASS_NUMBER, ooaofooa_S_FPK_instanceloader},\
 {"G_EIS", ooaofooa_G_EIS_CLASS_NUMBER, ooaofooa_G_EIS_instanceloader},\
 {"PL_EEPID", ooaofooa_PL_EEPID_CLASS_NUMBER, ooaofooa_PL_EEPID_instanceloader},\
 {"S_DOM", ooaofooa_S_DOM_CLASS_NUMBER, ooaofooa_S_DOM_instanceloader},\
 {"TE_SWC", ooaofooa_TE_SWC_CLASS_NUMBER, ooaofooa_TE_SWC_instanceloader},\
 {"TE_CI", ooaofooa_TE_CI_CLASS_NUMBER, ooaofooa_TE_CI_instanceloader},\
 {"TE_OIR", ooaofooa_TE_OIR_CLASS_NUMBER, ooaofooa_TE_OIR_instanceloader},\
 {"TE_SYS", ooaofooa_TE_SYS_CLASS_NUMBER, ooaofooa_TE_SYS_instanceloader},\
 {"TE_DISP", ooaofooa_TE_DISP_CLASS_NUMBER, ooaofooa_TE_DISP_instanceloader},\
 {"TE_QUEUE", ooaofooa_TE_QUEUE_CLASS_NUMBER, ooaofooa_TE_QUEUE_instanceloader},\
 {"TE_ABA", ooaofooa_TE_ABA_CLASS_NUMBER, ooaofooa_TE_ABA_instanceloader},\
 {"TE_C", ooaofooa_TE_C_CLASS_NUMBER, ooaofooa_TE_C_instanceloader},\
 {"TE_MBR", ooaofooa_TE_MBR_CLASS_NUMBER, ooaofooa_TE_MBR_instanceloader},\
 {"TE_EE", ooaofooa_TE_EE_CLASS_NUMBER, ooaofooa_TE_EE_instanceloader},\
 {"TE_DT", ooaofooa_TE_DT_CLASS_NUMBER, ooaofooa_TE_DT_instanceloader},\
 {"TE_ACT", ooaofooa_TE_ACT_CLASS_NUMBER, ooaofooa_TE_ACT_instanceloader},\
 {"TE_SYNC", ooaofooa_TE_SYNC_CLASS_NUMBER, ooaofooa_TE_SYNC_instanceloader},\
 {"TE_TFR", ooaofooa_TE_TFR_CLASS_NUMBER, ooaofooa_TE_TFR_instanceloader},\
 {"R_REL", ooaofooa_R_REL_CLASS_NUMBER, ooaofooa_R_REL_instanceloader},\
 {"TE_BRG", ooaofooa_TE_BRG_CLASS_NUMBER, ooaofooa_TE_BRG_instanceloader},\
 {"TE_DBATTR", ooaofooa_TE_DBATTR_CLASS_NUMBER, ooaofooa_TE_DBATTR_instanceloader},\
 {"TE_ENUM", ooaofooa_TE_ENUM_CLASS_NUMBER, ooaofooa_TE_ENUM_instanceloader},\
 {"TE_PARM", ooaofooa_TE_PARM_CLASS_NUMBER, ooaofooa_TE_PARM_instanceloader},\
 {"TE_WHERE", ooaofooa_TE_WHERE_CLASS_NUMBER, ooaofooa_TE_WHERE_instanceloader},\
 {"TE_ATTR", ooaofooa_TE_ATTR_CLASS_NUMBER, ooaofooa_TE_ATTR_instanceloader},\
 {"TE_REL", ooaofooa_TE_REL_CLASS_NUMBER, ooaofooa_TE_REL_instanceloader},\
 {"TE_EVT", ooaofooa_TE_EVT_CLASS_NUMBER, ooaofooa_TE_EVT_instanceloader},\
 {"TE_STATE", ooaofooa_TE_STATE_CLASS_NUMBER, ooaofooa_TE_STATE_instanceloader},\
 {"R_OIR", ooaofooa_R_OIR_CLASS_NUMBER, ooaofooa_R_OIR_instanceloader},\
 {"TE_PO", ooaofooa_TE_PO_CLASS_NUMBER, ooaofooa_TE_PO_instanceloader},\
 {"TE_VAL", ooaofooa_TE_VAL_CLASS_NUMBER, ooaofooa_TE_VAL_instanceloader},\
 {"TE_VAR", ooaofooa_TE_VAR_CLASS_NUMBER, ooaofooa_TE_VAR_instanceloader},\
 {"TE_SM", ooaofooa_TE_SM_CLASS_NUMBER, ooaofooa_TE_SM_instanceloader},\
 {"TE_CLASS", ooaofooa_TE_CLASS_CLASS_NUMBER, ooaofooa_TE_CLASS_instanceloader},\
 {"TE_PREFIX", ooaofooa_TE_PREFIX_CLASS_NUMBER, ooaofooa_TE_PREFIX_instanceloader},\
 {"TE_SET", ooaofooa_TE_SET_CLASS_NUMBER, ooaofooa_TE_SET_instanceloader},\
 {"TE_PERSIST", ooaofooa_TE_PERSIST_CLASS_NUMBER, ooaofooa_TE_PERSIST_instanceloader},\
 {"R_RTO", ooaofooa_R_RTO_CLASS_NUMBER, ooaofooa_R_RTO_instanceloader},\
 {"TE_EQ", ooaofooa_TE_EQ_CLASS_NUMBER, ooaofooa_TE_EQ_instanceloader},\
 {"TE_ILB", ooaofooa_TE_ILB_CLASS_NUMBER, ooaofooa_TE_ILB_instanceloader},\
 {"TE_THREAD", ooaofooa_TE_THREAD_CLASS_NUMBER, ooaofooa_TE_THREAD_instanceloader},\
 {"TE_FILE", ooaofooa_TE_FILE_CLASS_NUMBER, ooaofooa_TE_FILE_instanceloader},\
 {"TE_CALLOUT", ooaofooa_TE_CALLOUT_CLASS_NUMBER, ooaofooa_TE_CALLOUT_instanceloader},\
 {"TE_STRING", ooaofooa_TE_STRING_CLASS_NUMBER, ooaofooa_TE_STRING_instanceloader},\
 {"TE_TRACE", ooaofooa_TE_TRACE_CLASS_NUMBER, ooaofooa_TE_TRACE_instanceloader},\
 {"TE_COPYRIGHT", ooaofooa_TE_COPYRIGHT_CLASS_NUMBER, ooaofooa_TE_COPYRIGHT_instanceloader},\
 {"TE_DMA", ooaofooa_TE_DMA_CLASS_NUMBER, ooaofooa_TE_DMA_instanceloader},\
 {"TE_CONTAINER", ooaofooa_TE_CONTAINER_CLASS_NUMBER, ooaofooa_TE_CONTAINER_instanceloader},\
 {"R_RGO", ooaofooa_R_RGO_CLASS_NUMBER, ooaofooa_R_RGO_instanceloader},\
 {"TE_DLIST", ooaofooa_TE_DLIST_CLASS_NUMBER, ooaofooa_TE_DLIST_instanceloader},\
 {"TE_SLIST", ooaofooa_TE_SLIST_CLASS_NUMBER, ooaofooa_TE_SLIST_instanceloader},\
 {"TE_TARGET", ooaofooa_TE_TARGET_CLASS_NUMBER, ooaofooa_TE_TARGET_instanceloader},\
 {"R_SIMP", ooaofooa_R_SIMP_CLASS_NUMBER, ooaofooa_R_SIMP_instanceloader},\
 {"TE_RELINFO", ooaofooa_TE_RELINFO_CLASS_NUMBER, ooaofooa_TE_RELINFO_instanceloader},\
 {"TE_RELSTORE", ooaofooa_TE_RELSTORE_CLASS_NUMBER, ooaofooa_TE_RELSTORE_instanceloader},\
 {"TE_INSTANCE", ooaofooa_TE_INSTANCE_CLASS_NUMBER, ooaofooa_TE_INSTANCE_instanceloader},\
 {"TE_TIM", ooaofooa_TE_TIM_CLASS_NUMBER, ooaofooa_TE_TIM_instanceloader},\
 {"TE_TYPEMAP", ooaofooa_TE_TYPEMAP_CLASS_NUMBER, ooaofooa_TE_TYPEMAP_instanceloader},\
 {"TE_EXTENT", ooaofooa_TE_EXTENT_CLASS_NUMBER, ooaofooa_TE_EXTENT_instanceloader},\
 {"TE_DIM", ooaofooa_TE_DIM_CLASS_NUMBER, ooaofooa_TE_DIM_instanceloader},\
 {"TE_PAR", ooaofooa_TE_PAR_CLASS_NUMBER, ooaofooa_TE_PAR_instanceloader},\
 {"TE_MACT", ooaofooa_TE_MACT_CLASS_NUMBER, ooaofooa_TE_MACT_instanceloader},\
 {"R_PART", ooaofooa_R_PART_CLASS_NUMBER, ooaofooa_R_PART_instanceloader},\
 {"TE_IIR", ooaofooa_TE_IIR_CLASS_NUMBER, ooaofooa_TE_IIR_instanceloader},\
 {"TE_DCI", ooaofooa_TE_DCI_CLASS_NUMBER, ooaofooa_TE_DCI_instanceloader},\
 {"TE_CIA", ooaofooa_TE_CIA_CLASS_NUMBER, ooaofooa_TE_CIA_instanceloader},\
 {"R_FORM", ooaofooa_R_FORM_CLASS_NUMBER, ooaofooa_R_FORM_instanceloader},\
 {"R_ASSOC", ooaofooa_R_ASSOC_CLASS_NUMBER, ooaofooa_R_ASSOC_instanceloader},\
 {"R_AONE", ooaofooa_R_AONE_CLASS_NUMBER, ooaofooa_R_AONE_instanceloader},\
 {"S_FIP", ooaofooa_S_FIP_CLASS_NUMBER, ooaofooa_S_FIP_instanceloader},\
 {"TE_BLK", ooaofooa_TE_BLK_CLASS_NUMBER, ooaofooa_TE_BLK_instanceloader},\
 {"TE_LNK", ooaofooa_TE_LNK_CLASS_NUMBER, ooaofooa_TE_LNK_instanceloader},\
 {"TE_SMT", ooaofooa_TE_SMT_CLASS_NUMBER, ooaofooa_TE_SMT_instanceloader},\
 {"TE_ASSIGN", ooaofooa_TE_ASSIGN_CLASS_NUMBER, ooaofooa_TE_ASSIGN_instanceloader},\
 {"TE_BREAK", ooaofooa_TE_BREAK_CLASS_NUMBER, ooaofooa_TE_BREAK_instanceloader},\
 {"TE_BRIDGE", ooaofooa_TE_BRIDGE_CLASS_NUMBER, ooaofooa_TE_BRIDGE_instanceloader},\
 {"TE_CONTINUE", ooaofooa_TE_CONTINUE_CLASS_NUMBER, ooaofooa_TE_CONTINUE_instanceloader},\
 {"TE_CONTROL", ooaofooa_TE_CONTROL_CLASS_NUMBER, ooaofooa_TE_CONTROL_instanceloader},\
 {"TE_CREATE_EVENT", ooaofooa_TE_CREATE_EVENT_CLASS_NUMBER, ooaofooa_TE_CREATE_EVENT_instanceloader},\
 {"TE_CREATE_INSTANCE", ooaofooa_TE_CREATE_INSTANCE_CLASS_NUMBER, ooaofooa_TE_CREATE_INSTANCE_instanceloader},\
 {"R_AOTH", ooaofooa_R_AOTH_CLASS_NUMBER, ooaofooa_R_AOTH_instanceloader},\
 {"TE_DELETE_INSTANCE", ooaofooa_TE_DELETE_INSTANCE_CLASS_NUMBER, ooaofooa_TE_DELETE_INSTANCE_instanceloader},\
 {"TE_ELIF", ooaofooa_TE_ELIF_CLASS_NUMBER, ooaofooa_TE_ELIF_instanceloader},\
 {"TE_ELSE", ooaofooa_TE_ELSE_CLASS_NUMBER, ooaofooa_TE_ELSE_instanceloader},\
 {"TE_EVENT_PARAMETERS", ooaofooa_TE_EVENT_PARAMETERS_CLASS_NUMBER, ooaofooa_TE_EVENT_PARAMETERS_instanceloader},\
 {"TE_FOR", ooaofooa_TE_FOR_CLASS_NUMBER, ooaofooa_TE_FOR_instanceloader},\
 {"TE_FUNCTION", ooaofooa_TE_FUNCTION_CLASS_NUMBER, ooaofooa_TE_FUNCTION_instanceloader},\
 {"TE_GENERATE", ooaofooa_TE_GENERATE_CLASS_NUMBER, ooaofooa_TE_GENERATE_instanceloader},\
 {"TE_GENERATE_CREATOR_EVENT", ooaofooa_TE_GENERATE_CREATOR_EVENT_CLASS_NUMBER, ooaofooa_TE_GENERATE_CREATOR_EVENT_instanceloader},\
 {"TE_GENERATE_PRECREATED_EVENT", ooaofooa_TE_GENERATE_PRECREATED_EVENT_CLASS_NUMBER, ooaofooa_TE_GENERATE_PRECREATED_EVENT_instanceloader},\
 {"TE_GENERATE_TO_CLASS", ooaofooa_TE_GENERATE_TO_CLASS_CLASS_NUMBER, ooaofooa_TE_GENERATE_TO_CLASS_instanceloader},\
 {"R_ASSR", ooaofooa_R_ASSR_CLASS_NUMBER, ooaofooa_R_ASSR_instanceloader},\
 {"TE_IF", ooaofooa_TE_IF_CLASS_NUMBER, ooaofooa_TE_IF_instanceloader},\
 {"TE_IOP", ooaofooa_TE_IOP_CLASS_NUMBER, ooaofooa_TE_IOP_instanceloader},\
 {"TE_OPERATION", ooaofooa_TE_OPERATION_CLASS_NUMBER, ooaofooa_TE_OPERATION_instanceloader},\
 {"TE_RELATE", ooaofooa_TE_RELATE_CLASS_NUMBER, ooaofooa_TE_RELATE_instanceloader},\
 {"TE_RELATE_USING", ooaofooa_TE_RELATE_USING_CLASS_NUMBER, ooaofooa_TE_RELATE_USING_instanceloader},\
 {"TE_RETURN", ooaofooa_TE_RETURN_CLASS_NUMBER, ooaofooa_TE_RETURN_instanceloader},\
 {"TE_SELECT", ooaofooa_TE_SELECT_CLASS_NUMBER, ooaofooa_TE_SELECT_instanceloader},\
 {"TE_SELECT_RELATED", ooaofooa_TE_SELECT_RELATED_CLASS_NUMBER, ooaofooa_TE_SELECT_RELATED_instanceloader},\
 {"TE_SELECT_WHERE", ooaofooa_TE_SELECT_WHERE_CLASS_NUMBER, ooaofooa_TE_SELECT_WHERE_instanceloader},\
 {"TE_SGN", ooaofooa_TE_SGN_CLASS_NUMBER, ooaofooa_TE_SGN_instanceloader},\
 {"R_SUBSUP", ooaofooa_R_SUBSUP_CLASS_NUMBER, ooaofooa_R_SUBSUP_instanceloader},\
 {"TE_UNRELATE", ooaofooa_TE_UNRELATE_CLASS_NUMBER, ooaofooa_TE_UNRELATE_instanceloader},\
 {"R_SUPER", ooaofooa_R_SUPER_CLASS_NUMBER, ooaofooa_R_SUPER_instanceloader},\
 {"TE_UNRELATE_USING", ooaofooa_TE_UNRELATE_USING_CLASS_NUMBER, ooaofooa_TE_UNRELATE_USING_instanceloader},\
 {"R_SUB", ooaofooa_R_SUB_CLASS_NUMBER, ooaofooa_R_SUB_instanceloader},\
 {"TE_WHILE", ooaofooa_TE_WHILE_CLASS_NUMBER, ooaofooa_TE_WHILE_instanceloader},\
 {"R_COMP", ooaofooa_R_COMP_CLASS_NUMBER, ooaofooa_R_COMP_instanceloader},\
 {"R_CONE", ooaofooa_R_CONE_CLASS_NUMBER, ooaofooa_R_CONE_instanceloader},\
 {"R_COTH", ooaofooa_R_COTH_CLASS_NUMBER, ooaofooa_R_COTH_instanceloader},\
 {"S_FPIP", ooaofooa_S_FPIP_CLASS_NUMBER, ooaofooa_S_FPIP_instanceloader},\
 {"TE_OUTFILE", ooaofooa_TE_OUTFILE_CLASS_NUMBER, ooaofooa_TE_OUTFILE_instanceloader},\
 {"TM_C", ooaofooa_TM_C_CLASS_NUMBER, ooaofooa_TM_C_instanceloader},\
 {"TM_SYNC", ooaofooa_TM_SYNC_CLASS_NUMBER, ooaofooa_TM_SYNC_instanceloader},\
 {"TM_POINTER", ooaofooa_TM_POINTER_CLASS_NUMBER, ooaofooa_TM_POINTER_instanceloader},\
 {"TM_PRECISION", ooaofooa_TM_PRECISION_CLASS_NUMBER, ooaofooa_TM_PRECISION_instanceloader},\
 {"TM_ENUMVAL", ooaofooa_TM_ENUMVAL_CLASS_NUMBER, ooaofooa_TM_ENUMVAL_instanceloader},\
 {"TM_ENUMINIT", ooaofooa_TM_ENUMINIT_CLASS_NUMBER, ooaofooa_TM_ENUMINIT_instanceloader},\
 {"TM_THREAD", ooaofooa_TM_THREAD_CLASS_NUMBER, ooaofooa_TM_THREAD_instanceloader},\
 {"TM_SYSTAG", ooaofooa_TM_SYSTAG_CLASS_NUMBER, ooaofooa_TM_SYSTAG_instanceloader},\
 {"TM_BUILD", ooaofooa_TM_BUILD_CLASS_NUMBER, ooaofooa_TM_BUILD_instanceloader},\
 {"TM_TEMPLATE", ooaofooa_TM_TEMPLATE_CLASS_NUMBER, ooaofooa_TM_TEMPLATE_instanceloader},\
 {"TM_TP", ooaofooa_TM_TP_CLASS_NUMBER, ooaofooa_TM_TP_instanceloader},\
 {"TM_IF", ooaofooa_TM_IF_CLASS_NUMBER, ooaofooa_TM_IF_instanceloader},\
 {"TM_TPV", ooaofooa_TM_TPV_CLASS_NUMBER, ooaofooa_TM_TPV_instanceloader},\
 {"S_EEPK", ooaofooa_S_EEPK_CLASS_NUMBER, ooaofooa_S_EEPK_instanceloader},\
 {"DOC_DOC", ooaofooa_DOC_DOC_CLASS_NUMBER, ooaofooa_DOC_DOC_instanceloader},\
 {"DOC_SEC", ooaofooa_DOC_SEC_CLASS_NUMBER, ooaofooa_DOC_SEC_instanceloader},\
 {"DOC_DATE", ooaofooa_DOC_DATE_CLASS_NUMBER, ooaofooa_DOC_DATE_instanceloader},\
 {"DOC_HEAD", ooaofooa_DOC_HEAD_CLASS_NUMBER, ooaofooa_DOC_HEAD_instanceloader},\
 {"DOC_FOOT", ooaofooa_DOC_FOOT_CLASS_NUMBER, ooaofooa_DOC_FOOT_instanceloader},\
 {"DOC_ADDR", ooaofooa_DOC_ADDR_CLASS_NUMBER, ooaofooa_DOC_ADDR_instanceloader},\
 {"DOC_PAR", ooaofooa_DOC_PAR_CLASS_NUMBER, ooaofooa_DOC_PAR_instanceloader},\
 {"DOC_FIG", ooaofooa_DOC_FIG_CLASS_NUMBER, ooaofooa_DOC_FIG_instanceloader},\
 {"DOC_LINK", ooaofooa_DOC_LINK_CLASS_NUMBER, ooaofooa_DOC_LINK_instanceloader},\
 {"DOC_TBL", ooaofooa_DOC_TBL_CLASS_NUMBER, ooaofooa_DOC_TBL_instanceloader},\
 {"DOC_IMG", ooaofooa_DOC_IMG_CLASS_NUMBER, ooaofooa_DOC_IMG_instanceloader},\
 {"DOC_CELL", ooaofooa_DOC_CELL_CLASS_NUMBER, ooaofooa_DOC_CELL_instanceloader},\
 {"DOC_ROW", ooaofooa_DOC_ROW_CLASS_NUMBER, ooaofooa_DOC_ROW_instanceloader},\
 {"S_EEIP", ooaofooa_S_EEIP_CLASS_NUMBER, ooaofooa_S_EEIP_instanceloader},\
 {"S_EEPIP", ooaofooa_S_EEPIP_CLASS_NUMBER, ooaofooa_S_EEPIP_instanceloader},\
 {"S_DPK", ooaofooa_S_DPK_CLASS_NUMBER, ooaofooa_S_DPK_instanceloader},\
 {"S_DIP", ooaofooa_S_DIP_CLASS_NUMBER, ooaofooa_S_DIP_instanceloader},\
 {"S_DPIP", ooaofooa_S_DPIP_CLASS_NUMBER, ooaofooa_S_DPIP_instanceloader},\
 {"I_LNK", ooaofooa_I_LNK_CLASS_NUMBER, ooaofooa_I_LNK_instanceloader},\
 {"I_EVI", ooaofooa_I_EVI_CLASS_NUMBER, ooaofooa_I_EVI_instanceloader},\
 {"I_AVL", ooaofooa_I_AVL_CLASS_NUMBER, ooaofooa_I_AVL_instanceloader},\
 {"I_INS", ooaofooa_I_INS_CLASS_NUMBER, ooaofooa_I_INS_instanceloader},\
 {"I_EXE", ooaofooa_I_EXE_CLASS_NUMBER, ooaofooa_I_EXE_instanceloader},\
 {"I_STF", ooaofooa_I_STF_CLASS_NUMBER, ooaofooa_I_STF_instanceloader},\
 {"I_BSF", ooaofooa_I_BSF_CLASS_NUMBER, ooaofooa_I_BSF_instanceloader},\
 {"I_STACK", ooaofooa_I_STACK_CLASS_NUMBER, ooaofooa_I_STACK_instanceloader},\
 {"I_DIV", ooaofooa_I_DIV_CLASS_NUMBER, ooaofooa_I_DIV_instanceloader},\
 {"I_TIM", ooaofooa_I_TIM_CLASS_NUMBER, ooaofooa_I_TIM_instanceloader},\
 {"I_EQE", ooaofooa_I_EQE_CLASS_NUMBER, ooaofooa_I_EQE_instanceloader},\
 {"I_SQE", ooaofooa_I_SQE_CLASS_NUMBER, ooaofooa_I_SQE_instanceloader},\
 {"I_MON", ooaofooa_I_MON_CLASS_NUMBER, ooaofooa_I_MON_instanceloader},\
 {"CSME_CLM", ooaofooa_CSME_CLM_CLASS_NUMBER, ooaofooa_CSME_CLM_instanceloader},\
 {"I_VSF", ooaofooa_I_VSF_CLASS_NUMBER, ooaofooa_I_VSF_instanceloader},\
 {"I_LIP", ooaofooa_I_LIP_CLASS_NUMBER, ooaofooa_I_LIP_instanceloader},\
 {"I_RCH", ooaofooa_I_RCH_CLASS_NUMBER, ooaofooa_I_RCH_instanceloader},\
 {"I_CIN", ooaofooa_I_CIN_CLASS_NUMBER, ooaofooa_I_CIN_instanceloader},\
 {"I_ICQE", ooaofooa_I_ICQE_CLASS_NUMBER, ooaofooa_I_ICQE_instanceloader},\
 {"CSME_CIE", ooaofooa_CSME_CIE_CLASS_NUMBER, ooaofooa_CSME_CIE_instanceloader},\
 {"CSME_CIS", ooaofooa_CSME_CIS_CLASS_NUMBER, ooaofooa_CSME_CIS_instanceloader},\
 {"S_SS", ooaofooa_S_SS_CLASS_NUMBER, ooaofooa_S_SS_instanceloader},\
 {"PL_FPID", ooaofooa_PL_FPID_CLASS_NUMBER, ooaofooa_PL_FPID_instanceloader},\
 {"S_SIS", ooaofooa_S_SIS_CLASS_NUMBER, ooaofooa_S_SIS_instanceloader},\
 {"BP_BP", ooaofooa_BP_BP_CLASS_NUMBER, ooaofooa_BP_BP_instanceloader},\
 {"BP_OAL", ooaofooa_BP_OAL_CLASS_NUMBER, ooaofooa_BP_OAL_instanceloader},\
 {"BP_EV", ooaofooa_BP_EV_CLASS_NUMBER, ooaofooa_BP_EV_instanceloader},\
 {"BP_CON", ooaofooa_BP_CON_CLASS_NUMBER, ooaofooa_BP_CON_instanceloader},\
 {"BP_ST", ooaofooa_BP_ST_CLASS_NUMBER, ooaofooa_BP_ST_instanceloader},\
 {"S_SID", ooaofooa_S_SID_CLASS_NUMBER, ooaofooa_S_SID_instanceloader},\
 {"S_AW", ooaofooa_S_AW_CLASS_NUMBER, ooaofooa_S_AW_instanceloader},\
 {"S_IRDT", ooaofooa_S_IRDT_CLASS_NUMBER, ooaofooa_S_IRDT_instanceloader},\
 {"S_SDT", ooaofooa_S_SDT_CLASS_NUMBER, ooaofooa_S_SDT_instanceloader},\
 {"S_MBR", ooaofooa_S_MBR_CLASS_NUMBER, ooaofooa_S_MBR_instanceloader},\
 {"S_DIS", ooaofooa_S_DIS_CLASS_NUMBER, ooaofooa_S_DIS_instanceloader},\
 {"S_DIM", ooaofooa_S_DIM_CLASS_NUMBER, ooaofooa_S_DIM_instanceloader},\
 {"S_EE", ooaofooa_S_EE_CLASS_NUMBER, ooaofooa_S_EE_instanceloader},\
 {"C_C", ooaofooa_C_C_CLASS_NUMBER, ooaofooa_C_C_instanceloader},\
 {"C_I", ooaofooa_C_I_CLASS_NUMBER, ooaofooa_C_I_instanceloader},\
 {"C_P", ooaofooa_C_P_CLASS_NUMBER, ooaofooa_C_P_instanceloader},\
 {"C_R", ooaofooa_C_R_CLASS_NUMBER, ooaofooa_C_R_instanceloader},\
 {"C_EP", ooaofooa_C_EP_CLASS_NUMBER, ooaofooa_C_EP_instanceloader},\
 {"C_AS", ooaofooa_C_AS_CLASS_NUMBER, ooaofooa_C_AS_instanceloader},\
 {"C_IO", ooaofooa_C_IO_CLASS_NUMBER, ooaofooa_C_IO_instanceloader},\
 {"C_SF", ooaofooa_C_SF_CLASS_NUMBER, ooaofooa_C_SF_instanceloader},\
 {"C_PP", ooaofooa_C_PP_CLASS_NUMBER, ooaofooa_C_PP_instanceloader},\
 {"C_IR", ooaofooa_C_IR_CLASS_NUMBER, ooaofooa_C_IR_instanceloader},\
 {"C_DG", ooaofooa_C_DG_CLASS_NUMBER, ooaofooa_C_DG_instanceloader},\
 {"C_PO", ooaofooa_C_PO_CLASS_NUMBER, ooaofooa_C_PO_instanceloader},\
 {"C_RID", ooaofooa_C_RID_CLASS_NUMBER, ooaofooa_C_RID_instanceloader},\
 {"CA_COMM", ooaofooa_CA_COMM_CLASS_NUMBER, ooaofooa_CA_COMM_instanceloader},\
 {"CA_EESMC", ooaofooa_CA_EESMC_CLASS_NUMBER, ooaofooa_CA_EESMC_instanceloader},\
 {"CA_SMSMC", ooaofooa_CA_SMSMC_CLASS_NUMBER, ooaofooa_CA_SMSMC_instanceloader},\
 {"CA_SMEEC", ooaofooa_CA_SMEEC_CLASS_NUMBER, ooaofooa_CA_SMEEC_instanceloader},\
 {"CA_EESME", ooaofooa_CA_EESME_CLASS_NUMBER, ooaofooa_CA_EESME_instanceloader},\
 {"CA_SMSME", ooaofooa_CA_SMSME_CLASS_NUMBER, ooaofooa_CA_SMSME_instanceloader},\
 {"CA_SMEEE", ooaofooa_CA_SMEEE_CLASS_NUMBER, ooaofooa_CA_SMEEE_instanceloader},\
 {"CA_ACC", ooaofooa_CA_ACC_CLASS_NUMBER, ooaofooa_CA_ACC_instanceloader},\
 {"CA_SMOA", ooaofooa_CA_SMOA_CLASS_NUMBER, ooaofooa_CA_SMOA_instanceloader},\
 {"CA_SMEEA", ooaofooa_CA_SMEEA_CLASS_NUMBER, ooaofooa_CA_SMEEA_instanceloader},\
 {"CA_SMOAA", ooaofooa_CA_SMOAA_CLASS_NUMBER, ooaofooa_CA_SMOAA_instanceloader},\
 {"CA_SMEED", ooaofooa_CA_SMEED_CLASS_NUMBER, ooaofooa_CA_SMEED_instanceloader},\
 {"CN_CIC", ooaofooa_CN_CIC_CLASS_NUMBER, ooaofooa_CN_CIC_instanceloader},\
 {"CN_DC", ooaofooa_CN_DC_CLASS_NUMBER, ooaofooa_CN_DC_instanceloader},\
 {"IP_IP", ooaofooa_IP_IP_CLASS_NUMBER, ooaofooa_IP_IP_instanceloader},\
 {"IP_IPINIP", ooaofooa_IP_IPINIP_CLASS_NUMBER, ooaofooa_IP_IPINIP_instanceloader},\
 {"SLD_SDP", ooaofooa_SLD_SDP_CLASS_NUMBER, ooaofooa_SLD_SDP_instanceloader},\
 {"SLD_SDINP", ooaofooa_SLD_SDINP_CLASS_NUMBER, ooaofooa_SLD_SDINP_instanceloader},\
 {"SLD_SCINP", ooaofooa_SLD_SCINP_CLASS_NUMBER, ooaofooa_SLD_SCINP_instanceloader},\
 {"SPR_REP", ooaofooa_SPR_REP_CLASS_NUMBER, ooaofooa_SPR_REP_instanceloader},\
 {"SPR_PEP", ooaofooa_SPR_PEP_CLASS_NUMBER, ooaofooa_SPR_PEP_instanceloader},\
 {"SPR_RO", ooaofooa_SPR_RO_CLASS_NUMBER, ooaofooa_SPR_RO_instanceloader},\
 {"SPR_RS", ooaofooa_SPR_RS_CLASS_NUMBER, ooaofooa_SPR_RS_instanceloader},\
 {"SPR_PO", ooaofooa_SPR_PO_CLASS_NUMBER, ooaofooa_SPR_PO_instanceloader},\
 {"SPR_PS", ooaofooa_SPR_PS_CLASS_NUMBER, ooaofooa_SPR_PS_instanceloader},\
 {"CP_CP", ooaofooa_CP_CP_CLASS_NUMBER, ooaofooa_CP_CP_instanceloader},\
 {"CP_CPINP", ooaofooa_CP_CPINP_CLASS_NUMBER, ooaofooa_CP_CPINP_instanceloader},\
 {"CL_IPINS", ooaofooa_CL_IPINS_CLASS_NUMBER, ooaofooa_CL_IPINS_instanceloader},\
 {"CL_IP", ooaofooa_CL_IP_CLASS_NUMBER, ooaofooa_CL_IP_instanceloader},\
 {"CL_IR", ooaofooa_CL_IR_CLASS_NUMBER, ooaofooa_CL_IR_instanceloader},\
 {"CL_IIR", ooaofooa_CL_IIR_CLASS_NUMBER, ooaofooa_CL_IIR_instanceloader},\
 {"CL_IC", ooaofooa_CL_IC_CLASS_NUMBER, ooaofooa_CL_IC_instanceloader},\
 {"S_EEM", ooaofooa_S_EEM_CLASS_NUMBER, ooaofooa_S_EEM_instanceloader},\
 {"SM_SM", ooaofooa_SM_SM_CLASS_NUMBER, ooaofooa_SM_SM_instanceloader},\
 {"SM_STATE", ooaofooa_SM_STATE_CLASS_NUMBER, ooaofooa_SM_STATE_instanceloader},\
 {"SM_EVT", ooaofooa_SM_EVT_CLASS_NUMBER, ooaofooa_SM_EVT_instanceloader},\
 {"SM_SEME", ooaofooa_SM_SEME_CLASS_NUMBER, ooaofooa_SM_SEME_instanceloader},\
 {"SM_NSTXN", ooaofooa_SM_NSTXN_CLASS_NUMBER, ooaofooa_SM_NSTXN_instanceloader},\
 {"SM_EIGN", ooaofooa_SM_EIGN_CLASS_NUMBER, ooaofooa_SM_EIGN_instanceloader},\
 {"SM_CH", ooaofooa_SM_CH_CLASS_NUMBER, ooaofooa_SM_CH_instanceloader},\
 {"SM_TXN", ooaofooa_SM_TXN_CLASS_NUMBER, ooaofooa_SM_TXN_instanceloader},\
 {"SM_NETXN", ooaofooa_SM_NETXN_CLASS_NUMBER, ooaofooa_SM_NETXN_instanceloader},\
 {"SM_CRTXN", ooaofooa_SM_CRTXN_CLASS_NUMBER, ooaofooa_SM_CRTXN_instanceloader},\
 {"SM_MOORE", ooaofooa_SM_MOORE_CLASS_NUMBER, ooaofooa_SM_MOORE_instanceloader},\
 {"SM_MEALY", ooaofooa_SM_MEALY_CLASS_NUMBER, ooaofooa_SM_MEALY_instanceloader},\
 {"SM_MOAH", ooaofooa_SM_MOAH_CLASS_NUMBER, ooaofooa_SM_MOAH_instanceloader},\
 {"SM_MEAH", ooaofooa_SM_MEAH_CLASS_NUMBER, ooaofooa_SM_MEAH_instanceloader},\
 {"SM_AH", ooaofooa_SM_AH_CLASS_NUMBER, ooaofooa_SM_AH_instanceloader},\
 {"SM_ACT", ooaofooa_SM_ACT_CLASS_NUMBER, ooaofooa_SM_ACT_instanceloader},\
 {"SM_EVTDI", ooaofooa_SM_EVTDI_CLASS_NUMBER, ooaofooa_SM_EVTDI_instanceloader},\
 {"SM_SUPDT", ooaofooa_SM_SUPDT_CLASS_NUMBER, ooaofooa_SM_SUPDT_instanceloader},\
 {"SM_SDI", ooaofooa_SM_SDI_CLASS_NUMBER, ooaofooa_SM_SDI_instanceloader},\
 {"SM_ISM", ooaofooa_SM_ISM_CLASS_NUMBER, ooaofooa_SM_ISM_instanceloader},\
 {"SM_ASM", ooaofooa_SM_ASM_CLASS_NUMBER, ooaofooa_SM_ASM_instanceloader},\
 {"SM_PEVT", ooaofooa_SM_PEVT_CLASS_NUMBER, ooaofooa_SM_PEVT_instanceloader},\
 {"SM_SEVT", ooaofooa_SM_SEVT_CLASS_NUMBER, ooaofooa_SM_SEVT_instanceloader},\
 {"SM_NLEVT", ooaofooa_SM_NLEVT_CLASS_NUMBER, ooaofooa_SM_NLEVT_instanceloader},\
 {"SM_LEVT", ooaofooa_SM_LEVT_CLASS_NUMBER, ooaofooa_SM_LEVT_instanceloader},\
 {"SM_SGEVT", ooaofooa_SM_SGEVT_CLASS_NUMBER, ooaofooa_SM_SGEVT_instanceloader},\
 {"SM_TAH", ooaofooa_SM_TAH_CLASS_NUMBER, ooaofooa_SM_TAH_instanceloader},\
 {"S_EEDI", ooaofooa_S_EEDI_CLASS_NUMBER, ooaofooa_S_EEDI_instanceloader},\
 {"ACT_BLK", ooaofooa_ACT_BLK_CLASS_NUMBER, ooaofooa_ACT_BLK_instanceloader},\
 {"ACT_ACT", ooaofooa_ACT_ACT_CLASS_NUMBER, ooaofooa_ACT_ACT_instanceloader},\
 {"ACT_SMT", ooaofooa_ACT_SMT_CLASS_NUMBER, ooaofooa_ACT_SMT_instanceloader},\
 {"ACT_AI", ooaofooa_ACT_AI_CLASS_NUMBER, ooaofooa_ACT_AI_instanceloader},\
 {"ACT_SRW", ooaofooa_ACT_SRW_CLASS_NUMBER, ooaofooa_ACT_SRW_instanceloader},\
 {"ACT_SEL", ooaofooa_ACT_SEL_CLASS_NUMBER, ooaofooa_ACT_SEL_instanceloader},\
 {"ACT_FOR", ooaofooa_ACT_FOR_CLASS_NUMBER, ooaofooa_ACT_FOR_instanceloader},\
 {"ACT_CNV", ooaofooa_ACT_CNV_CLASS_NUMBER, ooaofooa_ACT_CNV_instanceloader},\
 {"ACT_REL", ooaofooa_ACT_REL_CLASS_NUMBER, ooaofooa_ACT_REL_instanceloader},\
 {"ACT_UNR", ooaofooa_ACT_UNR_CLASS_NUMBER, ooaofooa_ACT_UNR_instanceloader},\
 {"ACT_E", ooaofooa_ACT_E_CLASS_NUMBER, ooaofooa_ACT_E_instanceloader},\
 {"ACT_FIW", ooaofooa_ACT_FIW_CLASS_NUMBER, ooaofooa_ACT_FIW_instanceloader},\
 {"ACT_FIO", ooaofooa_ACT_FIO_CLASS_NUMBER, ooaofooa_ACT_FIO_instanceloader},\
 {"ACT_CR", ooaofooa_ACT_CR_CLASS_NUMBER, ooaofooa_ACT_CR_instanceloader},\
 {"ACT_DEL", ooaofooa_ACT_DEL_CLASS_NUMBER, ooaofooa_ACT_DEL_instanceloader},\
 {"ACT_RU", ooaofooa_ACT_RU_CLASS_NUMBER, ooaofooa_ACT_RU_instanceloader},\
 {"ACT_URU", ooaofooa_ACT_URU_CLASS_NUMBER, ooaofooa_ACT_URU_instanceloader},\
 {"ACT_IF", ooaofooa_ACT_IF_CLASS_NUMBER, ooaofooa_ACT_IF_instanceloader},\
 {"ACT_TFM", ooaofooa_ACT_TFM_CLASS_NUMBER, ooaofooa_ACT_TFM_instanceloader},\
 {"ACT_WHL", ooaofooa_ACT_WHL_CLASS_NUMBER, ooaofooa_ACT_WHL_instanceloader},\
 {"ACT_BRG", ooaofooa_ACT_BRG_CLASS_NUMBER, ooaofooa_ACT_BRG_instanceloader},\
 {"ACT_EL", ooaofooa_ACT_EL_CLASS_NUMBER, ooaofooa_ACT_EL_instanceloader},\
 {"ACT_SR", ooaofooa_ACT_SR_CLASS_NUMBER, ooaofooa_ACT_SR_instanceloader},\
 {"ACT_RET", ooaofooa_ACT_RET_CLASS_NUMBER, ooaofooa_ACT_RET_instanceloader},\
 {"ACT_FNC", ooaofooa_ACT_FNC_CLASS_NUMBER, ooaofooa_ACT_FNC_instanceloader},\
 {"ACT_IOP", ooaofooa_ACT_IOP_CLASS_NUMBER, ooaofooa_ACT_IOP_instanceloader},\
 {"ACT_LNK", ooaofooa_ACT_LNK_CLASS_NUMBER, ooaofooa_ACT_LNK_instanceloader},\
 {"ACT_SGN", ooaofooa_ACT_SGN_CLASS_NUMBER, ooaofooa_ACT_SGN_instanceloader},\
 {"ACT_CTL", ooaofooa_ACT_CTL_CLASS_NUMBER, ooaofooa_ACT_CTL_instanceloader},\
 {"ACT_BRK", ooaofooa_ACT_BRK_CLASS_NUMBER, ooaofooa_ACT_BRK_instanceloader},\
 {"ACT_CON", ooaofooa_ACT_CON_CLASS_NUMBER, ooaofooa_ACT_CON_instanceloader},\
 {"ACT_SAB", ooaofooa_ACT_SAB_CLASS_NUMBER, ooaofooa_ACT_SAB_instanceloader},\
 {"ACT_DAB", ooaofooa_ACT_DAB_CLASS_NUMBER, ooaofooa_ACT_DAB_instanceloader},\
 {"ACT_FNB", ooaofooa_ACT_FNB_CLASS_NUMBER, ooaofooa_ACT_FNB_instanceloader},\
 {"ACT_OPB", ooaofooa_ACT_OPB_CLASS_NUMBER, ooaofooa_ACT_OPB_instanceloader},\
 {"ACT_BRB", ooaofooa_ACT_BRB_CLASS_NUMBER, ooaofooa_ACT_BRB_instanceloader},\
 {"ACT_POB", ooaofooa_ACT_POB_CLASS_NUMBER, ooaofooa_ACT_POB_instanceloader},\
 {"ACT_PSB", ooaofooa_ACT_PSB_CLASS_NUMBER, ooaofooa_ACT_PSB_instanceloader},\
 {"ACT_ROB", ooaofooa_ACT_ROB_CLASS_NUMBER, ooaofooa_ACT_ROB_instanceloader},\
 {"ACT_RSB", ooaofooa_ACT_RSB_CLASS_NUMBER, ooaofooa_ACT_RSB_instanceloader},\
 {"ACT_BIC", ooaofooa_ACT_BIC_CLASS_NUMBER, ooaofooa_ACT_BIC_instanceloader},\
 {"ACT_TAB", ooaofooa_ACT_TAB_CLASS_NUMBER, ooaofooa_ACT_TAB_instanceloader},\
 {"ACT_BIE", ooaofooa_ACT_BIE_CLASS_NUMBER, ooaofooa_ACT_BIE_instanceloader},\
 {"S_EEEVT", ooaofooa_S_EEEVT_CLASS_NUMBER, ooaofooa_S_EEEVT_instanceloader},\
 {"E_CEI", ooaofooa_E_CEI_CLASS_NUMBER, ooaofooa_E_CEI_instanceloader},\
 {"E_GEN", ooaofooa_E_GEN_CLASS_NUMBER, ooaofooa_E_GEN_instanceloader},\
 {"E_GPR", ooaofooa_E_GPR_CLASS_NUMBER, ooaofooa_E_GPR_instanceloader},\
 {"E_CEA", ooaofooa_E_CEA_CLASS_NUMBER, ooaofooa_E_CEA_instanceloader},\
 {"E_GAR", ooaofooa_E_GAR_CLASS_NUMBER, ooaofooa_E_GAR_instanceloader},\
 {"E_GEC", ooaofooa_E_GEC_CLASS_NUMBER, ooaofooa_E_GEC_instanceloader},\
 {"E_CEE", ooaofooa_E_CEE_CLASS_NUMBER, ooaofooa_E_CEE_instanceloader},\
 {"E_GEE", ooaofooa_E_GEE_CLASS_NUMBER, ooaofooa_E_GEE_instanceloader},\
 {"E_CEC", ooaofooa_E_CEC_CLASS_NUMBER, ooaofooa_E_CEC_instanceloader},\
 {"E_ESS", ooaofooa_E_ESS_CLASS_NUMBER, ooaofooa_E_ESS_instanceloader},\
 {"E_CES", ooaofooa_E_CES_CLASS_NUMBER, ooaofooa_E_CES_instanceloader},\
 {"E_GES", ooaofooa_E_GES_CLASS_NUMBER, ooaofooa_E_GES_instanceloader},\
 {"E_CSME", ooaofooa_E_CSME_CLASS_NUMBER, ooaofooa_E_CSME_instanceloader},\
 {"E_GSME", ooaofooa_E_GSME_CLASS_NUMBER, ooaofooa_E_GSME_instanceloader},\
 {"S_EEEDI", ooaofooa_S_EEEDI_CLASS_NUMBER, ooaofooa_S_EEEDI_instanceloader},\
 {"PE_PE", ooaofooa_PE_PE_CLASS_NUMBER, ooaofooa_PE_PE_instanceloader},\
 {"PE_VIS", ooaofooa_PE_VIS_CLASS_NUMBER, ooaofooa_PE_VIS_instanceloader},\
 {"PE_CVS", ooaofooa_PE_CVS_CLASS_NUMBER, ooaofooa_PE_CVS_instanceloader},\
 {"PE_SRS", ooaofooa_PE_SRS_CLASS_NUMBER, ooaofooa_PE_SRS_instanceloader},\
 {"PE_CRS", ooaofooa_PE_CRS_CLASS_NUMBER, ooaofooa_PE_CRS_instanceloader},\
 {"V_VAL", ooaofooa_V_VAL_CLASS_NUMBER, ooaofooa_V_VAL_instanceloader},\
 {"V_PAR", ooaofooa_V_PAR_CLASS_NUMBER, ooaofooa_V_PAR_instanceloader},\
 {"V_BIN", ooaofooa_V_BIN_CLASS_NUMBER, ooaofooa_V_BIN_instanceloader},\
 {"V_LBO", ooaofooa_V_LBO_CLASS_NUMBER, ooaofooa_V_LBO_instanceloader},\
 {"V_LRL", ooaofooa_V_LRL_CLASS_NUMBER, ooaofooa_V_LRL_instanceloader},\
 {"V_TVL", ooaofooa_V_TVL_CLASS_NUMBER, ooaofooa_V_TVL_instanceloader},\
 {"V_EDV", ooaofooa_V_EDV_CLASS_NUMBER, ooaofooa_V_EDV_instanceloader},\
 {"V_ISR", ooaofooa_V_ISR_CLASS_NUMBER, ooaofooa_V_ISR_instanceloader},\
 {"V_TRV", ooaofooa_V_TRV_CLASS_NUMBER, ooaofooa_V_TRV_instanceloader},\
 {"V_UNY", ooaofooa_V_UNY_CLASS_NUMBER, ooaofooa_V_UNY_instanceloader},\
 {"V_LST", ooaofooa_V_LST_CLASS_NUMBER, ooaofooa_V_LST_instanceloader},\
 {"V_LIN", ooaofooa_V_LIN_CLASS_NUMBER, ooaofooa_V_LIN_instanceloader},\
 {"V_AVL", ooaofooa_V_AVL_CLASS_NUMBER, ooaofooa_V_AVL_instanceloader},\
 {"V_IRF", ooaofooa_V_IRF_CLASS_NUMBER, ooaofooa_V_IRF_instanceloader},\
 {"V_BRV", ooaofooa_V_BRV_CLASS_NUMBER, ooaofooa_V_BRV_instanceloader},\
 {"V_VAR", ooaofooa_V_VAR_CLASS_NUMBER, ooaofooa_V_VAR_instanceloader},\
 {"V_INT", ooaofooa_V_INT_CLASS_NUMBER, ooaofooa_V_INT_instanceloader},\
 {"V_INS", ooaofooa_V_INS_CLASS_NUMBER, ooaofooa_V_INS_instanceloader},\
 {"V_TRN", ooaofooa_V_TRN_CLASS_NUMBER, ooaofooa_V_TRN_instanceloader},\
 {"V_SLR", ooaofooa_V_SLR_CLASS_NUMBER, ooaofooa_V_SLR_instanceloader},\
 {"V_PVL", ooaofooa_V_PVL_CLASS_NUMBER, ooaofooa_V_PVL_instanceloader},\
 {"V_FNV", ooaofooa_V_FNV_CLASS_NUMBER, ooaofooa_V_FNV_instanceloader},\
 {"V_LEN", ooaofooa_V_LEN_CLASS_NUMBER, ooaofooa_V_LEN_instanceloader},\
 {"V_LOC", ooaofooa_V_LOC_CLASS_NUMBER, ooaofooa_V_LOC_instanceloader},\
 {"V_MVL", ooaofooa_V_MVL_CLASS_NUMBER, ooaofooa_V_MVL_instanceloader},\
 {"V_AER", ooaofooa_V_AER_CLASS_NUMBER, ooaofooa_V_AER_instanceloader},\
 {"V_ALV", ooaofooa_V_ALV_CLASS_NUMBER, ooaofooa_V_ALV_instanceloader},\
 {"V_MSV", ooaofooa_V_MSV_CLASS_NUMBER, ooaofooa_V_MSV_instanceloader},\
 {"V_EPR", ooaofooa_V_EPR_CLASS_NUMBER, ooaofooa_V_EPR_instanceloader},\
 {"V_SCV", ooaofooa_V_SCV_CLASS_NUMBER, ooaofooa_V_SCV_instanceloader},\
 {"S_EEEDT", ooaofooa_S_EEEDT_CLASS_NUMBER, ooaofooa_S_EEEDT_instanceloader},\
 {"PA_SIC", ooaofooa_PA_SIC_CLASS_NUMBER, ooaofooa_PA_SIC_instanceloader},\
 {"PA_SICP", ooaofooa_PA_SICP_CLASS_NUMBER, ooaofooa_PA_SICP_instanceloader},\
 {"PA_DIC", ooaofooa_PA_DIC_CLASS_NUMBER, ooaofooa_PA_DIC_instanceloader},\
 {"SQ_S", ooaofooa_SQ_S_CLASS_NUMBER, ooaofooa_SQ_S_instanceloader},\
 {"SQ_LS", ooaofooa_SQ_LS_CLASS_NUMBER, ooaofooa_SQ_LS_instanceloader},\
 {"SQ_CIP", ooaofooa_SQ_CIP_CLASS_NUMBER, ooaofooa_SQ_CIP_instanceloader},\
 {"SQ_COP", ooaofooa_SQ_COP_CLASS_NUMBER, ooaofooa_SQ_COP_instanceloader},\
 {"SQ_TM", ooaofooa_SQ_TM_CLASS_NUMBER, ooaofooa_SQ_TM_instanceloader},\
 {"SQ_TS", ooaofooa_SQ_TS_CLASS_NUMBER, ooaofooa_SQ_TS_instanceloader},\
 {"SQ_SIS", ooaofooa_SQ_SIS_CLASS_NUMBER, ooaofooa_SQ_SIS_instanceloader},\
 {"SQ_MIS", ooaofooa_SQ_MIS_CLASS_NUMBER, ooaofooa_SQ_MIS_instanceloader},\
 {"SQ_CP", ooaofooa_SQ_CP_CLASS_NUMBER, ooaofooa_SQ_CP_instanceloader},\
 {"SQ_P", ooaofooa_SQ_P_CLASS_NUMBER, ooaofooa_SQ_P_instanceloader},\
 {"SQ_EEP", ooaofooa_SQ_EEP_CLASS_NUMBER, ooaofooa_SQ_EEP_instanceloader},\
 {"SQ_FPP", ooaofooa_SQ_FPP_CLASS_NUMBER, ooaofooa_SQ_FPP_instanceloader},\
 {"SQ_CPA", ooaofooa_SQ_CPA_CLASS_NUMBER, ooaofooa_SQ_CPA_instanceloader},\
 {"SQ_AV", ooaofooa_SQ_AV_CLASS_NUMBER, ooaofooa_SQ_AV_instanceloader},\
 {"SQ_AP", ooaofooa_SQ_AP_CLASS_NUMBER, ooaofooa_SQ_AP_instanceloader},\
 {"SQ_IA", ooaofooa_SQ_IA_CLASS_NUMBER, ooaofooa_SQ_IA_instanceloader},\
 {"SQ_FA", ooaofooa_SQ_FA_CLASS_NUMBER, ooaofooa_SQ_FA_instanceloader},\
 {"SQ_FAV", ooaofooa_SQ_FAV_CLASS_NUMBER, ooaofooa_SQ_FAV_instanceloader},\
 {"SQ_IAV", ooaofooa_SQ_IAV_CLASS_NUMBER, ooaofooa_SQ_IAV_instanceloader},\
 {"IA_UCP", ooaofooa_IA_UCP_CLASS_NUMBER, ooaofooa_IA_UCP_instanceloader},\
 {"SQ_PP", ooaofooa_SQ_PP_CLASS_NUMBER, ooaofooa_SQ_PP_instanceloader},\
 {"SEN_E", ooaofooa_SEN_E_CLASS_NUMBER, ooaofooa_SEN_E_instanceloader},\
 {"SEN_ALE", ooaofooa_SEN_ALE_CLASS_NUMBER, ooaofooa_SEN_ALE_instanceloader},\
 {"SEN_DE", ooaofooa_SEN_DE_CLASS_NUMBER, ooaofooa_SEN_DE_instanceloader},\
 {"SEN_DCE", ooaofooa_SEN_DCE_CLASS_NUMBER, ooaofooa_SEN_DCE_instanceloader},\
 {"SEN_RE", ooaofooa_SEN_RE_CLASS_NUMBER, ooaofooa_SEN_RE_instanceloader},\
 {"SQU_Q", ooaofooa_SQU_Q_CLASS_NUMBER, ooaofooa_SQU_Q_instanceloader},\
 {"SQU_D", ooaofooa_SQU_D_CLASS_NUMBER, ooaofooa_SQU_D_instanceloader},\
 {"SQU_R", ooaofooa_SQU_R_CLASS_NUMBER, ooaofooa_SQU_R_instanceloader},\
 {"SQU_DE", ooaofooa_SQU_DE_CLASS_NUMBER, ooaofooa_SQU_DE_instanceloader},\
 {"SQU_A", ooaofooa_SQU_A_CLASS_NUMBER, ooaofooa_SQU_A_instanceloader},\
 {"SP_SP", ooaofooa_SP_SP_CLASS_NUMBER, ooaofooa_SP_SP_instanceloader},\
 {"SP_SE", ooaofooa_SP_SE_CLASS_NUMBER, ooaofooa_SP_SE_instanceloader},\
 {"SP_ALS", ooaofooa_SP_ALS_CLASS_NUMBER, ooaofooa_SP_ALS_instanceloader},\
 {"SP_DS", ooaofooa_SP_DS_CLASS_NUMBER, ooaofooa_SP_DS_instanceloader},\
 {"SP_NS", ooaofooa_SP_NS_CLASS_NUMBER, ooaofooa_SP_NS_instanceloader},\
 {"SR_SR", ooaofooa_SR_SR_CLASS_NUMBER, ooaofooa_SR_SR_instanceloader},\
 {"SR_M", ooaofooa_SR_M_CLASS_NUMBER, ooaofooa_SR_M_instanceloader},\
 {"SR_CM", ooaofooa_SR_CM_CLASS_NUMBER, ooaofooa_SR_CM_instanceloader},\
 {"SR_NM", ooaofooa_SR_NM_CLASS_NUMBER, ooaofooa_SR_NM_instanceloader},\
 {"SR_CMR", ooaofooa_SR_CMR_CLASS_NUMBER, ooaofooa_SR_CMR_instanceloader},\
 {"S_DT", ooaofooa_S_DT_CLASS_NUMBER, ooaofooa_S_DT_instanceloader}

#define ooaofooa_batch_relaters\
 ooaofooa_MSG_M_batch_relate,\
 ooaofooa_MSG_A_batch_relate,\
 ooaofooa_MSG_O_batch_relate,\
 ooaofooa_MSG_B_batch_relate,\
 ooaofooa_MSG_E_batch_relate,\
 ooaofooa_MSG_F_batch_relate,\
 ooaofooa_MSG_BA_batch_relate,\
 ooaofooa_MSG_OA_batch_relate,\
 ooaofooa_MSG_FA_batch_relate,\
 ooaofooa_MSG_EA_batch_relate,\
 ooaofooa_MSG_R_batch_relate,\
 ooaofooa_MSG_SM_batch_relate,\
 ooaofooa_MSG_AM_batch_relate,\
 ooaofooa_MSG_ISM_batch_relate,\
 ooaofooa_MSG_IAM_batch_relate,\
 ooaofooa_MSG_IA_batch_relate,\
 ooaofooa_MSG_SIG_batch_relate,\
 ooaofooa_MSG_IOP_batch_relate,\
 ooaofooa_MSG_EPA_batch_relate,\
 ooaofooa_O_OBJ_batch_relate,\
 ooaofooa_O_IOBJ_batch_relate,\
 ooaofooa_O_ATTR_batch_relate,\
 ooaofooa_O_ID_batch_relate,\
 ooaofooa_O_OIDA_batch_relate,\
 ooaofooa_O_BATTR_batch_relate,\
 ooaofooa_O_DBATTR_batch_relate,\
 ooaofooa_O_NBATTR_batch_relate,\
 ooaofooa_O_RATTR_batch_relate,\
 ooaofooa_S_CDT_batch_relate,\
 ooaofooa_A_A_batch_relate,\
 ooaofooa_A_N_batch_relate,\
 ooaofooa_A_E_batch_relate,\
 ooaofooa_A_ACT_batch_relate,\
 ooaofooa_A_OBJ_batch_relate,\
 ooaofooa_A_CTL_batch_relate,\
 ooaofooa_A_INI_batch_relate,\
 ooaofooa_A_AF_batch_relate,\
 ooaofooa_A_FF_batch_relate,\
 ooaofooa_A_DM_batch_relate,\
 ooaofooa_O_REF_batch_relate,\
 ooaofooa_A_FJ_batch_relate,\
 ooaofooa_A_GA_batch_relate,\
 ooaofooa_A_AE_batch_relate,\
 ooaofooa_A_SS_batch_relate,\
 ooaofooa_A_AIA_batch_relate,\
 ooaofooa_O_RTIDA_batch_relate,\
 ooaofooa_COMM_COMM_batch_relate,\
 ooaofooa_COMM_LNK_batch_relate,\
 ooaofooa_COMM_CIC_batch_relate,\
 ooaofooa_COMM_MIC_batch_relate,\
 ooaofooa_COMM_PIC_batch_relate,\
 ooaofooa_O_TFR_batch_relate,\
 ooaofooa_O_TPARM_batch_relate,\
 ooaofooa_O_RAVR_batch_relate,\
 ooaofooa_S_UDT_batch_relate,\
 ooaofooa_UC_UCC_batch_relate,\
 ooaofooa_UC_UCA_batch_relate,\
 ooaofooa_UC_PIUC_batch_relate,\
 ooaofooa_UC_UIU_batch_relate,\
 ooaofooa_UC_BA_batch_relate,\
 ooaofooa_UC_G_batch_relate,\
 ooaofooa_UC_I_batch_relate,\
 ooaofooa_UC_E_batch_relate,\
 ooaofooa_UC_AIUC_batch_relate,\
 ooaofooa_S_BRG_batch_relate,\
 ooaofooa_A_AP_batch_relate,\
 ooaofooa_A_ATE_batch_relate,\
 ooaofooa_A_AEA_batch_relate,\
 ooaofooa_S_BPARM_batch_relate,\
 ooaofooa_EP_PKG_batch_relate,\
 ooaofooa_EP_SPKG_batch_relate,\
 ooaofooa_EP_PIP_batch_relate,\
 ooaofooa_S_EDT_batch_relate,\
 ooaofooa_CNST_CSP_batch_relate,\
 ooaofooa_CNST_SYC_batch_relate,\
 ooaofooa_CNST_LFSC_batch_relate,\
 ooaofooa_CNST_LSC_batch_relate,\
 ooaofooa_CNST_CIP_batch_relate,\
 ooaofooa_S_ENUM_batch_relate,\
 ooaofooa_S_SYNC_batch_relate,\
 ooaofooa_S_SPARM_batch_relate,\
 ooaofooa_S_SYS_batch_relate,\
 ooaofooa_S_FPK_batch_relate,\
 ooaofooa_G_EIS_batch_relate,\
 ooaofooa_PL_EEPID_batch_relate,\
 ooaofooa_S_DOM_batch_relate,\
 ooaofooa_TE_SWC_batch_relate,\
 ooaofooa_TE_CI_batch_relate,\
 ooaofooa_TE_OIR_batch_relate,\
 ooaofooa_TE_SYS_batch_relate,\
 ooaofooa_TE_DISP_batch_relate,\
 ooaofooa_TE_QUEUE_batch_relate,\
 ooaofooa_TE_ABA_batch_relate,\
 ooaofooa_TE_C_batch_relate,\
 ooaofooa_TE_MBR_batch_relate,\
 ooaofooa_TE_EE_batch_relate,\
 ooaofooa_TE_DT_batch_relate,\
 ooaofooa_TE_ACT_batch_relate,\
 ooaofooa_TE_SYNC_batch_relate,\
 ooaofooa_TE_TFR_batch_relate,\
 ooaofooa_R_REL_batch_relate,\
 ooaofooa_TE_BRG_batch_relate,\
 ooaofooa_TE_DBATTR_batch_relate,\
 ooaofooa_TE_ENUM_batch_relate,\
 ooaofooa_TE_PARM_batch_relate,\
 ooaofooa_TE_WHERE_batch_relate,\
 ooaofooa_TE_ATTR_batch_relate,\
 ooaofooa_TE_REL_batch_relate,\
 ooaofooa_TE_EVT_batch_relate,\
 ooaofooa_TE_STATE_batch_relate,\
 ooaofooa_R_OIR_batch_relate,\
 ooaofooa_TE_PO_batch_relate,\
 ooaofooa_TE_VAL_batch_relate,\
 ooaofooa_TE_VAR_batch_relate,\
 ooaofooa_TE_SM_batch_relate,\
 ooaofooa_TE_CLASS_batch_relate,\
 ooaofooa_TE_PREFIX_batch_relate,\
 ooaofooa_TE_SET_batch_relate,\
 ooaofooa_TE_PERSIST_batch_relate,\
 ooaofooa_R_RTO_batch_relate,\
 ooaofooa_TE_EQ_batch_relate,\
 ooaofooa_TE_ILB_batch_relate,\
 ooaofooa_TE_THREAD_batch_relate,\
 ooaofooa_TE_FILE_batch_relate,\
 ooaofooa_TE_CALLOUT_batch_relate,\
 ooaofooa_TE_STRING_batch_relate,\
 ooaofooa_TE_TRACE_batch_relate,\
 ooaofooa_TE_COPYRIGHT_batch_relate,\
 ooaofooa_TE_DMA_batch_relate,\
 ooaofooa_TE_CONTAINER_batch_relate,\
 ooaofooa_R_RGO_batch_relate,\
 ooaofooa_TE_DLIST_batch_relate,\
 ooaofooa_TE_SLIST_batch_relate,\
 ooaofooa_TE_TARGET_batch_relate,\
 ooaofooa_R_SIMP_batch_relate,\
 ooaofooa_TE_RELINFO_batch_relate,\
 ooaofooa_TE_RELSTORE_batch_relate,\
 ooaofooa_TE_INSTANCE_batch_relate,\
 ooaofooa_TE_TIM_batch_relate,\
 ooaofooa_TE_TYPEMAP_batch_relate,\
 ooaofooa_TE_EXTENT_batch_relate,\
 ooaofooa_TE_DIM_batch_relate,\
 ooaofooa_TE_PAR_batch_relate,\
 ooaofooa_TE_MACT_batch_relate,\
 ooaofooa_R_PART_batch_relate,\
 ooaofooa_TE_IIR_batch_relate,\
 ooaofooa_TE_DCI_batch_relate,\
 ooaofooa_TE_CIA_batch_relate,\
 ooaofooa_R_FORM_batch_relate,\
 ooaofooa_R_ASSOC_batch_relate,\
 ooaofooa_R_AONE_batch_relate,\
 ooaofooa_S_FIP_batch_relate,\
 ooaofooa_TE_BLK_batch_relate,\
 ooaofooa_TE_LNK_batch_relate,\
 ooaofooa_TE_SMT_batch_relate,\
 ooaofooa_TE_ASSIGN_batch_relate,\
 ooaofooa_TE_BREAK_batch_relate,\
 ooaofooa_TE_BRIDGE_batch_relate,\
 ooaofooa_TE_CONTINUE_batch_relate,\
 ooaofooa_TE_CONTROL_batch_relate,\
 ooaofooa_TE_CREATE_EVENT_batch_relate,\
 ooaofooa_TE_CREATE_INSTANCE_batch_relate,\
 ooaofooa_R_AOTH_batch_relate,\
 ooaofooa_TE_DELETE_INSTANCE_batch_relate,\
 ooaofooa_TE_ELIF_batch_relate,\
 ooaofooa_TE_ELSE_batch_relate,\
 ooaofooa_TE_EVENT_PARAMETERS_batch_relate,\
 ooaofooa_TE_FOR_batch_relate,\
 ooaofooa_TE_FUNCTION_batch_relate,\
 ooaofooa_TE_GENERATE_batch_relate,\
 ooaofooa_TE_GENERATE_CREATOR_EVENT_batch_relate,\
 ooaofooa_TE_GENERATE_PRECREATED_EVENT_batch_relate,\
 ooaofooa_TE_GENERATE_TO_CLASS_batch_relate,\
 ooaofooa_R_ASSR_batch_relate,\
 ooaofooa_TE_IF_batch_relate,\
 ooaofooa_TE_IOP_batch_relate,\
 ooaofooa_TE_OPERATION_batch_relate,\
 ooaofooa_TE_RELATE_batch_relate,\
 ooaofooa_TE_RELATE_USING_batch_relate,\
 ooaofooa_TE_RETURN_batch_relate,\
 ooaofooa_TE_SELECT_batch_relate,\
 ooaofooa_TE_SELECT_RELATED_batch_relate,\
 ooaofooa_TE_SELECT_WHERE_batch_relate,\
 ooaofooa_TE_SGN_batch_relate,\
 ooaofooa_R_SUBSUP_batch_relate,\
 ooaofooa_TE_UNRELATE_batch_relate,\
 ooaofooa_R_SUPER_batch_relate,\
 ooaofooa_TE_UNRELATE_USING_batch_relate,\
 ooaofooa_R_SUB_batch_relate,\
 ooaofooa_TE_WHILE_batch_relate,\
 ooaofooa_R_COMP_batch_relate,\
 ooaofooa_R_CONE_batch_relate,\
 ooaofooa_R_COTH_batch_relate,\
 ooaofooa_S_FPIP_batch_relate,\
 ooaofooa_TE_OUTFILE_batch_relate,\
 ooaofooa_TM_C_batch_relate,\
 ooaofooa_TM_SYNC_batch_relate,\
 ooaofooa_TM_POINTER_batch_relate,\
 ooaofooa_TM_PRECISION_batch_relate,\
 ooaofooa_TM_ENUMVAL_batch_relate,\
 ooaofooa_TM_ENUMINIT_batch_relate,\
 ooaofooa_TM_THREAD_batch_relate,\
 ooaofooa_TM_SYSTAG_batch_relate,\
 ooaofooa_TM_BUILD_batch_relate,\
 ooaofooa_TM_TEMPLATE_batch_relate,\
 ooaofooa_TM_TP_batch_relate,\
 ooaofooa_TM_IF_batch_relate,\
 ooaofooa_TM_TPV_batch_relate,\
 ooaofooa_S_EEPK_batch_relate,\
 ooaofooa_DOC_DOC_batch_relate,\
 ooaofooa_DOC_SEC_batch_relate,\
 ooaofooa_DOC_DATE_batch_relate,\
 ooaofooa_DOC_HEAD_batch_relate,\
 ooaofooa_DOC_FOOT_batch_relate,\
 ooaofooa_DOC_ADDR_batch_relate,\
 ooaofooa_DOC_PAR_batch_relate,\
 ooaofooa_DOC_FIG_batch_relate,\
 ooaofooa_DOC_LINK_batch_relate,\
 ooaofooa_DOC_TBL_batch_relate,\
 ooaofooa_DOC_IMG_batch_relate,\
 ooaofooa_DOC_CELL_batch_relate,\
 ooaofooa_DOC_ROW_batch_relate,\
 ooaofooa_S_EEIP_batch_relate,\
 ooaofooa_S_EEPIP_batch_relate,\
 ooaofooa_S_DPK_batch_relate,\
 ooaofooa_S_DIP_batch_relate,\
 ooaofooa_S_DPIP_batch_relate,\
 ooaofooa_I_LNK_batch_relate,\
 ooaofooa_I_EVI_batch_relate,\
 ooaofooa_I_AVL_batch_relate,\
 ooaofooa_I_INS_batch_relate,\
 ooaofooa_I_EXE_batch_relate,\
 ooaofooa_I_STF_batch_relate,\
 ooaofooa_I_BSF_batch_relate,\
 ooaofooa_I_STACK_batch_relate,\
 ooaofooa_I_DIV_batch_relate,\
 ooaofooa_I_TIM_batch_relate,\
 ooaofooa_I_EQE_batch_relate,\
 ooaofooa_I_SQE_batch_relate,\
 ooaofooa_I_MON_batch_relate,\
 ooaofooa_CSME_CLM_batch_relate,\
 ooaofooa_I_VSF_batch_relate,\
 ooaofooa_I_LIP_batch_relate,\
 ooaofooa_I_RCH_batch_relate,\
 ooaofooa_I_CIN_batch_relate,\
 ooaofooa_I_ICQE_batch_relate,\
 ooaofooa_CSME_CIE_batch_relate,\
 ooaofooa_CSME_CIS_batch_relate,\
 ooaofooa_S_SS_batch_relate,\
 ooaofooa_PL_FPID_batch_relate,\
 ooaofooa_S_SIS_batch_relate,\
 ooaofooa_BP_BP_batch_relate,\
 ooaofooa_BP_OAL_batch_relate,\
 ooaofooa_BP_EV_batch_relate,\
 ooaofooa_BP_CON_batch_relate,\
 ooaofooa_BP_ST_batch_relate,\
 ooaofooa_S_SID_batch_relate,\
 ooaofooa_S_AW_batch_relate,\
 ooaofooa_S_IRDT_batch_relate,\
 ooaofooa_S_SDT_batch_relate,\
 ooaofooa_S_MBR_batch_relate,\
 ooaofooa_S_DIS_batch_relate,\
 ooaofooa_S_DIM_batch_relate,\
 ooaofooa_S_EE_batch_relate,\
 ooaofooa_C_C_batch_relate,\
 ooaofooa_C_I_batch_relate,\
 ooaofooa_C_P_batch_relate,\
 ooaofooa_C_R_batch_relate,\
 ooaofooa_C_EP_batch_relate,\
 ooaofooa_C_AS_batch_relate,\
 ooaofooa_C_IO_batch_relate,\
 ooaofooa_C_SF_batch_relate,\
 ooaofooa_C_PP_batch_relate,\
 ooaofooa_C_IR_batch_relate,\
 ooaofooa_C_DG_batch_relate,\
 ooaofooa_C_PO_batch_relate,\
 ooaofooa_C_RID_batch_relate,\
 ooaofooa_CA_COMM_batch_relate,\
 ooaofooa_CA_EESMC_batch_relate,\
 ooaofooa_CA_SMSMC_batch_relate,\
 ooaofooa_CA_SMEEC_batch_relate,\
 ooaofooa_CA_EESME_batch_relate,\
 ooaofooa_CA_SMSME_batch_relate,\
 ooaofooa_CA_SMEEE_batch_relate,\
 ooaofooa_CA_ACC_batch_relate,\
 ooaofooa_CA_SMOA_batch_relate,\
 ooaofooa_CA_SMEEA_batch_relate,\
 ooaofooa_CA_SMOAA_batch_relate,\
 ooaofooa_CA_SMEED_batch_relate,\
 ooaofooa_CN_CIC_batch_relate,\
 ooaofooa_CN_DC_batch_relate,\
 ooaofooa_IP_IP_batch_relate,\
 ooaofooa_IP_IPINIP_batch_relate,\
 ooaofooa_SLD_SDP_batch_relate,\
 ooaofooa_SLD_SDINP_batch_relate,\
 ooaofooa_SLD_SCINP_batch_relate,\
 ooaofooa_SPR_REP_batch_relate,\
 ooaofooa_SPR_PEP_batch_relate,\
 ooaofooa_SPR_RO_batch_relate,\
 ooaofooa_SPR_RS_batch_relate,\
 ooaofooa_SPR_PO_batch_relate,\
 ooaofooa_SPR_PS_batch_relate,\
 ooaofooa_CP_CP_batch_relate,\
 ooaofooa_CP_CPINP_batch_relate,\
 ooaofooa_CL_IPINS_batch_relate,\
 ooaofooa_CL_IP_batch_relate,\
 ooaofooa_CL_IR_batch_relate,\
 ooaofooa_CL_IIR_batch_relate,\
 ooaofooa_CL_IC_batch_relate,\
 ooaofooa_S_EEM_batch_relate,\
 ooaofooa_SM_SM_batch_relate,\
 ooaofooa_SM_STATE_batch_relate,\
 ooaofooa_SM_EVT_batch_relate,\
 ooaofooa_SM_SEME_batch_relate,\
 ooaofooa_SM_NSTXN_batch_relate,\
 ooaofooa_SM_EIGN_batch_relate,\
 ooaofooa_SM_CH_batch_relate,\
 ooaofooa_SM_TXN_batch_relate,\
 ooaofooa_SM_NETXN_batch_relate,\
 ooaofooa_SM_CRTXN_batch_relate,\
 ooaofooa_SM_MOORE_batch_relate,\
 ooaofooa_SM_MEALY_batch_relate,\
 ooaofooa_SM_MOAH_batch_relate,\
 ooaofooa_SM_MEAH_batch_relate,\
 ooaofooa_SM_AH_batch_relate,\
 ooaofooa_SM_ACT_batch_relate,\
 ooaofooa_SM_EVTDI_batch_relate,\
 ooaofooa_SM_SUPDT_batch_relate,\
 ooaofooa_SM_SDI_batch_relate,\
 ooaofooa_SM_ISM_batch_relate,\
 ooaofooa_SM_ASM_batch_relate,\
 ooaofooa_SM_PEVT_batch_relate,\
 ooaofooa_SM_SEVT_batch_relate,\
 ooaofooa_SM_NLEVT_batch_relate,\
 ooaofooa_SM_LEVT_batch_relate,\
 ooaofooa_SM_SGEVT_batch_relate,\
 ooaofooa_SM_TAH_batch_relate,\
 ooaofooa_S_EEDI_batch_relate,\
 ooaofooa_ACT_BLK_batch_relate,\
 ooaofooa_ACT_ACT_batch_relate,\
 ooaofooa_ACT_SMT_batch_relate,\
 ooaofooa_ACT_AI_batch_relate,\
 ooaofooa_ACT_SRW_batch_relate,\
 ooaofooa_ACT_SEL_batch_relate,\
 ooaofooa_ACT_FOR_batch_relate,\
 ooaofooa_ACT_CNV_batch_relate,\
 ooaofooa_ACT_REL_batch_relate,\
 ooaofooa_ACT_UNR_batch_relate,\
 ooaofooa_ACT_E_batch_relate,\
 ooaofooa_ACT_FIW_batch_relate,\
 ooaofooa_ACT_FIO_batch_relate,\
 ooaofooa_ACT_CR_batch_relate,\
 ooaofooa_ACT_DEL_batch_relate,\
 ooaofooa_ACT_RU_batch_relate,\
 ooaofooa_ACT_URU_batch_relate,\
 ooaofooa_ACT_IF_batch_relate,\
 ooaofooa_ACT_TFM_batch_relate,\
 ooaofooa_ACT_WHL_batch_relate,\
 ooaofooa_ACT_BRG_batch_relate,\
 ooaofooa_ACT_EL_batch_relate,\
 ooaofooa_ACT_SR_batch_relate,\
 ooaofooa_ACT_RET_batch_relate,\
 ooaofooa_ACT_FNC_batch_relate,\
 ooaofooa_ACT_IOP_batch_relate,\
 ooaofooa_ACT_LNK_batch_relate,\
 ooaofooa_ACT_SGN_batch_relate,\
 ooaofooa_ACT_CTL_batch_relate,\
 ooaofooa_ACT_BRK_batch_relate,\
 ooaofooa_ACT_CON_batch_relate,\
 ooaofooa_ACT_SAB_batch_relate,\
 ooaofooa_ACT_DAB_batch_relate,\
 ooaofooa_ACT_FNB_batch_relate,\
 ooaofooa_ACT_OPB_batch_relate,\
 ooaofooa_ACT_BRB_batch_relate,\
 ooaofooa_ACT_POB_batch_relate,\
 ooaofooa_ACT_PSB_batch_relate,\
 ooaofooa_ACT_ROB_batch_relate,\
 ooaofooa_ACT_RSB_batch_relate,\
 ooaofooa_ACT_BIC_batch_relate,\
 ooaofooa_ACT_TAB_batch_relate,\
 ooaofooa_ACT_BIE_batch_relate,\
 ooaofooa_S_EEEVT_batch_relate,\
 ooaofooa_E_CEI_batch_relate,\
 ooaofooa_E_GEN_batch_relate,\
 ooaofooa_E_GPR_batch_relate,\
 ooaofooa_E_CEA_batch_relate,\
 ooaofooa_E_GAR_batch_relate,\
 ooaofooa_E_GEC_batch_relate,\
 ooaofooa_E_CEE_batch_relate,\
 ooaofooa_E_GEE_batch_relate,\
 ooaofooa_E_CEC_batch_relate,\
 ooaofooa_E_ESS_batch_relate,\
 ooaofooa_E_CES_batch_relate,\
 ooaofooa_E_GES_batch_relate,\
 ooaofooa_E_CSME_batch_relate,\
 ooaofooa_E_GSME_batch_relate,\
 ooaofooa_S_EEEDI_batch_relate,\
 ooaofooa_PE_PE_batch_relate,\
 ooaofooa_PE_VIS_batch_relate,\
 ooaofooa_PE_CVS_batch_relate,\
 ooaofooa_PE_SRS_batch_relate,\
 ooaofooa_PE_CRS_batch_relate,\
 ooaofooa_V_VAL_batch_relate,\
 ooaofooa_V_PAR_batch_relate,\
 ooaofooa_V_BIN_batch_relate,\
 ooaofooa_V_LBO_batch_relate,\
 ooaofooa_V_LRL_batch_relate,\
 ooaofooa_V_TVL_batch_relate,\
 ooaofooa_V_EDV_batch_relate,\
 ooaofooa_V_ISR_batch_relate,\
 ooaofooa_V_TRV_batch_relate,\
 ooaofooa_V_UNY_batch_relate,\
 ooaofooa_V_LST_batch_relate,\
 ooaofooa_V_LIN_batch_relate,\
 ooaofooa_V_AVL_batch_relate,\
 ooaofooa_V_IRF_batch_relate,\
 ooaofooa_V_BRV_batch_relate,\
 ooaofooa_V_VAR_batch_relate,\
 ooaofooa_V_INT_batch_relate,\
 ooaofooa_V_INS_batch_relate,\
 ooaofooa_V_TRN_batch_relate,\
 ooaofooa_V_SLR_batch_relate,\
 ooaofooa_V_PVL_batch_relate,\
 ooaofooa_V_FNV_batch_relate,\
 ooaofooa_V_LEN_batch_relate,\
 ooaofooa_V_LOC_batch_relate,\
 ooaofooa_V_MVL_batch_relate,\
 ooaofooa_V_AER_batch_relate,\
 ooaofooa_V_ALV_batch_relate,\
 ooaofooa_V_MSV_batch_relate,\
 ooaofooa_V_EPR_batch_relate,\
 ooaofooa_V_SCV_batch_relate,\
 ooaofooa_S_EEEDT_batch_relate,\
 ooaofooa_PA_SIC_batch_relate,\
 ooaofooa_PA_SICP_batch_relate,\
 ooaofooa_PA_DIC_batch_relate,\
 ooaofooa_SQ_S_batch_relate,\
 ooaofooa_SQ_LS_batch_relate,\
 ooaofooa_SQ_CIP_batch_relate,\
 ooaofooa_SQ_COP_batch_relate,\
 ooaofooa_SQ_TM_batch_relate,\
 ooaofooa_SQ_TS_batch_relate,\
 ooaofooa_SQ_SIS_batch_relate,\
 ooaofooa_SQ_MIS_batch_relate,\
 ooaofooa_SQ_CP_batch_relate,\
 ooaofooa_SQ_P_batch_relate,\
 ooaofooa_SQ_EEP_batch_relate,\
 ooaofooa_SQ_FPP_batch_relate,\
 ooaofooa_SQ_CPA_batch_relate,\
 ooaofooa_SQ_AV_batch_relate,\
 ooaofooa_SQ_AP_batch_relate,\
 ooaofooa_SQ_IA_batch_relate,\
 ooaofooa_SQ_FA_batch_relate,\
 ooaofooa_SQ_FAV_batch_relate,\
 ooaofooa_SQ_IAV_batch_relate,\
 ooaofooa_IA_UCP_batch_relate,\
 ooaofooa_SQ_PP_batch_relate,\
 ooaofooa_SEN_E_batch_relate,\
 ooaofooa_SEN_ALE_batch_relate,\
 ooaofooa_SEN_DE_batch_relate,\
 ooaofooa_SEN_DCE_batch_relate,\
 ooaofooa_SEN_RE_batch_relate,\
 ooaofooa_SQU_Q_batch_relate,\
 ooaofooa_SQU_D_batch_relate,\
 ooaofooa_SQU_R_batch_relate,\
 ooaofooa_SQU_DE_batch_relate,\
 ooaofooa_SQU_A_batch_relate,\
 ooaofooa_SP_SP_batch_relate,\
 ooaofooa_SP_SE_batch_relate,\
 ooaofooa_SP_ALS_batch_relate,\
 ooaofooa_SP_DS_batch_relate,\
 ooaofooa_SP_NS_batch_relate,\
 ooaofooa_SR_SR_batch_relate,\
 ooaofooa_SR_M_batch_relate,\
 ooaofooa_SR_CM_batch_relate,\
 ooaofooa_SR_NM_batch_relate,\
 ooaofooa_SR_CMR_batch_relate,\
 ooaofooa_S_DT_batch_relate

/* Provide definitions of the shapes of the class structures.  */

typedef struct ooaofooa_MSG_M ooaofooa_MSG_M;
typedef struct ooaofooa_MSG_A ooaofooa_MSG_A;
typedef struct ooaofooa_MSG_O ooaofooa_MSG_O;
typedef struct ooaofooa_MSG_B ooaofooa_MSG_B;
typedef struct ooaofooa_MSG_E ooaofooa_MSG_E;
typedef struct ooaofooa_MSG_F ooaofooa_MSG_F;
typedef struct ooaofooa_MSG_BA ooaofooa_MSG_BA;
typedef struct ooaofooa_MSG_OA ooaofooa_MSG_OA;
typedef struct ooaofooa_MSG_FA ooaofooa_MSG_FA;
typedef struct ooaofooa_MSG_EA ooaofooa_MSG_EA;
typedef struct ooaofooa_MSG_R ooaofooa_MSG_R;
typedef struct ooaofooa_MSG_SM ooaofooa_MSG_SM;
typedef struct ooaofooa_MSG_AM ooaofooa_MSG_AM;
typedef struct ooaofooa_MSG_ISM ooaofooa_MSG_ISM;
typedef struct ooaofooa_MSG_IAM ooaofooa_MSG_IAM;
typedef struct ooaofooa_MSG_IA ooaofooa_MSG_IA;
typedef struct ooaofooa_MSG_SIG ooaofooa_MSG_SIG;
typedef struct ooaofooa_MSG_IOP ooaofooa_MSG_IOP;
typedef struct ooaofooa_MSG_EPA ooaofooa_MSG_EPA;
typedef struct ooaofooa_O_OBJ ooaofooa_O_OBJ;
typedef struct ooaofooa_O_IOBJ ooaofooa_O_IOBJ;
typedef struct ooaofooa_O_ATTR ooaofooa_O_ATTR;
typedef struct ooaofooa_O_ID ooaofooa_O_ID;
typedef struct ooaofooa_O_OIDA ooaofooa_O_OIDA;
typedef struct ooaofooa_O_BATTR ooaofooa_O_BATTR;
typedef struct ooaofooa_O_DBATTR ooaofooa_O_DBATTR;
typedef struct ooaofooa_O_NBATTR ooaofooa_O_NBATTR;
typedef struct ooaofooa_O_RATTR ooaofooa_O_RATTR;
typedef struct ooaofooa_S_CDT ooaofooa_S_CDT;
typedef struct ooaofooa_A_A ooaofooa_A_A;
typedef struct ooaofooa_A_N ooaofooa_A_N;
typedef struct ooaofooa_A_E ooaofooa_A_E;
typedef struct ooaofooa_A_ACT ooaofooa_A_ACT;
typedef struct ooaofooa_A_OBJ ooaofooa_A_OBJ;
typedef struct ooaofooa_A_CTL ooaofooa_A_CTL;
typedef struct ooaofooa_A_INI ooaofooa_A_INI;
typedef struct ooaofooa_A_AF ooaofooa_A_AF;
typedef struct ooaofooa_A_FF ooaofooa_A_FF;
typedef struct ooaofooa_A_DM ooaofooa_A_DM;
typedef struct ooaofooa_O_REF ooaofooa_O_REF;
typedef struct ooaofooa_A_FJ ooaofooa_A_FJ;
typedef struct ooaofooa_A_GA ooaofooa_A_GA;
typedef struct ooaofooa_A_AE ooaofooa_A_AE;
typedef struct ooaofooa_A_SS ooaofooa_A_SS;
typedef struct ooaofooa_A_AIA ooaofooa_A_AIA;
typedef struct ooaofooa_O_RTIDA ooaofooa_O_RTIDA;
typedef struct ooaofooa_COMM_COMM ooaofooa_COMM_COMM;
typedef struct ooaofooa_COMM_LNK ooaofooa_COMM_LNK;
typedef struct ooaofooa_COMM_CIC ooaofooa_COMM_CIC;
typedef struct ooaofooa_COMM_MIC ooaofooa_COMM_MIC;
typedef struct ooaofooa_COMM_PIC ooaofooa_COMM_PIC;
typedef struct ooaofooa_O_TFR ooaofooa_O_TFR;
typedef struct ooaofooa_O_TPARM ooaofooa_O_TPARM;
typedef struct ooaofooa_O_RAVR ooaofooa_O_RAVR;
typedef struct ooaofooa_S_UDT ooaofooa_S_UDT;
typedef struct ooaofooa_UC_UCC ooaofooa_UC_UCC;
typedef struct ooaofooa_UC_UCA ooaofooa_UC_UCA;
typedef struct ooaofooa_UC_PIUC ooaofooa_UC_PIUC;
typedef struct ooaofooa_UC_UIU ooaofooa_UC_UIU;
typedef struct ooaofooa_UC_BA ooaofooa_UC_BA;
typedef struct ooaofooa_UC_G ooaofooa_UC_G;
typedef struct ooaofooa_UC_I ooaofooa_UC_I;
typedef struct ooaofooa_UC_E ooaofooa_UC_E;
typedef struct ooaofooa_UC_AIUC ooaofooa_UC_AIUC;
typedef struct ooaofooa_S_BRG ooaofooa_S_BRG;
typedef struct ooaofooa_A_AP ooaofooa_A_AP;
typedef struct ooaofooa_A_ATE ooaofooa_A_ATE;
typedef struct ooaofooa_A_AEA ooaofooa_A_AEA;
typedef struct ooaofooa_S_BPARM ooaofooa_S_BPARM;
typedef struct ooaofooa_EP_PKG ooaofooa_EP_PKG;
typedef struct ooaofooa_EP_SPKG ooaofooa_EP_SPKG;
typedef struct ooaofooa_EP_PIP ooaofooa_EP_PIP;
typedef struct ooaofooa_S_EDT ooaofooa_S_EDT;
typedef struct ooaofooa_CNST_CSP ooaofooa_CNST_CSP;
typedef struct ooaofooa_CNST_SYC ooaofooa_CNST_SYC;
typedef struct ooaofooa_CNST_LFSC ooaofooa_CNST_LFSC;
typedef struct ooaofooa_CNST_LSC ooaofooa_CNST_LSC;
typedef struct ooaofooa_CNST_CIP ooaofooa_CNST_CIP;
typedef struct ooaofooa_S_ENUM ooaofooa_S_ENUM;
typedef struct ooaofooa_S_SYNC ooaofooa_S_SYNC;
typedef struct ooaofooa_S_SPARM ooaofooa_S_SPARM;
typedef struct ooaofooa_S_SYS ooaofooa_S_SYS;
typedef struct ooaofooa_S_FPK ooaofooa_S_FPK;
typedef struct ooaofooa_G_EIS ooaofooa_G_EIS;
typedef struct ooaofooa_PL_EEPID ooaofooa_PL_EEPID;
typedef struct ooaofooa_S_DOM ooaofooa_S_DOM;
typedef struct ooaofooa_TE_SWC ooaofooa_TE_SWC;
typedef struct ooaofooa_TE_CI ooaofooa_TE_CI;
typedef struct ooaofooa_TE_OIR ooaofooa_TE_OIR;
typedef struct ooaofooa_TE_SYS ooaofooa_TE_SYS;
typedef struct ooaofooa_TE_DISP ooaofooa_TE_DISP;
typedef struct ooaofooa_TE_QUEUE ooaofooa_TE_QUEUE;
typedef struct ooaofooa_TE_ABA ooaofooa_TE_ABA;
typedef struct ooaofooa_TE_C ooaofooa_TE_C;
typedef struct ooaofooa_TE_MBR ooaofooa_TE_MBR;
typedef struct ooaofooa_TE_EE ooaofooa_TE_EE;
typedef struct ooaofooa_TE_DT ooaofooa_TE_DT;
typedef struct ooaofooa_TE_ACT ooaofooa_TE_ACT;
typedef struct ooaofooa_TE_SYNC ooaofooa_TE_SYNC;
typedef struct ooaofooa_TE_TFR ooaofooa_TE_TFR;
typedef struct ooaofooa_R_REL ooaofooa_R_REL;
typedef struct ooaofooa_TE_BRG ooaofooa_TE_BRG;
typedef struct ooaofooa_TE_DBATTR ooaofooa_TE_DBATTR;
typedef struct ooaofooa_TE_ENUM ooaofooa_TE_ENUM;
typedef struct ooaofooa_TE_PARM ooaofooa_TE_PARM;
typedef struct ooaofooa_TE_WHERE ooaofooa_TE_WHERE;
typedef struct ooaofooa_TE_ATTR ooaofooa_TE_ATTR;
typedef struct ooaofooa_TE_REL ooaofooa_TE_REL;
typedef struct ooaofooa_TE_EVT ooaofooa_TE_EVT;
typedef struct ooaofooa_TE_STATE ooaofooa_TE_STATE;
typedef struct ooaofooa_R_OIR ooaofooa_R_OIR;
typedef struct ooaofooa_TE_PO ooaofooa_TE_PO;
typedef struct ooaofooa_TE_VAL ooaofooa_TE_VAL;
typedef struct ooaofooa_TE_VAR ooaofooa_TE_VAR;
typedef struct ooaofooa_TE_SM ooaofooa_TE_SM;
typedef struct ooaofooa_TE_CLASS ooaofooa_TE_CLASS;
typedef struct ooaofooa_TE_PREFIX ooaofooa_TE_PREFIX;
typedef struct ooaofooa_TE_SET ooaofooa_TE_SET;
typedef struct ooaofooa_TE_PERSIST ooaofooa_TE_PERSIST;
typedef struct ooaofooa_R_RTO ooaofooa_R_RTO;
typedef struct ooaofooa_TE_EQ ooaofooa_TE_EQ;
typedef struct ooaofooa_TE_ILB ooaofooa_TE_ILB;
typedef struct ooaofooa_TE_THREAD ooaofooa_TE_THREAD;
typedef struct ooaofooa_TE_FILE ooaofooa_TE_FILE;
typedef struct ooaofooa_TE_CALLOUT ooaofooa_TE_CALLOUT;
typedef struct ooaofooa_TE_STRING ooaofooa_TE_STRING;
typedef struct ooaofooa_TE_TRACE ooaofooa_TE_TRACE;
typedef struct ooaofooa_TE_COPYRIGHT ooaofooa_TE_COPYRIGHT;
typedef struct ooaofooa_TE_DMA ooaofooa_TE_DMA;
typedef struct ooaofooa_TE_CONTAINER ooaofooa_TE_CONTAINER;
typedef struct ooaofooa_R_RGO ooaofooa_R_RGO;
typedef struct ooaofooa_TE_DLIST ooaofooa_TE_DLIST;
typedef struct ooaofooa_TE_SLIST ooaofooa_TE_SLIST;
typedef struct ooaofooa_TE_TARGET ooaofooa_TE_TARGET;
typedef struct ooaofooa_R_SIMP ooaofooa_R_SIMP;
typedef struct ooaofooa_TE_RELINFO ooaofooa_TE_RELINFO;
typedef struct ooaofooa_TE_RELSTORE ooaofooa_TE_RELSTORE;
typedef struct ooaofooa_TE_INSTANCE ooaofooa_TE_INSTANCE;
typedef struct ooaofooa_TE_TIM ooaofooa_TE_TIM;
typedef struct ooaofooa_TE_TYPEMAP ooaofooa_TE_TYPEMAP;
typedef struct ooaofooa_TE_EXTENT ooaofooa_TE_EXTENT;
typedef struct ooaofooa_TE_DIM ooaofooa_TE_DIM;
typedef struct ooaofooa_TE_PAR ooaofooa_TE_PAR;
typedef struct ooaofooa_TE_MACT ooaofooa_TE_MACT;
typedef struct ooaofooa_R_PART ooaofooa_R_PART;
typedef struct ooaofooa_TE_IIR ooaofooa_TE_IIR;
typedef struct ooaofooa_TE_DCI ooaofooa_TE_DCI;
typedef struct ooaofooa_TE_CIA ooaofooa_TE_CIA;
typedef struct ooaofooa_R_FORM ooaofooa_R_FORM;
typedef struct ooaofooa_R_ASSOC ooaofooa_R_ASSOC;
typedef struct ooaofooa_R_AONE ooaofooa_R_AONE;
typedef struct ooaofooa_S_FIP ooaofooa_S_FIP;
typedef struct ooaofooa_TE_BLK ooaofooa_TE_BLK;
typedef struct ooaofooa_TE_LNK ooaofooa_TE_LNK;
typedef struct ooaofooa_TE_SMT ooaofooa_TE_SMT;
typedef struct ooaofooa_TE_ASSIGN ooaofooa_TE_ASSIGN;
typedef struct ooaofooa_TE_BREAK ooaofooa_TE_BREAK;
typedef struct ooaofooa_TE_BRIDGE ooaofooa_TE_BRIDGE;
typedef struct ooaofooa_TE_CONTINUE ooaofooa_TE_CONTINUE;
typedef struct ooaofooa_TE_CONTROL ooaofooa_TE_CONTROL;
typedef struct ooaofooa_TE_CREATE_EVENT ooaofooa_TE_CREATE_EVENT;
typedef struct ooaofooa_TE_CREATE_INSTANCE ooaofooa_TE_CREATE_INSTANCE;
typedef struct ooaofooa_R_AOTH ooaofooa_R_AOTH;
typedef struct ooaofooa_TE_DELETE_INSTANCE ooaofooa_TE_DELETE_INSTANCE;
typedef struct ooaofooa_TE_ELIF ooaofooa_TE_ELIF;
typedef struct ooaofooa_TE_ELSE ooaofooa_TE_ELSE;
typedef struct ooaofooa_TE_EVENT_PARAMETERS ooaofooa_TE_EVENT_PARAMETERS;
typedef struct ooaofooa_TE_FOR ooaofooa_TE_FOR;
typedef struct ooaofooa_TE_FUNCTION ooaofooa_TE_FUNCTION;
typedef struct ooaofooa_TE_GENERATE ooaofooa_TE_GENERATE;
typedef struct ooaofooa_TE_GENERATE_CREATOR_EVENT ooaofooa_TE_GENERATE_CREATOR_EVENT;
typedef struct ooaofooa_TE_GENERATE_PRECREATED_EVENT ooaofooa_TE_GENERATE_PRECREATED_EVENT;
typedef struct ooaofooa_TE_GENERATE_TO_CLASS ooaofooa_TE_GENERATE_TO_CLASS;
typedef struct ooaofooa_R_ASSR ooaofooa_R_ASSR;
typedef struct ooaofooa_TE_IF ooaofooa_TE_IF;
typedef struct ooaofooa_TE_IOP ooaofooa_TE_IOP;
typedef struct ooaofooa_TE_OPERATION ooaofooa_TE_OPERATION;
typedef struct ooaofooa_TE_RELATE ooaofooa_TE_RELATE;
typedef struct ooaofooa_TE_RELATE_USING ooaofooa_TE_RELATE_USING;
typedef struct ooaofooa_TE_RETURN ooaofooa_TE_RETURN;
typedef struct ooaofooa_TE_SELECT ooaofooa_TE_SELECT;
typedef struct ooaofooa_TE_SELECT_RELATED ooaofooa_TE_SELECT_RELATED;
typedef struct ooaofooa_TE_SELECT_WHERE ooaofooa_TE_SELECT_WHERE;
typedef struct ooaofooa_TE_SGN ooaofooa_TE_SGN;
typedef struct ooaofooa_R_SUBSUP ooaofooa_R_SUBSUP;
typedef struct ooaofooa_TE_UNRELATE ooaofooa_TE_UNRELATE;
typedef struct ooaofooa_R_SUPER ooaofooa_R_SUPER;
typedef struct ooaofooa_TE_UNRELATE_USING ooaofooa_TE_UNRELATE_USING;
typedef struct ooaofooa_R_SUB ooaofooa_R_SUB;
typedef struct ooaofooa_TE_WHILE ooaofooa_TE_WHILE;
typedef struct ooaofooa_R_COMP ooaofooa_R_COMP;
typedef struct ooaofooa_R_CONE ooaofooa_R_CONE;
typedef struct ooaofooa_R_COTH ooaofooa_R_COTH;
typedef struct ooaofooa_S_FPIP ooaofooa_S_FPIP;
typedef struct ooaofooa_TE_OUTFILE ooaofooa_TE_OUTFILE;
typedef struct ooaofooa_TM_C ooaofooa_TM_C;
typedef struct ooaofooa_TM_SYNC ooaofooa_TM_SYNC;
typedef struct ooaofooa_TM_POINTER ooaofooa_TM_POINTER;
typedef struct ooaofooa_TM_PRECISION ooaofooa_TM_PRECISION;
typedef struct ooaofooa_TM_ENUMVAL ooaofooa_TM_ENUMVAL;
typedef struct ooaofooa_TM_ENUMINIT ooaofooa_TM_ENUMINIT;
typedef struct ooaofooa_TM_THREAD ooaofooa_TM_THREAD;
typedef struct ooaofooa_TM_SYSTAG ooaofooa_TM_SYSTAG;
typedef struct ooaofooa_TM_BUILD ooaofooa_TM_BUILD;
typedef struct ooaofooa_TM_TEMPLATE ooaofooa_TM_TEMPLATE;
typedef struct ooaofooa_TM_TP ooaofooa_TM_TP;
typedef struct ooaofooa_TM_IF ooaofooa_TM_IF;
typedef struct ooaofooa_TM_TPV ooaofooa_TM_TPV;
typedef struct ooaofooa_S_EEPK ooaofooa_S_EEPK;
typedef struct ooaofooa_DOC_DOC ooaofooa_DOC_DOC;
typedef struct ooaofooa_DOC_SEC ooaofooa_DOC_SEC;
typedef struct ooaofooa_DOC_DATE ooaofooa_DOC_DATE;
typedef struct ooaofooa_DOC_HEAD ooaofooa_DOC_HEAD;
typedef struct ooaofooa_DOC_FOOT ooaofooa_DOC_FOOT;
typedef struct ooaofooa_DOC_ADDR ooaofooa_DOC_ADDR;
typedef struct ooaofooa_DOC_PAR ooaofooa_DOC_PAR;
typedef struct ooaofooa_DOC_FIG ooaofooa_DOC_FIG;
typedef struct ooaofooa_DOC_LINK ooaofooa_DOC_LINK;
typedef struct ooaofooa_DOC_TBL ooaofooa_DOC_TBL;
typedef struct ooaofooa_DOC_IMG ooaofooa_DOC_IMG;
typedef struct ooaofooa_DOC_CELL ooaofooa_DOC_CELL;
typedef struct ooaofooa_DOC_ROW ooaofooa_DOC_ROW;
typedef struct ooaofooa_S_EEIP ooaofooa_S_EEIP;
typedef struct ooaofooa_S_EEPIP ooaofooa_S_EEPIP;
typedef struct ooaofooa_S_DPK ooaofooa_S_DPK;
typedef struct ooaofooa_S_DIP ooaofooa_S_DIP;
typedef struct ooaofooa_S_DPIP ooaofooa_S_DPIP;
typedef struct ooaofooa_I_LNK ooaofooa_I_LNK;
typedef struct ooaofooa_I_EVI ooaofooa_I_EVI;
typedef struct ooaofooa_I_AVL ooaofooa_I_AVL;
typedef struct ooaofooa_I_INS ooaofooa_I_INS;
typedef struct ooaofooa_I_EXE ooaofooa_I_EXE;
typedef struct ooaofooa_I_STF ooaofooa_I_STF;
typedef struct ooaofooa_I_BSF ooaofooa_I_BSF;
typedef struct ooaofooa_I_STACK ooaofooa_I_STACK;
typedef struct ooaofooa_I_DIV ooaofooa_I_DIV;
typedef struct ooaofooa_I_TIM ooaofooa_I_TIM;
typedef struct ooaofooa_I_EQE ooaofooa_I_EQE;
typedef struct ooaofooa_I_SQE ooaofooa_I_SQE;
typedef struct ooaofooa_I_MON ooaofooa_I_MON;
typedef struct ooaofooa_CSME_CLM ooaofooa_CSME_CLM;
typedef struct ooaofooa_I_VSF ooaofooa_I_VSF;
typedef struct ooaofooa_I_LIP ooaofooa_I_LIP;
typedef struct ooaofooa_I_RCH ooaofooa_I_RCH;
typedef struct ooaofooa_I_CIN ooaofooa_I_CIN;
typedef struct ooaofooa_I_ICQE ooaofooa_I_ICQE;
typedef struct ooaofooa_CSME_CIE ooaofooa_CSME_CIE;
typedef struct ooaofooa_CSME_CIS ooaofooa_CSME_CIS;
typedef struct ooaofooa_S_SS ooaofooa_S_SS;
typedef struct ooaofooa_PL_FPID ooaofooa_PL_FPID;
typedef struct ooaofooa_S_SIS ooaofooa_S_SIS;
typedef struct ooaofooa_BP_BP ooaofooa_BP_BP;
typedef struct ooaofooa_BP_OAL ooaofooa_BP_OAL;
typedef struct ooaofooa_BP_EV ooaofooa_BP_EV;
typedef struct ooaofooa_BP_CON ooaofooa_BP_CON;
typedef struct ooaofooa_BP_ST ooaofooa_BP_ST;
typedef struct ooaofooa_S_SID ooaofooa_S_SID;
typedef struct ooaofooa_S_AW ooaofooa_S_AW;
typedef struct ooaofooa_S_IRDT ooaofooa_S_IRDT;
typedef struct ooaofooa_S_SDT ooaofooa_S_SDT;
typedef struct ooaofooa_S_MBR ooaofooa_S_MBR;
typedef struct ooaofooa_S_DIS ooaofooa_S_DIS;
typedef struct ooaofooa_S_DIM ooaofooa_S_DIM;
typedef struct ooaofooa_S_EE ooaofooa_S_EE;
typedef struct ooaofooa_C_C ooaofooa_C_C;
typedef struct ooaofooa_C_I ooaofooa_C_I;
typedef struct ooaofooa_C_P ooaofooa_C_P;
typedef struct ooaofooa_C_R ooaofooa_C_R;
typedef struct ooaofooa_C_EP ooaofooa_C_EP;
typedef struct ooaofooa_C_AS ooaofooa_C_AS;
typedef struct ooaofooa_C_IO ooaofooa_C_IO;
typedef struct ooaofooa_C_SF ooaofooa_C_SF;
typedef struct ooaofooa_C_PP ooaofooa_C_PP;
typedef struct ooaofooa_C_IR ooaofooa_C_IR;
typedef struct ooaofooa_C_DG ooaofooa_C_DG;
typedef struct ooaofooa_C_PO ooaofooa_C_PO;
typedef struct ooaofooa_C_RID ooaofooa_C_RID;
typedef struct ooaofooa_CA_COMM ooaofooa_CA_COMM;
typedef struct ooaofooa_CA_EESMC ooaofooa_CA_EESMC;
typedef struct ooaofooa_CA_SMSMC ooaofooa_CA_SMSMC;
typedef struct ooaofooa_CA_SMEEC ooaofooa_CA_SMEEC;
typedef struct ooaofooa_CA_EESME ooaofooa_CA_EESME;
typedef struct ooaofooa_CA_SMSME ooaofooa_CA_SMSME;
typedef struct ooaofooa_CA_SMEEE ooaofooa_CA_SMEEE;
typedef struct ooaofooa_CA_ACC ooaofooa_CA_ACC;
typedef struct ooaofooa_CA_SMOA ooaofooa_CA_SMOA;
typedef struct ooaofooa_CA_SMEEA ooaofooa_CA_SMEEA;
typedef struct ooaofooa_CA_SMOAA ooaofooa_CA_SMOAA;
typedef struct ooaofooa_CA_SMEED ooaofooa_CA_SMEED;
typedef struct ooaofooa_CN_CIC ooaofooa_CN_CIC;
typedef struct ooaofooa_CN_DC ooaofooa_CN_DC;
typedef struct ooaofooa_IP_IP ooaofooa_IP_IP;
typedef struct ooaofooa_IP_IPINIP ooaofooa_IP_IPINIP;
typedef struct ooaofooa_SLD_SDP ooaofooa_SLD_SDP;
typedef struct ooaofooa_SLD_SDINP ooaofooa_SLD_SDINP;
typedef struct ooaofooa_SLD_SCINP ooaofooa_SLD_SCINP;
typedef struct ooaofooa_SPR_REP ooaofooa_SPR_REP;
typedef struct ooaofooa_SPR_PEP ooaofooa_SPR_PEP;
typedef struct ooaofooa_SPR_RO ooaofooa_SPR_RO;
typedef struct ooaofooa_SPR_RS ooaofooa_SPR_RS;
typedef struct ooaofooa_SPR_PO ooaofooa_SPR_PO;
typedef struct ooaofooa_SPR_PS ooaofooa_SPR_PS;
typedef struct ooaofooa_CP_CP ooaofooa_CP_CP;
typedef struct ooaofooa_CP_CPINP ooaofooa_CP_CPINP;
typedef struct ooaofooa_CL_IPINS ooaofooa_CL_IPINS;
typedef struct ooaofooa_CL_IP ooaofooa_CL_IP;
typedef struct ooaofooa_CL_IR ooaofooa_CL_IR;
typedef struct ooaofooa_CL_IIR ooaofooa_CL_IIR;
typedef struct ooaofooa_CL_IC ooaofooa_CL_IC;
typedef struct ooaofooa_S_EEM ooaofooa_S_EEM;
typedef struct ooaofooa_SM_SM ooaofooa_SM_SM;
typedef struct ooaofooa_SM_STATE ooaofooa_SM_STATE;
typedef struct ooaofooa_SM_EVT ooaofooa_SM_EVT;
typedef struct ooaofooa_SM_SEME ooaofooa_SM_SEME;
typedef struct ooaofooa_SM_NSTXN ooaofooa_SM_NSTXN;
typedef struct ooaofooa_SM_EIGN ooaofooa_SM_EIGN;
typedef struct ooaofooa_SM_CH ooaofooa_SM_CH;
typedef struct ooaofooa_SM_TXN ooaofooa_SM_TXN;
typedef struct ooaofooa_SM_NETXN ooaofooa_SM_NETXN;
typedef struct ooaofooa_SM_CRTXN ooaofooa_SM_CRTXN;
typedef struct ooaofooa_SM_MOORE ooaofooa_SM_MOORE;
typedef struct ooaofooa_SM_MEALY ooaofooa_SM_MEALY;
typedef struct ooaofooa_SM_MOAH ooaofooa_SM_MOAH;
typedef struct ooaofooa_SM_MEAH ooaofooa_SM_MEAH;
typedef struct ooaofooa_SM_AH ooaofooa_SM_AH;
typedef struct ooaofooa_SM_ACT ooaofooa_SM_ACT;
typedef struct ooaofooa_SM_EVTDI ooaofooa_SM_EVTDI;
typedef struct ooaofooa_SM_SUPDT ooaofooa_SM_SUPDT;
typedef struct ooaofooa_SM_SDI ooaofooa_SM_SDI;
typedef struct ooaofooa_SM_ISM ooaofooa_SM_ISM;
typedef struct ooaofooa_SM_ASM ooaofooa_SM_ASM;
typedef struct ooaofooa_SM_PEVT ooaofooa_SM_PEVT;
typedef struct ooaofooa_SM_SEVT ooaofooa_SM_SEVT;
typedef struct ooaofooa_SM_NLEVT ooaofooa_SM_NLEVT;
typedef struct ooaofooa_SM_LEVT ooaofooa_SM_LEVT;
typedef struct ooaofooa_SM_SGEVT ooaofooa_SM_SGEVT;
typedef struct ooaofooa_SM_TAH ooaofooa_SM_TAH;
typedef struct ooaofooa_S_EEDI ooaofooa_S_EEDI;
typedef struct ooaofooa_ACT_BLK ooaofooa_ACT_BLK;
typedef struct ooaofooa_ACT_ACT ooaofooa_ACT_ACT;
typedef struct ooaofooa_ACT_SMT ooaofooa_ACT_SMT;
typedef struct ooaofooa_ACT_AI ooaofooa_ACT_AI;
typedef struct ooaofooa_ACT_SRW ooaofooa_ACT_SRW;
typedef struct ooaofooa_ACT_SEL ooaofooa_ACT_SEL;
typedef struct ooaofooa_ACT_FOR ooaofooa_ACT_FOR;
typedef struct ooaofooa_ACT_CNV ooaofooa_ACT_CNV;
typedef struct ooaofooa_ACT_REL ooaofooa_ACT_REL;
typedef struct ooaofooa_ACT_UNR ooaofooa_ACT_UNR;
typedef struct ooaofooa_ACT_E ooaofooa_ACT_E;
typedef struct ooaofooa_ACT_FIW ooaofooa_ACT_FIW;
typedef struct ooaofooa_ACT_FIO ooaofooa_ACT_FIO;
typedef struct ooaofooa_ACT_CR ooaofooa_ACT_CR;
typedef struct ooaofooa_ACT_DEL ooaofooa_ACT_DEL;
typedef struct ooaofooa_ACT_RU ooaofooa_ACT_RU;
typedef struct ooaofooa_ACT_URU ooaofooa_ACT_URU;
typedef struct ooaofooa_ACT_IF ooaofooa_ACT_IF;
typedef struct ooaofooa_ACT_TFM ooaofooa_ACT_TFM;
typedef struct ooaofooa_ACT_WHL ooaofooa_ACT_WHL;
typedef struct ooaofooa_ACT_BRG ooaofooa_ACT_BRG;
typedef struct ooaofooa_ACT_EL ooaofooa_ACT_EL;
typedef struct ooaofooa_ACT_SR ooaofooa_ACT_SR;
typedef struct ooaofooa_ACT_RET ooaofooa_ACT_RET;
typedef struct ooaofooa_ACT_FNC ooaofooa_ACT_FNC;
typedef struct ooaofooa_ACT_IOP ooaofooa_ACT_IOP;
typedef struct ooaofooa_ACT_LNK ooaofooa_ACT_LNK;
typedef struct ooaofooa_ACT_SGN ooaofooa_ACT_SGN;
typedef struct ooaofooa_ACT_CTL ooaofooa_ACT_CTL;
typedef struct ooaofooa_ACT_BRK ooaofooa_ACT_BRK;
typedef struct ooaofooa_ACT_CON ooaofooa_ACT_CON;
typedef struct ooaofooa_ACT_SAB ooaofooa_ACT_SAB;
typedef struct ooaofooa_ACT_DAB ooaofooa_ACT_DAB;
typedef struct ooaofooa_ACT_FNB ooaofooa_ACT_FNB;
typedef struct ooaofooa_ACT_OPB ooaofooa_ACT_OPB;
typedef struct ooaofooa_ACT_BRB ooaofooa_ACT_BRB;
typedef struct ooaofooa_ACT_POB ooaofooa_ACT_POB;
typedef struct ooaofooa_ACT_PSB ooaofooa_ACT_PSB;
typedef struct ooaofooa_ACT_ROB ooaofooa_ACT_ROB;
typedef struct ooaofooa_ACT_RSB ooaofooa_ACT_RSB;
typedef struct ooaofooa_ACT_BIC ooaofooa_ACT_BIC;
typedef struct ooaofooa_ACT_TAB ooaofooa_ACT_TAB;
typedef struct ooaofooa_ACT_BIE ooaofooa_ACT_BIE;
typedef struct ooaofooa_S_EEEVT ooaofooa_S_EEEVT;
typedef struct ooaofooa_E_CEI ooaofooa_E_CEI;
typedef struct ooaofooa_E_GEN ooaofooa_E_GEN;
typedef struct ooaofooa_E_GPR ooaofooa_E_GPR;
typedef struct ooaofooa_E_CEA ooaofooa_E_CEA;
typedef struct ooaofooa_E_GAR ooaofooa_E_GAR;
typedef struct ooaofooa_E_GEC ooaofooa_E_GEC;
typedef struct ooaofooa_E_CEE ooaofooa_E_CEE;
typedef struct ooaofooa_E_GEE ooaofooa_E_GEE;
typedef struct ooaofooa_E_CEC ooaofooa_E_CEC;
typedef struct ooaofooa_E_ESS ooaofooa_E_ESS;
typedef struct ooaofooa_E_CES ooaofooa_E_CES;
typedef struct ooaofooa_E_GES ooaofooa_E_GES;
typedef struct ooaofooa_E_CSME ooaofooa_E_CSME;
typedef struct ooaofooa_E_GSME ooaofooa_E_GSME;
typedef struct ooaofooa_S_EEEDI ooaofooa_S_EEEDI;
typedef struct ooaofooa_PE_PE ooaofooa_PE_PE;
typedef struct ooaofooa_PE_VIS ooaofooa_PE_VIS;
typedef struct ooaofooa_PE_CVS ooaofooa_PE_CVS;
typedef struct ooaofooa_PE_SRS ooaofooa_PE_SRS;
typedef struct ooaofooa_PE_CRS ooaofooa_PE_CRS;
typedef struct ooaofooa_V_VAL ooaofooa_V_VAL;
typedef struct ooaofooa_V_PAR ooaofooa_V_PAR;
typedef struct ooaofooa_V_BIN ooaofooa_V_BIN;
typedef struct ooaofooa_V_LBO ooaofooa_V_LBO;
typedef struct ooaofooa_V_LRL ooaofooa_V_LRL;
typedef struct ooaofooa_V_TVL ooaofooa_V_TVL;
typedef struct ooaofooa_V_EDV ooaofooa_V_EDV;
typedef struct ooaofooa_V_ISR ooaofooa_V_ISR;
typedef struct ooaofooa_V_TRV ooaofooa_V_TRV;
typedef struct ooaofooa_V_UNY ooaofooa_V_UNY;
typedef struct ooaofooa_V_LST ooaofooa_V_LST;
typedef struct ooaofooa_V_LIN ooaofooa_V_LIN;
typedef struct ooaofooa_V_AVL ooaofooa_V_AVL;
typedef struct ooaofooa_V_IRF ooaofooa_V_IRF;
typedef struct ooaofooa_V_BRV ooaofooa_V_BRV;
typedef struct ooaofooa_V_VAR ooaofooa_V_VAR;
typedef struct ooaofooa_V_INT ooaofooa_V_INT;
typedef struct ooaofooa_V_INS ooaofooa_V_INS;
typedef struct ooaofooa_V_TRN ooaofooa_V_TRN;
typedef struct ooaofooa_V_SLR ooaofooa_V_SLR;
typedef struct ooaofooa_V_PVL ooaofooa_V_PVL;
typedef struct ooaofooa_V_FNV ooaofooa_V_FNV;
typedef struct ooaofooa_V_LEN ooaofooa_V_LEN;
typedef struct ooaofooa_V_LOC ooaofooa_V_LOC;
typedef struct ooaofooa_V_MVL ooaofooa_V_MVL;
typedef struct ooaofooa_V_AER ooaofooa_V_AER;
typedef struct ooaofooa_V_ALV ooaofooa_V_ALV;
typedef struct ooaofooa_V_MSV ooaofooa_V_MSV;
typedef struct ooaofooa_V_EPR ooaofooa_V_EPR;
typedef struct ooaofooa_V_SCV ooaofooa_V_SCV;
typedef struct ooaofooa_S_EEEDT ooaofooa_S_EEEDT;
typedef struct ooaofooa_PA_SIC ooaofooa_PA_SIC;
typedef struct ooaofooa_PA_SICP ooaofooa_PA_SICP;
typedef struct ooaofooa_PA_DIC ooaofooa_PA_DIC;
typedef struct ooaofooa_SQ_S ooaofooa_SQ_S;
typedef struct ooaofooa_SQ_LS ooaofooa_SQ_LS;
typedef struct ooaofooa_SQ_CIP ooaofooa_SQ_CIP;
typedef struct ooaofooa_SQ_COP ooaofooa_SQ_COP;
typedef struct ooaofooa_SQ_TM ooaofooa_SQ_TM;
typedef struct ooaofooa_SQ_TS ooaofooa_SQ_TS;
typedef struct ooaofooa_SQ_SIS ooaofooa_SQ_SIS;
typedef struct ooaofooa_SQ_MIS ooaofooa_SQ_MIS;
typedef struct ooaofooa_SQ_CP ooaofooa_SQ_CP;
typedef struct ooaofooa_SQ_P ooaofooa_SQ_P;
typedef struct ooaofooa_SQ_EEP ooaofooa_SQ_EEP;
typedef struct ooaofooa_SQ_FPP ooaofooa_SQ_FPP;
typedef struct ooaofooa_SQ_CPA ooaofooa_SQ_CPA;
typedef struct ooaofooa_SQ_AV ooaofooa_SQ_AV;
typedef struct ooaofooa_SQ_AP ooaofooa_SQ_AP;
typedef struct ooaofooa_SQ_IA ooaofooa_SQ_IA;
typedef struct ooaofooa_SQ_FA ooaofooa_SQ_FA;
typedef struct ooaofooa_SQ_FAV ooaofooa_SQ_FAV;
typedef struct ooaofooa_SQ_IAV ooaofooa_SQ_IAV;
typedef struct ooaofooa_IA_UCP ooaofooa_IA_UCP;
typedef struct ooaofooa_SQ_PP ooaofooa_SQ_PP;
typedef struct ooaofooa_SEN_E ooaofooa_SEN_E;
typedef struct ooaofooa_SEN_ALE ooaofooa_SEN_ALE;
typedef struct ooaofooa_SEN_DE ooaofooa_SEN_DE;
typedef struct ooaofooa_SEN_DCE ooaofooa_SEN_DCE;
typedef struct ooaofooa_SEN_RE ooaofooa_SEN_RE;
typedef struct ooaofooa_SQU_Q ooaofooa_SQU_Q;
typedef struct ooaofooa_SQU_D ooaofooa_SQU_D;
typedef struct ooaofooa_SQU_R ooaofooa_SQU_R;
typedef struct ooaofooa_SQU_DE ooaofooa_SQU_DE;
typedef struct ooaofooa_SQU_A ooaofooa_SQU_A;
typedef struct ooaofooa_SP_SP ooaofooa_SP_SP;
typedef struct ooaofooa_SP_SE ooaofooa_SP_SE;
typedef struct ooaofooa_SP_ALS ooaofooa_SP_ALS;
typedef struct ooaofooa_SP_DS ooaofooa_SP_DS;
typedef struct ooaofooa_SP_NS ooaofooa_SP_NS;
typedef struct ooaofooa_SR_SR ooaofooa_SR_SR;
typedef struct ooaofooa_SR_M ooaofooa_SR_M;
typedef struct ooaofooa_SR_CM ooaofooa_SR_CM;
typedef struct ooaofooa_SR_NM ooaofooa_SR_NM;
typedef struct ooaofooa_SR_CMR ooaofooa_SR_CMR;
typedef struct ooaofooa_S_DT ooaofooa_S_DT;

/* union of class declarations so we may derive largest class size */
#define ooaofooa_CLASS_U \
  char ooaofooa_dummy;\

/*
 * Internal enumerated and structured data types for component:  ooaofooa
 */

/*
 * Enumerated Data Type:  SynchronizationType
 */
typedef enum {
 ooaofooa_SynchronizationType__UNINITIALIZED__e = -1,
 ooaofooa_SynchronizationType_Pull_e = 0,
 ooaofooa_SynchronizationType_Push_e = 1
} sys_SynchronizationType_t;

/*
 * Enumerated Data Type:  SearchScope
 */
typedef enum {
 ooaofooa_SearchScope__UNINITIALIZED__e = -1,
 ooaofooa_SearchScope_EnclosingSystem_e = 0,
 ooaofooa_SearchScope_Universe_e = 1,
 ooaofooa_SearchScope_Selection_e = 2
} sys_SearchScope_t;

/*
 * Enumerated Data Type:  ElementTypeConstants
 */
typedef enum {
 ooaofooa_ElementTypeConstants__UNINITIALIZED__e = -1,
 ooaofooa_ElementTypeConstants_FUNCTION_e = 0,
 ooaofooa_ElementTypeConstants_CLASS_e = 1,
 ooaofooa_ElementTypeConstants_DATATYPE_e = 2,
 ooaofooa_ElementTypeConstants_COMPONENT_e = 3,
 ooaofooa_ElementTypeConstants_EE_e = 4,
 ooaofooa_ElementTypeConstants_INTERFACE_e = 5,
 ooaofooa_ElementTypeConstants_PACKAGE_e = 6,
 ooaofooa_ElementTypeConstants_PORT_e = 7,
 ooaofooa_ElementTypeConstants_ASSOCIATION_e = 8,
 ooaofooa_ElementTypeConstants_CONSTANT_e = 9,
 ooaofooa_ElementTypeConstants_ACTIVITY_PARTITION_e = 10,
 ooaofooa_ElementTypeConstants_ACTIVITY_EDGE_e = 11,
 ooaofooa_ElementTypeConstants_TIMING_MARK_e = 12,
 ooaofooa_ElementTypeConstants_INTERACTION_PARTICIPANT_e = 13,
 ooaofooa_ElementTypeConstants_TIME_SPAN_e = 14,
 ooaofooa_ElementTypeConstants_USE_CASE_ASSOCIATION_e = 15,
 ooaofooa_ElementTypeConstants_MESSAGE_e = 16,
 ooaofooa_ElementTypeConstants_ACTIVITY_NODE_e = 17,
 ooaofooa_ElementTypeConstants_IMPORTED_CLASS_e = 18,
 ooaofooa_ElementTypeConstants_INTERFACE_REFERENCE_e = 19,
 ooaofooa_ElementTypeConstants_COMPONENT_REFERENCE_e = 20,
 ooaofooa_ElementTypeConstants_SATISFACTION_e = 21,
 ooaofooa_ElementTypeConstants_DELEGATION_e = 22
} sys_ElementTypeConstants_t;

/*
 * Enumerated Data Type:  StateEnum
 */
typedef enum {
 ooaofooa_StateEnum__UNINITIALIZED__e = -1,
 ooaofooa_StateEnum_Disabled_e = 0,
 ooaofooa_StateEnum_Enabled_e = 1
} sys_StateEnum_t;

/*
 * Enumerated Data Type:  IFDirectionType
 */
typedef enum {
 ooaofooa_IFDirectionType__UNINITIALIZED__e = -1,
 ooaofooa_IFDirectionType_ClientServer_e = 0,
 ooaofooa_IFDirectionType_ServerClient_e = 1
} sys_IFDirectionType_t;

/*
 * Enumerated Data Type:  EventProcessType
 */
typedef enum {
 ooaofooa_EventProcessType__UNINITIALIZED__e = -1,
 ooaofooa_EventProcessType_CantHappen_e = 0,
 ooaofooa_EventProcessType_Dequeued_e = 1,
 ooaofooa_EventProcessType_Enqueued_e = 2,
 ooaofooa_EventProcessType_Ignored_e = 3
} sys_EventProcessType_t;

/*
 * Enumerated Data Type:  StateChangeType
 */
typedef enum {
 ooaofooa_StateChangeType__UNINITIALIZED__e = -1,
 ooaofooa_StateChangeType_Entry_e = 0,
 ooaofooa_StateChangeType_Exit_e = 1
} sys_StateChangeType_t;

/*
 * Enumerated Data Type:  Breakpoint_Type
 */
typedef enum {
 ooaofooa_Breakpoint_Type__UNINITIALIZED__e = -1,
 ooaofooa_Breakpoint_Type_Association_e = 0,
 ooaofooa_Breakpoint_Type_Attribute_e = 1,
 ooaofooa_Breakpoint_Type_Event_BP_e = 2,
 ooaofooa_Breakpoint_Type_Instance_e = 3,
 ooaofooa_Breakpoint_Type_OAL_e = 4,
 ooaofooa_Breakpoint_Type_State_e = 5
} sys_Breakpoint_Type_t;

/*
 * Enumerated Data Type:  RunStateType
 */
typedef enum {
 ooaofooa_RunStateType__UNINITIALIZED__e = -1,
 ooaofooa_RunStateType_Running_e = 0,
 ooaofooa_RunStateType_Stepping_e = 1,
 ooaofooa_RunStateType_Suspended_e = 2,
 ooaofooa_RunStateType_Terminated_e = 3
} sys_RunStateType_t;

/*
 * Enumerated Data Type:  OalConstants
 */
typedef enum {
 ooaofooa_OalConstants__UNINITIALIZED__e = -1,
 ooaofooa_OalConstants_BRIDGE_TYPE_e = 0,
 ooaofooa_OalConstants_FUNCTION_TYPE_e = 1,
 ooaofooa_OalConstants_IB_OPERATION_TYPE_e = 2,
 ooaofooa_OalConstants_MDA_TYPE_e = 3,
 ooaofooa_OalConstants_OPERATION_TYPE_e = 4,
 ooaofooa_OalConstants_PROV_OPERATION_TYPE_e = 5,
 ooaofooa_OalConstants_PROV_SIGNAL_TYPE_e = 6,
 ooaofooa_OalConstants_REQ_OPERATION_TYPE_e = 7,
 ooaofooa_OalConstants_REQ_SIGNAL_TYPE_e = 8,
 ooaofooa_OalConstants_STATE_TYPE_e = 9,
 ooaofooa_OalConstants_TRANSITION_TYPE_e = 10
} sys_OalConstants_t;

/*
 * Enumerated Data Type:  Visibility
 */
typedef enum {
 ooaofooa_Visibility__UNINITIALIZED__e = -1,
 ooaofooa_Visibility_Private_e = 0,
 ooaofooa_Visibility_Public_e = 1,
 ooaofooa_Visibility_Protected_e = 2
} sys_Visibility_t;

/*
 * Enumerated Data Type:  ModelEventNotification
 */
typedef enum {
 ooaofooa_ModelEventNotification__UNINITIALIZED__e = -1,
 ooaofooa_ModelEventNotification_DELTA_ATTRIBUTE_CHANGE_e = 1024,
 ooaofooa_ModelEventNotification_DELTA_DELETE_e = 2048,
 ooaofooa_ModelEventNotification_DELTA_ELEMENT_RELATED_e = 512,
 ooaofooa_ModelEventNotification_DELTA_ELEMENT_UNRELATED_e = 256,
 ooaofooa_ModelEventNotification_DELTA_NEW_e = 4096,
 ooaofooa_ModelEventNotification_MASK_ALL_DELTAS_e = 7936,
 ooaofooa_ModelEventNotification_MASK_ALL_EVENTS_e = 127,
 ooaofooa_ModelEventNotification_MASK_NO_DELTAS_e = 255,
 ooaofooa_ModelEventNotification_MASK_NO_EVENTS_e = 0,
 ooaofooa_ModelEventNotification_MODEL_ELEMENT_CHANGED_e = 64,
 ooaofooa_ModelEventNotification_MODEL_ELEMENT_LOADED_e = 8,
 ooaofooa_ModelEventNotification_MODEL_ELEMENT_PRE_DELETE_e = 4,
 ooaofooa_ModelEventNotification_MODEL_ELEMENT_PRE_RELOAD_e = 16,
 ooaofooa_ModelEventNotification_MODEL_ELEMENT_RELOAD_e = 32,
 ooaofooa_ModelEventNotification_MODEL_ELEMENT_UNLOADED_e = 2,
 ooaofooa_ModelEventNotification_MODEL_EXECUTION_STOPPED_e = 128,
 ooaofooa_ModelEventNotification_UNKNOWN_e = 1
} sys_ModelEventNotification_t;

/*
 * Enumerated Data Type:  Scope
 */
typedef enum {
 ooaofooa_Scope__UNINITIALIZED__e = -1,
 ooaofooa_Scope_Class_e = 0,
 ooaofooa_Scope_Instance_e = 1
} sys_Scope_t;

/*
 * Enumerated Data Type:  ParseStatus
 */
typedef enum {
 ooaofooa_ParseStatus__UNINITIALIZED__e = -1,
 ooaofooa_ParseStatus_doNotParse_e = 0,
 ooaofooa_ParseStatus_parseInitial_e = 3,
 ooaofooa_ParseStatus_parseSuccessful_e = 1,
 ooaofooa_ParseStatus_parseUnsuccessful_e = 2
} sys_ParseStatus_t;

/*
 * Enumerated Data Type:  End
 */
typedef enum {
 ooaofooa_End__UNINITIALIZED__e = -1,
 ooaofooa_End_End_e = 0,
 ooaofooa_End_End_Fixed_e = 1,
 ooaofooa_End_Floating_e = 2,
 ooaofooa_End_Middle_e = 3,
 ooaofooa_End_None_e = 4,
 ooaofooa_End_Start_e = 5,
 ooaofooa_End_Start_Fixed_e = 6
} sys_End_t;

/*
 * Enumerated Data Type:  Style
 */
typedef enum {
 ooaofooa_Style__UNINITIALIZED__e = -1,
 ooaofooa_Style_Box_e = 0,
 ooaofooa_Style_Broken_e = 1,
 ooaofooa_Style_BullsEye_e = 2,
 ooaofooa_Style_Circle_e = 3,
 ooaofooa_Style_CircleCross_e = 4,
 ooaofooa_Style_Component_e = 5,
 ooaofooa_Style_ComponentContainer_e = 6,
 ooaofooa_Style_ConcavePentagon_e = 7,
 ooaofooa_Style_ConvexPentagon_e = 8,
 ooaofooa_Style_Cross_e = 9,
 ooaofooa_Style_Dash_e = 10,
 ooaofooa_Style_DashDouble_e = 11,
 ooaofooa_Style_Diamond_e = 12,
 ooaofooa_Style_Ellipse_e = 13,
 ooaofooa_Style_FilledArrow_e = 14,
 ooaofooa_Style_FilledCircle_e = 15,
 ooaofooa_Style_FilledSquare_e = 16,
 ooaofooa_Style_Folder_e = 17,
 ooaofooa_Style_Hourglass_e = 18,
 ooaofooa_Style_None_e = 19,
 ooaofooa_Style_OpenArrow_e = 20,
 ooaofooa_Style_RoundBox_e = 21,
 ooaofooa_Style_SemiCircle_e = 22,
 ooaofooa_Style_Solid_e = 23,
 ooaofooa_Style_StickFigure_e = 24,
 ooaofooa_Style_Triangle_e = 25,
 ooaofooa_Style_Underlined_e = 26,
 ooaofooa_Style_BoxArrowIn_e = 27,
 ooaofooa_Style_BoxArrowOut_e = 28,
 ooaofooa_Style_BoxArrowInOut_e = 29
} sys_Style_t;

/*
 * Enumerated Data Type:  Justification
 */
typedef enum {
 ooaofooa_Justification__UNINITIALIZED__e = -1,
 ooaofooa_Justification_Bottom_e = 0,
 ooaofooa_Justification_Center_e = 1,
 ooaofooa_Justification_Center_in_X_e = 2,
 ooaofooa_Justification_Floating_e = 3,
 ooaofooa_Justification_Left_e = 4,
 ooaofooa_Justification_Right_e = 5
} sys_Justification_t;

/*
 * Enumerated Data Type:  Multiplicity
 */
typedef enum {
 ooaofooa_Multiplicity__UNINITIALIZED__e = -1,
 ooaofooa_Multiplicity_Many_e = 0,
 ooaofooa_Multiplicity_One_e = 1,
 ooaofooa_Multiplicity_Unknown_e = 2
} sys_Multiplicity_t;


/*
 * UML Domain Functions (Synchronous Services)
 */
void ooaofooa_AddTemplateParameter( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_AssignDirectToUDTPackage( c_t[ESCHER_SYS_MAX_STRING_LEN] );
c_t * ooaofooa_AutoInitializeUniqueIDs( c_t[ESCHER_SYS_MAX_STRING_LEN], ooaofooa_TE_CLASS * );
void ooaofooa_CreateSpecialWhereClauseInstances( ooaofooa_TE_SYS * );
c_t * ooaofooa_CreateSpecialWhereComparisonArguments( ooaofooa_O_ID *, ooaofooa_TE_CLASS * );
ooaofooa_EP_PKG * ooaofooa_EP_PKG_getContainingPackage( ooaofooa_C_C * );
void ooaofooa_EnableTasking( c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN] );
c_t * ooaofooa_ExpandNonOptimizedSpecialWhereComparison( ooaofooa_O_OBJ *, c_t[ESCHER_SYS_MAX_STRING_LEN], const bool );
ooaofooa_TE_ABA * ooaofooa_FactoryTE_ABA( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], ooaofooa_TE_C *, ooaofooa_TE_DT *, Escher_ObjectSet_s * );
ooaofooa_TE_CLASS * ooaofooa_FactoryTE_CLASS( ooaofooa_O_OBJ *, ooaofooa_TE_C * );
ooaofooa_TE_DIM * ooaofooa_FactoryTE_DIM( ooaofooa_TE_DIM *, ooaofooa_S_DIM * );
void ooaofooa_FactoryTE_LNK( ooaofooa_ACT_LNK * );
ooaofooa_TE_MACT * ooaofooa_FactoryTE_MACT( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], ooaofooa_TE_C *, ooaofooa_TE_DT *, Escher_ObjectSet_s *, ooaofooa_TE_PO * );
ooaofooa_TE_PARM * ooaofooa_FactoryTE_PARM( const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], Escher_ObjectSet_s *, ooaofooa_TE_DT * );
void ooaofooa_FactoryTE_SM( const bool, ooaofooa_SM_SM *, ooaofooa_TE_CLASS * );
ooaofooa_TE_DT * ooaofooa_GetAttributeCodeGenType( ooaofooa_O_ATTR * );
ooaofooa_S_DT * ooaofooa_GetBaseTypeForUDT( ooaofooa_S_UDT * );
c_t * ooaofooa_GetDomainDispatcherTableName( c_t[ESCHER_SYS_MAX_STRING_LEN] );
c_t * ooaofooa_GetDomainTypeIDFromString( c_t[ESCHER_SYS_MAX_STRING_LEN] );
c_t * ooaofooa_GetFixedSizeClassExtentInfo( ooaofooa_TE_CLASS * );
c_t * ooaofooa_GetNavigateLinkMethodName( ooaofooa_O_OBJ *, ooaofooa_R_REL *, c_t[ESCHER_SYS_MAX_STRING_LEN], ooaofooa_O_OBJ * );
c_t * ooaofooa_GetPersistentCheckMarkPostName( void );
c_t * ooaofooa_GetPersistentPostLinkName( void );
c_t * ooaofooa_GetRelateToName( ooaofooa_O_OBJ *, ooaofooa_R_REL *, c_t[ESCHER_SYS_MAX_STRING_LEN] );
c_t * ooaofooa_GetRelationshipDataMemberName( ooaofooa_O_OBJ *, ooaofooa_R_REL *, c_t[ESCHER_SYS_MAX_STRING_LEN] );
c_t * ooaofooa_GetRelationshipSuffix( ooaofooa_R_REL *, c_t[ESCHER_SYS_MAX_STRING_LEN], ooaofooa_O_OBJ * );
c_t * ooaofooa_GetSuperTypePolymorphicEventMethodName( ooaofooa_R_REL *, ooaofooa_TE_CLASS * );
c_t * ooaofooa_GetUnrelateFromName( ooaofooa_O_OBJ *, ooaofooa_R_REL *, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MapClassToTask( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );
void ooaofooa_MapDataTypeAsPointer( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
bool ooaofooa_MapUserSpecifiedDataTypePrecision( c_t[ESCHER_SYS_MAX_STRING_LEN], ooaofooa_TE_DT * );
void ooaofooa_MarkActionStatementTracingOn( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkAllPortsPolymorphic( void );
void ooaofooa_MarkAsChannel( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkClassOperationTranslationOff( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkClassToTask( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );
void ooaofooa_MarkComponentAsChannel( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkComponentAsRealized( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkComponentWithTemplate( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkEmptyHandleDetectionOn( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkExcludeObjectFromCodeGen( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkExcludeSubsystemFromCodeGen( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkFirstPassOptimizationsOff( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkFunctionTranslationOff( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkInitializationFunction( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkInterfacePrefix( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkInterfaceWithTemplate( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkMessageTracingOn( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkNonPersistentClass( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkObjectExtentSize( c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkObjectTraceOff( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkObjectTraceOn( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkPEIsDefinedInData( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkPersistenceCacheDepth( const i_t, const i_t );
void ooaofooa_MarkPersistentClass( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkPortWiring( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkPortWiringForPort( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], Escher_ObjectSet_s * );
void ooaofooa_MarkPriorityEvent( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );
void ooaofooa_MarkReadOnly( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkStateActionCommentBlocksEnabled( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkStateActionStatementCommentsDisabled( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkStateTransitionTracingOn( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkStaticInstancePopulation( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkSystemCPortType( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkSystemConfigurationPackage( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_MarkSystemObjectDefaultExtentSize( const i_t );
c_t * ooaofooa_PEIGetRelationshipSetContainerName( ooaofooa_TE_CLASS * );
void ooaofooa_SM_SM_mark_valid( void );
void ooaofooa_SetTPV( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_SetTPV_for_channel_connection( const i_t, ooaofooa_TE_IIR *, c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_SetTaskPriority( c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );
void ooaofooa_SetTemplateParameter( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_TE_ABA_rollup( void );
ooaofooa_TE_C * ooaofooa_TE_C_getContainingComponent( ooaofooa_EP_PKG * );
ooaofooa_TE_C * ooaofooa_TE_C_insert( ooaofooa_TE_C *, ooaofooa_TE_C * );
void ooaofooa_TE_C_mark_nested_system( Escher_ObjectSet_s * );
ooaofooa_TE_C * ooaofooa_TE_C_sort( Escher_ObjectSet_s * );
void ooaofooa_TE_EE_init( ooaofooa_TE_C *, ooaofooa_TE_EE * );
ooaofooa_TE_PARM * ooaofooa_TE_PARM_duplicate( ooaofooa_TE_PARM * );
bool ooaofooa_TE_REL_IsLeftFormalizer( ooaofooa_O_OBJ *, ooaofooa_R_REL *, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_TE_TXN_used( void );
ooaofooa_TM_SYSTAG * ooaofooa_TM_SYSTAG_select( void );
i_t ooaofooa_T_atoi( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_TagActionStatementTracingOn( void );
void ooaofooa_TagClassOperationTranslationOff( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_TagCollectionsFlavor( const i_t );
void ooaofooa_TagDataTypePrecision( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_TagDispatchFlavor( const i_t );
void ooaofooa_TagDynamicMemoryAllocationOn( const i_t );
void ooaofooa_TagEmptyHandleDetectionOn( void );
void ooaofooa_TagEnumeratorDiscreteValue( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_TagExcludeObjectFromCodeGen( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_TagExcludeSubsystemFromCodeGen( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_TagFirstPassOptimizationsOff( void );
void ooaofooa_TagFunctionTranslationOff( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_TagInitializationFunction( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_TagInstanceLoading( void );
void ooaofooa_TagInterleavedBridgeDataSize( const i_t );
void ooaofooa_TagMaximumInterleavedBridges( const i_t );
void ooaofooa_TagMaximumNonSelfDirectedEvents( const i_t );
void ooaofooa_TagMaximumPendingOoaTimers( const i_t );
void ooaofooa_TagMaximumRelationshipExtentSize( const i_t );
void ooaofooa_TagMaximumSelectionExtentSize( const i_t );
void ooaofooa_TagMaximumSelfDirectedEvents( const i_t );
void ooaofooa_TagMaximumStringLength( const i_t );
void ooaofooa_TagNonPersistentClass( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_TagObjectExtentSize( const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_TagObjectTraceOff( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_TagObjectTraceOn( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_TagPEIsDefinedInData( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_TagPersistentClass( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_TagPriorityEvent( c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );
void ooaofooa_TagReadOnly( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_TagStateActionCommentBlocksEnabled( void );
void ooaofooa_TagStateActionStatementCommentsDisabled( void );
void ooaofooa_TagStateActionVariableNamesEnabled( void );
void ooaofooa_TagStateTransitionTracingOn( void );
void ooaofooa_TagStaticInstancePopulation( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_TagSyncServiceSafeForInterrupts( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_TagSystemObjectDefaultExtentSize( const i_t );
void ooaofooa_TagTransformerGeneration( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_TagUninitializedEnumerationValue( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_TagVerboseReflexivePhrasesEnabled( void );
c_t * ooaofooa_UserSuppliedDataTypeIncludes( void );
void ooaofooa_VFBEnable( void );
ooaofooa_V_VAL * ooaofooa_V_VAL_drill_for_V_VAL_root( ooaofooa_V_VAL * );
void ooaofooa_WireRealizeExternalEntity( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_WireRealizedExternalEntity( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_WireSynchServiceOoaBridge( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_a0( void );
void ooaofooa_aba_code_append( c_t[ESCHER_SYS_MAX_STRING_LEN], ooaofooa_TE_ABA * );
void ooaofooa_association_R_OIR_mark_navigated( void );
void ooaofooa_association_mark_link_unlink_needed( void );
ooaofooa_TE_LNK * ooaofooa_associator_TE_LNK( ooaofooa_TE_LNK *, ooaofooa_TE_LNK * );
void ooaofooa_attr_analyze_accesses( void );
void ooaofooa_attr_analyze_codegen( ooaofooa_TE_SYS * );
void ooaofooa_blck_xlate( ooaofooa_TE_ABA *, ooaofooa_TE_BLK *, const bool );
void ooaofooa_blk_deallocation_append( c_t[ESCHER_SYS_MAX_STRING_LEN], ooaofooa_TE_BLK * );
void ooaofooa_blk_declaration_append( c_t[ESCHER_SYS_MAX_STRING_LEN], ooaofooa_TE_BLK * );
c_t * ooaofooa_blk_indentwhitespace( const i_t );
ooaofooa_S_BPARM * ooaofooa_bparm_insert( ooaofooa_S_BPARM *, ooaofooa_S_BPARM * );
void ooaofooa_bparm_sort( Escher_ObjectSet_s * );
void ooaofooa_callout_factory( ooaofooa_TE_CALLOUT * );
ooaofooa_TE_CLASS * ooaofooa_class_insert( ooaofooa_TE_CLASS *, ooaofooa_TE_CLASS * );
void ooaofooa_class_smt_crdel_check( Escher_ObjectSet_s * );
void ooaofooa_class_smt_created( void );
void ooaofooa_class_smt_deleted( void );
ooaofooa_TE_CLASS * ooaofooa_class_sort( Escher_ObjectSet_s * );
void ooaofooa_container_factory( ooaofooa_TE_CONTAINER * );
i_t ooaofooa_containoid_select_many_count( void );
void ooaofooa_copyright_factory( ooaofooa_TE_COPYRIGHT * );
ooaofooa_TE_LNK * ooaofooa_detect_and_insert_associator_TE_LNK( ooaofooa_ACT_LNK *, ooaofooa_ACT_LNK *, ooaofooa_TE_LNK *, ooaofooa_O_OBJ *, ooaofooa_TE_LNK * );
void ooaofooa_dlist_factory( ooaofooa_TE_DLIST * );
void ooaofooa_dma_factory( ooaofooa_TE_DMA * );
void ooaofooa_docgen( void );
void ooaofooa_docgen_activity_elements( ooaofooa_DOC_SEC *, ooaofooa_EP_PKG *, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_docgen_associations( ooaofooa_DOC_SEC *, ooaofooa_EP_PKG *, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_docgen_classes( ooaofooa_DOC_SEC *, ooaofooa_EP_PKG *, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_docgen_components( Escher_ObjectSet_s *, ooaofooa_DOC_SEC * );
void ooaofooa_docgen_datatypes( ooaofooa_DOC_SEC *, ooaofooa_EP_PKG *, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_docgen_external_entities( ooaofooa_DOC_SEC *, ooaofooa_EP_PKG *, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_docgen_functions( ooaofooa_DOC_SEC *, ooaofooa_EP_PKG *, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_docgen_interaction_participants( ooaofooa_DOC_SEC *, ooaofooa_EP_PKG *, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_docgen_interfaces( Escher_ObjectSet_s *, ooaofooa_DOC_SEC * );
void ooaofooa_docgen_load_project( void );
void ooaofooa_docgen_packages( ooaofooa_DOC_SEC *, Escher_ObjectSet_s * );
void ooaofooa_docgen_system( void );
ooaofooa_TE_EE * ooaofooa_ee_insert( ooaofooa_TE_EE *, ooaofooa_TE_EE * );
ooaofooa_TE_EE * ooaofooa_ee_sort( Escher_ObjectSet_s * );
void ooaofooa_eq_factory( ooaofooa_TE_EQ * );
void ooaofooa_event_queue_analyze_needed( void );
void ooaofooa_event_smt_used( void );
ooaofooa_SM_EVTDI * ooaofooa_evtdi_insert( ooaofooa_SM_EVTDI *, ooaofooa_SM_EVTDI * );
void ooaofooa_evtdi_sort( Escher_ObjectSet_s * );
void ooaofooa_extent_factory( ooaofooa_TE_EXTENT * );
void ooaofooa_file_factory( ooaofooa_TE_FILE * );
ooaofooa_TE_PARM * ooaofooa_gen_parameter_list( c_t[ESCHER_SYS_MAX_STRING_LEN], const bool, Escher_ObjectSet_s * );
void ooaofooa_gen_value( ooaofooa_V_VAL * );
c_t * ooaofooa_getContainerListForC_C( ooaofooa_C_C *, c_t[ESCHER_SYS_MAX_STRING_LEN] );
c_t * ooaofooa_getContainerListForEP_PKG( c_t[ESCHER_SYS_MAX_STRING_LEN], ooaofooa_EP_PKG * );
c_t * ooaofooa_getContainerListForS_SYS( c_t[ESCHER_SYS_MAX_STRING_LEN], ooaofooa_S_SYS * );
void ooaofooa_ilb_factory( ooaofooa_TE_ILB * );
void ooaofooa_instance_factory( ooaofooa_TE_INSTANCE * );
bool ooaofooa_is_reflexive( ooaofooa_R_REL * );
ooaofooa_TE_MACT * ooaofooa_mact_insert( ooaofooa_TE_MACT *, ooaofooa_TE_MACT * );
void ooaofooa_mact_sort( Escher_ObjectSet_s * );
void ooaofooa_mark_all( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_oal_translate( void );
void ooaofooa_parm_sort( void );
void ooaofooa_persist_factory( ooaofooa_TE_PERSIST * );
ooaofooa_C_PP * ooaofooa_pp_insert( ooaofooa_C_PP *, ooaofooa_C_PP * );
void ooaofooa_pp_sort( Escher_ObjectSet_s * );
void ooaofooa_prefix_factory( ooaofooa_TE_PREFIX * );
void ooaofooa_print_v_pars( ooaofooa_V_PAR * );
c_t * ooaofooa_q_render_msg( const bool, ooaofooa_TE_MACT *, Escher_ObjectSet_s *, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_rel_pseudoformalize( void );
void ooaofooa_relinfo_factory( ooaofooa_TE_RELINFO * );
void ooaofooa_relstore_factory( ooaofooa_TE_RELSTORE * );
void ooaofooa_selection_whereclause_identify_special( void );
void ooaofooa_set_factory( ooaofooa_TE_SET * );
void ooaofooa_slist_factory( ooaofooa_TE_SLIST * );
c_t * ooaofooa_smt_assign( ooaofooa_ACT_AI *, ooaofooa_TE_SMT * );
void ooaofooa_smt_assigns( void );
c_t * ooaofooa_smt_break( ooaofooa_ACT_BRK *, ooaofooa_TE_SMT * );
void ooaofooa_smt_breaks( void );
c_t * ooaofooa_smt_bridge( ooaofooa_ACT_BRG *, ooaofooa_TE_SMT * );
void ooaofooa_smt_bridges( void );
void ooaofooa_smt_buffer_append( c_t[ESCHER_SYS_MAX_STRING_LEN], ooaofooa_TE_SMT * );
c_t * ooaofooa_smt_continue( ooaofooa_ACT_CON *, ooaofooa_TE_SMT * );
void ooaofooa_smt_continues( void );
c_t * ooaofooa_smt_control( ooaofooa_ACT_CTL *, ooaofooa_TE_SMT * );
void ooaofooa_smt_controls( void );
c_t * ooaofooa_smt_create_event( ooaofooa_E_CSME *, c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], ooaofooa_TE_SMT * );
void ooaofooa_smt_create_events_to_class( void );
void ooaofooa_smt_create_events_to_creator( void );
void ooaofooa_smt_create_events_to_instance( void );
c_t * ooaofooa_smt_create_instance( ooaofooa_ACT_CR *, ooaofooa_TE_SMT * );
void ooaofooa_smt_create_instances( void );
c_t * ooaofooa_smt_delete_instance( ooaofooa_ACT_DEL *, ooaofooa_TE_SMT * );
void ooaofooa_smt_delete_instances( void );
c_t * ooaofooa_smt_elif( ooaofooa_ACT_EL *, ooaofooa_TE_SMT * );
void ooaofooa_smt_elifs( void );
c_t * ooaofooa_smt_else( ooaofooa_ACT_E *, ooaofooa_TE_SMT * );
void ooaofooa_smt_elses( void );
c_t * ooaofooa_smt_for( ooaofooa_ACT_FOR *, ooaofooa_TE_SMT * );
void ooaofooa_smt_fors( void );
c_t * ooaofooa_smt_function( ooaofooa_ACT_FNC *, ooaofooa_TE_SMT * );
void ooaofooa_smt_functions( void );
c_t * ooaofooa_smt_generate_class_event( ooaofooa_E_GSME *, ooaofooa_TE_SMT * );
void ooaofooa_smt_generate_class_events( void );
void ooaofooa_smt_generate_creator_event( ooaofooa_E_GEC * );
void ooaofooa_smt_generate_creator_events( void );
c_t * ooaofooa_smt_generate_event( ooaofooa_E_GEN *, ooaofooa_TE_SMT * );
void ooaofooa_smt_generate_event_to_class( ooaofooa_E_GAR * );
void ooaofooa_smt_generate_events( void );
c_t * ooaofooa_smt_generate_precreated_event( ooaofooa_E_GPR *, ooaofooa_TE_SMT * );
void ooaofooa_smt_generate_precreated_events( void );
c_t * ooaofooa_smt_if( ooaofooa_ACT_IF *, ooaofooa_TE_SMT * );
void ooaofooa_smt_ifs( void );
void ooaofooa_smt_iop( ooaofooa_ACT_IOP * );
void ooaofooa_smt_iops( void );
c_t * ooaofooa_smt_operate( ooaofooa_ACT_TFM *, ooaofooa_TE_SMT * );
void ooaofooa_smt_operates( void );
c_t * ooaofooa_smt_relate( ooaofooa_ACT_REL *, ooaofooa_TE_SMT * );
c_t * ooaofooa_smt_relate_using( ooaofooa_ACT_RU *, ooaofooa_TE_SMT * );
void ooaofooa_smt_relate_usings( void );
void ooaofooa_smt_relates( void );
c_t * ooaofooa_smt_return( ooaofooa_ACT_RET *, ooaofooa_TE_SMT * );
void ooaofooa_smt_returns( void );
c_t * ooaofooa_smt_select( ooaofooa_ACT_FIO *, ooaofooa_TE_SMT * );
c_t * ooaofooa_smt_select_related( ooaofooa_ACT_SEL *, const bool, ooaofooa_TE_SMT * );
void ooaofooa_smt_select_related_wheres( void );
void ooaofooa_smt_select_relateds( void );
c_t * ooaofooa_smt_select_where( ooaofooa_ACT_FIW *, ooaofooa_TE_SMT * );
void ooaofooa_smt_select_wheres( void );
void ooaofooa_smt_selects( void );
void ooaofooa_smt_sgn( ooaofooa_ACT_SGN * );
void ooaofooa_smt_sgns( void );
void ooaofooa_smt_translate_control_statements( void );
void ooaofooa_smt_translate_other_statements( void );
c_t * ooaofooa_smt_unrelate( ooaofooa_ACT_UNR *, ooaofooa_TE_SMT * );
c_t * ooaofooa_smt_unrelate_using( ooaofooa_ACT_URU *, ooaofooa_TE_SMT * );
void ooaofooa_smt_unrelate_usings( void );
void ooaofooa_smt_unrelates( void );
c_t * ooaofooa_smt_while( ooaofooa_ACT_WHL *, ooaofooa_TE_SMT * );
void ooaofooa_smt_whiles( void );
ooaofooa_S_SPARM * ooaofooa_sparm_insert( ooaofooa_S_SPARM *, ooaofooa_S_SPARM * );
void ooaofooa_sparm_sort( Escher_ObjectSet_s * );
void ooaofooa_string_factory( ooaofooa_TE_STRING * );
ooaofooa_TE_SYNC * ooaofooa_sync_insert( ooaofooa_TE_SYNC *, ooaofooa_TE_SYNC * );
ooaofooa_TE_SYNC * ooaofooa_sync_sort( Escher_ObjectSet_s * );
void ooaofooa_sys_analyze( ooaofooa_TE_SYS * );
void ooaofooa_sys_populate( void );
void ooaofooa_sys_singletons( void );
c_t * ooaofooa_t_oal_smt_event_parameters( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void ooaofooa_target_factory( ooaofooa_TE_TARGET * );
void ooaofooa_te_c_CollectLimits( ooaofooa_TE_C * );
void ooaofooa_te_parm_RenderParameters( ooaofooa_TE_ABA *, Escher_ObjectSet_s * );
void ooaofooa_thread_factory( ooaofooa_TE_THREAD * );
void ooaofooa_tim_factory( ooaofooa_TE_TIM * );
i_t ooaofooa_timer_analyze_starts( void );
ooaofooa_O_TPARM * ooaofooa_tparm_insert( ooaofooa_O_TPARM *, ooaofooa_O_TPARM * );
void ooaofooa_tparm_sort( Escher_ObjectSet_s * );
void ooaofooa_trace_factory( ooaofooa_TE_TRACE * );
void ooaofooa_typemap_factory( ooaofooa_TE_TYPEMAP * );
c_t * ooaofooa_v_val_find_v_slr_return_buffer( ooaofooa_V_VAL * );
void ooaofooa_val_actual_parameters( void );
void ooaofooa_val_array_element_reference( ooaofooa_V_AER * );
void ooaofooa_val_array_element_references( void );
void ooaofooa_val_array_length_value( ooaofooa_V_ALV * );
void ooaofooa_val_array_length_values( void );
void ooaofooa_val_attribute_value( ooaofooa_V_AVL * );
void ooaofooa_val_attribute_values( void );
void ooaofooa_val_binary_op_value( ooaofooa_V_BIN * );
void ooaofooa_val_binary_op_values( void );
void ooaofooa_val_bridge_value( ooaofooa_V_BRV * );
void ooaofooa_val_bridge_values( void );
void ooaofooa_val_constant_values( void );
void ooaofooa_val_event_values( void );
void ooaofooa_val_inst_ref_set_values( void );
void ooaofooa_val_instance_reference_values( void );
void ooaofooa_val_literal_boolean_values( void );
void ooaofooa_val_literal_enumerations( void );
void ooaofooa_val_literal_integer_values( void );
void ooaofooa_val_literal_real_values( void );
void ooaofooa_val_literal_string_values( void );
void ooaofooa_val_member_value( ooaofooa_V_MVL * );
void ooaofooa_val_member_values( void );
void ooaofooa_val_message_value( ooaofooa_V_MSV * );
void ooaofooa_val_message_values( void );
void ooaofooa_val_parameter_values( void );
void ooaofooa_val_selection_test_values( void );
void ooaofooa_val_synch_service_value( ooaofooa_V_FNV * );
void ooaofooa_val_synch_service_values( void );
void ooaofooa_val_transform_value( ooaofooa_V_TRV * );
void ooaofooa_val_transform_values( void );
void ooaofooa_val_transient_values( void );
void ooaofooa_val_translate( void );
void ooaofooa_val_unary_op_value( ooaofooa_V_UNY * );
void ooaofooa_val_unary_op_values( void );
void ooaofooa_where_clause_mark_selected_attributes( ooaofooa_V_BIN * );


#include "T_bridge.h"
#include "POP_bridge.h"
#include "LOG_bridge.h"
#include "ooaofooa.h"
#include "ooaofooa_MSG_M_class.h"
#include "ooaofooa_MSG_A_class.h"
#include "ooaofooa_MSG_O_class.h"
#include "ooaofooa_MSG_B_class.h"
#include "ooaofooa_MSG_E_class.h"
#include "ooaofooa_MSG_F_class.h"
#include "ooaofooa_MSG_BA_class.h"
#include "ooaofooa_MSG_OA_class.h"
#include "ooaofooa_MSG_FA_class.h"
#include "ooaofooa_MSG_EA_class.h"
#include "ooaofooa_MSG_R_class.h"
#include "ooaofooa_MSG_SM_class.h"
#include "ooaofooa_MSG_AM_class.h"
#include "ooaofooa_MSG_ISM_class.h"
#include "ooaofooa_MSG_IAM_class.h"
#include "ooaofooa_MSG_IA_class.h"
#include "ooaofooa_MSG_SIG_class.h"
#include "ooaofooa_MSG_IOP_class.h"
#include "ooaofooa_MSG_EPA_class.h"
#include "ooaofooa_O_OBJ_class.h"
#include "ooaofooa_O_IOBJ_class.h"
#include "ooaofooa_O_ATTR_class.h"
#include "ooaofooa_O_ID_class.h"
#include "ooaofooa_O_OIDA_class.h"
#include "ooaofooa_O_BATTR_class.h"
#include "ooaofooa_O_DBATTR_class.h"
#include "ooaofooa_O_NBATTR_class.h"
#include "ooaofooa_O_RATTR_class.h"
#include "ooaofooa_S_CDT_class.h"
#include "ooaofooa_A_A_class.h"
#include "ooaofooa_A_N_class.h"
#include "ooaofooa_A_E_class.h"
#include "ooaofooa_A_ACT_class.h"
#include "ooaofooa_A_OBJ_class.h"
#include "ooaofooa_A_CTL_class.h"
#include "ooaofooa_A_INI_class.h"
#include "ooaofooa_A_AF_class.h"
#include "ooaofooa_A_FF_class.h"
#include "ooaofooa_A_DM_class.h"
#include "ooaofooa_O_REF_class.h"
#include "ooaofooa_A_FJ_class.h"
#include "ooaofooa_A_GA_class.h"
#include "ooaofooa_A_AE_class.h"
#include "ooaofooa_A_SS_class.h"
#include "ooaofooa_A_AIA_class.h"
#include "ooaofooa_O_RTIDA_class.h"
#include "ooaofooa_COMM_COMM_class.h"
#include "ooaofooa_COMM_LNK_class.h"
#include "ooaofooa_COMM_CIC_class.h"
#include "ooaofooa_COMM_MIC_class.h"
#include "ooaofooa_COMM_PIC_class.h"
#include "ooaofooa_O_TFR_class.h"
#include "ooaofooa_O_TPARM_class.h"
#include "ooaofooa_O_RAVR_class.h"
#include "ooaofooa_S_UDT_class.h"
#include "ooaofooa_UC_UCC_class.h"
#include "ooaofooa_UC_UCA_class.h"
#include "ooaofooa_UC_PIUC_class.h"
#include "ooaofooa_UC_UIU_class.h"
#include "ooaofooa_UC_BA_class.h"
#include "ooaofooa_UC_G_class.h"
#include "ooaofooa_UC_I_class.h"
#include "ooaofooa_UC_E_class.h"
#include "ooaofooa_UC_AIUC_class.h"
#include "ooaofooa_S_BRG_class.h"
#include "ooaofooa_A_AP_class.h"
#include "ooaofooa_A_ATE_class.h"
#include "ooaofooa_A_AEA_class.h"
#include "ooaofooa_S_BPARM_class.h"
#include "ooaofooa_EP_PKG_class.h"
#include "ooaofooa_EP_SPKG_class.h"
#include "ooaofooa_EP_PIP_class.h"
#include "ooaofooa_S_EDT_class.h"
#include "ooaofooa_CNST_CSP_class.h"
#include "ooaofooa_CNST_SYC_class.h"
#include "ooaofooa_CNST_LFSC_class.h"
#include "ooaofooa_CNST_LSC_class.h"
#include "ooaofooa_CNST_CIP_class.h"
#include "ooaofooa_S_ENUM_class.h"
#include "ooaofooa_S_SYNC_class.h"
#include "ooaofooa_S_SPARM_class.h"
#include "ooaofooa_S_SYS_class.h"
#include "ooaofooa_S_FPK_class.h"
#include "ooaofooa_G_EIS_class.h"
#include "ooaofooa_PL_EEPID_class.h"
#include "ooaofooa_S_DOM_class.h"
#include "ooaofooa_TE_SWC_class.h"
#include "ooaofooa_TE_CI_class.h"
#include "ooaofooa_TE_OIR_class.h"
#include "ooaofooa_TE_SYS_class.h"
#include "ooaofooa_TE_DISP_class.h"
#include "ooaofooa_TE_QUEUE_class.h"
#include "ooaofooa_TE_ABA_class.h"
#include "ooaofooa_TE_C_class.h"
#include "ooaofooa_TE_MBR_class.h"
#include "ooaofooa_TE_EE_class.h"
#include "ooaofooa_TE_DT_class.h"
#include "ooaofooa_TE_ACT_class.h"
#include "ooaofooa_TE_SYNC_class.h"
#include "ooaofooa_TE_TFR_class.h"
#include "ooaofooa_R_REL_class.h"
#include "ooaofooa_TE_BRG_class.h"
#include "ooaofooa_TE_DBATTR_class.h"
#include "ooaofooa_TE_ENUM_class.h"
#include "ooaofooa_TE_PARM_class.h"
#include "ooaofooa_TE_WHERE_class.h"
#include "ooaofooa_TE_ATTR_class.h"
#include "ooaofooa_TE_REL_class.h"
#include "ooaofooa_TE_EVT_class.h"
#include "ooaofooa_TE_STATE_class.h"
#include "ooaofooa_R_OIR_class.h"
#include "ooaofooa_TE_PO_class.h"
#include "ooaofooa_TE_VAL_class.h"
#include "ooaofooa_TE_VAR_class.h"
#include "ooaofooa_TE_SM_class.h"
#include "ooaofooa_TE_CLASS_class.h"
#include "ooaofooa_TE_PREFIX_class.h"
#include "ooaofooa_TE_SET_class.h"
#include "ooaofooa_TE_PERSIST_class.h"
#include "ooaofooa_R_RTO_class.h"
#include "ooaofooa_TE_EQ_class.h"
#include "ooaofooa_TE_ILB_class.h"
#include "ooaofooa_TE_THREAD_class.h"
#include "ooaofooa_TE_FILE_class.h"
#include "ooaofooa_TE_CALLOUT_class.h"
#include "ooaofooa_TE_STRING_class.h"
#include "ooaofooa_TE_TRACE_class.h"
#include "ooaofooa_TE_COPYRIGHT_class.h"
#include "ooaofooa_TE_DMA_class.h"
#include "ooaofooa_TE_CONTAINER_class.h"
#include "ooaofooa_R_RGO_class.h"
#include "ooaofooa_TE_DLIST_class.h"
#include "ooaofooa_TE_SLIST_class.h"
#include "ooaofooa_TE_TARGET_class.h"
#include "ooaofooa_R_SIMP_class.h"
#include "ooaofooa_TE_RELINFO_class.h"
#include "ooaofooa_TE_RELSTORE_class.h"
#include "ooaofooa_TE_INSTANCE_class.h"
#include "ooaofooa_TE_TIM_class.h"
#include "ooaofooa_TE_TYPEMAP_class.h"
#include "ooaofooa_TE_EXTENT_class.h"
#include "ooaofooa_TE_DIM_class.h"
#include "ooaofooa_TE_PAR_class.h"
#include "ooaofooa_TE_MACT_class.h"
#include "ooaofooa_R_PART_class.h"
#include "ooaofooa_TE_IIR_class.h"
#include "ooaofooa_TE_DCI_class.h"
#include "ooaofooa_TE_CIA_class.h"
#include "ooaofooa_R_FORM_class.h"
#include "ooaofooa_R_ASSOC_class.h"
#include "ooaofooa_R_AONE_class.h"
#include "ooaofooa_S_FIP_class.h"
#include "ooaofooa_TE_BLK_class.h"
#include "ooaofooa_TE_LNK_class.h"
#include "ooaofooa_TE_SMT_class.h"
#include "ooaofooa_TE_ASSIGN_class.h"
#include "ooaofooa_TE_BREAK_class.h"
#include "ooaofooa_TE_BRIDGE_class.h"
#include "ooaofooa_TE_CONTINUE_class.h"
#include "ooaofooa_TE_CONTROL_class.h"
#include "ooaofooa_TE_CREATE_EVENT_class.h"
#include "ooaofooa_TE_CREATE_INSTANCE_class.h"
#include "ooaofooa_R_AOTH_class.h"
#include "ooaofooa_TE_DELETE_INSTANCE_class.h"
#include "ooaofooa_TE_ELIF_class.h"
#include "ooaofooa_TE_ELSE_class.h"
#include "ooaofooa_TE_EVENT_PARAMETERS_class.h"
#include "ooaofooa_TE_FOR_class.h"
#include "ooaofooa_TE_FUNCTION_class.h"
#include "ooaofooa_TE_GENERATE_class.h"
#include "ooaofooa_TE_GENERATE_CREATOR_EVENT_class.h"
#include "ooaofooa_TE_GENERATE_PRECREATED_EVENT_class.h"
#include "ooaofooa_TE_GENERATE_TO_CLASS_class.h"
#include "ooaofooa_R_ASSR_class.h"
#include "ooaofooa_TE_IF_class.h"
#include "ooaofooa_TE_IOP_class.h"
#include "ooaofooa_TE_OPERATION_class.h"
#include "ooaofooa_TE_RELATE_class.h"
#include "ooaofooa_TE_RELATE_USING_class.h"
#include "ooaofooa_TE_RETURN_class.h"
#include "ooaofooa_TE_SELECT_class.h"
#include "ooaofooa_TE_SELECT_RELATED_class.h"
#include "ooaofooa_TE_SELECT_WHERE_class.h"
#include "ooaofooa_TE_SGN_class.h"
#include "ooaofooa_R_SUBSUP_class.h"
#include "ooaofooa_TE_UNRELATE_class.h"
#include "ooaofooa_R_SUPER_class.h"
#include "ooaofooa_TE_UNRELATE_USING_class.h"
#include "ooaofooa_R_SUB_class.h"
#include "ooaofooa_TE_WHILE_class.h"
#include "ooaofooa_R_COMP_class.h"
#include "ooaofooa_R_CONE_class.h"
#include "ooaofooa_R_COTH_class.h"
#include "ooaofooa_S_FPIP_class.h"
#include "ooaofooa_TE_OUTFILE_class.h"
#include "ooaofooa_TM_C_class.h"
#include "ooaofooa_TM_SYNC_class.h"
#include "ooaofooa_TM_POINTER_class.h"
#include "ooaofooa_TM_PRECISION_class.h"
#include "ooaofooa_TM_ENUMVAL_class.h"
#include "ooaofooa_TM_ENUMINIT_class.h"
#include "ooaofooa_TM_THREAD_class.h"
#include "ooaofooa_TM_SYSTAG_class.h"
#include "ooaofooa_TM_BUILD_class.h"
#include "ooaofooa_TM_TEMPLATE_class.h"
#include "ooaofooa_TM_TP_class.h"
#include "ooaofooa_TM_IF_class.h"
#include "ooaofooa_TM_TPV_class.h"
#include "ooaofooa_S_EEPK_class.h"
#include "ooaofooa_DOC_DOC_class.h"
#include "ooaofooa_DOC_SEC_class.h"
#include "ooaofooa_DOC_DATE_class.h"
#include "ooaofooa_DOC_HEAD_class.h"
#include "ooaofooa_DOC_FOOT_class.h"
#include "ooaofooa_DOC_ADDR_class.h"
#include "ooaofooa_DOC_PAR_class.h"
#include "ooaofooa_DOC_FIG_class.h"
#include "ooaofooa_DOC_LINK_class.h"
#include "ooaofooa_DOC_TBL_class.h"
#include "ooaofooa_DOC_IMG_class.h"
#include "ooaofooa_DOC_CELL_class.h"
#include "ooaofooa_DOC_ROW_class.h"
#include "ooaofooa_S_EEIP_class.h"
#include "ooaofooa_S_EEPIP_class.h"
#include "ooaofooa_S_DPK_class.h"
#include "ooaofooa_S_DIP_class.h"
#include "ooaofooa_S_DPIP_class.h"
#include "ooaofooa_I_LNK_class.h"
#include "ooaofooa_I_EVI_class.h"
#include "ooaofooa_I_AVL_class.h"
#include "ooaofooa_I_INS_class.h"
#include "ooaofooa_I_EXE_class.h"
#include "ooaofooa_I_STF_class.h"
#include "ooaofooa_I_BSF_class.h"
#include "ooaofooa_I_STACK_class.h"
#include "ooaofooa_I_DIV_class.h"
#include "ooaofooa_I_TIM_class.h"
#include "ooaofooa_I_EQE_class.h"
#include "ooaofooa_I_SQE_class.h"
#include "ooaofooa_I_MON_class.h"
#include "ooaofooa_CSME_CLM_class.h"
#include "ooaofooa_I_VSF_class.h"
#include "ooaofooa_I_LIP_class.h"
#include "ooaofooa_I_RCH_class.h"
#include "ooaofooa_I_CIN_class.h"
#include "ooaofooa_I_ICQE_class.h"
#include "ooaofooa_CSME_CIE_class.h"
#include "ooaofooa_CSME_CIS_class.h"
#include "ooaofooa_S_SS_class.h"
#include "ooaofooa_PL_FPID_class.h"
#include "ooaofooa_S_SIS_class.h"
#include "ooaofooa_BP_BP_class.h"
#include "ooaofooa_BP_OAL_class.h"
#include "ooaofooa_BP_EV_class.h"
#include "ooaofooa_BP_CON_class.h"
#include "ooaofooa_BP_ST_class.h"
#include "ooaofooa_S_SID_class.h"
#include "ooaofooa_S_AW_class.h"
#include "ooaofooa_S_IRDT_class.h"
#include "ooaofooa_S_SDT_class.h"
#include "ooaofooa_S_MBR_class.h"
#include "ooaofooa_S_DIS_class.h"
#include "ooaofooa_S_DIM_class.h"
#include "ooaofooa_S_EE_class.h"
#include "ooaofooa_C_C_class.h"
#include "ooaofooa_C_I_class.h"
#include "ooaofooa_C_P_class.h"
#include "ooaofooa_C_R_class.h"
#include "ooaofooa_C_EP_class.h"
#include "ooaofooa_C_AS_class.h"
#include "ooaofooa_C_IO_class.h"
#include "ooaofooa_C_SF_class.h"
#include "ooaofooa_C_PP_class.h"
#include "ooaofooa_C_IR_class.h"
#include "ooaofooa_C_DG_class.h"
#include "ooaofooa_C_PO_class.h"
#include "ooaofooa_C_RID_class.h"
#include "ooaofooa_CA_COMM_class.h"
#include "ooaofooa_CA_EESMC_class.h"
#include "ooaofooa_CA_SMSMC_class.h"
#include "ooaofooa_CA_SMEEC_class.h"
#include "ooaofooa_CA_EESME_class.h"
#include "ooaofooa_CA_SMSME_class.h"
#include "ooaofooa_CA_SMEEE_class.h"
#include "ooaofooa_CA_ACC_class.h"
#include "ooaofooa_CA_SMOA_class.h"
#include "ooaofooa_CA_SMEEA_class.h"
#include "ooaofooa_CA_SMOAA_class.h"
#include "ooaofooa_CA_SMEED_class.h"
#include "ooaofooa_CN_CIC_class.h"
#include "ooaofooa_CN_DC_class.h"
#include "ooaofooa_IP_IP_class.h"
#include "ooaofooa_IP_IPINIP_class.h"
#include "ooaofooa_SLD_SDP_class.h"
#include "ooaofooa_SLD_SDINP_class.h"
#include "ooaofooa_SLD_SCINP_class.h"
#include "ooaofooa_SPR_REP_class.h"
#include "ooaofooa_SPR_PEP_class.h"
#include "ooaofooa_SPR_RO_class.h"
#include "ooaofooa_SPR_RS_class.h"
#include "ooaofooa_SPR_PO_class.h"
#include "ooaofooa_SPR_PS_class.h"
#include "ooaofooa_CP_CP_class.h"
#include "ooaofooa_CP_CPINP_class.h"
#include "ooaofooa_CL_IPINS_class.h"
#include "ooaofooa_CL_IP_class.h"
#include "ooaofooa_CL_IR_class.h"
#include "ooaofooa_CL_IIR_class.h"
#include "ooaofooa_CL_IC_class.h"
#include "ooaofooa_S_EEM_class.h"
#include "ooaofooa_SM_SM_class.h"
#include "ooaofooa_SM_STATE_class.h"
#include "ooaofooa_SM_EVT_class.h"
#include "ooaofooa_SM_SEME_class.h"
#include "ooaofooa_SM_NSTXN_class.h"
#include "ooaofooa_SM_EIGN_class.h"
#include "ooaofooa_SM_CH_class.h"
#include "ooaofooa_SM_TXN_class.h"
#include "ooaofooa_SM_NETXN_class.h"
#include "ooaofooa_SM_CRTXN_class.h"
#include "ooaofooa_SM_MOORE_class.h"
#include "ooaofooa_SM_MEALY_class.h"
#include "ooaofooa_SM_MOAH_class.h"
#include "ooaofooa_SM_MEAH_class.h"
#include "ooaofooa_SM_AH_class.h"
#include "ooaofooa_SM_ACT_class.h"
#include "ooaofooa_SM_EVTDI_class.h"
#include "ooaofooa_SM_SUPDT_class.h"
#include "ooaofooa_SM_SDI_class.h"
#include "ooaofooa_SM_ISM_class.h"
#include "ooaofooa_SM_ASM_class.h"
#include "ooaofooa_SM_PEVT_class.h"
#include "ooaofooa_SM_SEVT_class.h"
#include "ooaofooa_SM_NLEVT_class.h"
#include "ooaofooa_SM_LEVT_class.h"
#include "ooaofooa_SM_SGEVT_class.h"
#include "ooaofooa_SM_TAH_class.h"
#include "ooaofooa_S_EEDI_class.h"
#include "ooaofooa_ACT_BLK_class.h"
#include "ooaofooa_ACT_ACT_class.h"
#include "ooaofooa_ACT_SMT_class.h"
#include "ooaofooa_ACT_AI_class.h"
#include "ooaofooa_ACT_SRW_class.h"
#include "ooaofooa_ACT_SEL_class.h"
#include "ooaofooa_ACT_FOR_class.h"
#include "ooaofooa_ACT_CNV_class.h"
#include "ooaofooa_ACT_REL_class.h"
#include "ooaofooa_ACT_UNR_class.h"
#include "ooaofooa_ACT_E_class.h"
#include "ooaofooa_ACT_FIW_class.h"
#include "ooaofooa_ACT_FIO_class.h"
#include "ooaofooa_ACT_CR_class.h"
#include "ooaofooa_ACT_DEL_class.h"
#include "ooaofooa_ACT_RU_class.h"
#include "ooaofooa_ACT_URU_class.h"
#include "ooaofooa_ACT_IF_class.h"
#include "ooaofooa_ACT_TFM_class.h"
#include "ooaofooa_ACT_WHL_class.h"
#include "ooaofooa_ACT_BRG_class.h"
#include "ooaofooa_ACT_EL_class.h"
#include "ooaofooa_ACT_SR_class.h"
#include "ooaofooa_ACT_RET_class.h"
#include "ooaofooa_ACT_FNC_class.h"
#include "ooaofooa_ACT_IOP_class.h"
#include "ooaofooa_ACT_LNK_class.h"
#include "ooaofooa_ACT_SGN_class.h"
#include "ooaofooa_ACT_CTL_class.h"
#include "ooaofooa_ACT_BRK_class.h"
#include "ooaofooa_ACT_CON_class.h"
#include "ooaofooa_ACT_SAB_class.h"
#include "ooaofooa_ACT_DAB_class.h"
#include "ooaofooa_ACT_FNB_class.h"
#include "ooaofooa_ACT_OPB_class.h"
#include "ooaofooa_ACT_BRB_class.h"
#include "ooaofooa_ACT_POB_class.h"
#include "ooaofooa_ACT_PSB_class.h"
#include "ooaofooa_ACT_ROB_class.h"
#include "ooaofooa_ACT_RSB_class.h"
#include "ooaofooa_ACT_BIC_class.h"
#include "ooaofooa_ACT_TAB_class.h"
#include "ooaofooa_ACT_BIE_class.h"
#include "ooaofooa_S_EEEVT_class.h"
#include "ooaofooa_E_CEI_class.h"
#include "ooaofooa_E_GEN_class.h"
#include "ooaofooa_E_GPR_class.h"
#include "ooaofooa_E_CEA_class.h"
#include "ooaofooa_E_GAR_class.h"
#include "ooaofooa_E_GEC_class.h"
#include "ooaofooa_E_CEE_class.h"
#include "ooaofooa_E_GEE_class.h"
#include "ooaofooa_E_CEC_class.h"
#include "ooaofooa_E_ESS_class.h"
#include "ooaofooa_E_CES_class.h"
#include "ooaofooa_E_GES_class.h"
#include "ooaofooa_E_CSME_class.h"
#include "ooaofooa_E_GSME_class.h"
#include "ooaofooa_S_EEEDI_class.h"
#include "ooaofooa_PE_PE_class.h"
#include "ooaofooa_PE_VIS_class.h"
#include "ooaofooa_PE_CVS_class.h"
#include "ooaofooa_PE_SRS_class.h"
#include "ooaofooa_PE_CRS_class.h"
#include "ooaofooa_V_VAL_class.h"
#include "ooaofooa_V_PAR_class.h"
#include "ooaofooa_V_BIN_class.h"
#include "ooaofooa_V_LBO_class.h"
#include "ooaofooa_V_LRL_class.h"
#include "ooaofooa_V_TVL_class.h"
#include "ooaofooa_V_EDV_class.h"
#include "ooaofooa_V_ISR_class.h"
#include "ooaofooa_V_TRV_class.h"
#include "ooaofooa_V_UNY_class.h"
#include "ooaofooa_V_LST_class.h"
#include "ooaofooa_V_LIN_class.h"
#include "ooaofooa_V_AVL_class.h"
#include "ooaofooa_V_IRF_class.h"
#include "ooaofooa_V_BRV_class.h"
#include "ooaofooa_V_VAR_class.h"
#include "ooaofooa_V_INT_class.h"
#include "ooaofooa_V_INS_class.h"
#include "ooaofooa_V_TRN_class.h"
#include "ooaofooa_V_SLR_class.h"
#include "ooaofooa_V_PVL_class.h"
#include "ooaofooa_V_FNV_class.h"
#include "ooaofooa_V_LEN_class.h"
#include "ooaofooa_V_LOC_class.h"
#include "ooaofooa_V_MVL_class.h"
#include "ooaofooa_V_AER_class.h"
#include "ooaofooa_V_ALV_class.h"
#include "ooaofooa_V_MSV_class.h"
#include "ooaofooa_V_EPR_class.h"
#include "ooaofooa_V_SCV_class.h"
#include "ooaofooa_S_EEEDT_class.h"
#include "ooaofooa_PA_SIC_class.h"
#include "ooaofooa_PA_SICP_class.h"
#include "ooaofooa_PA_DIC_class.h"
#include "ooaofooa_SQ_S_class.h"
#include "ooaofooa_SQ_LS_class.h"
#include "ooaofooa_SQ_CIP_class.h"
#include "ooaofooa_SQ_COP_class.h"
#include "ooaofooa_SQ_TM_class.h"
#include "ooaofooa_SQ_TS_class.h"
#include "ooaofooa_SQ_SIS_class.h"
#include "ooaofooa_SQ_MIS_class.h"
#include "ooaofooa_SQ_CP_class.h"
#include "ooaofooa_SQ_P_class.h"
#include "ooaofooa_SQ_EEP_class.h"
#include "ooaofooa_SQ_FPP_class.h"
#include "ooaofooa_SQ_CPA_class.h"
#include "ooaofooa_SQ_AV_class.h"
#include "ooaofooa_SQ_AP_class.h"
#include "ooaofooa_SQ_IA_class.h"
#include "ooaofooa_SQ_FA_class.h"
#include "ooaofooa_SQ_FAV_class.h"
#include "ooaofooa_SQ_IAV_class.h"
#include "ooaofooa_IA_UCP_class.h"
#include "ooaofooa_SQ_PP_class.h"
#include "ooaofooa_SEN_E_class.h"
#include "ooaofooa_SEN_ALE_class.h"
#include "ooaofooa_SEN_DE_class.h"
#include "ooaofooa_SEN_DCE_class.h"
#include "ooaofooa_SEN_RE_class.h"
#include "ooaofooa_SQU_Q_class.h"
#include "ooaofooa_SQU_D_class.h"
#include "ooaofooa_SQU_R_class.h"
#include "ooaofooa_SQU_DE_class.h"
#include "ooaofooa_SQU_A_class.h"
#include "ooaofooa_SP_SP_class.h"
#include "ooaofooa_SP_SE_class.h"
#include "ooaofooa_SP_ALS_class.h"
#include "ooaofooa_SP_DS_class.h"
#include "ooaofooa_SP_NS_class.h"
#include "ooaofooa_SR_SR_class.h"
#include "ooaofooa_SR_M_class.h"
#include "ooaofooa_SR_CM_class.h"
#include "ooaofooa_SR_NM_class.h"
#include "ooaofooa_SR_CMR_class.h"
#include "ooaofooa_S_DT_class.h"
#ifdef	__cplusplus
}
#endif
#endif  /* OOAOFOOA_CLASSES_H */

