/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_TP_class.c
 *
 * Class:       Template Parameter  (TM_TP)
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
ooaofooa_TM_TP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TM_TP * self = (ooaofooa_TM_TP *) instance;
  /* Initialize application analysis class attributes.  */
  self->ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->ID;
  Escher_strcpy( self->typename, avlstring[ 2 ] );
  Escher_strcpy( self->Name, avlstring[ 3 ] );
  Escher_strcpy( self->DefaultValue, avlstring[ 4 ] );
  self->tm_templateID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TM_TP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TM_TP * ooaofooa_TM_TP_instance = (ooaofooa_TM_TP *) instance;
  ooaofooa_TM_TEMPLATE * ooaofooa_TM_TEMPLATErelated_instance1 = (ooaofooa_TM_TEMPLATE *) Escher_instance_cache[ (intptr_t) ooaofooa_TM_TP_instance->tm_templateID ];
  if ( ooaofooa_TM_TEMPLATErelated_instance1 ) {
    ooaofooa_TM_TP_R2801_Link( ooaofooa_TM_TEMPLATErelated_instance1, ooaofooa_TM_TP_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TM_TP *
ooaofooa_TM_TP_AnyWhere1( Escher_UniqueID_t w_ID )
{
  ooaofooa_TM_TP * w; 
  Escher_Iterator_s iter_TM_TP;
  Escher_IteratorReset( &iter_TM_TP, &pG_ooaofooa_TM_TP_extent.active );
  while ( (w = (ooaofooa_TM_TP *) Escher_IteratorNext( &iter_TM_TP )) != 0 ) {
    if ( w->ID == w_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE TM_TEMPLATE TO TM_TP ACROSS R2801
 */
void
ooaofooa_TM_TP_R2801_Link( ooaofooa_TM_TEMPLATE * part, ooaofooa_TM_TP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->tm_templateID = part->ID;
  form->TM_TEMPLATE_R2801 = part;
  Escher_SetInsertElement( &part->TM_TP_R2801, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TM_TEMPLATE FROM TM_TP ACROSS R2801
 */
void
ooaofooa_TM_TP_R2801_Unlink( ooaofooa_TM_TEMPLATE * part, ooaofooa_TM_TP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->tm_templateID = 0;
  form->TM_TEMPLATE_R2801 = 0;
  Escher_SetRemoveElement( &part->TM_TP_R2801, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TM_TP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TM_TP * self = (ooaofooa_TM_TP *) instance;
  printf( "INSERT INTO TM_TP VALUES ( %ld,'%s','%s','%s',%ld );\n",
    ((long)self->ID & ESCHER_IDDUMP_MASK),
    self->typename,
    self->Name,
    self->DefaultValue,
    ((long)self->tm_templateID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TM_TP_container[ ooaofooa_TM_TP_MAX_EXTENT_SIZE ];
static ooaofooa_TM_TP ooaofooa_TM_TP_instances[ ooaofooa_TM_TP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TM_TP_extent = {
  {0,0}, {0,0}, &ooaofooa_TM_TP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TM_TP_instances,
  sizeof( ooaofooa_TM_TP ), 0, ooaofooa_TM_TP_MAX_EXTENT_SIZE
  };


