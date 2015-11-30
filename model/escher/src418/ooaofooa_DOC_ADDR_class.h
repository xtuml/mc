/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_ADDR_class.h
 *
 * Class:       address  (DOC_ADDR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_DOC_ADDR_CLASS_H
#define OOAOFOOA_DOC_ADDR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   address  (DOC_ADDR)
 */
struct ooaofooa_DOC_ADDR {

  /* application analysis class attributes */
  c_t * street;  
  c_t * city;  
  c_t * state;  
  c_t * postcode;  

  /* relationship storage */
  ooaofooa_DOC_DOC * DOC_DOC_R2301;
};
void ooaofooa_DOC_ADDR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_DOC_ADDR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_DOC_ADDR_batch_relate( Escher_iHandle_t );

void ooaofooa_DOC_ADDR_R2301_Link( ooaofooa_DOC_DOC *, ooaofooa_DOC_ADDR * );
void ooaofooa_DOC_ADDR_R2301_Unlink( ooaofooa_DOC_DOC *, ooaofooa_DOC_ADDR * );


#define ooaofooa_DOC_ADDR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_DOC_ADDR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_DOC_ADDR_CLASS_H */


