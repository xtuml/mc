/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQU_R_class.h
 *
 * Class:       References Query  (SQU_R)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQU_R_CLASS_H
#define OOAOFOOA_SQU_R_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   References Query  (SQU_R)
 */
struct ooaofooa_SQU_R {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  

  /* relationship storage */
  ooaofooa_SQU_Q * SQU_Q_R9600;
};
void ooaofooa_SQU_R_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQU_R_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQU_R_batch_relate( Escher_iHandle_t );

void ooaofooa_SQU_R_R9600_Link( ooaofooa_SQU_Q *, ooaofooa_SQU_R * );
void ooaofooa_SQU_R_R9600_Unlink( ooaofooa_SQU_Q *, ooaofooa_SQU_R * );


#define ooaofooa_SQU_R_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQU_R_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQU_R_CLASS_H */


