#if ((ULONG_MAX) == (UINT_MAX))
int yywrap( void ) { return 0; }
#elif __MINGW32__
int yywrap( void ) { return 0; }
#elif __MINGW64__
int yywrap( void ) { return 0; }
#endif
