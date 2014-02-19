/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_QUEUE_class.h
 *
 * Class:       Message Queue  (TE_QUEUE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_QUEUE_CLASS_H
#define OOAOFOOA_TE_QUEUE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Message Queue  (TE_QUEUE)
 */
struct ooaofooa_TE_QUEUE {

  /* application analysis class attributes */
  i_t Queue_ID;  
  i_t Dispatcher_ID;  
  i_t Type;  
  c_t * Descrip;  
  bool RenderCode;  
  i_t MaxDepth;  

  /* relationship storage */
  ooaofooa_TE_DISP * TE_DISP_R2004_is_managed_by;
};
void ooaofooa_TE_QUEUE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_QUEUE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_QUEUE_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_QUEUE_R2004_Link_manages( ooaofooa_TE_DISP *, ooaofooa_TE_QUEUE * );
void ooaofooa_TE_QUEUE_R2004_Unlink_manages( ooaofooa_TE_DISP *, ooaofooa_TE_QUEUE * );


#define ooaofooa_TE_QUEUE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_QUEUE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_QUEUE_CLASS_H */


