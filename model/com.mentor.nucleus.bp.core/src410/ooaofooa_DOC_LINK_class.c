/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_LINK_class.c
 *
 * Class:       link  (DOC_LINK)
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
ooaofooa_DOC_LINK_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_DOC_LINK * self = (ooaofooa_DOC_LINK *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->target, avlstring[ 1 ] );
  Escher_strcpy( self->text, avlstring[ 2 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_DOC_LINK_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_DOC_LINK * self = (ooaofooa_DOC_LINK *) instance;
  printf( "INSERT INTO DOC_LINK VALUES ( '%s','%s' );\n",
    self->target,
    self->text );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_DOC_LINK_container[ ooaofooa_DOC_LINK_MAX_EXTENT_SIZE ];
static ooaofooa_DOC_LINK ooaofooa_DOC_LINK_instances[ ooaofooa_DOC_LINK_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_DOC_LINK_extent = {
  {0,0}, {0,0}, &ooaofooa_DOC_LINK_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_DOC_LINK_instances,
  sizeof( ooaofooa_DOC_LINK ), 0, ooaofooa_DOC_LINK_MAX_EXTENT_SIZE
  };


