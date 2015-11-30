/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQU_DE_class.h
 *
 * Class:       Description Query  (SQU_DE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQU_DE_CLASS_H
#define OOAOFOOA_SQU_DE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Description Query  (SQU_DE)
 */
struct ooaofooa_SQU_DE {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  

  /* relationship storage */
  ooaofooa_SQU_Q * SQU_Q_R9600;
};
void ooaofooa_SQU_DE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQU_DE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQU_DE_batch_relate( Escher_iHandle_t );

void ooaofooa_SQU_DE_R9600_Link( ooaofooa_SQU_Q *, ooaofooa_SQU_DE * );
void ooaofooa_SQU_DE_R9600_Unlink( ooaofooa_SQU_Q *, ooaofooa_SQU_DE * );


#define ooaofooa_SQU_DE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQU_DE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQU_DE_CLASS_H */


