/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_AP_class.h
 *
 * Class:       Activity Partition  (A_AP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_A_AP_CLASS_H
#define OOAOFOOA_A_AP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Activity Partition  (A_AP)
 */
struct ooaofooa_A_AP {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t Package_ID;  
  c_t * Name;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_A_A * A_A_R1111;
  ooaofooa_PE_PE * PE_PE_R8001;
};
void ooaofooa_A_AP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_A_AP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_A_AP_batch_relate( Escher_iHandle_t );

void ooaofooa_A_AP_R1111_Link_group( ooaofooa_A_A *, ooaofooa_A_AP * );
void ooaofooa_A_AP_R1111_Unlink_group( ooaofooa_A_A *, ooaofooa_A_AP * );
void ooaofooa_A_AP_R8001_Link( ooaofooa_PE_PE *, ooaofooa_A_AP * );
void ooaofooa_A_AP_R8001_Unlink( ooaofooa_PE_PE *, ooaofooa_A_AP * );


#define ooaofooa_A_AP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_A_AP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_A_AP_CLASS_H */


