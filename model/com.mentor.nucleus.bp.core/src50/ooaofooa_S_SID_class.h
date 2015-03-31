/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_SID_class.h
 *
 * Class:       Subsystem in Domain  (S_SID)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_SID_CLASS_H
#define OOAOFOOA_S_SID_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Subsystem in Domain  (S_SID)
 */
struct ooaofooa_S_SID {

  /* application analysis class attributes */
  Escher_UniqueID_t Dom_ID;  
  Escher_UniqueID_t SS_ID;  

  /* relationship storage */
  ooaofooa_S_SS * S_SS_R43_has_top_level_subsystems;
  ooaofooa_S_DOM * S_DOM_R43_is_top_level_of_subsystems;
};
void ooaofooa_S_SID_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_SID_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_SID_batch_relate( Escher_iHandle_t );

void ooaofooa_S_SID_R43_Link( ooaofooa_S_SS *, ooaofooa_S_DOM *, ooaofooa_S_SID * );
void ooaofooa_S_SID_R43_Unlink( ooaofooa_S_SS *, ooaofooa_S_DOM *, ooaofooa_S_SID * );


#define ooaofooa_S_SID_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_SID_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_SID_CLASS_H */


