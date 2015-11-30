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
  c_t symbol[ESCHER_SYS_MAX_STRING_LEN];  
  c_t symbolsw[ESCHER_SYS_MAX_STRING_LEN];  
  c_t type[ESCHER_SYS_MAX_STRING_LEN];  
  c_t typesw[ESCHER_SYS_MAX_STRING_LEN];  
  c_t define_u[ESCHER_SYS_MAX_STRING_LEN];  
  c_t define_c[ESCHER_SYS_MAX_STRING_LEN];  
  c_t define_csw[ESCHER_SYS_MAX_STRING_LEN];  
  c_t define_usw[ESCHER_SYS_MAX_STRING_LEN];  
  c_t file[ESCHER_SYS_MAX_STRING_LEN];  
  c_t result[ESCHER_SYS_MAX_STRING_LEN];  
  c_t provided_port[ESCHER_SYS_MAX_STRING_LEN];  
  c_t required_port[ESCHER_SYS_MAX_STRING_LEN];  
  c_t channel[ESCHER_SYS_MAX_STRING_LEN];  

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


