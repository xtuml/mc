/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_STIDESCRIP_class.h
 *
 * Class:       STI Descrip  (TE_STIDESCRIP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_STIDESCRIP_CLASS_H
#define OOAOFOOA_TE_STIDESCRIP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   STI Descrip  (TE_STIDESCRIP)
 */
struct ooaofooa_TE_STIDESCRIP {

  /* application analysis class attributes */
  c_t * Descrip;  

};
void ooaofooa_TE_STIDESCRIP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_STIDESCRIP_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TE_STIDESCRIP_batch_relate 0



#define ooaofooa_TE_STIDESCRIP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_STIDESCRIP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_STIDESCRIP_CLASS_H */


