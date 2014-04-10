/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_ACT_class.c
 *
 * Class:       Extended Action  (TE_ACT)
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
ooaofooa_TE_ACT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_ACT * self = (ooaofooa_TE_ACT *) instance;
  /* Initialize application analysis class attributes.  */
  self->AbaID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  Escher_strcpy( self->GeneratedName, avlstring[ 2 ] );
  self->number = Escher_atoi( avlstring[ 3 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->Act_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_ACT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_ACT * ooaofooa_TE_ACT_instance = (ooaofooa_TE_ACT *) instance;
  ooaofooa_TE_ABA * ooaofooa_TE_ABArelated_instance1 = (ooaofooa_TE_ABA *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_ACT_instance->AbaID ];
  if ( ooaofooa_TE_ABArelated_instance1 ) {
    ooaofooa_TE_ACT_R2010_Link( ooaofooa_TE_ABArelated_instance1, ooaofooa_TE_ACT_instance );
  }
  {
  ooaofooa_SM_ACT * ooaofooa_SM_ACTrelated_instance1 = ooaofooa_SM_ACT_AnyWhere1( ooaofooa_TE_ACT_instance->Act_ID, ooaofooa_TE_ACT_instance->SM_ID );
  if ( ooaofooa_SM_ACTrelated_instance1 ) {
    ooaofooa_TE_ACT_R2022_Link( ooaofooa_SM_ACTrelated_instance1, ooaofooa_TE_ACT_instance );
  }
  }
}


/*
 * RELATE TE_ABA TO TE_ACT ACROSS R2010
 */
void
ooaofooa_TE_ACT_R2010_Link( ooaofooa_TE_ABA * supertype, ooaofooa_TE_ACT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->AbaID = supertype->AbaID;
  /* Optimized linkage for TE_ACT->TE_ABA[R2010] */
  subtype->TE_ABA_R2010 = supertype;
  /* Optimized linkage for TE_ABA->TE_ACT[R2010] */
  supertype->R2010_subtype = subtype;
  supertype->R2010_object_id = ooaofooa_TE_ACT_CLASS_NUMBER;
}


/*
 * UNRELATE TE_ABA FROM TE_ACT ACROSS R2010
 */
void
ooaofooa_TE_ACT_R2010_Unlink( ooaofooa_TE_ABA * supertype, ooaofooa_TE_ACT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->TE_ABA_R2010 = 0;
  supertype->R2010_subtype = 0;
  supertype->R2010_object_id = 0;
}


/*
 * RELATE SM_ACT TO TE_ACT ACROSS R2022
 */
void
ooaofooa_TE_ACT_R2022_Link( ooaofooa_SM_ACT * part, ooaofooa_TE_ACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->Act_ID = part->Act_ID;
  form->SM_ACT_R2022 = part;
  part->TE_ACT_R2022 = form;
}

/*
 * UNRELATE SM_ACT FROM TE_ACT ACROSS R2022
 */
void
ooaofooa_TE_ACT_R2022_Unlink( ooaofooa_SM_ACT * part, ooaofooa_TE_ACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = 0;
  form->Act_ID = 0;
  form->SM_ACT_R2022 = 0;
  part->TE_ACT_R2022 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_ACT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_ACT * self = (ooaofooa_TE_ACT *) instance;
  printf( "INSERT INTO TE_ACT VALUES ( %ld,'%s',%d,%ld,%ld );\n",
    ((long)self->AbaID & ESCHER_IDDUMP_MASK),
    self->GeneratedName,
    self->number,
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Act_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_ACT_container[ ooaofooa_TE_ACT_MAX_EXTENT_SIZE ];
static ooaofooa_TE_ACT ooaofooa_TE_ACT_instances[ ooaofooa_TE_ACT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_ACT_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_ACT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_ACT_instances,
  sizeof( ooaofooa_TE_ACT ), 0, ooaofooa_TE_ACT_MAX_EXTENT_SIZE
  };


