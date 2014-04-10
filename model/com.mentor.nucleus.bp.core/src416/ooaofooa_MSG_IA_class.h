/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_IA_class.h
 *
 * Class:       Informal Argument  (MSG_IA)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_MSG_IA_CLASS_H
#define OOAOFOOA_MSG_IA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Informal Argument  (MSG_IA)
 */
struct ooaofooa_MSG_IA {

  /* application analysis class attributes */
  Escher_UniqueID_t Arg_ID;  

  /* relationship storage */
  ooaofooa_MSG_A * MSG_A_R1013;
};
void ooaofooa_MSG_IA_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_MSG_IA_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_MSG_IA_batch_relate( Escher_iHandle_t );

void ooaofooa_MSG_IA_R1013_Link( ooaofooa_MSG_A *, ooaofooa_MSG_IA * );
void ooaofooa_MSG_IA_R1013_Unlink( ooaofooa_MSG_A *, ooaofooa_MSG_IA * );


#define ooaofooa_MSG_IA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_MSG_IA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_MSG_IA_CLASS_H */


