/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_SYS_class.c
 *
 * Class:       System Model  (S_SYS)
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
ooaofooa_S_SYS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_SYS * self = (ooaofooa_S_SYS *) instance;
  /* Initialize application analysis class attributes.  */
  self->Sys_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Sys_ID;
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  self->useGlobals = ( '0' != *avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_SYS *
ooaofooa_S_SYS_AnyWhere1( Escher_UniqueID_t w_Sys_ID )
{
  ooaofooa_S_SYS * w; 
  Escher_Iterator_s iter_S_SYS;
  Escher_IteratorReset( &iter_S_SYS, &pG_ooaofooa_S_SYS_extent.active );
  while ( (w = (ooaofooa_S_SYS *) Escher_IteratorNext( &iter_S_SYS )) != 0 ) {
    if ( w->Sys_ID == w_Sys_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_SYS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_SYS * self = (ooaofooa_S_SYS *) instance;
  printf( "INSERT INTO S_SYS VALUES ( %ld,'%s',%d );\n",
    ((long)self->Sys_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->useGlobals );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_SYS_container[ ooaofooa_S_SYS_MAX_EXTENT_SIZE ];
static ooaofooa_S_SYS ooaofooa_S_SYS_instances[ ooaofooa_S_SYS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_SYS_extent = {
  {0,0}, {0,0}, &ooaofooa_S_SYS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_SYS_instances,
  sizeof( ooaofooa_S_SYS ), 0, ooaofooa_S_SYS_MAX_EXTENT_SIZE
  };


