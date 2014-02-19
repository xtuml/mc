/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_PREFIX_class.h
 *
 * Class:       prefix  (TE_PREFIX)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_PREFIX_CLASS_H
#define OOAOFOOA_TE_PREFIX_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   prefix  (TE_PREFIX)
 */
struct ooaofooa_TE_PREFIX {

  /* application analysis class attributes */
  c_t * symbol;  
  c_t * symbolsw;  
  c_t * type;  
  c_t * typesw;  
  c_t * define_u;  
  c_t * define_c;  
  c_t * define_csw;  
  c_t * define_usw;  
  c_t * file;  
  c_t * result;  
  c_t * provided_port;  
  c_t * required_port;  
  c_t * channel;  

};
void ooaofooa_TE_PREFIX_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_PREFIX_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TE_PREFIX_batch_relate 0



#define ooaofooa_TE_PREFIX_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_PREFIX_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_PREFIX_CLASS_H */


