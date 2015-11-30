/*----------------------------------------------------------------------------
 * File:  ooaofooa_PE_CRS_class.c
 *
 * Class:       Component Result Set  (PE_CRS)
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
ooaofooa_PE_CRS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_PE_CRS * self = (ooaofooa_PE_CRS *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  self->Type = Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_PE_CRS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_PE_CRS * ooaofooa_PE_CRS_instance = (ooaofooa_PE_CRS *) instance;
  ooaofooa_C_C * ooaofooa_C_Crelated_instance1 = ooaofooa_C_C_AnyWhere1( ooaofooa_PE_CRS_instance->Id );
  if ( ooaofooa_C_Crelated_instance1 ) {
    ooaofooa_PE_CRS_R8007_Link_holds( ooaofooa_C_Crelated_instance1, ooaofooa_PE_CRS_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_PE_CRS *
ooaofooa_PE_CRS_AnyWhere1( Escher_UniqueID_t w_Id, c_t w_Name[ESCHER_SYS_MAX_STRING_LEN], sys_ElementTypeConstants_t w_Type )
{
  ooaofooa_PE_CRS * w; 
  Escher_Iterator_s iter_PE_CRS;
  Escher_IteratorReset( &iter_PE_CRS, &pG_ooaofooa_PE_CRS_extent.active );
  while ( (w = (ooaofooa_PE_CRS *) Escher_IteratorNext( &iter_PE_CRS )) != 0 ) {
    if ( w->Id == w_Id && !Escher_strcmp(w->Name, w_Name) && w->Type == w_Type ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE C_C TO PE_CRS ACROSS R8007
 */
void
ooaofooa_PE_CRS_R8007_Link_holds( ooaofooa_C_C * part, ooaofooa_PE_CRS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Id = part->Id;
  form->C_C_R8007_held_by = part;
  Escher_SetInsertElement( &part->PE_CRS_R8007_holds, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_C FROM PE_CRS ACROSS R8007
 */
void
ooaofooa_PE_CRS_R8007_Unlink_holds( ooaofooa_C_C * part, ooaofooa_PE_CRS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->C_C_R8007_held_by = 0;
  Escher_SetRemoveElement( &part->PE_CRS_R8007_holds, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_PE_CRS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_PE_CRS * self = (ooaofooa_PE_CRS *) instance;
  printf( "INSERT INTO PE_CRS VALUES ( %ld,'%s',%d );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Type );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_PE_CRS_container[ ooaofooa_PE_CRS_MAX_EXTENT_SIZE ];
static ooaofooa_PE_CRS ooaofooa_PE_CRS_instances[ ooaofooa_PE_CRS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_PE_CRS_extent = {
  {0,0}, {0,0}, &ooaofooa_PE_CRS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_PE_CRS_instances,
  sizeof( ooaofooa_PE_CRS ), 0, ooaofooa_PE_CRS_MAX_EXTENT_SIZE
  };


