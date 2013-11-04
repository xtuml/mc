/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_RELSTORE_class.c
 *
 * Class:       relationship storage  (TE_RELSTORE)
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
ooaofooa_TE_RELSTORE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_RELSTORE * self = (ooaofooa_TE_RELSTORE *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->data_declare, avlstring[ 1 ] );
  Escher_strcpy( self->data_init, avlstring[ 2 ] );
  Escher_strcpy( self->link_calls, avlstring[ 3 ] );
  self->link_index = Escher_atoi( avlstring[ 4 ] );
  Escher_strcpy( self->data_fini, avlstring[ 5 ] );
  Escher_strcpy( self->self_name, avlstring[ 6 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_RELSTORE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_RELSTORE * self = (ooaofooa_TE_RELSTORE *) instance;
  printf( "INSERT INTO TE_RELSTORE VALUES ( '%s','%s','%s',%d,'%s','%s' );\n",
    self->data_declare,
    self->data_init,
    self->link_calls,
    self->link_index,
    self->data_fini,
    self->self_name );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_RELSTORE_container[ ooaofooa_TE_RELSTORE_MAX_EXTENT_SIZE ];
static ooaofooa_TE_RELSTORE ooaofooa_TE_RELSTORE_instances[ ooaofooa_TE_RELSTORE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_RELSTORE_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_RELSTORE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_RELSTORE_instances,
  sizeof( ooaofooa_TE_RELSTORE ), 0, ooaofooa_TE_RELSTORE_MAX_EXTENT_SIZE
  };


