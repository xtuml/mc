/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_C_class.c
 *
 * Class:       Component Mark  (TM_C)
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
ooaofooa_TM_C_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TM_C * self = (ooaofooa_TM_C *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->Package, avlstring[ 1 ] );
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  Escher_strcpy( self->xName, avlstring[ 3 ] );
  Escher_strcpy( self->include_file, avlstring[ 4 ] );
  self->isChannel = ( '0' != *avlstring[ 5 ] );
  self->isRealized = ( '0' != *avlstring[ 6 ] );
  self->te_cID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TM_C_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TM_C * ooaofooa_TM_C_instance = (ooaofooa_TM_C *) instance;
  ooaofooa_TE_C * ooaofooa_TE_Crelated_instance1 = (ooaofooa_TE_C *) Escher_instance_cache[ (intptr_t) ooaofooa_TM_C_instance->te_cID ];
  if ( ooaofooa_TE_Crelated_instance1 ) {
    ooaofooa_TM_C_R2804_Link( ooaofooa_TE_Crelated_instance1, ooaofooa_TM_C_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TM_C *
ooaofooa_TM_C_AnyWhere1( c_t w_Package[ESCHER_SYS_MAX_STRING_LEN], c_t w_Name[ESCHER_SYS_MAX_STRING_LEN] )
{
  ooaofooa_TM_C * w; 
  Escher_Iterator_s iter_TM_C;
  Escher_IteratorReset( &iter_TM_C, &pG_ooaofooa_TM_C_extent.active );
  while ( (w = (ooaofooa_TM_C *) Escher_IteratorNext( &iter_TM_C )) != 0 ) {
    if ( !Escher_strcmp(w->Package, w_Package) && !Escher_strcmp(w->Name, w_Name) ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE TE_C TO TM_C ACROSS R2804
 */
void
ooaofooa_TM_C_R2804_Link( ooaofooa_TE_C * part, ooaofooa_TM_C * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_cID = part->ID;
  form->TE_C_R2804_marks = part;
  part->TM_C_R2804 = form;
}

/*
 * UNRELATE TE_C FROM TM_C ACROSS R2804
 */
void
ooaofooa_TM_C_R2804_Unlink( ooaofooa_TE_C * part, ooaofooa_TM_C * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_cID = 0;
  form->TE_C_R2804_marks = 0;
  part->TM_C_R2804 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TM_C_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TM_C * self = (ooaofooa_TM_C *) instance;
  printf( "INSERT INTO TM_C VALUES ( '%s','%s','%s','%s',%d,%d,%ld );\n",
    self->Package,
    self->Name,
    self->xName,
    self->include_file,
    self->isChannel,
    self->isRealized,
    ((long)self->te_cID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TM_C_container[ ooaofooa_TM_C_MAX_EXTENT_SIZE ];
static ooaofooa_TM_C ooaofooa_TM_C_instances[ ooaofooa_TM_C_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TM_C_extent = {
  {0,0}, {0,0}, &ooaofooa_TM_C_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TM_C_instances,
  sizeof( ooaofooa_TM_C ), 0, ooaofooa_TM_C_MAX_EXTENT_SIZE
  };


