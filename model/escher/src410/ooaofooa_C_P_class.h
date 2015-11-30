/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_P_class.h
 *
 * Class:       Provision  (C_P)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_C_P_CLASS_H
#define OOAOFOOA_C_P_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Provision  (C_P)
 */
struct ooaofooa_C_P {

  /* application analysis class attributes */
  Escher_UniqueID_t Provision_Id;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t InformalName[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  c_t pathFromComponent[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  Escher_ObjectSet_s C_SF_R4002;
  ooaofooa_C_IR * C_IR_R4009;
  Escher_ObjectSet_s SPR_PEP_R4501;
};
void ooaofooa_C_P_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_C_P_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_C_P_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_C_P * ooaofooa_C_P_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_C_SF_R4002_From_C_P( C_P ) ( &((C_P)->C_SF_R4002) )
void ooaofooa_C_P_R4009_Link( ooaofooa_C_IR *, ooaofooa_C_P * );
void ooaofooa_C_P_R4009_Unlink( ooaofooa_C_IR *, ooaofooa_C_P * );
#define ooaofooa_SPR_PEP_R4501_From_C_P( C_P ) ( &((C_P)->SPR_PEP_R4501) )


#define ooaofooa_C_P_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_C_P_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_C_P_CLASS_H */


