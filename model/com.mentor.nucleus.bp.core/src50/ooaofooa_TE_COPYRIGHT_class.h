/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_COPYRIGHT_class.h
 *
 * Class:       copyright  (TE_COPYRIGHT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_COPYRIGHT_CLASS_H
#define OOAOFOOA_TE_COPYRIGHT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   copyright  (TE_COPYRIGHT)
 */
struct ooaofooa_TE_COPYRIGHT {

  /* application analysis class attributes */
  c_t * body;  

};
void ooaofooa_TE_COPYRIGHT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_COPYRIGHT_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TE_COPYRIGHT_batch_relate 0



#define ooaofooa_TE_COPYRIGHT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_COPYRIGHT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_COPYRIGHT_CLASS_H */


