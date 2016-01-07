/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_AP_class.h
 *
 * Class:       Actor Participant  (SQ_AP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQ_AP_CLASS_H
#define OOAOFOOA_SQ_AP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Actor Participant  (SQ_AP)
 */
struct ooaofooa_SQ_AP {

  /* application analysis class attributes */
  Escher_UniqueID_t Part_ID;  
  c_t * Name;  
  c_t * Descrip;  
  Escher_UniqueID_t LS_Part_ID;  

  /* relationship storage */
  ooaofooa_SQ_P * SQ_P_R930;
  ooaofooa_SQ_LS * SQ_LS_R949_life_is_bounded_by;
};
void ooaofooa_SQ_AP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQ_AP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQ_AP_batch_relate( Escher_iHandle_t );

void ooaofooa_SQ_AP_R930_Link( ooaofooa_SQ_P *, ooaofooa_SQ_AP * );
void ooaofooa_SQ_AP_R930_Unlink( ooaofooa_SQ_P *, ooaofooa_SQ_AP * );
void ooaofooa_SQ_AP_R949_Link_defines_bounds_of_existence( ooaofooa_SQ_LS *, ooaofooa_SQ_AP * );
void ooaofooa_SQ_AP_R949_Unlink_defines_bounds_of_existence( ooaofooa_SQ_LS *, ooaofooa_SQ_AP * );


#define ooaofooa_SQ_AP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQ_AP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQ_AP_CLASS_H */


