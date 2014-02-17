/*----------------------------------------------------------------------------
 * File:  ooaofooa_CL_IR_class.h
 *
 * Class:       Imported Requirement  (CL_IR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CL_IR_CLASS_H
#define OOAOFOOA_CL_IR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Imported Requirement  (CL_IR)
 */
struct ooaofooa_CL_IR {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t Satisfaction_Element_Id;  
  c_t * Name;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_CL_IIR * CL_IIR_R4703;
  ooaofooa_C_SF * C_SF_R4706_provides_satisfaction_through;
};
void ooaofooa_CL_IR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CL_IR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CL_IR_batch_relate( Escher_iHandle_t );

void ooaofooa_CL_IR_R4703_Link( ooaofooa_CL_IIR *, ooaofooa_CL_IR * );
void ooaofooa_CL_IR_R4703_Unlink( ooaofooa_CL_IIR *, ooaofooa_CL_IR * );
void ooaofooa_CL_IR_R4706_Link_satisfaction_made_with( ooaofooa_C_SF *, ooaofooa_CL_IR * );
void ooaofooa_CL_IR_R4706_Unlink_satisfaction_made_with( ooaofooa_C_SF *, ooaofooa_CL_IR * );


#define ooaofooa_CL_IR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CL_IR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CL_IR_CLASS_H */


