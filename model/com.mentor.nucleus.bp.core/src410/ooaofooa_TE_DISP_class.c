/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_DISP_class.c
 *
 * Class:       Dispatcher  (TE_DISP)
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
ooaofooa_TE_DISP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_DISP * self = (ooaofooa_TE_DISP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Dispatcher_ID = Escher_atoi( avlstring[ 1 ] );
  self->SystemID = Escher_atoi( avlstring[ 2 ] );
  Escher_strcpy( self->Name, avlstring[ 3 ] );
  {i_t i = avlstring[ 4 + 1 ] - avlstring[ 4 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 4 ][ i ]; }
  }
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_DISP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_DISP * ooaofooa_TE_DISP_instance = (ooaofooa_TE_DISP *) instance;
  ooaofooa_TE_SYS * ooaofooa_TE_SYSrelated_instance1 = (ooaofooa_TE_SYS *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_DISP_instance->SystemID ];
  if ( ooaofooa_TE_SYSrelated_instance1 ) {
    ooaofooa_TE_DISP_R2003_Link( ooaofooa_TE_SYSrelated_instance1, ooaofooa_TE_DISP_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_DISP *
ooaofooa_TE_DISP_AnyWhere1( i_t w_Dispatcher_ID )
{
  ooaofooa_TE_DISP * w; 
  Escher_Iterator_s iter_TE_DISP;
  Escher_IteratorReset( &iter_TE_DISP, &pG_ooaofooa_TE_DISP_extent.active );
  while ( (w = (ooaofooa_TE_DISP *) Escher_IteratorNext( &iter_TE_DISP )) != 0 ) {
    if ( w->Dispatcher_ID == w_Dispatcher_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE TE_SYS TO TE_DISP ACROSS R2003
 */
void
ooaofooa_TE_DISP_R2003_Link( ooaofooa_TE_SYS * part, ooaofooa_TE_DISP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SystemID = part->SystemID;
  form->TE_SYS_R2003 = part;
  Escher_SetInsertElement( &part->TE_DISP_R2003, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_SYS FROM TE_DISP ACROSS R2003
 */
void
ooaofooa_TE_DISP_R2003_Unlink( ooaofooa_TE_SYS * part, ooaofooa_TE_DISP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SystemID = 0;
  form->TE_SYS_R2003 = 0;
  Escher_SetRemoveElement( &part->TE_DISP_R2003, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_DISP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_DISP * self = (ooaofooa_TE_DISP *) instance;
  printf( "INSERT INTO TE_DISP VALUES ( %d,%d,'%s','%s' );\n",
    self->Dispatcher_ID,
    self->SystemID,
    self->Name,
    self->Descrip );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_DISP_container[ ooaofooa_TE_DISP_MAX_EXTENT_SIZE ];
static ooaofooa_TE_DISP ooaofooa_TE_DISP_instances[ ooaofooa_TE_DISP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_DISP_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_DISP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_DISP_instances,
  sizeof( ooaofooa_TE_DISP ), 0, ooaofooa_TE_DISP_MAX_EXTENT_SIZE
  };


