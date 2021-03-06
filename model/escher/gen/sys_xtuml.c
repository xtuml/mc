/*--------------------------------------------------------------------------
 * File:  sys_xtuml.c
 *
 * Description:
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "sys_sys_types.h"
#include "ooaofooa_classes.h"

/*
 * Allocate the storage for the pool of container nodes.
 */
static Escher_ObjectSet_s node1_FreeList;
static Escher_SetElement_s node1s[ SYS_MAX_CONTAINERS ];

/*
 * Supply a unique integer ID.
 */
Escher_UniqueID_t
Escher_ID_factory( void )
{
  static Escher_UniqueID_t Escher_ID_factory = 1;
  return Escher_ID_factory++;
}

/*
 * Deserialize a UUID into a unique integer ID.
 * This routine also handles 32-bit integers as produced by xtumlmc_build cleanse.
 * String UUIDs are detected when exactly 4 dashes are found in the input.
 */
Escher_UniqueID_t Escher_uuidtou128( const c_t * s )
{
  u1_t b, isuuid = 0;
  Escher_UniqueID_t v = 0; /* 128-bit hex answer */
  s4_t n = 0; /* 32-bit decimal answer */

  while(*s) {
    b = *s++;

    switch(b) {
    case '0'...'9':
      b -= '0';
      n = n * 10 + b;
      break;

    case 'a'...'f':
      b -= 'a';
      b += 10;
      break;

    case 'A'...'F':
      b -= 'A';
      b += 10;
      break;

    case '-':
      isuuid++;
    default:
      continue;
    }
    v = (v << 4) | (b & 0xF);
  }

  if ( 4 == isuuid )
    return v;
  else
    return n;
}


#define ESCHER_GET_BITS(v,b,m) (b < sizeof(v)*8 ? (m & (v >> b)) : 0)
/*
 * Serialize an unsigned 128-bit integer into a string format UUID.
 */
c_t * Escher_u128touuid( c_t * s, Escher_UniqueID_t i )
{
  u4_t uuid1 = (u4_t) ESCHER_GET_BITS( i, 96, 0xffffffff );
  u2_t uuid2 = (u2_t) ESCHER_GET_BITS( i, 80, 0xffff );
  u2_t uuid3 = (u2_t) ESCHER_GET_BITS( i, 64, 0xffff );
  u2_t uuid4 = (u2_t) ESCHER_GET_BITS( i, 48, 0xffff );
  u2_t uuid5 = (u2_t) ESCHER_GET_BITS( i, 32, 0xffff );
  u4_t uuid6 = (u4_t) ESCHER_GET_BITS( i, 0, 0xffffffff );
  snprintf( s, 40, "\"%08lx-%04x-%04x-%04x-%04x%08lx\"", uuid1, uuid2, uuid3, uuid4, uuid5, uuid6 );
  return s;
}


/*
 * Detect empty handles in expressions.
 */
void * xtUML_detect_empty_handle( void * h, const char * s1, const char * s2 )
{
  if ( 0 == h ) {
    XTUML_EMPTY_HANDLE_TRACE( s1, s2 );
  }
  return h;
}

/*
 * Initialize the node1 instances by linking them into a collection.
 * These containoids will be collected into a null-terminated,
 * singly linked list (slist).
 * This needs to be called during architecture initialization.
 */
void
Escher_SetFactoryInit( const i_t n1_size )
{
  Escher_size_t i;
  node1_FreeList.head = &node1s[ 0 ];
  /* Build the collection (linked list) of node1 instances.  */
  for ( i = 0; ( i + 1 ) < n1_size; i++ ) {
    node1s[ i ].next = &node1s[ i + 1 ];
    node1s[ i ].object = 0;
  }
  node1s[ n1_size - 1 ].next = 0;
}

/*
 * This will copy all of the elements from one set into another
 * set.  If the target set is not empty, it will be cleared
 * before the copy operation occurs freeing any nodes in that set.
 * The new set will use containoids from the free list.
 */
