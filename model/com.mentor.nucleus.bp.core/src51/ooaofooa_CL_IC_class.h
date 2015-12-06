/*----------------------------------------------------------------------------
 * File:  ooaofooa_CL_IC_class.h
 *
 * Class:       Component Reference  (CL_IC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CL_IC_CLASS_H
#define OOAOFOOA_CL_IC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Component Reference  (CL_IC)
 */
struct ooaofooa_CL_IC {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t AssignedComp_Id;  
  Escher_UniqueID_t ParentComp_Id;  
  Escher_UniqueID_t Component_Package_ID;  
  i_t Mult;  
  c_t * ClassifierName;  
  c_t * Name;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_TE_CI * TE_CI_R2009;
  Escher_ObjectSet_s I_EXE_R2963_instance_being_verified_by;
  ooaofooa_C_C * C_C_R4201_represents;
  ooaofooa_C_C * C_C_R4205_nested_in;
  ooaofooa_CP_CP * CP_CP_R4605_exists_in;
  Escher_ObjectSet_s CL_POR_R4707_communicates_through;
  ooaofooa_PE_PE * PE_PE_R8001;
};
void ooaofooa_CL_IC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CL_IC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CL_IC_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_CL_IC * ooaofooa_CL_IC_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_I_EXE_R2963_From_CL_IC_instance_being_verified_by( CL_IC ) ( &((CL_IC)->I_EXE_R2963_instance_being_verified_by) )
/* Note:  CL_IC->I_EXE[R2963] not navigated */
void ooaofooa_CL_IC_R4201_Link_is_represented_by( ooaofooa_C_C *, ooaofooa_CL_IC * );
void ooaofooa_CL_IC_R4201_Unlink_is_represented_by( ooaofooa_C_C *, ooaofooa_CL_IC * );
void ooaofooa_CL_IC_R4205_Link_nests( ooaofooa_C_C *, ooaofooa_CL_IC * );
void ooaofooa_CL_IC_R4205_Unlink_nests( ooaofooa_C_C *, ooaofooa_CL_IC * );
void ooaofooa_CL_IC_R4605_Link_contains( ooaofooa_CP_CP *, ooaofooa_CL_IC * );
void ooaofooa_CL_IC_R4605_Unlink_contains( ooaofooa_CP_CP *, ooaofooa_CL_IC * );
#define ooaofooa_CL_POR_R4707_From_CL_IC_communicates_through( CL_IC ) ( &((CL_IC)->CL_POR_R4707_communicates_through) )
void ooaofooa_CL_IC_R8001_Link( ooaofooa_PE_PE *, ooaofooa_CL_IC * );
void ooaofooa_CL_IC_R8001_Unlink( ooaofooa_PE_PE *, ooaofooa_CL_IC * );


#define ooaofooa_CL_IC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CL_IC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CL_IC_CLASS_H */


