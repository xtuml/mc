/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_DATE_class.h
 *
 * Class:       date  (DOC_DATE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_DOC_DATE_CLASS_H
#define OOAOFOOA_DOC_DATE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   date  (DOC_DATE)
 */
struct ooaofooa_DOC_DATE {

  /* application analysis class attributes */
  i_t year;  
  c_t * month;  
  i_t day;  
  c_t * time;  

  /* relationship storage */
  ooaofooa_DOC_DOC * DOC_DOC_R2302;
};
void ooaofooa_DOC_DATE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_DOC_DATE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_DOC_DATE_batch_relate( Escher_iHandle_t );

void ooaofooa_DOC_DATE_R2302_Link( ooaofooa_DOC_DOC *, ooaofooa_DOC_DATE * );
void ooaofooa_DOC_DATE_R2302_Unlink( ooaofooa_DOC_DOC *, ooaofooa_DOC_DATE * );


#define ooaofooa_DOC_DATE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_DOC_DATE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_DOC_DATE_CLASS_H */


