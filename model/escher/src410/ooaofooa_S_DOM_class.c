/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_DOM_class.c
 *
 * Class:       Domain  (S_DOM)
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
ooaofooa_S_DOM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_DOM * self = (ooaofooa_S_DOM *) instance;
  /* Initialize application analysis class attributes.  */
  self->Dom_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Dom_ID;
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  {i_t i = avlstring[ 3 + 1 ] - avlstring[ 3 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 3 ][ i ]; }
  }
  self->Full_Der = Escher_atoi( avlstring[ 4 ] );
  self->Config_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->Sys_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_DOM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_DOM * ooaofooa_S_DOM_instance = (ooaofooa_S_DOM *) instance;
  ooaofooa_S_SYS * ooaofooa_S_SYSrelated_instance1 = (ooaofooa_S_SYS *) Escher_instance_cache[ (intptr_t) ooaofooa_S_DOM_instance->Sys_ID ];
  if ( ooaofooa_S_SYSrelated_instance1 ) {
    ooaofooa_S_DOM_R28_Link( ooaofooa_S_SYSrelated_instance1, ooaofooa_S_DOM_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_DOM *
ooaofooa_S_DOM_AnyWhere1( Escher_UniqueID_t w_Dom_ID )
{
  ooaofooa_S_DOM * w; 
  Escher_Iterator_s iter_S_DOM;
  Escher_IteratorReset( &iter_S_DOM, &pG_ooaofooa_S_DOM_extent.active );
  while ( (w = (ooaofooa_S_DOM *) Escher_IteratorNext( &iter_S_DOM )) != 0 ) {
    if ( w->Dom_ID == w_Dom_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_SYS TO S_DOM ACROSS R28
 */
void
ooaofooa_S_DOM_R28_Link( ooaofooa_S_SYS * part, ooaofooa_S_DOM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sys_ID = part->Sys_ID;
  form->S_SYS_R28 = part;
  Escher_SetInsertElement( &part->S_DOM_R28, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SYS FROM S_DOM ACROSS R28
 */
void
ooaofooa_S_DOM_R28_Unlink( ooaofooa_S_SYS * part, ooaofooa_S_DOM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sys_ID = 0;
  form->S_SYS_R28 = 0;
  Escher_SetRemoveElement( &part->S_DOM_R28, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_DOM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_DOM * self = (ooaofooa_S_DOM *) instance;
  printf( "INSERT INTO S_DOM VALUES ( %ld,'%s','%s',%d,%ld,%ld );\n",
    ((long)self->Dom_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip,
    self->Full_Der,
    ((long)self->Config_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Sys_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_DOM_container[ ooaofooa_S_DOM_MAX_EXTENT_SIZE ];
static ooaofooa_S_DOM ooaofooa_S_DOM_instances[ ooaofooa_S_DOM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_DOM_extent = {
  {0,0}, {0,0}, &ooaofooa_S_DOM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_DOM_instances,
  sizeof( ooaofooa_S_DOM ), 0, ooaofooa_S_DOM_MAX_EXTENT_SIZE
  };