void 
Escher_CopySet( Escher_ObjectSet_s * to_set,
                const Escher_ObjectSet_s * const from_set )
{
  const Escher_SetElement_s * slot;

  /* May be copying into an existing set, release target collection nodes.  */
  Escher_ClearSet( to_set );

  for ( slot = from_set->head; ( slot != 0 ); slot = slot->next ) {
    Escher_SetInsertElement( to_set, slot->object ); 
  }
}

/*
 * Release all nodes in the given set back to the free pool.
 */
void
Escher_ClearSet( Escher_ObjectSet_s * set )
{
  if ( set->head != 0 ) {                                    /* empty set  */
    Escher_SetElement_s * slot;
    for ( slot = set->head; ( slot->next != 0 ); slot = slot->next ); /* Find end.  */
    slot->next = node1_FreeList.head;     /* Tie string to free list.      */
    node1_FreeList.head = set->head;      /* Point free list to head.      */
    Escher_InitSet( set );                /* Zero set out.  */
  }
}

/*
 * Take the union of set1 and set2 and return to_set
 */
Escher_ObjectSet_s *
Escher_SetUnion( Escher_ObjectSet_s * const to_set, void * const set1, void * const set2, int flags )
{
  if ( 0 != to_set ) {
    /* Assure that the result set starts empty */
    Escher_ClearSet( to_set );
    /* Copy set1 to the result set */
    if ( 0 != set1 ) {
      if ( flags & ESCHER_SET_LHS_IS_INSTANCE ) {
        Escher_SetInsertElement( ((Escher_ObjectSet_s*)to_set), set1 );
      }
      else {
        Escher_CopySet( to_set, set1 );
      }
    }
    /* Add any elements from set2 which are not already in the result set */
    if ( 0 != set2 ) {
      if ( flags & ESCHER_SET_RHS_IS_INSTANCE ) {
        if ( !Escher_SetContains( to_set, set2 ) ) Escher_SetInsertElement( ((Escher_ObjectSet_s*)to_set), set2 );
      }
      else {
        Escher_SetElement_s * slot;
        for ( slot = ((Escher_ObjectSet_s*)set2)->head; ( slot != 0 ); slot = slot->next ) {
          if ( !Escher_SetContains( to_set, slot->object ) ) {
            Escher_SetInsertElement( ((Escher_ObjectSet_s*)to_set), slot->object );
          }
        }
      }
    }
  }
  return to_set;
}

/*
 * Take the intersection of set1 and set2 and return to_set
 */
Escher_ObjectSet_s *
Escher_SetIntersection( Escher_ObjectSet_s * const to_set, void * const set1, void * const set2, int flags )
{
  if ( 0 != to_set ) {
    /* Assure that the result set starts empty */
    Escher_ClearSet( to_set );
    if ( 0 != set1 && 0 != set2) {
      /* If both sets are single instances, only add to the result set if they are the same instance */
      if ( ( flags & ESCHER_SET_LHS_IS_INSTANCE ) && ( flags & ESCHER_SET_RHS_IS_INSTANCE ) ) {
        if ( set1 == set2 ) Escher_SetInsertElement( ((Escher_ObjectSet_s*)to_set), set1 );
      }
      /* If set1 is a single instance, add it to the result set if it is contained in set2 */
      else if ( flags & ESCHER_SET_LHS_IS_INSTANCE ) {
        if ( Escher_SetContains( set2, set1 ) ) Escher_SetInsertElement( ((Escher_ObjectSet_s*)to_set), set1 );
      }
      /* If set2 is a single instance, add it to the result set if it is contained in set1 */
      else if ( flags & ESCHER_SET_RHS_IS_INSTANCE ) {
        if ( Escher_SetContains( set1, set2 ) ) Escher_SetInsertElement( ((Escher_ObjectSet_s*)to_set), set2 );
      }
      /* For each instance in set1, add it to the result set if it is contained in set2 */
      else {
        Escher_SetElement_s * slot;
        for ( slot = ((Escher_ObjectSet_s*)set1)->head; ( slot != 0 ); slot = slot->next ) {
          if ( Escher_SetContains( set2, slot->object ) ) {
            Escher_SetInsertElement( ((Escher_ObjectSet_s*)to_set), slot->object );
          }
        }
      }
    }
  }
  return to_set;
}

