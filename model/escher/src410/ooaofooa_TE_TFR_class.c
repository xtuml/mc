/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_TFR_class.c
 *
 * Class:       Extended Operation  (TE_TFR)
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
ooaofooa_TE_TFR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_TFR * self = (ooaofooa_TE_TFR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Included = ( '0' != *avlstring[ 1 ] );
  self->XlateSemantics = ( '0' != *avlstring[ 2 ] );
  self->Instance_Based = Escher_atoi( avlstring[ 3 ] );
  Escher_strcpy( self->Key_Lett, avlstring[ 4 ] );
  Escher_strcpy( self->Name, avlstring[ 5 ] );
  Escher_strcpy( self->GeneratedName, avlstring[ 6 ] );
  self->AbaID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  self->Tfr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 8 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_TFR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_TFR * ooaofooa_TE_TFR_instance = (ooaofooa_TE_TFR *) instance;
  ooaofooa_TE_ABA * ooaofooa_TE_ABArelated_instance1 = (ooaofooa_TE_ABA *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_TFR_instance->AbaID ];
  if ( ooaofooa_TE_ABArelated_instance1 ) {
    ooaofooa_TE_TFR_R2010_Link( ooaofooa_TE_ABArelated_instance1, ooaofooa_TE_TFR_instance );
  }
  {
  ooaofooa_O_TFR * ooaofooa_O_TFRrelated_instance1 = (ooaofooa_O_TFR *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_TFR_instance->Tfr_ID ];
  if ( ooaofooa_O_TFRrelated_instance1 ) {
    ooaofooa_TE_TFR_R2024_Link( ooaofooa_O_TFRrelated_instance1, ooaofooa_TE_TFR_instance );
  }
  }
}


/*
 * RELATE TE_ABA TO TE_TFR ACROSS R2010
 */
void
ooaofooa_TE_TFR_R2010_Link( ooaofooa_TE_ABA * supertype, ooaofooa_TE_TFR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->AbaID = supertype->AbaID;
  /* Optimized linkage for TE_TFR->TE_ABA[R2010] */
  subtype->TE_ABA_R2010 = supertype;
  /* Optimized linkage for TE_ABA->TE_TFR[R2010] */
  supertype->R2010_subtype = subtype;
  supertype->R2010_object_id = ooaofooa_TE_TFR_CLASS_NUMBER;
}


/*
 * UNRELATE TE_ABA FROM TE_TFR ACROSS R2010
 */
void
ooaofooa_TE_TFR_R2010_Unlink( ooaofooa_TE_ABA * supertype, ooaofooa_TE_TFR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->TE_ABA_R2010 = 0;
  supertype->R2010_subtype = 0;
  supertype->R2010_object_id = 0;
}


/*
 * RELATE O_TFR TO TE_TFR ACROSS R2024
 */
void
ooaofooa_TE_TFR_R2024_Link( ooaofooa_O_TFR * part, ooaofooa_TE_TFR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Tfr_ID = part->Tfr_ID;
  form->O_TFR_R2024 = part;
  part->TE_TFR_R2024 = form;
}

/*
 * UNRELATE O_TFR FROM TE_TFR ACROSS R2024
 */
void
ooaofooa_TE_TFR_R2024_Unlink( ooaofooa_O_TFR * part, ooaofooa_TE_TFR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Tfr_ID = 0;
  form->O_TFR_R2024 = 0;
  part->TE_TFR_R2024 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_TFR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_TFR * self = (ooaofooa_TE_TFR *) instance;
  printf( "INSERT INTO TE_TFR VALUES ( %d,%d,%d,'%s','%s','%s',%ld,%ld );\n",
    self->Included,
    self->XlateSemantics,
    self->Instance_Based,
    self->Key_Lett,
    self->Name,
    self->GeneratedName,
    ((long)self->AbaID & ESCHER_IDDUMP_MASK),
    ((long)self->Tfr_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_TFR_container[ ooaofooa_TE_TFR_MAX_EXTENT_SIZE ];
static ooaofooa_TE_TFR ooaofooa_TE_TFR_instances[ ooaofooa_TE_TFR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_TFR_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_TFR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_TFR_instances,
  sizeof( ooaofooa_TE_TFR ), 0, ooaofooa_TE_TFR_MAX_EXTENT_SIZE
  };


