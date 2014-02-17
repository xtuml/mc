/*----------------------------------------------------------------------------
 * File:  ooaofooa_SEN_DE_class.h
 *
 * Class:       Description Engine  (SEN_DE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SEN_DE_CLASS_H
#define OOAOFOOA_SEN_DE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Description Engine  (SEN_DE)
 */
struct ooaofooa_SEN_DE {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  

  /* relationship storage */
  ooaofooa_SEN_E * SEN_E_R9501;
};
void ooaofooa_SEN_DE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SEN_DE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SEN_DE_batch_relate( Escher_iHandle_t );

void ooaofooa_SEN_DE_R9501_Link( ooaofooa_SEN_E *, ooaofooa_SEN_DE * );
void ooaofooa_SEN_DE_R9501_Unlink( ooaofooa_SEN_E *, ooaofooa_SEN_DE * );


#define ooaofooa_SEN_DE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SEN_DE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SEN_DE_CLASS_H */


