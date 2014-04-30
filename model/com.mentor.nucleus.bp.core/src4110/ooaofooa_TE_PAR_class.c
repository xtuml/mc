/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_PAR_class.c
 *
 * Class:       Extended Actual Parameter  (TE_PAR)
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
ooaofooa_TE_PAR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_PAR * self = (ooaofooa_TE_PAR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Name = Escher_strcpy( self->Name, avlstring[ 1 ] );
  self->By_Ref = Escher_atoi( avlstring[ 2 ] );
  self->buffer = Escher_strcpy( self->buffer, avlstring[ 3 ] );
  self->Order = Escher_atoi( avlstring[ 4 ] );
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->te_parmID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_PAR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_PAR * ooaofooa_TE_PAR_instance = (ooaofooa_TE_PAR *) instance;
  ooaofooa_V_PAR * ooaofooa_V_PARrelated_instance1 = ooaofooa_V_PAR_AnyWhere1( ooaofooa_TE_PAR_instance->Value_ID );
  if ( ooaofooa_V_PARrelated_instance1 ) {
    ooaofooa_TE_PAR_R2063_Link( ooaofooa_V_PARrelated_instance1, ooaofooa_TE_PAR_instance );
  }
  {
  ooaofooa_TE_PARM * ooaofooa_TE_PARMrelated_instance1 = (ooaofooa_TE_PARM *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_PAR_instance->te_parmID ];
  if ( ooaofooa_TE_PARMrelated_instance1 ) {
    ooaofooa_TE_PAR_R2091_Link( ooaofooa_TE_PARMrelated_instance1, ooaofooa_TE_PAR_instance );
  }
  }
}


/*
 * RELATE V_PAR TO TE_PAR ACROSS R2063
 */
void
ooaofooa_TE_PAR_R2063_Link( ooaofooa_V_PAR * part, ooaofooa_TE_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_ID = part->Value_ID;
  form->V_PAR_R2063 = part;
  part->TE_PAR_R2063 = form;
}

/*
 * UNRELATE V_PAR FROM TE_PAR ACROSS R2063
 */
void
ooaofooa_TE_PAR_R2063_Unlink( ooaofooa_V_PAR * part, ooaofooa_TE_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_ID = 0;
  form->V_PAR_R2063 = 0;
  part->TE_PAR_R2063 = 0;
}

/*
 * RELATE TE_PARM TO TE_PAR ACROSS R2091
 */
void
ooaofooa_TE_PAR_R2091_Link( ooaofooa_TE_PARM * part, ooaofooa_TE_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_parmID = part->ID;
  form->TE_PARM_R2091 = part;
  Escher_SetInsertElement( &part->TE_PAR_R2091, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_PARM FROM TE_PAR ACROSS R2091
 */
void
ooaofooa_TE_PAR_R2091_Unlink( ooaofooa_TE_PARM * part, ooaofooa_TE_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_parmID = 0;
  form->TE_PARM_R2091 = 0;
  Escher_SetRemoveElement( &part->TE_PAR_R2091, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_PAR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_PAR * self = (ooaofooa_TE_PAR *) instance;
  printf( "INSERT INTO TE_PAR VALUES ( '%s',%d,'%s',%d,%ld,%ld );\n",
    ( 0 != self->Name ) ? self->Name : "",
    self->By_Ref,
    ( 0 != self->buffer ) ? self->buffer : "",
    self->Order,
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->te_parmID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_PAR_container[ ooaofooa_TE_PAR_MAX_EXTENT_SIZE ];
static ooaofooa_TE_PAR ooaofooa_TE_PAR_instances[ ooaofooa_TE_PAR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_PAR_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_PAR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_PAR_instances,
  sizeof( ooaofooa_TE_PAR ), 0, ooaofooa_TE_PAR_MAX_EXTENT_SIZE
  };


