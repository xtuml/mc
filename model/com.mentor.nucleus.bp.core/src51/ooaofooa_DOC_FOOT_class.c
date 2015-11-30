/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_FOOT_class.c
 *
 * Class:       footer  (DOC_FOOT)
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
ooaofooa_DOC_FOOT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_DOC_FOOT * self = (ooaofooa_DOC_FOOT *) instance;
  /* Initialize application analysis class attributes.  */
  self->text = Escher_strcpy( self->text, avlstring[ 1 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_DOC_FOOT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_DOC_FOOT * self = (ooaofooa_DOC_FOOT *) instance;
  printf( "INSERT INTO DOC_FOOT VALUES ( '%s' );\n",
    ( 0 != self->text ) ? self->text : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_DOC_FOOT_container[ ooaofooa_DOC_FOOT_MAX_EXTENT_SIZE ];
static ooaofooa_DOC_FOOT ooaofooa_DOC_FOOT_instances[ ooaofooa_DOC_FOOT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_DOC_FOOT_extent = {
  {0,0}, {0,0}, &ooaofooa_DOC_FOOT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_DOC_FOOT_instances,
  sizeof( ooaofooa_DOC_FOOT ), 0, ooaofooa_DOC_FOOT_MAX_EXTENT_SIZE
  };


