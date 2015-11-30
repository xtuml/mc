/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_COP_class.h
 *
 * Class:       Component Participant  (SQ_COP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQ_COP_CLASS_H
#define OOAOFOOA_SQ_COP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Component Participant  (SQ_COP)
 */
struct ooaofooa_SQ_COP {

  /* application analysis class attributes */
  Escher_UniqueID_t Part_ID;  
  Escher_UniqueID_t Component_Id;  
  c_t * Label;  
  c_t * InformalComponentName;  
  c_t * Descrip;  
  bool isFormal;  

  /* relationship storage */
  ooaofooa_SQ_P * SQ_P_R930;
  ooaofooa_C_C * C_C_R955_represents;
};
void ooaofooa_SQ_COP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQ_COP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQ_COP_batch_relate( Escher_iHandle_t );

void ooaofooa_SQ_COP_R930_Link( ooaofooa_SQ_P *, ooaofooa_SQ_COP * );
void ooaofooa_SQ_COP_R930_Unlink( ooaofooa_SQ_P *, ooaofooa_SQ_COP * );
void ooaofooa_SQ_COP_R955_Link( ooaofooa_C_C *, ooaofooa_SQ_COP * );
void ooaofooa_SQ_COP_R955_Unlink( ooaofooa_C_C *, ooaofooa_SQ_COP * );


#define ooaofooa_SQ_COP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQ_COP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQ_COP_CLASS_H */


