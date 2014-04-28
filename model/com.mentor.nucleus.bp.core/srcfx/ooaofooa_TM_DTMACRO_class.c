/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_DTMACRO_class.c
 *
 * Class:       Data Type Macro  (TM_DTMACRO)
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
ooaofooa_TM_DTMACRO_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TM_DTMACRO * self = (ooaofooa_TM_DTMACRO *) instance;
  /* Initialize application analysis class attributes.  */
  self->component = Escher_strcpy( self->component, avlstring[ 1 ] );
  self->DT_name = Escher_strcpy( self->DT_name, avlstring[ 2 ] );
  self->IsExternalMacro = ( '0' != *avlstring[ 3 ] );
  self->genName = Escher_strcpy( self->genName, avlstring[ 4 ] );
  self->Initial_Value = Escher_strcpy( self->Initial_Value, avlstring[ 5 ] );
  self->Include_File = Escher_strcpy( self->Include_File, avlstring[ 6 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TM_DTMACRO_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TM_DTMACRO * self = (ooaofooa_TM_DTMACRO *) instance;
  printf( "INSERT INTO TM_DTMACRO VALUES ( '%s','%s',%d,'%s','%s','%s' );\n",
    ( 0 != self->component ) ? self->component : "",
    ( 0 != self->DT_name ) ? self->DT_name : "",
    self->IsExternalMacro,
    ( 0 != self->genName ) ? self->genName : "",
    ( 0 != self->Initial_Value ) ? self->Initial_Value : "",
    ( 0 != self->Include_File ) ? self->Include_File : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TM_DTMACRO_container[ ooaofooa_TM_DTMACRO_MAX_EXTENT_SIZE ];
static ooaofooa_TM_DTMACRO ooaofooa_TM_DTMACRO_instances[ ooaofooa_TM_DTMACRO_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TM_DTMACRO_extent = {
  {0,0}, {0,0}, &ooaofooa_TM_DTMACRO_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TM_DTMACRO_instances,
  sizeof( ooaofooa_TM_DTMACRO ), 0, ooaofooa_TM_DTMACRO_MAX_EXTENT_SIZE
  };