/*
 * Subtract set2 from set1 and return to_set
 */
Escher_ObjectSet_s *
Escher_SetDifference( Escher_ObjectSet_s * const to_set, void * const set1, void * const set2, int flags )
{
  if ( 0 != to_set ) {
    /* Assure that the result set starts empty */
    Escher_ClearSet( to_set );
    if ( 0 != set1 ) {
      if ( flags & ESCHER_SET_LHS_IS_INSTANCE ) {
        /* If both sets are single instances, only add set1 to the result set if they are not the same instance */
        if ( flags & ESCHER_SET_RHS_IS_INSTANCE ) {
          if ( set1 != set2 ) Escher_SetInsertElement( ((Escher_ObjectSet_s*)to_set), set1 );
        }
        /* If set1 is a single instance, only add it to the result set if it is not contained in set2 */
        else {
          if ( 0 != set2 && !Escher_SetContains( set2, set1 ) ) Escher_SetInsertElement( ((Escher_ObjectSet_s*)to_set), set1 );
        }
      }
      else {
        /* For each element in set1, check if it is also in set2 */
        Escher_SetElement_s * slot;
        for ( slot = ((Escher_ObjectSet_s*)set1)->head; ( slot != 0 ); slot = slot->next ) {
          /* If set2 is a single instance, add the the set1 instance to the result set only if they are not the same instance */
          if ( flags & ESCHER_SET_RHS_IS_INSTANCE ) {
            if ( slot->object != set2 ) Escher_SetInsertElement( ((Escher_ObjectSet_s*)to_set), slot->object );
          }
          /* Only add the set1 instance to the result set if it is not contained in set2 */
          else {
            if ( 0 != set2 && !Escher_SetContains( set2, slot->object ) ) Escher_SetInsertElement( ((Escher_ObjectSet_s*)to_set), slot->object );
          }
        }
      }
    }
  }
  return to_set;
}

/*
 * Take the symmetric difference of set1 and set2 and return to_set
 */
Escher_ObjectSet_s *
Escher_SetSymmetricDifference( Escher_ObjectSet_s * const to_set, void * const set1, void * const set2, int flags )
{
  /* Symmetric difference is the difference of the union and the intersection */
  Escher_ObjectSet_s union_set={0};
  Escher_ObjectSet_s intersection_set={0};
  Escher_SetDifference( to_set, Escher_SetUnion( &union_set, set1, set2, flags ), Escher_SetIntersection( &intersection_set, set1, set2, flags ), 0 );
  Escher_ClearSet( &union_set );
  Escher_ClearSet( &intersection_set );
  return to_set;
}

/*
 * Insert a single element into the set in no particular order.
 * The element is a data item.  A container node will be allocated
 * to link in the element.
 */
void
Escher_SetInsertElement(
  Escher_ObjectSet_s * set,
  void * const substance
)
{
  Escher_SetElement_s * slot;
  if ( 0 == node1_FreeList.head ) {
    Escher_SetElement_s * new_mem = ( Escher_SetElement_s *) Escher_malloc( 10 * sizeof( Escher_SetElement_s ) );
    if ( 0 == new_mem ) {
      UserNodeListEmptyCallout(); /* Bad news!  No more heap space.  */
    } else {
      i_t i;
      for ( i = 0; i < 10 - 1; i++ ) {
        new_mem[ i ].next = (Escher_SetElement_s *) &(new_mem[ i + 1 ]);
      }
      new_mem[ 10 - 1 ].next = 0;
      node1_FreeList.head = new_mem;
    }
  }
  slot = node1_FreeList.head; /* Extract node from free list head. */
  node1_FreeList.head = node1_FreeList.head->next;
  slot->object = substance;
  slot->next = set->head;     /* Insert substance at list front.   */
  set->head = slot;
}

/*
 * Insert a block of objects into the given set in sequence.  Link the
 * data into the supplied containers.
 * Return a pointer to the linked set.
 */
