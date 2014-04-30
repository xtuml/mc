/*----------------------------------------------------------------------------
 * File:  ooaofooa_G_EIS_class.h
 *
 * Class:       Global Element in System  (G_EIS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_G_EIS_CLASS_H
#define OOAOFOOA_G_EIS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Global Element in System  (G_EIS)
 */
struct ooaofooa_G_EIS {

  /* application analysis class attributes */
  Escher_UniqueID_t Element_ID;  
  Escher_UniqueID_t Sys_ID;  

  /* relationship storage */
  ooaofooa_PE_PE * PE_PE_R9100;
  ooaofooa_S_SYS * S_SYS_R9100;
};
void ooaofooa_G_EIS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_G_EIS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_G_EIS_batch_relate( Escher_iHandle_t );

void ooaofooa_G_EIS_R9100_Link( ooaofooa_PE_PE *, ooaofooa_S_SYS *, ooaofooa_G_EIS * );
void ooaofooa_G_EIS_R9100_Unlink( ooaofooa_PE_PE *, ooaofooa_S_SYS *, ooaofooa_G_EIS * );


#define ooaofooa_G_EIS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_G_EIS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_G_EIS_CLASS_H */


