/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_STIDESCRIP_class.c
 *
 * Class:       STI Descrip  (TE_STIDESCRIP)
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
ooaofooa_TE_STIDESCRIP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_STIDESCRIP * self = (ooaofooa_TE_STIDESCRIP *) instance;
  /* Initialize application analysis class attributes.  */
  {i_t i = avlstring[ 1 + 1 ] - avlstring[ 1 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 1 ][ i ]; }
  }
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_STIDESCRIP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_STIDESCRIP * self = (ooaofooa_TE_STIDESCRIP *) instance;
  printf( "INSERT INTO TE_STIDESCRIP VALUES ( '%s' );\n",
    ( 0 != self->Descrip ) ? self->Descrip : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_STIDESCRIP_container[ ooaofooa_TE_STIDESCRIP_MAX_EXTENT_SIZE ];
static ooaofooa_TE_STIDESCRIP ooaofooa_TE_STIDESCRIP_instances[ ooaofooa_TE_STIDESCRIP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_STIDESCRIP_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_STIDESCRIP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_STIDESCRIP_instances,
  sizeof( ooaofooa_TE_STIDESCRIP ), 0, ooaofooa_TE_STIDESCRIP_MAX_EXTENT_SIZE
  };


