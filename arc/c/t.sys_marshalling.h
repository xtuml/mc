#include <stdlib.h>
void ${te_marshalling.marshall}( void *, void * const, const u4_t );
void ${te_marshalling.unmarshall}( void * const, void * const, u4_t );
void ${te_marshalling.remarshall}( void * const, const void * const, const u4_t, const u4_t );
u4_t ${te_set.scope}${te_marshalling.get_size}( void * const );

