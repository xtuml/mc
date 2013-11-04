/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_ACT_class.h
 *
 * Class:       Extended Action  (TE_ACT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_ACT_CLASS_H
#define OOAOFOOA_TE_ACT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Action  (TE_ACT)
 */
struct ooaofooa_TE_ACT {

  /* application analysis class attributes */
  Escher_UniqueID_t AbaID;  
  c_t GeneratedName[ESCHER_SYS_MAX_STRING_LEN];  
  i_t number;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t Act_ID;  

  /* relationship storage */
  ooaofooa_TE_ABA * TE_ABA_R2010;
  ooaofooa_SM_ACT * SM_ACT_R2022;
};
void ooaofooa_TE_ACT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_ACT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_ACT_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_ACT_R2010_Link( ooaofooa_TE_ABA *, ooaofooa_TE_ACT * );
void ooaofooa_TE_ACT_R2010_Unlink( ooaofooa_TE_ABA *, ooaofooa_TE_ACT * );
void ooaofooa_TE_ACT_R2022_Link( ooaofooa_SM_ACT *, ooaofooa_TE_ACT * );
void ooaofooa_TE_ACT_R2022_Unlink( ooaofooa_SM_ACT *, ooaofooa_TE_ACT * );


#define ooaofooa_TE_ACT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_ACT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_ACT_CLASS_H */


