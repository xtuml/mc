/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_DT_class.h
 *
 * Class:       Extended Data Type  (TE_DT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_DT_CLASS_H
#define OOAOFOOA_TE_DT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Data Type  (TE_DT)
 */
struct ooaofooa_TE_DT {

  /* application analysis class attributes */
  Escher_UniqueID_t ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  i_t Core_Typ;  
  bool Included;  
  c_t ExtName[ESCHER_SYS_MAX_STRING_LEN];  
  c_t Include_File[ESCHER_SYS_MAX_STRING_LEN];  
  c_t Initial_Value[ESCHER_SYS_MAX_STRING_LEN];  
  c_t Value[ESCHER_SYS_MAX_STRING_LEN];  
  bool Is_Enum;  
  c_t Owning_Dom_Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t string_format[ESCHER_SYS_MAX_STRING_LEN];  
  bool generated;  
  Escher_UniqueID_t te_cID;  
  Escher_UniqueID_t DT_ID;  

  /* relationship storage */
  ooaofooa_S_DT * S_DT_R2021;
  Escher_ObjectSet_s TE_PARM_R2049;
  ooaofooa_TE_MBR * TE_MBR_R2068;
  ooaofooa_TE_C * TE_C_R2086;
};
void ooaofooa_TE_DT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_DT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_DT_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_DT * ooaofooa_TE_DT_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_TE_DT_R2021_Link( ooaofooa_S_DT *, ooaofooa_TE_DT * );
void ooaofooa_TE_DT_R2021_Unlink( ooaofooa_S_DT *, ooaofooa_TE_DT * );
#define ooaofooa_TE_PARM_R2049_From_TE_DT( TE_DT ) ( &((TE_DT)->TE_PARM_R2049) )
void ooaofooa_TE_DT_R2086_Link( ooaofooa_TE_C *, ooaofooa_TE_DT * );
void ooaofooa_TE_DT_R2086_Unlink( ooaofooa_TE_C *, ooaofooa_TE_DT * );


#define ooaofooa_TE_DT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_DT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_DT_CLASS_H */


