/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_TARGET_class.c
 *
 * Class:       target  (TE_TARGET)
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
ooaofooa_TE_TARGET_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_TARGET * self = (ooaofooa_TE_TARGET *) instance;
  /* Initialize application analysis class attributes.  */
  self->language = Escher_strcpy( self->language, avlstring[ 1 ] );
  self->c2cplusplus_linkage_begin = Escher_strcpy( self->c2cplusplus_linkage_begin, avlstring[ 2 ] );
  self->c2cplusplus_linkage_end = Escher_strcpy( self->c2cplusplus_linkage_end, avlstring[ 3 ] );
  self->main = Escher_strcpy( self->main, avlstring[ 4 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_TARGET_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_TARGET * self = (ooaofooa_TE_TARGET *) instance;
  printf( "INSERT INTO TE_TARGET VALUES ( '%s','%s','%s','%s' );\n",
    ( 0 != self->language ) ? self->language : "",
    ( 0 != self->c2cplusplus_linkage_begin ) ? self->c2cplusplus_linkage_begin : "",
    ( 0 != self->c2cplusplus_linkage_end ) ? self->c2cplusplus_linkage_end : "",
    ( 0 != self->main ) ? self->main : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_TARGET_container[ ooaofooa_TE_TARGET_MAX_EXTENT_SIZE ];
static ooaofooa_TE_TARGET ooaofooa_TE_TARGET_instances[ ooaofooa_TE_TARGET_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_TARGET_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_TARGET_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_TARGET_instances,
  sizeof( ooaofooa_TE_TARGET ), 0, ooaofooa_TE_TARGET_MAX_EXTENT_SIZE
  };


