/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_DT_class.h
 *
 * Class:       Data Type  (S_DT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_DT_CLASS_H
#define OOAOFOOA_S_DT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Data Type  (S_DT)
 */
struct ooaofooa_S_DT {

  /* application analysis class attributes */
  Escher_UniqueID_t DT_ID;  
  Escher_UniqueID_t Dom_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  c_t DefaultValue[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_S_DOM * S_DOM_R14_defines_types_available_within;
  Escher_ObjectSet_s S_EEDI_R15_defines_the_type_of;
  Escher_ObjectSet_s S_EEEDI_R16_defines_the_type_of;
  void * R17_subtype;
  Escher_ClassNumber_t R17_object_id;
  Escher_ObjectSet_s S_UDT_R18_defines_domain_of;
  Escher_ObjectSet_s S_BRG_R20_defines_the_return_value;
  Escher_ObjectSet_s S_BPARM_R22_defines_the_type_of;
  Escher_ObjectSet_s S_SYNC_R25_defines_return_type;
  Escher_ObjectSet_s S_SPARM_R26_describes_type_of;
  ooaofooa_S_DIP * S_DIP_R39;
  Escher_ObjectSet_s S_MBR_R45_defines_the_type_of;
  Escher_ObjectSet_s S_DIS_R47;
  Escher_ObjectSet_s O_ATTR_R114_is_defined_by;
  Escher_ObjectSet_s O_TFR_R116_defines_the_type_of_return_code;
  Escher_ObjectSet_s O_TPARM_R118_defines_the_type_of_;
  Escher_ObjectSet_s SM_EVTDI_R524_defines_the_type_of;
  Escher_ObjectSet_s V_VAL_R820_is_type_of;
  Escher_ObjectSet_s V_TRN_R821_is_type_of;
  Escher_ObjectSet_s V_VAR_R848_is_type_of;
  Escher_ObjectSet_s CNST_SYC_R1500_defines_the_type_of;
  ooaofooa_TE_DT * TE_DT_R2021;
  Escher_ObjectSet_s C_PP_R4007_Defines_the_type;
  Escher_ObjectSet_s C_IO_R4008_defines_return_type;
  Escher_ObjectSet_s SLD_SDINP_R4401;
  ooaofooa_PE_PE * PE_PE_R8001;
};
void ooaofooa_S_DT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_DT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_DT_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_DT * ooaofooa_S_DT_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_S_DT_R14_Link_contains_defined( ooaofooa_S_DOM *, ooaofooa_S_DT * );
void ooaofooa_S_DT_R14_Unlink_contains_defined( ooaofooa_S_DOM *, ooaofooa_S_DT * );
#define ooaofooa_S_EEDI_R15_From_S_DT_defines_the_type_of( S_DT ) ( &((S_DT)->S_EEDI_R15_defines_the_type_of) )
/* Note:  S_DT->S_EEDI[R15] not navigated */
#define ooaofooa_S_EEEDI_R16_From_S_DT_defines_the_type_of( S_DT ) ( &((S_DT)->S_EEEDI_R16_defines_the_type_of) )
/* Note:  S_DT->S_EEEDI[R16] not navigated */

/* Accessors to S_DT[R17] subtypes */
#define ooaofooa_S_CDT_R17_From_S_DT( S_DT ) \
   ( (((S_DT)->R17_object_id) == ooaofooa_S_CDT_CLASS_NUMBER) ? \
     ((ooaofooa_S_CDT *)((S_DT)->R17_subtype)) : (0) )
#define ooaofooa_S_UDT_R17_From_S_DT( S_DT ) \
   ( (((S_DT)->R17_object_id) == ooaofooa_S_UDT_CLASS_NUMBER) ? \
     ((ooaofooa_S_UDT *)((S_DT)->R17_subtype)) : (0) )
#define ooaofooa_S_EDT_R17_From_S_DT( S_DT ) \
   ( (((S_DT)->R17_object_id) == ooaofooa_S_EDT_CLASS_NUMBER) ? \
     ((ooaofooa_S_EDT *)((S_DT)->R17_subtype)) : (0) )
#define ooaofooa_S_SDT_R17_From_S_DT( S_DT ) \
   ( (((S_DT)->R17_object_id) == ooaofooa_S_SDT_CLASS_NUMBER) ? \
     ((ooaofooa_S_SDT *)((S_DT)->R17_subtype)) : (0) )
#define ooaofooa_S_IRDT_R17_From_S_DT( S_DT ) \
   ( (((S_DT)->R17_object_id) == ooaofooa_S_IRDT_CLASS_NUMBER) ? \
     ((ooaofooa_S_IRDT *)((S_DT)->R17_subtype)) : (0) )

#define ooaofooa_S_UDT_R18_From_S_DT_defines_domain_of( S_DT ) ( &((S_DT)->S_UDT_R18_defines_domain_of) )
#define ooaofooa_S_BRG_R20_From_S_DT_defines_the_return_value( S_DT ) ( &((S_DT)->S_BRG_R20_defines_the_return_value) )
#define ooaofooa_S_BPARM_R22_From_S_DT_defines_the_type_of( S_DT ) ( &((S_DT)->S_BPARM_R22_defines_the_type_of) )
#define ooaofooa_S_SYNC_R25_From_S_DT_defines_return_type( S_DT ) ( &((S_DT)->S_SYNC_R25_defines_return_type) )
#define ooaofooa_S_SPARM_R26_From_S_DT_describes_type_of( S_DT ) ( &((S_DT)->S_SPARM_R26_describes_type_of) )
#define ooaofooa_S_MBR_R45_From_S_DT_defines_the_type_of( S_DT ) ( &((S_DT)->S_MBR_R45_defines_the_type_of) )
#define ooaofooa_S_DIS_R47_From_S_DT( S_DT ) ( &((S_DT)->S_DIS_R47) )
#define ooaofooa_O_ATTR_R114_From_S_DT_is_defined_by( S_DT ) ( &((S_DT)->O_ATTR_R114_is_defined_by) )
#define ooaofooa_O_TFR_R116_From_S_DT_defines_the_type_of_return_code( S_DT ) ( &((S_DT)->O_TFR_R116_defines_the_type_of_return_code) )
#define ooaofooa_O_TPARM_R118_From_S_DT_defines_the_type_of_( S_DT ) ( &((S_DT)->O_TPARM_R118_defines_the_type_of_) )
#define ooaofooa_SM_EVTDI_R524_From_S_DT_defines_the_type_of( S_DT ) ( &((S_DT)->SM_EVTDI_R524_defines_the_type_of) )
#define ooaofooa_V_VAL_R820_From_S_DT_is_type_of( S_DT ) ( &((S_DT)->V_VAL_R820_is_type_of) )
#define ooaofooa_V_TRN_R821_From_S_DT_is_type_of( S_DT ) ( &((S_DT)->V_TRN_R821_is_type_of) )
/* Note:  S_DT->V_TRN[R821] not navigated */
#define ooaofooa_V_VAR_R848_From_S_DT_is_type_of( S_DT ) ( &((S_DT)->V_VAR_R848_is_type_of) )
#define ooaofooa_CNST_SYC_R1500_From_S_DT_defines_the_type_of( S_DT ) ( &((S_DT)->CNST_SYC_R1500_defines_the_type_of) )
#define ooaofooa_C_PP_R4007_From_S_DT_Defines_the_type( S_DT ) ( &((S_DT)->C_PP_R4007_Defines_the_type) )
#define ooaofooa_C_IO_R4008_From_S_DT_defines_return_type( S_DT ) ( &((S_DT)->C_IO_R4008_defines_return_type) )
#define ooaofooa_SLD_SDINP_R4401_From_S_DT( S_DT ) ( &((S_DT)->SLD_SDINP_R4401) )
void ooaofooa_S_DT_R8001_Link( ooaofooa_PE_PE *, ooaofooa_S_DT * );
void ooaofooa_S_DT_R8001_Unlink( ooaofooa_PE_PE *, ooaofooa_S_DT * );


#define ooaofooa_S_DT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_DT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_DT_CLASS_H */