Escher_SetElement_s *
Escher_SetInsertBlock( Escher_SetElement_s * container,
                       const u1_t * instance,
                       const Escher_size_t length,
                       Escher_size_t count )
{
  Escher_SetElement_s * head = ( count > 0 ) ? container : 0;
  while ( count > 0 ) {
    count--;
    container->object = (void *) instance;  /* Link in the object data.     */
    instance = instance + length;           /* Bump to next object image.   */
    /* String together or ground containoids.  */
    container->next = ( count > 0 ) ? container + 1 : 0;
    container++;
  }
  return head;
}

/*
 * Remove an instance from an instance collection.
 */
/* Signature:  void Escher_SetRemoveInstance( pextent, instance, slot, container, pool ) */

/*
 * Insert an instance onto an extent.
 */
/* Signature:  void Escher_SetInsertInstance( pextent, node ) */


/*
 * Remove a data item from the given set.  This requires searching
 * the set for the item, unlinking the item (if found) and returning
 * the pointer to the removed node.  SetRemoveNode is used
 * when some knowledge of the linking mechanism is required (as
 * in extent management).  SetRemoveElement is used whenever
 * possible.
 */
Escher_SetElement_s *
Escher_SetRemoveNode(
  Escher_ObjectSet_s * set,
  const void * const d
)
{
  Escher_SetElement_s * t = set->head; /* Start with first node.           */
  Escher_SetElement_s * t_old = t;
  /* Find node containing data and unlink from list.                 */
  if ( t->object == d ) {        /* Element found at head.           */
    set->head = t->next;         /* Unlink it from the list.         */
  } else {
    do {                         /* Search for data element.         */
      t_old = t;
      t = t->next;
      if ( t == 0 ) { return 0; } /* absent       */
    } while ( t->object != d );
    t_old->next = t->next;      /* Unlink element from the list.     */
  }
  if ( set->tail == t ) {
    set->tail = t_old;
  }
  return t;
}

/*
 * This interface is used more often to remove an element.  This is
 * used when maximum anonymity is required.  Escher_SetRemoveNode is
 * used when some knowledge of the linking mechanism is required (as
 * in extent management).
 */
void
Escher_SetRemoveElement(
  Escher_ObjectSet_s * set,
  const void * const d
)
{
  Escher_SetElement_s * t;
  if ( set->head != 0 ) {                     /* empty set */
    t = Escher_SetRemoveNode( set, d );
    /* Return node to architecture collection (free list).             */
    if ( t != 0 ) {
      t->next = node1_FreeList.head;
      node1_FreeList.head = t;
    }
  }
}

/*
 * Return a pointer to the found element when the set contains the 
 * given data element.
 */
const void *
Escher_SetContains(
  const Escher_ObjectSet_s * const set,
  const void * const element
)
{
  const Escher_SetElement_s * node = set->head;
  while ( node != 0 ) {
    if ( node->object == element ) { return node; }  /* found  */
    node = node->next;
  }
  if ( 0 == element ) return ( const void * ) 1; /* every set contains null */
  return 0;                                      /* absent */
}

/*
 * Count the elements in the set.  Return that count.
 * This routine counts nodes.
 */
Escher_size_t
Escher_SetCardinality( const Escher_ObjectSet_s * const set )
{
  Escher_size_t result = 0;
  const Escher_SetElement_s * node = set->head;
  while ( node != 0 ) {
    result++;
    node = node->next;
  }
  return result;
}

/*
 * Return true when the left and right set are equivalent.
 * The left set is equal to the right set if and only if
 * the left set contains all elements of the right set AND
 * the right set contains all elements of the left set.
 */
bool
Escher_SetEquality( Escher_ObjectSet_s * const left_set,
                    Escher_ObjectSet_s * const right_set )
{
  bool rc = true;
  /* Assure the right set contains all elements in the left set */
  const Escher_SetElement_s * node = left_set->head;
  while ( 0 != node ) {
    if ( 0 == right_set || !Escher_SetContains( right_set, node->object ) ) {
      rc = false;
      break;
    }
    node = node->next;
  }
  if ( rc ) {
    /* Assure the left set contains all elements in the right set */
    node = right_set->head;
    while ( 0 != node ) {
      if ( 0 == left_set || !Escher_SetContains( left_set, node->object ) ) {
        rc = false;
        break;
      }
      node = node->next;
    }
  }
  return rc;
}

