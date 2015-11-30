/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_BRV_class.c
 *
 * Class:       Bridge Value  (V_BRV)
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
ooaofooa_V_BRV_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_V_BRV * self = (ooaofooa_V_BRV *) instance;
  /* Initialize application analysis class attributes.  */
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Brg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->ParmListOK = ( '0' != *avlstring[ 3 ] );
  self->externalEntityKeyLettersLineNumber = Escher_atoi( avlstring[ 4 ] );
  self->externalEntityKeyLettersColumn = Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_V_BRV_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_V_BRV * ooaofooa_V_BRV_instance = (ooaofooa_V_BRV *) instance;
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_V_BRV_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_V_BRV_R801_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_V_BRV_instance );
  }
  {
  ooaofooa_S_BRG * ooaofooa_S_BRGrelated_instance1 = (ooaofooa_S_BRG *) Escher_instance_cache[ (intptr_t) ooaofooa_V_BRV_instance->Brg_ID ];
  if ( ooaofooa_S_BRGrelated_instance1 ) {
    ooaofooa_V_BRV_R828_Link( ooaofooa_S_BRGrelated_instance1, ooaofooa_V_BRV_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_V_BRV *
ooaofooa_V_BRV_AnyWhere1( Escher_UniqueID_t w_Value_ID )
{
  ooaofooa_V_BRV * w; 
  Escher_Iterator_s iter_V_BRV;
  Escher_IteratorReset( &iter_V_BRV, &pG_ooaofooa_V_BRV_extent.active );
  while ( (w = (ooaofooa_V_BRV *) Escher_IteratorNext( &iter_V_BRV )) != 0 ) {
    if ( w->Value_ID == w_Value_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE V_VAL TO V_BRV ACROSS R801
 */
void
ooaofooa_V_BRV_R801_Link( ooaofooa_V_VAL * supertype, ooaofooa_V_BRV * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Value_ID = supertype->Value_ID;
  /* Optimized linkage for V_BRV->V_VAL[R801] */
  subtype->V_VAL_R801 = supertype;
  /* Optimized linkage for V_VAL->V_BRV[R801] */
  supertype->R801_subtype = subtype;
  supertype->R801_object_id = ooaofooa_V_BRV_CLASS_NUMBER;
}


/*
 * UNRELATE V_VAL FROM V_BRV ACROSS R801
 */
void
ooaofooa_V_BRV_R801_Unlink( ooaofooa_V_VAL * supertype, ooaofooa_V_BRV * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->V_VAL_R801 = 0;
  supertype->R801_subtype = 0;
  supertype->R801_object_id = 0;
}


/*
 * RELATE S_BRG TO V_BRV ACROSS R828
 */
void
ooaofooa_V_BRV_R828_Link( ooaofooa_S_BRG * part, ooaofooa_V_BRV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Brg_ID = part->Brg_ID;
  form->S_BRG_R828 = part;
  Escher_SetInsertElement( &part->V_BRV_R828, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_BRG FROM V_BRV ACROSS R828
 */
void
ooaofooa_V_BRV_R828_Unlink( ooaofooa_S_BRG * part, ooaofooa_V_BRV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Brg_ID = 0;
  form->S_BRG_R828 = 0;
  Escher_SetRemoveElement( &part->V_BRV_R828, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_V_BRV_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_V_BRV * self = (ooaofooa_V_BRV *) instance;
  printf( "INSERT INTO V_BRV VALUES ( %ld,%ld,%d,%d,%d );\n",
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Brg_ID & ESCHER_IDDUMP_MASK),
    self->ParmListOK,
    self->externalEntityKeyLettersLineNumber,
    self->externalEntityKeyLettersColumn );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_V_BRV_container[ ooaofooa_V_BRV_MAX_EXTENT_SIZE ];
static ooaofooa_V_BRV ooaofooa_V_BRV_instances[ ooaofooa_V_BRV_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_V_BRV_extent = {
  {0,0}, {0,0}, &ooaofooa_V_BRV_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_V_BRV_instances,
  sizeof( ooaofooa_V_BRV ), 0, ooaofooa_V_BRV_MAX_EXTENT_SIZE
  };


