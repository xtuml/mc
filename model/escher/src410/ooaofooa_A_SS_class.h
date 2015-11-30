/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_SS_class.h
 *
 * Class:       Send Signal  (A_SS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_A_SS_CLASS_H
#define OOAOFOOA_A_SS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Send Signal  (A_SS)
 */
struct ooaofooa_A_SS {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_A_ACT * A_ACT_R1107;
};
void ooaofooa_A_SS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_A_SS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_A_SS_batch_relate( Escher_iHandle_t );

void ooaofooa_A_SS_R1107_Link( ooaofooa_A_ACT *, ooaofooa_A_SS * );
void ooaofooa_A_SS_R1107_Unlink( ooaofooa_A_ACT *, ooaofooa_A_SS * );


#define ooaofooa_A_SS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_A_SS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_A_SS_CLASS_H */


