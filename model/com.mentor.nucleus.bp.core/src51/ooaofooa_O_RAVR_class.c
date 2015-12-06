/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_RAVR_class.c
 *
 * Class:       Referential Attribute Visited Recorder  (O_RAVR)
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
ooaofooa_O_RAVR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_O_RAVR * self = (ooaofooa_O_RAVR *) instance;
  /* Initialize application analysis class attributes.  */
  return return_identifier;
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_O_RAVR *
ooaofooa_O_RAVR_AnyWhere1( Escher_UniqueID_t w_recorderId )
{
  ooaofooa_O_RAVR * w; 
  Escher_Iterator_s iter_O_RAVR;
  Escher_IteratorReset( &iter_O_RAVR, &pG_ooaofooa_O_RAVR_extent.active );
  while ( (w = (ooaofooa_O_RAVR *) Escher_IteratorNext( &iter_O_RAVR )) != 0 ) {
    if ( w->recorderId == w_recorderId ) {
      return w;
    }
  }
  return 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_O_RAVR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_O_RAVR * self = (ooaofooa_O_RAVR *) instance;
  printf( "INSERT INTO O_RAVR VALUES (  );\n" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_O_RAVR_container[ ooaofooa_O_RAVR_MAX_EXTENT_SIZE ];
static ooaofooa_O_RAVR ooaofooa_O_RAVR_instances[ ooaofooa_O_RAVR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_O_RAVR_extent = {
  {0,0}, {0,0}, &ooaofooa_O_RAVR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_O_RAVR_instances,
  sizeof( ooaofooa_O_RAVR ), 0, ooaofooa_O_RAVR_MAX_EXTENT_SIZE
  };


