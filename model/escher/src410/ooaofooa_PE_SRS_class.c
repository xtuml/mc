/*----------------------------------------------------------------------------
 * File:  ooaofooa_PE_SRS_class.c
 *
 * Class:       Search Result Set  (PE_SRS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "sys_sys_types.h"
#include "LOG_bridge.h"
#include "POP_bridge.h"
#include "T_bridge.h"
#include "ooaofooa_classes.h"

/*
 * Instance Loader (from string data).
 */
Escher_iHandle_t
ooaofooa_PE_SRS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_PE_SRS * self = (ooaofooa_PE_SRS *) instance;
  /* Initialize application analysis class attributes.  */
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  self->Type = Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_PE_SRS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_PE_SRS * ooaofooa_PE_SRS_instance = (ooaofooa_PE_SRS *) instance;
  ooaofooa_EP_PKG * ooaofooa_EP_PKGrelated_instance1 = ooaofooa_EP_PKG_AnyWhere1( ooaofooa_PE_SRS_instance->Package_ID );
  if ( ooaofooa_EP_PKGrelated_instance1 ) {
    ooaofooa_PE_SRS_R8005_Link_holds( ooaofooa_EP_PKGrelated_instance1, ooaofooa_PE_SRS_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_PE_SRS *
ooaofooa_PE_SRS_AnyWhere1( Escher_UniqueID_t w_Package_ID, c_t w_Name[ESCHER_SYS_MAX_STRING_LEN], sys_ElementTypeConstants_t w_Type )
{
  ooaofooa_PE_SRS * w; 
  Escher_Iterator_s iter_PE_SRS;
  Escher_IteratorReset( &iter_PE_SRS, &pG_ooaofooa_PE_SRS_extent.active );
  while ( (w = (ooaofooa_PE_SRS *) Escher_IteratorNext( &iter_PE_SRS )) != 0 ) {
    if ( w->Package_ID == w_Package_ID && !Escher_strcmp(w->Name, w_Name) && w->Type == w_Type ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE EP_PKG TO PE_SRS ACROSS R8005
 */
void
ooaofooa_PE_SRS_R8005_Link_holds( ooaofooa_EP_PKG * part, ooaofooa_PE_SRS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = part->Package_ID;
  form->EP_PKG_R8005_held_by = part;
  Escher_SetInsertElement( &part->PE_SRS_R8005_holds, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE EP_PKG FROM PE_SRS ACROSS R8005
 */
void
ooaofooa_PE_SRS_R8005_Unlink_holds( ooaofooa_EP_PKG * part, ooaofooa_PE_SRS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EP_PKG_R8005_held_by = 0;
  Escher_SetRemoveElement( &part->PE_SRS_R8005_holds, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_PE_SRS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_PE_SRS * self = (ooaofooa_PE_SRS *) instance;
  printf( "INSERT INTO PE_SRS VALUES ( %ld,'%s',%d );\n",
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Type );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_PE_SRS_container[ ooaofooa_PE_SRS_MAX_EXTENT_SIZE ];
static ooaofooa_PE_SRS ooaofooa_PE_SRS_instances[ ooaofooa_PE_SRS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_PE_SRS_extent = {
  {0,0}, {0,0}, &ooaofooa_PE_SRS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_PE_SRS_instances,
  sizeof( ooaofooa_PE_SRS ), 0, ooaofooa_PE_SRS_MAX_EXTENT_SIZE
  };


