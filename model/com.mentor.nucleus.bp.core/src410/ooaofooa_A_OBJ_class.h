/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_OBJ_class.h
 *
 * Class:       Object Node  (A_OBJ)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_A_OBJ_CLASS_H
#define OOAOFOOA_A_OBJ_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Object Node  (A_OBJ)
 */
struct ooaofooa_A_OBJ {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_A_N * A_N_R1105;
};
void ooaofooa_A_OBJ_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_A_OBJ_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_A_OBJ_batch_relate( Escher_iHandle_t );

void ooaofooa_A_OBJ_R1105_Link( ooaofooa_A_N *, ooaofooa_A_OBJ * );
void ooaofooa_A_OBJ_R1105_Unlink( ooaofooa_A_N *, ooaofooa_A_OBJ * );


#define ooaofooa_A_OBJ_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_A_OBJ_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_A_OBJ_CLASS_H */


