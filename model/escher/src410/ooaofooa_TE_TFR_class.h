/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_TFR_class.h
 *
 * Class:       Extended Operation  (TE_TFR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_TFR_CLASS_H
#define OOAOFOOA_TE_TFR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Operation  (TE_TFR)
 */
struct ooaofooa_TE_TFR {

  /* application analysis class attributes */
  bool Included;  
  bool XlateSemantics;  
  i_t Instance_Based;  
  c_t Key_Lett[ESCHER_SYS_MAX_STRING_LEN];  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t GeneratedName[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t AbaID;  
  Escher_UniqueID_t Tfr_ID;  

  /* relationship storage */
  ooaofooa_TE_ABA * TE_ABA_R2010;
  ooaofooa_O_TFR * O_TFR_R2024;
};
void ooaofooa_TE_TFR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_TFR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_TFR_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_TFR_R2010_Link( ooaofooa_TE_ABA *, ooaofooa_TE_TFR * );
void ooaofooa_TE_TFR_R2010_Unlink( ooaofooa_TE_ABA *, ooaofooa_TE_TFR * );
void ooaofooa_TE_TFR_R2024_Link( ooaofooa_O_TFR *, ooaofooa_TE_TFR * );
void ooaofooa_TE_TFR_R2024_Unlink( ooaofooa_O_TFR *, ooaofooa_TE_TFR * );


#define ooaofooa_TE_TFR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_TFR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_TFR_CLASS_H */


