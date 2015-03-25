/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_LOC_class.h
 *
 * Class:       Variable Location  (V_LOC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_LOC_CLASS_H
#define OOAOFOOA_V_LOC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Variable Location  (V_LOC)
 */
struct ooaofooa_V_LOC {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  i_t LineNumber;  
  i_t StartPosition;  
  i_t EndPosition;  
  Escher_UniqueID_t Var_ID;  

  /* relationship storage */
  ooaofooa_V_VAR * V_VAR_R835;
};
void ooaofooa_V_LOC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_LOC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_LOC_batch_relate( Escher_iHandle_t );

void ooaofooa_V_LOC_R835_Link( ooaofooa_V_VAR *, ooaofooa_V_LOC * );
void ooaofooa_V_LOC_R835_Unlink( ooaofooa_V_VAR *, ooaofooa_V_LOC * );


#define ooaofooa_V_LOC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_LOC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_LOC_CLASS_H */


