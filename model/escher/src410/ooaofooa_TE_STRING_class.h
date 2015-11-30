/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_STRING_class.h
 *
 * Class:       string  (TE_STRING)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_STRING_CLASS_H
#define OOAOFOOA_TE_STRING_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   string  (TE_STRING)
 */
struct ooaofooa_TE_STRING {

  /* application analysis class attributes */
  c_t memset[ESCHER_SYS_MAX_STRING_LEN];  
  c_t memmove[ESCHER_SYS_MAX_STRING_LEN];  
  c_t strcpy[ESCHER_SYS_MAX_STRING_LEN];  
  c_t stradd[ESCHER_SYS_MAX_STRING_LEN];  
  c_t strlen[ESCHER_SYS_MAX_STRING_LEN];  
  c_t strcmp[ESCHER_SYS_MAX_STRING_LEN];  
  c_t strget[ESCHER_SYS_MAX_STRING_LEN];  
  c_t itoa[ESCHER_SYS_MAX_STRING_LEN];  
  c_t atoi[ESCHER_SYS_MAX_STRING_LEN];  
  c_t max_string_length[ESCHER_SYS_MAX_STRING_LEN];  
  c_t debug_buffer_depth[ESCHER_SYS_MAX_STRING_LEN];  

};
void ooaofooa_TE_STRING_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_STRING_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TE_STRING_batch_relate 0



#define ooaofooa_TE_STRING_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_STRING_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_STRING_CLASS_H */


