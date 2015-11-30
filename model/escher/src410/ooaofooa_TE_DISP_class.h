/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_DISP_class.h
 *
 * Class:       Dispatcher  (TE_DISP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_DISP_CLASS_H
#define OOAOFOOA_TE_DISP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Dispatcher  (TE_DISP)
 */
struct ooaofooa_TE_DISP {

  /* application analysis class attributes */
  i_t Dispatcher_ID;  
  i_t SystemID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_TE_SYS * TE_SYS_R2003;
  Escher_ObjectSet_s TE_QUEUE_R2004_manages;
};
void ooaofooa_TE_DISP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_DISP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_DISP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_DISP * ooaofooa_TE_DISP_AnyWhere1( i_t );

void ooaofooa_TE_DISP_R2003_Link( ooaofooa_TE_SYS *, ooaofooa_TE_DISP * );
void ooaofooa_TE_DISP_R2003_Unlink( ooaofooa_TE_SYS *, ooaofooa_TE_DISP * );
#define ooaofooa_TE_QUEUE_R2004_From_TE_DISP_manages( TE_DISP ) ( &((TE_DISP)->TE_QUEUE_R2004_manages) )
/* Note:  TE_DISP->TE_QUEUE[R2004] not navigated */


#define ooaofooa_TE_DISP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_DISP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_DISP_CLASS_H */


