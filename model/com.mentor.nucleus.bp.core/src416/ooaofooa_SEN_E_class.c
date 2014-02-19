/*----------------------------------------------------------------------------
 * File:  ooaofooa_SEN_E_class.c
 *
 * Class:       Search Engine  (SEN_E)
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
ooaofooa_SEN_E_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SEN_E * self = (ooaofooa_SEN_E *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Id;
  return return_identifier;
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SEN_E *
ooaofooa_SEN_E_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_SEN_E * w; 
  Escher_Iterator_s iter_SEN_E;
  Escher_IteratorReset( &iter_SEN_E, &pG_ooaofooa_SEN_E_extent.active );
  while ( (w = (ooaofooa_SEN_E *) Escher_IteratorNext( &iter_SEN_E )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/* Accessors to SEN_E[R9501] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SEN_E_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SEN_E * self = (ooaofooa_SEN_E *) instance;
  printf( "INSERT INTO SEN_E VALUES ( %ld );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SEN_E_container[ ooaofooa_SEN_E_MAX_EXTENT_SIZE ];
static ooaofooa_SEN_E ooaofooa_SEN_E_instances[ ooaofooa_SEN_E_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SEN_E_extent = {
  {0,0}, {0,0}, &ooaofooa_SEN_E_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SEN_E_instances,
  sizeof( ooaofooa_SEN_E ), 0, ooaofooa_SEN_E_MAX_EXTENT_SIZE
  };


