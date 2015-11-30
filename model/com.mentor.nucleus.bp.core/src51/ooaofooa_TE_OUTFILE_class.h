/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_OUTFILE_class.h
 *
 * Class:       output file  (TE_OUTFILE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_OUTFILE_CLASS_H
#define OOAOFOOA_TE_OUTFILE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   output file  (TE_OUTFILE)
 */
struct ooaofooa_TE_OUTFILE {

  /* application analysis class attributes */
  Escher_UniqueID_t ID;  
  c_t * Name;  
  c_t * body;  
  i_t Order;  

};
void ooaofooa_TE_OUTFILE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_OUTFILE_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TE_OUTFILE_batch_relate 0



#define ooaofooa_TE_OUTFILE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_OUTFILE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_OUTFILE_CLASS_H */


