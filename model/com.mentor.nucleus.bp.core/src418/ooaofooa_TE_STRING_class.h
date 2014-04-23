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
  c_t * memset;  
  c_t * memmove;  
  c_t * strcpy;  
  c_t * stradd;  
  c_t * strlen;  
  c_t * strcmp;  
  c_t * strget;  
  c_t * itoa;  
  c_t * atoi;  
  c_t * max_string_length;  
  c_t * debug_buffer_depth;  

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


