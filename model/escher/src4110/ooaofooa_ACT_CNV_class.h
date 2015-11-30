/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_CNV_class.h
 *
 * Class:       Create No Variable  (ACT_CNV)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_CNV_CLASS_H
#define OOAOFOOA_ACT_CNV_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Create No Variable  (ACT_CNV)
 */
struct ooaofooa_ACT_CNV {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Obj_ID;  
  i_t modelClassKeyLettersLineNumber;  
  i_t modelClassKeyLettersColumn;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  ooaofooa_O_OBJ * O_OBJ_R672_instance_of;
};
void ooaofooa_ACT_CNV_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_CNV_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_CNV_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_CNV_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_CNV * );
void ooaofooa_ACT_CNV_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_CNV * );
void ooaofooa_ACT_CNV_R672_Link( ooaofooa_O_OBJ *, ooaofooa_ACT_CNV * );
void ooaofooa_ACT_CNV_R672_Unlink( ooaofooa_O_OBJ *, ooaofooa_ACT_CNV * );


#define ooaofooa_ACT_CNV_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_CNV_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_CNV_CLASS_H */


