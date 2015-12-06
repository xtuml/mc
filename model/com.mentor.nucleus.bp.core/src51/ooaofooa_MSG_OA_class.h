/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_OA_class.h
 *
 * Class:       Operation Argument  (MSG_OA)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_MSG_OA_CLASS_H
#define OOAOFOOA_MSG_OA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Operation Argument  (MSG_OA)
 */
struct ooaofooa_MSG_OA {

  /* application analysis class attributes */
  Escher_UniqueID_t Arg_ID;  
  Escher_UniqueID_t TParm_ID;  

  /* relationship storage */
  ooaofooa_MSG_A * MSG_A_R1013;
  ooaofooa_O_TPARM * O_TPARM_R1015_is_represented_by;
};
void ooaofooa_MSG_OA_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_MSG_OA_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_MSG_OA_batch_relate( Escher_iHandle_t );

void ooaofooa_MSG_OA_R1013_Link( ooaofooa_MSG_A *, ooaofooa_MSG_OA * );
void ooaofooa_MSG_OA_R1013_Unlink( ooaofooa_MSG_A *, ooaofooa_MSG_OA * );
void ooaofooa_MSG_OA_R1015_Link_represents( ooaofooa_O_TPARM *, ooaofooa_MSG_OA * );
void ooaofooa_MSG_OA_R1015_Unlink_represents( ooaofooa_O_TPARM *, ooaofooa_MSG_OA * );


#define ooaofooa_MSG_OA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_MSG_OA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_MSG_OA_CLASS_H */


