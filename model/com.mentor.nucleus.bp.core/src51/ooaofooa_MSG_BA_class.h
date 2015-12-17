/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_BA_class.h
 *
 * Class:       Bridge Argument  (MSG_BA)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_MSG_BA_CLASS_H
#define OOAOFOOA_MSG_BA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Bridge Argument  (MSG_BA)
 */
struct ooaofooa_MSG_BA {

  /* application analysis class attributes */
  Escher_UniqueID_t Arg_ID;  
  Escher_UniqueID_t BParm_ID;  

  /* relationship storage */
  ooaofooa_MSG_A * MSG_A_R1013;
  ooaofooa_S_BPARM * S_BPARM_R1014_is_represented_by;
};
void ooaofooa_MSG_BA_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_MSG_BA_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_MSG_BA_batch_relate( Escher_iHandle_t );

void ooaofooa_MSG_BA_R1013_Link( ooaofooa_MSG_A *, ooaofooa_MSG_BA * );
void ooaofooa_MSG_BA_R1013_Unlink( ooaofooa_MSG_A *, ooaofooa_MSG_BA * );
void ooaofooa_MSG_BA_R1014_Link_represents( ooaofooa_S_BPARM *, ooaofooa_MSG_BA * );
void ooaofooa_MSG_BA_R1014_Unlink_represents( ooaofooa_S_BPARM *, ooaofooa_MSG_BA * );


#define ooaofooa_MSG_BA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_MSG_BA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_MSG_BA_CLASS_H */