/*
 * Initialize a set variable.
 */
/* Signature:  void Escher_InitSet( Escher_ObjectSet_s * set ) */

/*
 * Get any element (1st) from a collection.
 */
/* Signature:  void * Escher_SetGetAny( Escher_ObjectSet_s * const set ) */

/*
 * Return true if set is empty.
 */
/* Signature:  bool Escher_SetIsEmpty( const Escher_ObjectSet_s * const set ) */

/*
 * Use this method to reset the cursor.
 */
/* Signature:  void Escher_IteratorReset( Escher_Iterator_s * const iterator,
 *                                        Escher_ObjectSet_s * const set )
 */

/*
 * Interate to the next element and return it.
 */
void *
Escher_IteratorNext( Escher_Iterator_s * const iter )
{
  void * element = 0;
  if ( iter->cursor != 0 ) {
    element = iter->cursor->object;
    iter->cursor = iter->cursor->next;
  }
  return element;
}

/*
 * Set memory bytes to value at destination.
 */
void
Escher_memset( void * const dst, const u1_t val, Escher_size_t len )
{
  u1_t * d = (u1_t *) dst;
  while ( len > 0 ) {
    len--;
    *d++ = val;
  }
}

/*
 * Move memory bytes from source to destination.
 */
void
Escher_memmove( void * const dst, const void * const src, Escher_size_t len )
{
  u1_t * s = (u1_t *) src;
  u1_t * d = (u1_t *) dst;
  while ( len > 0 ) {
    len--;
    *d++ = *s++;
  }
}

/*
 * Copy characters and be paranoid about null delimiter.
 */
c_t *
Escher_strcpy( c_t * dst, const c_t * src )
{
  c_t * s = dst;
  if ( 0 != src ) {
    Escher_size_t i = Escher_strlen( src ) + 1;
    s = Escher_malloc( i );
    dst = s;
    while ( ( i > 0 ) && ( *src != '\0' ) ) {
      --i;
      *dst++ = *src++;
    }
    *dst = '\0';  /* Ensure delimiter.  */
  }
  return s;
}

#define MAXRECORDLENGTH 2000000
/*
 * Add two strings.  Allocate a temporary memory variable to return the value.
 */
c_t *
Escher_stradd( const c_t * left, const c_t * right )
{
  Escher_size_t i = MAXRECORDLENGTH - 1;
  c_t * s = Escher_strget();
  c_t * dst = s;
  if ( 0 == left ) left = "";
  if ( 0 == right ) right = "";
  while ( ( i > 0 ) && ( *left != '\0' ) ) {
    --i;
    *dst++ = *left++;
  }
  while ( ( i > 0 ) && ( *right != '\0' ) ) {
    --i;
    *dst++ = *right++;
  }
  *dst = '\0';  /* Ensure delimiter.  */
  return s;
}

/*
 * Compare two strings.
 * Return negative number if s1 < s2.
 * Return zero if s1 == s2.
 * Return postive number if s1 > s2.
 */
c_t
Escher_strcmp( const c_t *p1, const c_t *p2 )
{
  const c_t *s1 = p1;
  const c_t *s2 = p2;
  c_t c1, c2;
  i_t i = ESCHER_SYS_MAX_STRING_LEN;
  if ( 0 == p1 ) s1 = "";
  if ( 0 == p2 ) s2 = "";
  do {
    c1 = *s1++;
    c2 = *s2++;
    if ( c1 == 0 ) { break; }
    --i;
  } while ( ( c1 == c2 ) && ( i >= 0 ) );
  return ( c1 - c2 );
}

/*
 * Return a string buffer.  Rotate through a pool.
 */
c_t *
Escher_strget( void )
{
  c_t * r;
  static u1_t i = 0;
  static c_t s[ 32 ][ MAXRECORDLENGTH ];
  i = ( i + 1 ) % 32;
  r = &s[ i ][ 0 ];
  *r = 0;
  return ( r );
}

/*
 * Measure the length of the given string.
 */
