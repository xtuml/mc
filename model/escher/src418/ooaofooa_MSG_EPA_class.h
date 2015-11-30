/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_EPA_class.h
 *
 * Class:       Executable Property Argument  (MSG_EPA)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_MSG_EPA_CLASS_H
#define OOAOFOOA_MSG_EPA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Executable Property Argument  (MSG_EPA)
 */
struct ooaofooa_MSG_EPA {

  /* application analysis class attributes */
  Escher_UniqueID_t Arg_ID;  
  Escher_UniqueID_t PP_Id;  

  /* relationship storage */
  ooaofooa_MSG_A * MSG_A_R1013;
  ooaofooa_C_PP * C_PP_R1023_is_represented_by;
};
void ooaofooa_MSG_EPA_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_MSG_EPA_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_MSG_EPA_batch_relate( Escher_iHandle_t );

void ooaofooa_MSG_EPA_R1013_Link( ooaofooa_MSG_A *, ooaofooa_MSG_EPA * );
void ooaofooa_MSG_EPA_R1013_Unlink( ooaofooa_MSG_A *, ooaofooa_MSG_EPA * );
void ooaofooa_MSG_EPA_R1023_Link_represents( ooaofooa_C_PP *, ooaofooa_MSG_EPA * );
void ooaofooa_MSG_EPA_R1023_Unlink_represents( ooaofooa_C_PP *, ooaofooa_MSG_EPA * );


#define ooaofooa_MSG_EPA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_MSG_EPA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_MSG_EPA_CLASS_H */


