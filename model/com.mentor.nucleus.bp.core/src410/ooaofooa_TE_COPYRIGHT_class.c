/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_COPYRIGHT_class.c
 *
 * Class:       copyright  (TE_COPYRIGHT)
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
ooaofooa_TE_COPYRIGHT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_COPYRIGHT * self = (ooaofooa_TE_COPYRIGHT *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->body, avlstring[ 1 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_COPYRIGHT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_COPYRIGHT * self = (ooaofooa_TE_COPYRIGHT *) instance;
  printf( "INSERT INTO TE_COPYRIGHT VALUES ( '%s' );\n",
    self->body );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_COPYRIGHT_container[ ooaofooa_TE_COPYRIGHT_MAX_EXTENT_SIZE ];
static ooaofooa_TE_COPYRIGHT ooaofooa_TE_COPYRIGHT_instances[ ooaofooa_TE_COPYRIGHT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_COPYRIGHT_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_COPYRIGHT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_COPYRIGHT_instances,
  sizeof( ooaofooa_TE_COPYRIGHT ), 0, ooaofooa_TE_COPYRIGHT_MAX_EXTENT_SIZE
  };


