/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_TEMPLATE_class.c
 *
 * Class:       CPP Template  (TM_TEMPLATE)
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
ooaofooa_TM_TEMPLATE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TM_TEMPLATE * self = (ooaofooa_TM_TEMPLATE *) instance;
  /* Initialize application analysis class attributes.  */
  self->ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->ID;
  self->tm_cPackage = Escher_strcpy( self->tm_cPackage, avlstring[ 2 ] );
  self->tm_cName = Escher_strcpy( self->tm_cName, avlstring[ 3 ] );
  self->tm_ifPackage = Escher_strcpy( self->tm_ifPackage, avlstring[ 4 ] );
  self->tm_ifName = Escher_strcpy( self->tm_ifName, avlstring[ 5 ] );
  self->current = ( '0' != *avlstring[ 6 ] );
  self->template_parameters = Escher_strcpy( self->template_parameters, avlstring[ 7 ] );
  self->template_parameters_default = Escher_strcpy( self->template_parameters_default, avlstring[ 8 ] );
  self->template_actual_parameters = Escher_strcpy( self->template_actual_parameters, avlstring[ 9 ] );
  self->template_default_instantiation = Escher_strcpy( self->template_default_instantiation, avlstring[ 10 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TM_TEMPLATE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TM_TEMPLATE * ooaofooa_TM_TEMPLATE_instance = (ooaofooa_TM_TEMPLATE *) instance;
  ooaofooa_TM_IF * ooaofooa_TM_IFrelated_instance1 = ooaofooa_TM_IF_AnyWhere1( ooaofooa_TM_TEMPLATE_instance->tm_ifPackage, ooaofooa_TM_TEMPLATE_instance->tm_ifName );
  if ( ooaofooa_TM_IFrelated_instance1 ) {
    ooaofooa_TM_TEMPLATE_R2802_Link( ooaofooa_TM_IFrelated_instance1, ooaofooa_TM_TEMPLATE_instance );
  }
  {
  ooaofooa_TM_C * ooaofooa_TM_Crelated_instance1 = ooaofooa_TM_C_AnyWhere1( ooaofooa_TM_TEMPLATE_instance->tm_cPackage, ooaofooa_TM_TEMPLATE_instance->tm_cName );
  if ( ooaofooa_TM_Crelated_instance1 ) {
    ooaofooa_TM_TEMPLATE_R2800_Link( ooaofooa_TM_Crelated_instance1, ooaofooa_TM_TEMPLATE_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TM_TEMPLATE *
ooaofooa_TM_TEMPLATE_AnyWhere1( Escher_UniqueID_t w_ID )
{
  ooaofooa_TM_TEMPLATE * w; 
  Escher_Iterator_s iter_TM_TEMPLATE;
  Escher_IteratorReset( &iter_TM_TEMPLATE, &pG_ooaofooa_TM_TEMPLATE_extent.active );
  while ( (w = (ooaofooa_TM_TEMPLATE *) Escher_IteratorNext( &iter_TM_TEMPLATE )) != 0 ) {
    if ( w->ID == w_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE TM_C TO TM_TEMPLATE ACROSS R2800
 */
void
ooaofooa_TM_TEMPLATE_R2800_Link( ooaofooa_TM_C * part, ooaofooa_TM_TEMPLATE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->tm_cPackage = Escher_strcpy( form->tm_cPackage, part->Package );
  form->tm_cName = Escher_strcpy( form->tm_cName, part->Name );
  form->TM_C_R2800 = part;
  part->TM_TEMPLATE_R2800 = form;
}

/*
 * UNRELATE TM_C FROM TM_TEMPLATE ACROSS R2800
 */
void
ooaofooa_TM_TEMPLATE_R2800_Unlink( ooaofooa_TM_C * part, ooaofooa_TM_TEMPLATE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  Escher_memset( &form->tm_cPackage, 0, sizeof( form->tm_cPackage ) );
  Escher_memset( &form->tm_cName, 0, sizeof( form->tm_cName ) );
  form->TM_C_R2800 = 0;
  part->TM_TEMPLATE_R2800 = 0;
}

/*
 * RELATE TM_IF TO TM_TEMPLATE ACROSS R2802
 */
void
ooaofooa_TM_TEMPLATE_R2802_Link( ooaofooa_TM_IF * part, ooaofooa_TM_TEMPLATE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->tm_ifPackage = Escher_strcpy( form->tm_ifPackage, part->Package );
  form->tm_ifName = Escher_strcpy( form->tm_ifName, part->Name );
  form->TM_IF_R2802 = part;
  part->TM_TEMPLATE_R2802 = form;
}

/*
 * UNRELATE TM_IF FROM TM_TEMPLATE ACROSS R2802
 */
void
ooaofooa_TM_TEMPLATE_R2802_Unlink( ooaofooa_TM_IF * part, ooaofooa_TM_TEMPLATE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  Escher_memset( &form->tm_ifPackage, 0, sizeof( form->tm_ifPackage ) );
  Escher_memset( &form->tm_ifName, 0, sizeof( form->tm_ifName ) );
  form->TM_IF_R2802 = 0;
  part->TM_TEMPLATE_R2802 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TM_TEMPLATE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TM_TEMPLATE * self = (ooaofooa_TM_TEMPLATE *) instance;
  printf( "INSERT INTO TM_TEMPLATE VALUES ( %ld,'%s','%s','%s','%s',%d,'%s','%s','%s','%s' );\n",
    ((long)self->ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->tm_cPackage ) ? self->tm_cPackage : "",
    ( 0 != self->tm_cName ) ? self->tm_cName : "",
    ( 0 != self->tm_ifPackage ) ? self->tm_ifPackage : "",
    ( 0 != self->tm_ifName ) ? self->tm_ifName : "",
    self->current,
    ( 0 != self->template_parameters ) ? self->template_parameters : "",
    ( 0 != self->template_parameters_default ) ? self->template_parameters_default : "",
    ( 0 != self->template_actual_parameters ) ? self->template_actual_parameters : "",
    ( 0 != self->template_default_instantiation ) ? self->template_default_instantiation : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TM_TEMPLATE_container[ ooaofooa_TM_TEMPLATE_MAX_EXTENT_SIZE ];
static ooaofooa_TM_TEMPLATE ooaofooa_TM_TEMPLATE_instances[ ooaofooa_TM_TEMPLATE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TM_TEMPLATE_extent = {
  {0,0}, {0,0}, &ooaofooa_TM_TEMPLATE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TM_TEMPLATE_instances,
  sizeof( ooaofooa_TM_TEMPLATE ), 0, ooaofooa_TM_TEMPLATE_MAX_EXTENT_SIZE
  };


