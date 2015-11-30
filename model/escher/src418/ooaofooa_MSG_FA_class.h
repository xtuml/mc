/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_FA_class.h
 *
 * Class:       Function Argument  (MSG_FA)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_MSG_FA_CLASS_H
#define OOAOFOOA_MSG_FA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Function Argument  (MSG_FA)
 */
struct ooaofooa_MSG_FA {

  /* application analysis class attributes */
  Escher_UniqueID_t Arg_ID;  
  Escher_UniqueID_t SParm_ID;  

  /* relationship storage */
  ooaofooa_MSG_A * MSG_A_R1013;
  ooaofooa_S_SPARM * S_SPARM_R1016_is_represented_by;
};
void ooaofooa_MSG_FA_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_MSG_FA_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_MSG_FA_batch_relate( Escher_iHandle_t );

void ooaofooa_MSG_FA_R1013_Link( ooaofooa_MSG_A *, ooaofooa_MSG_FA * );
void ooaofooa_MSG_FA_R1013_Unlink( ooaofooa_MSG_A *, ooaofooa_MSG_FA * );
void ooaofooa_MSG_FA_R1016_Link_represents( ooaofooa_S_SPARM *, ooaofooa_MSG_FA * );
void ooaofooa_MSG_FA_R1016_Unlink_represents( ooaofooa_S_SPARM *, ooaofooa_MSG_FA * );


#define ooaofooa_MSG_FA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_MSG_FA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_MSG_FA_CLASS_H */


