/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_CDT_class.h
 *
 * Class:       Core Data Type  (S_CDT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_CDT_CLASS_H
#define OOAOFOOA_S_CDT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Core Data Type  (S_CDT)
 */
struct ooaofooa_S_CDT {

  /* application analysis class attributes */
  Escher_UniqueID_t DT_ID;  
  i_t Core_Typ;  

  /* relationship storage */
  ooaofooa_S_DT * S_DT_R17;
};
void ooaofooa_S_CDT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_CDT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_CDT_batch_relate( Escher_iHandle_t );

void ooaofooa_S_CDT_R17_Link( ooaofooa_S_DT *, ooaofooa_S_CDT * );
void ooaofooa_S_CDT_R17_Unlink( ooaofooa_S_DT *, ooaofooa_S_CDT * );


#define ooaofooa_S_CDT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_CDT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_CDT_CLASS_H */


