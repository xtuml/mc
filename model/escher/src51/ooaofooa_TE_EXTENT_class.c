/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_EXTENT_class.c
 *
 * Class:       extent  (TE_EXTENT)
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
ooaofooa_TE_EXTENT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_EXTENT * self = (ooaofooa_TE_EXTENT *) instance;
  /* Initialize application analysis class attributes.  */
  self->sets_type = Escher_strcpy( self->sets_type, avlstring[ 1 ] );
  self->type = Escher_strcpy( self->type, avlstring[ 2 ] );
  self->active = Escher_strcpy( self->active, avlstring[ 3 ] );
  self->inactive = Escher_strcpy( self->inactive, avlstring[ 4 ] );
  self->initializer = Escher_strcpy( self->initializer, avlstring[ 5 ] );
  self->size_type = Escher_strcpy( self->size_type, avlstring[ 6 ] );
  self->size_name = Escher_strcpy( self->size_name, avlstring[ 7 ] );
  self->istate_type = Escher_strcpy( self->istate_type, avlstring[ 8 ] );
  self->istate_name = Escher_strcpy( self->istate_name, avlstring[ 9 ] );
  self->container_type = Escher_strcpy( self->container_type, avlstring[ 10 ] );
  self->container_name = Escher_strcpy( self->container_name, avlstring[ 11 ] );
  self->pool_type = Escher_strcpy( self->pool_type, avlstring[ 12 ] );
  self->pool_name = Escher_strcpy( self->pool_name, avlstring[ 13 ] );
  self->population_type = Escher_strcpy( self->population_type, avlstring[ 14 ] );
  self->population_name = Escher_strcpy( self->population_name, avlstring[ 15 ] );
  self->rstorsize_type = Escher_strcpy( self->rstorsize_type, avlstring[ 16 ] );
  self->rstorsize_name = Escher_strcpy( self->rstorsize_name, avlstring[ 17 ] );
  self->linkfunc_name = Escher_strcpy( self->linkfunc_name, avlstring[ 18 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_EXTENT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_EXTENT * ooaofooa_TE_EXTENT_instance = (ooaofooa_TE_EXTENT *) instance;
}


/*
 * RELATE TE_SET TO TE_INSTANCE ACROSS R2066 USING TE_EXTENT
 */
void
ooaofooa_TE_EXTENT_R2066_Link( ooaofooa_TE_SET * aone, ooaofooa_TE_INSTANCE * aoth, ooaofooa_TE_EXTENT * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  /* Initialize optimized relationship storage extended attributes */
  assr->TE_SET_R2066 = aone;
  assr->TE_INSTANCE_R2066 = aoth;
  Escher_SetInsertElement( &aone->TE_EXTENT_R2066, assr );
  aoth->TE_EXTENT_R2066 = assr;
}

/*
 * UNRELATE TE_SET FROM TE_INSTANCE ACROSS R2066 USING TE_EXTENT
 */
void
ooaofooa_TE_EXTENT_R2066_Unlink( ooaofooa_TE_SET * aone, ooaofooa_TE_INSTANCE * aoth, ooaofooa_TE_EXTENT * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->TE_SET_R2066 = 0;
  assr->TE_INSTANCE_R2066 = 0;
  Escher_SetRemoveElement( &aone->TE_EXTENT_R2066, assr );
  aoth->TE_EXTENT_R2066 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_EXTENT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_EXTENT * self = (ooaofooa_TE_EXTENT *) instance;
  printf( "INSERT INTO TE_EXTENT VALUES ( '%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s' );\n",
    ( 0 != self->sets_type ) ? self->sets_type : "",
    ( 0 != self->type ) ? self->type : "",
    ( 0 != self->active ) ? self->active : "",
    ( 0 != self->inactive ) ? self->inactive : "",
    ( 0 != self->initializer ) ? self->initializer : "",
    ( 0 != self->size_type ) ? self->size_type : "",
    ( 0 != self->size_name ) ? self->size_name : "",
    ( 0 != self->istate_type ) ? self->istate_type : "",
    ( 0 != self->istate_name ) ? self->istate_name : "",
    ( 0 != self->container_type ) ? self->container_type : "",
    ( 0 != self->container_name ) ? self->container_name : "",
    ( 0 != self->pool_type ) ? self->pool_type : "",
    ( 0 != self->pool_name ) ? self->pool_name : "",
    ( 0 != self->population_type ) ? self->population_type : "",
    ( 0 != self->population_name ) ? self->population_name : "",
    ( 0 != self->rstorsize_type ) ? self->rstorsize_type : "",
    ( 0 != self->rstorsize_name ) ? self->rstorsize_name : "",
    ( 0 != self->linkfunc_name ) ? self->linkfunc_name : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_EXTENT_container[ ooaofooa_TE_EXTENT_MAX_EXTENT_SIZE ];
static ooaofooa_TE_EXTENT ooaofooa_TE_EXTENT_instances[ ooaofooa_TE_EXTENT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_EXTENT_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_EXTENT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_EXTENT_instances,
  sizeof( ooaofooa_TE_EXTENT ), 0, ooaofooa_TE_EXTENT_MAX_EXTENT_SIZE
  };


