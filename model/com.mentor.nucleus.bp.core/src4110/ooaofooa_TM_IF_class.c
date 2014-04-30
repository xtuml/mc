/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_IF_class.c
 *
 * Class:       Interface Mark  (TM_IF)
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
ooaofooa_TM_IF_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TM_IF * self = (ooaofooa_TM_IF *) instance;
  /* Initialize application analysis class attributes.  */
  self->Package = Escher_strcpy( self->Package, avlstring[ 1 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 2 ] );
  self->c_iId = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TM_IF_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TM_IF * ooaofooa_TM_IF_instance = (ooaofooa_TM_IF *) instance;
  ooaofooa_C_I * ooaofooa_C_Irelated_instance1 = ooaofooa_C_I_AnyWhere1( ooaofooa_TM_IF_instance->c_iId );
  if ( ooaofooa_C_Irelated_instance1 ) {
    ooaofooa_TM_IF_R2807_Link( ooaofooa_C_Irelated_instance1, ooaofooa_TM_IF_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TM_IF *
ooaofooa_TM_IF_AnyWhere1( c_t * w_Package, c_t * w_Name )
{
  ooaofooa_TM_IF * w; 
  Escher_Iterator_s iter_TM_IF;
  Escher_IteratorReset( &iter_TM_IF, &pG_ooaofooa_TM_IF_extent.active );
  while ( (w = (ooaofooa_TM_IF *) Escher_IteratorNext( &iter_TM_IF )) != 0 ) {
    if ( w->Package == w_Package && w->Name == w_Name ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE C_I TO TM_IF ACROSS R2807
 */
void
ooaofooa_TM_IF_R2807_Link( ooaofooa_C_I * part, ooaofooa_TM_IF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->c_iId = part->Id;
  form->C_I_R2807 = part;
  part->TM_IF_R2807 = form;
}

/*
 * UNRELATE C_I FROM TM_IF ACROSS R2807
 */
void
ooaofooa_TM_IF_R2807_Unlink( ooaofooa_C_I * part, ooaofooa_TM_IF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->c_iId = 0;
  form->C_I_R2807 = 0;
  part->TM_IF_R2807 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TM_IF_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TM_IF * self = (ooaofooa_TM_IF *) instance;
  printf( "INSERT INTO TM_IF VALUES ( '%s','%s',%ld );\n",
    ( 0 != self->Package ) ? self->Package : "",
    ( 0 != self->Name ) ? self->Name : "",
    ((long)self->c_iId & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TM_IF_container[ ooaofooa_TM_IF_MAX_EXTENT_SIZE ];
static ooaofooa_TM_IF ooaofooa_TM_IF_instances[ ooaofooa_TM_IF_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TM_IF_extent = {
  {0,0}, {0,0}, &ooaofooa_TM_IF_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TM_IF_instances,
  sizeof( ooaofooa_TM_IF ), 0, ooaofooa_TM_IF_MAX_EXTENT_SIZE
  };


