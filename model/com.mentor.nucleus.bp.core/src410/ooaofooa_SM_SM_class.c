/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_SM_class.c
 *
 * Class:       State Machine  (SM_SM)
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
ooaofooa_SM_SM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_SM * self = (ooaofooa_SM_SM *) instance;
  /* Initialize application analysis class attributes.  */
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->SM_ID;
  {i_t i = avlstring[ 2 + 1 ] - avlstring[ 2 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 2 ][ i ]; }
  }
  self->Config_ID = Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SM_SM *
ooaofooa_SM_SM_AnyWhere1( Escher_UniqueID_t w_SM_ID )
{
  ooaofooa_SM_SM * w; 
  Escher_Iterator_s iter_SM_SM;
  Escher_IteratorReset( &iter_SM_SM, &pG_ooaofooa_SM_SM_extent.active );
  while ( (w = (ooaofooa_SM_SM *) Escher_IteratorNext( &iter_SM_SM )) != 0 ) {
    if ( w->SM_ID == w_SM_ID ) {
      return w;
    }
  }
  return 0;
}


/* Accessors to SM_SM[R510] subtypes */


/* Accessors to SM_SM[R517] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_SM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_SM * self = (ooaofooa_SM_SM *) instance;
  printf( "INSERT INTO SM_SM VALUES ( %ld,'%s',%d );\n",
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    self->Descrip,
    self->Config_ID );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_SM_container[ ooaofooa_SM_SM_MAX_EXTENT_SIZE ];
static ooaofooa_SM_SM ooaofooa_SM_SM_instances[ ooaofooa_SM_SM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_SM_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_SM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_SM_instances,
  sizeof( ooaofooa_SM_SM ), 0, ooaofooa_SM_SM_MAX_EXTENT_SIZE
  };


