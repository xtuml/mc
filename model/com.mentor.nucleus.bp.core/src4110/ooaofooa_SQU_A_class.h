/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQU_A_class.h
 *
 * Class:       Action Language Query  (SQU_A)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQU_A_CLASS_H
#define OOAOFOOA_SQU_A_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Action Language Query  (SQU_A)
 */
struct ooaofooa_SQU_A {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  

  /* relationship storage */
  ooaofooa_SQU_Q * SQU_Q_R9600;
};
void ooaofooa_SQU_A_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQU_A_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQU_A_batch_relate( Escher_iHandle_t );

void ooaofooa_SQU_A_R9600_Link( ooaofooa_SQU_Q *, ooaofooa_SQU_A * );
void ooaofooa_SQU_A_R9600_Unlink( ooaofooa_SQU_Q *, ooaofooa_SQU_A * );


#define ooaofooa_SQU_A_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQU_A_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQU_A_CLASS_H */