Escher_size_t
Escher_strlen( const c_t * s )
{
  Escher_size_t len = 0;
  i_t i = MAXRECORDLENGTH;
  if ( s != 0 ) {
    while ( ( *s != 0 ) && ( i >= 0 ) ) {
      s++;
      len++;
      --i;
    }
  }
  return len;
}

#define ESCHER_ATOI_RADIX 10
c_t *
#ifdef __SIZEOF_INT128__
Escher_itoa( u128_t value )
#else
Escher_itoa( s4_t value )
#endif
{
  static c_t s[256][256];
  static u1_t bufnum = 0;
  c_t tmp[256];
  c_t * sp, * tp = tmp;
  bool sign = 0;
  s4_t i;
#ifdef __SIZEOF_INT128__
  u128_t v = value;
#else
  u4_t v;
  sign = ( value < 0 );
  if ( sign ) {
    v = -value;
  } else {
    v = (unsigned) value;
  }
#endif
  while ( ( v != 0 ) || ( tp == tmp ) ) {
    i = v % ESCHER_ATOI_RADIX;
    v = v / ESCHER_ATOI_RADIX;
    if ( i < 10 ) {
      *tp++ = i + '0';
    } else {
      *tp++ = i + 'a' - 10;
    }
  }
  bufnum++; /* byte size will rotate back to 0 */
  sp = s[ bufnum ];
  if ( sign ) {
    *sp++ = '-';
  }
  while ( tp > tmp ) {
    *sp++ = *--tp;
  }
  *sp = 0;
  return s[ bufnum ];
}

s4_t
Escher_atoi( const char * p )
{
  s4_t n = 0;
  s1_t f = 0;
  for ( ; ; p++ ) {
    switch( *p ) {
    case ' ':
    case '\t':
      continue;
    case '-':
      f++;
    case '+':
      p++;
    }
    break;
  }
  while ( ( *p >= '0' ) && ( *p <= '9' ) ) {
    n = n * 10 + *p++ - '0';
  }
  return ( f ? -n : n );
}

/*----------------------------------------------------------------------------
 * This routine provides a central connection to ANSI-standard system-level
 * memory allocation.  MC-3020 is optimized for static memory allocation
 * and only uses dynamic memory allocation when enabled with marking.
 * Dynamic memory allocation can be used in conjunction with static
 * allocation providing protection against unexpected memory "overflows"
 * conditions.
 *--------------------------------------------------------------------------*/

#include <stdlib.h>
/*
 * Allocate memory from the system heap.
 */
void * 
Escher_malloc( const Escher_size_t b )
{
  void * new_mem = 0;
  size_t bytes = ( size_t ) b;

  new_mem = malloc( bytes );
  if ( 0 == new_mem ) {
    fprintf( stderr, "Escher_malloc:  out of memory\n" );
    exit( 1 );
  }

  return new_mem;
}

/* xtUML class info for all of the components (collections, sizes, etc.) */
Escher_Extent_t * const * const domain_class_info[ SYSTEM_DOMAIN_COUNT ] = {
  &ooaofooa_class_info[0]
};

/*
 * Create an instance of the class numbered on the input.
 * Return the handle of the created instance.
 */
Escher_iHandle_t
Escher_CreateInstance(
  const Escher_DomainNumber_t domain_num,
  const Escher_ClassNumber_t class_num
)
{
  Escher_SetElement_s * node;
  Escher_iHandle_t instance;
  Escher_Extent_t * dci = *(domain_class_info[ domain_num ] + class_num);
  node = dci->inactive.head;

  if ( 0 == node ) {
    Escher_SetElement_s * container =
      ( Escher_SetElement_s *) Escher_malloc( 10 * sizeof( Escher_SetElement_s ) );
    Escher_iHandle_t pool = ( Escher_iHandle_t ) Escher_malloc( 10 * dci->size );
    if ( ( 0 == container ) || ( 0 == pool ) ) {
      UserObjectPoolEmptyCallout( domain_num, class_num );
    } else {
      Escher_memset( pool, 0, 10 * dci->size );
      dci->inactive.head = Escher_SetInsertBlock(
        container, (const u1_t *) pool, dci->size, 10 );
      node = dci->inactive.head;
    }
  }

  dci->inactive.head = dci->inactive.head->next;
  instance = (Escher_iHandle_t) node->object;
  if ( 0 != dci->initial_state ) {
    instance->current_state = dci->initial_state;
  }
  if ( 0 == dci->active.head ) {
    dci->active.head = node;
  } else {
    dci->active.tail->next = node;
  }
  dci->active.tail = node;
  node->next = 0;
  return instance;
}

