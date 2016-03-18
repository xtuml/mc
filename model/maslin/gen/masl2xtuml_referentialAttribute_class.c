/*----------------------------------------------------------------------------
 * File:  masl2xtuml_referentialAttribute_class.c
 *
 * Class:       referentialAttribute  (referentialAttribute)
 * Component:   masl2xtuml
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "maslin_sys_types.h"
#include "LOG_bridge.h"
#include "STRING_bridge.h"
#include "TRACE_bridge.h"
#include "masl2xtuml_classes.h"

/*
 * Instance Loader (from string data).
 */
Escher_iHandle_t
masl2xtuml_referentialAttribute_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  masl2xtuml_referentialAttribute * self = (masl2xtuml_referentialAttribute *) instance;
  /* Initialize application analysis class attributes.  */
  self->attrName = Escher_strcpy( self->attrName, avlstring[ 1 ] );
  self->identifier = Escher_atoi( avlstring[ 2 ] );
  self->relationship = Escher_strcpy( self->relationship, avlstring[ 3 ] );
  self->roleOrObj = Escher_strcpy( self->roleOrObj, avlstring[ 4 ] );
  Escher_memset( &self->o_obj, avlstring[ 5 ], sizeof( self->o_obj ) );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
masl2xtuml_referentialAttribute_instancedumper( Escher_iHandle_t instance )
{
  masl2xtuml_referentialAttribute * self = (masl2xtuml_referentialAttribute *) instance;
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s masl2xtuml_referentialAttribute_container[ masl2xtuml_referentialAttribute_MAX_EXTENT_SIZE ];
static masl2xtuml_referentialAttribute masl2xtuml_referentialAttribute_instances[ masl2xtuml_referentialAttribute_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_masl2xtuml_referentialAttribute_extent = {
  {0,0}, {0,0}, &masl2xtuml_referentialAttribute_container[ 0 ],
  (Escher_iHandle_t) &masl2xtuml_referentialAttribute_instances,
  sizeof( masl2xtuml_referentialAttribute ), 0, masl2xtuml_referentialAttribute_MAX_EXTENT_SIZE
  };

