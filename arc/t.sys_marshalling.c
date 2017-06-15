
/*
 * Add a value to the structured parameters.
 */
void
${te_set.scope}${te_marshalling.marshall}( void * bstring, void * const data, const u4_t size )
{
  if ( NULL == bstring ) return;
  u4_t len = *((u4_t*)bstring);
  *((u4_t*)&bstring[4+len]) = size;
  len += 4;
  ${te_string.memmove}( &bstring[4+len], data, size );
  len += size;
  *((u4_t*)bstring) = len;
}

/*
 * Extract a data value from structured parameters.
 */
void
${te_set.scope}${te_marshalling.unmarshall}( void * const bstring, void * const data, u4_t index )
{
  if ( NULL == bstring ) return;
  u4_t len = *((u4_t*)bstring);
  u4_t counter = 0;
  void * ptr = &bstring[4];
  while ( ptr - bstring < 4 + len ) {
    u4_t size = *((u4_t*)ptr);
    ptr += 4;
    if ( counter == index ) {
      ${te_string.memmove}( data, ptr, size );
      break;
    }
    ptr += size;
    counter++;
  }
}

/*
 * Replace a data value in a structured set of parameters.
 */
void
${te_set.scope}${te_marshalling.remarshall}( void * const bstring, const void * const data, const u4_t new_size, const u4_t index )
{
  if ( NULL == bstring ) return;
  u4_t len = *((u4_t*)bstring);
  u4_t counter = 0;
  void * ptr = &bstring[4];
  while ( ptr - bstring < 4 + len ) {
    u4_t size = *((u4_t*)ptr);
    ptr += 4;
    if ( counter == index ) {
      // shift data down to create space
      c_t temp_buffer[(len+4)-(ptr-bstring)-size];
      ${te_string.memmove}( temp_buffer, &bstring[ptr-bstring+size], (len+4)-(ptr-bstring)-size );
      ${te_string.memmove}( &bstring[ptr-bstring+new_size], temp_buffer, (len+4)-(ptr-bstring)-size );
      // insert new data
      ${te_string.memmove}( &bstring[ptr-bstring], data, new_size );
      *((u4_t*)&bstring[ptr-bstring-4]) = new_size;
      *((u4_t*)bstring) = len - size + new_size + 4;
      break;
    }
    ptr += size;
    counter++;
  }
}

/*
 * Get the number of bytes in the marshalled data
 */
u4_t
${te_set.scope}${te_marshalling.get_size}( void * const bstring )
{
  if ( NULL == bstring ) return 0;
  else return *((u4_t*)bstring) + 4;
}