/*
 * Delete an instance of the class passed and numbered on the input.
 */
void
Escher_DeleteInstance(
  Escher_iHandle_t instance,
  const Escher_DomainNumber_t domain_num,
  const Escher_ClassNumber_t class_num
)
{
  Escher_SetElement_s * node;
  Escher_Extent_t * dci = *(domain_class_info[ domain_num ] + class_num);
  if ( 0 != instance ) {
    node = Escher_SetRemoveNode( &dci->active, instance );
    node->next = dci->inactive.head;
    dci->inactive.head = node;
    /* Initialize storage to zero.  */
    Escher_memset( instance, 0, dci->size );
    if ( ( 0 != dci->size ) && ( 0 != dci->initial_state ) ) {
      instance->current_state = -1; /* 0xff max for error detection */
    }
  }
}

typedef void (*brf)( Escher_iHandle_t );
static brf batch_relaters[] = {
  ooaofooa_batch_relaters,
};

/*
 * Self- inter-relate instances one to another.
 */
void Escher_batch_relate( const Escher_DomainNumber_t, const Escher_ClassNumber_t );
void Escher_batch_relate(
  const Escher_DomainNumber_t domain_num,
  const Escher_ClassNumber_t class_num
)
{
  Escher_InstanceIndex_t i;
  Escher_Iterator_s iterator;
  Escher_iHandle_t instance;
  Escher_Extent_t * dci = *(domain_class_info[ domain_num ] + class_num);
  Escher_IteratorReset( &iterator, &dci->active );
  /* Cycle through the active list of instances of this class.  */
  while ( (instance = Escher_IteratorNext( &iterator )) != 0 ) {
    if ( 0 != batch_relaters[ class_num ] ) {
      (batch_relaters[ class_num ])( instance );
    }
  }
}

extern Escher_idf ooaofooa_instance_dumpers[ ooaofooa_MAX_CLASS_NUMBERS ];
static Escher_idf * instance_dumpers[ SYSTEM_DOMAIN_COUNT ] = {
  ooaofooa_instance_dumpers,
};

/*
 * Dump out instances of this class.
 */
void Escher_dump_instances( const Escher_DomainNumber_t, const Escher_ClassNumber_t );
void Escher_dump_instances(
  const Escher_DomainNumber_t domain_num,
  const Escher_ClassNumber_t class_num
)
{
  Escher_Iterator_s iterator;
  Escher_iHandle_t instance;
  Escher_idf * instance_dumper = instance_dumpers[ domain_num ];
  Escher_Extent_t * dci = *(domain_class_info[ domain_num ] + class_num);
  if ( 0 != *instance_dumper[ class_num ] ) {
    Escher_IteratorReset( &iterator, &dci->active );
    /* Cycle through the active list of instances of this class.  */
    while ( (instance = Escher_IteratorNext( &iterator )) != 0 ) {
      (*instance_dumper[ class_num ])( instance );
    }
  }
}

/*
 * Initialize object factory services.
 * Initialize class instance storage free pool (inanimate list)
 * by linking the empty instances into a collection.
 */
void
Escher_ClassFactoryInit(
  const Escher_DomainNumber_t domain_num,
  const Escher_ClassNumber_t class_num )
{
  Escher_Extent_t * dci = *(domain_class_info[ domain_num ] + class_num);
  if ( 0 != dci ) {
  dci->active.head = 0;
  dci->inactive.head = Escher_SetInsertBlock(
    dci->container,
    (const u1_t *) dci->pool,
    dci->size,
    dci->population );
  }
}
/*
 * Following provides the dispatcher loops for the xtUML event queues.
 */


bool Escher_run_flag = true; /* Turn this off to exit dispatch loop(s).  */
