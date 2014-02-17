/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_RID_class.h
 *
 * Class:       Interface Reference In Delegation  (C_RID)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_C_RID_CLASS_H
#define OOAOFOOA_C_RID_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Interface Reference In Delegation  (C_RID)
 */
struct ooaofooa_C_RID {

  /* application analysis class attributes */
  Escher_UniqueID_t Reference_Id;  
  Escher_UniqueID_t Delegation_Id;  

  /* relationship storage */
  ooaofooa_C_IR * C_IR_R4013_handles_delegation_for;
  ooaofooa_C_DG * C_DG_R4013_may_delegate_through;
};
void ooaofooa_C_RID_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_C_RID_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_C_RID_batch_relate( Escher_iHandle_t );

void ooaofooa_C_RID_R4013_Link( ooaofooa_C_IR *, ooaofooa_C_DG *, ooaofooa_C_RID * );
void ooaofooa_C_RID_R4013_Unlink( ooaofooa_C_IR *, ooaofooa_C_DG *, ooaofooa_C_RID * );


#define ooaofooa_C_RID_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_C_RID_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_C_RID_CLASS_H */


