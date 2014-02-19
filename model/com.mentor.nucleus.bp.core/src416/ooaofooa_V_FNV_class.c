/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_FNV_class.c
 *
 * Class:       Function Value  (V_FNV)
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
ooaofooa_V_FNV_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_V_FNV * self = (ooaofooa_V_FNV *) instance;
  /* Initialize application analysis class attributes.  */
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Sync_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->ParmListOK = ( '0' != *avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_V_FNV_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_V_FNV * ooaofooa_V_FNV_instance = (ooaofooa_V_FNV *) instance;
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_V_FNV_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_V_FNV_R801_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_V_FNV_instance );
  }
  {
  ooaofooa_S_SYNC * ooaofooa_S_SYNCrelated_instance1 = ooaofooa_S_SYNC_AnyWhere1( ooaofooa_V_FNV_instance->Sync_ID );
  if ( ooaofooa_S_SYNCrelated_instance1 ) {
    ooaofooa_V_FNV_R827_Link( ooaofooa_S_SYNCrelated_instance1, ooaofooa_V_FNV_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_V_FNV *
ooaofooa_V_FNV_AnyWhere1( Escher_UniqueID_t w_Value_ID )
{
  ooaofooa_V_FNV * w; 
  Escher_Iterator_s iter_V_FNV;
  Escher_IteratorReset( &iter_V_FNV, &pG_ooaofooa_V_FNV_extent.active );
  while ( (w = (ooaofooa_V_FNV *) Escher_IteratorNext( &iter_V_FNV )) != 0 ) {
    if ( w->Value_ID == w_Value_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE V_VAL TO V_FNV ACROSS R801
 */
void
ooaofooa_V_FNV_R801_Link( ooaofooa_V_VAL * supertype, ooaofooa_V_FNV * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Value_ID = supertype->Value_ID;
  /* Optimized linkage for V_FNV->V_VAL[R801] */
  subtype->V_VAL_R801 = supertype;
  /* Optimized linkage for V_VAL->V_FNV[R801] */
  supertype->R801_subtype = subtype;
  supertype->R801_object_id = ooaofooa_V_FNV_CLASS_NUMBER;
}


/*
 * UNRELATE V_VAL FROM V_FNV ACROSS R801
 */
void
ooaofooa_V_FNV_R801_Unlink( ooaofooa_V_VAL * supertype, ooaofooa_V_FNV * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->V_VAL_R801 = 0;
  supertype->R801_subtype = 0;
  supertype->R801_object_id = 0;
}


/*
 * RELATE S_SYNC TO V_FNV ACROSS R827
 */
void
ooaofooa_V_FNV_R827_Link( ooaofooa_S_SYNC * part, ooaofooa_V_FNV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sync_ID = part->Sync_ID;
  form->S_SYNC_R827 = part;
  Escher_SetInsertElement( &part->V_FNV_R827, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SYNC FROM V_FNV ACROSS R827
 */
void
ooaofooa_V_FNV_R827_Unlink( ooaofooa_S_SYNC * part, ooaofooa_V_FNV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sync_ID = 0;
  form->S_SYNC_R827 = 0;
  Escher_SetRemoveElement( &part->V_FNV_R827, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_V_FNV_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_V_FNV * self = (ooaofooa_V_FNV *) instance;
  printf( "INSERT INTO V_FNV VALUES ( %ld,%ld,%d );\n",
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Sync_ID & ESCHER_IDDUMP_MASK),
    self->ParmListOK );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_V_FNV_container[ ooaofooa_V_FNV_MAX_EXTENT_SIZE ];
static ooaofooa_V_FNV ooaofooa_V_FNV_instances[ ooaofooa_V_FNV_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_V_FNV_extent = {
  {0,0}, {0,0}, &ooaofooa_V_FNV_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_V_FNV_instances,
  sizeof( ooaofooa_V_FNV ), 0, ooaofooa_V_FNV_MAX_EXTENT_SIZE
  };


