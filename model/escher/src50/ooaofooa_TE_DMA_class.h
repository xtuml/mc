/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_DMA_class.h
 *
 * Class:       dynamic memory allocation  (TE_DMA)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_DMA_CLASS_H
#define OOAOFOOA_TE_DMA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   dynamic memory allocation  (TE_DMA)
 */
struct ooaofooa_TE_DMA {

  /* application analysis class attributes */
  c_t * file;  
  c_t * allocate;  
  c_t * release;  
  bool debugging_heap;  

};
void ooaofooa_TE_DMA_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_DMA_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TE_DMA_batch_relate 0



#define ooaofooa_TE_DMA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_DMA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_DMA_CLASS_H */


