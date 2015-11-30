/*----------------------------------------------------------------------------
 * File:  ooaofooa_SP_DS_class.h
 *
 * Class:       Description Searchable  (SP_DS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SP_DS_CLASS_H
#define OOAOFOOA_SP_DS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Description Searchable  (SP_DS)
 */
struct ooaofooa_SP_DS {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  c_t searchableValue[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_SP_SE * SP_SE_R9702;
};
void ooaofooa_SP_DS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SP_DS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SP_DS_batch_relate( Escher_iHandle_t );

void ooaofooa_SP_DS_R9702_Link( ooaofooa_SP_SE *, ooaofooa_SP_DS * );
void ooaofooa_SP_DS_R9702_Unlink( ooaofooa_SP_SE *, ooaofooa_SP_DS * );


#define ooaofooa_SP_DS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SP_DS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SP_DS_CLASS_H */


