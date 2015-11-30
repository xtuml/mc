/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_R_class.h
 *
 * Class:       Requirement  (C_R)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_C_R_CLASS_H
#define OOAOFOOA_C_R_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Requirement  (C_R)
 */
struct ooaofooa_C_R {

  /* application analysis class attributes */
  Escher_UniqueID_t Requirement_Id;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  c_t InformalName[ESCHER_SYS_MAX_STRING_LEN];  
  c_t reversePathFromComponent[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  Escher_ObjectSet_s C_SF_R4002;
  ooaofooa_C_IR * C_IR_R4009;
  Escher_ObjectSet_s SPR_REP_R4500;
};
void ooaofooa_C_R_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_C_R_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_C_R_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_C_R * ooaofooa_C_R_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_C_SF_R4002_From_C_R( C_R ) ( &((C_R)->C_SF_R4002) )
void ooaofooa_C_R_R4009_Link( ooaofooa_C_IR *, ooaofooa_C_R * );
void ooaofooa_C_R_R4009_Unlink( ooaofooa_C_IR *, ooaofooa_C_R * );
#define ooaofooa_SPR_REP_R4500_From_C_R( C_R ) ( &((C_R)->SPR_REP_R4500) )


#define ooaofooa_C_R_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_C_R_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_C_R_CLASS_H */


