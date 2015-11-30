/*----------------------------------------------------------------------------
 * File:  ooaofooa_CL_IP_class.h
 *
 * Class:       Imported Provision  (CL_IP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CL_IP_CLASS_H
#define OOAOFOOA_CL_IP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Imported Provision  (CL_IP)
 */
struct ooaofooa_CL_IP {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  c_t * Name;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_CL_IIR * CL_IIR_R4703;
  Escher_ObjectSet_s CL_IPINS_R4705;
};
void ooaofooa_CL_IP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CL_IP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CL_IP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_CL_IP * ooaofooa_CL_IP_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_CL_IP_R4703_Link( ooaofooa_CL_IIR *, ooaofooa_CL_IP * );
void ooaofooa_CL_IP_R4703_Unlink( ooaofooa_CL_IIR *, ooaofooa_CL_IP * );
#define ooaofooa_CL_IPINS_R4705_From_CL_IP( CL_IP ) ( &((CL_IP)->CL_IPINS_R4705) )


#define ooaofooa_CL_IP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CL_IP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CL_IP_CLASS_H */


