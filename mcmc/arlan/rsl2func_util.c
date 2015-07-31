#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static char S_SYNC__Name[ 1024 ];
static char S_SPARM__Name[ 16 ][ 1024 ];
static char S_SPARM__S_DT__NameR26[ 16 ][ 1024 ];
static char S_SYNC__S_DT__NameR25[ 1024 ];
static char S_SYNC__S_SDT__NameR25[ 16 ][ 1024 ];
static int dtindex, s_sparm, s_sync_ret, s_sdt, s_sync_id, s_sparm_id;
static int s_mbr_id, Previous_SParm_ID, Previous_S_MBR_ID;
static struct {
  char Name[ 1024 ];
  char Key_Lett[ 1024 ];
  char inst_refDT[ 64 ];
  char inst_ref_setDT[ 64 ];
} dtarray[ 1024 ];

struct { char * s[16]; } cfuncsig, funcsigs[1000] = {
  {""},
#include "funcsigs.h"
};

/*-------------------------------------------------------------------*/
void funcsig( char * );
void funcsig( char * f )
{
  int i = 1;
  while ( funcsigs[i].s[0] ) {
    if ( 0 == strcmp( funcsigs[i].s[0], f ) ) {
      cfuncsig = funcsigs[i];
    }
    i++;
  }
}

/*-------------------------------------------------------------------*/
void stow_parameter( char * );
void stow_parameter( char * line )
{
  strcpy( S_SPARM__S_DT__NameR26[s_sparm],strtok(line, " "));
  strcpy( S_SPARM__Name[s_sparm++],strtok(0," \n"));
}

/*-------------------------------------------------------------------*/
void stow_return_structure( char * );
void stow_return_structure( char * variable )
{
  int i, j = 0;
  char * s = strtok( variable, " " );
  if ( 0 == strncmp( s, "attr_", 5 ) ) {
    for (i=0;i<s_sdt;i++)
      if (0==strncmp(s+5,S_SYNC__S_SDT__NameR25[i],1024)) j=1;
    if (0==j)
      strncpy(S_SYNC__S_SDT__NameR25[s_sdt++],s+5,1024);
  }
}

/*-------------------------------------------------------------------*/
void stow_S_SYNC( const char * );
void stow_S_SYNC( const char * identifier )
{
  char s[1024]; int i=strlen( identifier );
  strncpy( S_SYNC__Name, identifier, 1024 );
  S_SYNC__Name[i-1]=0;
}

/*-------------------------------------------------------------------*/
char * dtnameid( const char *, const char * );
char * dtnameid( const char * name, const char * kl )
{
  int i;
  for ( i = 0; i < dtindex; i++ ) {
    if ( ( 0 == strncmp( name, dtarray[i].Name, 1024 ) ) &&
         ( 0 == strncmp( kl, dtarray[i].Key_Lett, 1024 ) ) )
      return dtarray[ i ].inst_refDT;
  }
  return "";
}

/*-------------------------------------------------------------------*/
char * dtKLid( char * );
char * dtKLid( char * name )
{
  int i;
  for ( i = 0; i < dtindex; i++ )
    if ( 0 == strncasecmp( name, dtarray[i].Key_Lett, 1024 ) )
      return dtarray[ i ].inst_refDT;
  return "";
}

/*-------------------------------------------------------------------*/
char * dtKLname( char * );
char * dtKLname( char * kl )
{
  int i = 0, len, us = 0;
  char s[ 32 ], * sp = s;
  /* Copy kl to sp omitting blank spaces.  */
  while ((i++ < 32) && (*kl))
    if ( ' ' == *kl ) kl++; else *sp++ = *kl++;
  if (i < 32) *sp = 0;
  sp = s;
  len = strlen( sp );
  /* Count _ (underscores) in string.  */
  while ( 0 != *sp ) if ( '_' == *sp++ ) us++;
  sp = s;
  /* If more than one underscore, get back end (key letters part) of string.  */
  if ( us > 1 ) { strsep( &sp, "_" ); len = strlen( sp ); }
  /* Search for and return a match.  */
  for ( i = 0; i < dtindex; i++ )
    if ( 0 == strncasecmp( sp, dtarray[i].Key_Lett, len ) )
      return dtarray[ i ].Name;
  /* If s is the last character, chop it off and ignore it in the compare.  */
  if ( 's' == *(sp+len-1) ) { len--; *(sp+len) = 0; }
  for ( i = 0; i < dtindex; i++ )
    if ( 0 == strncasecmp( sp, dtarray[i].Key_Lett, len ) )
      return dtarray[ i ].Name;
  return "";
}

/*-------------------------------------------------------------------*/
int dtnameindex( char * );
int dtnameindex( char * name )
{
  int i;
  for ( i = 0; i < dtindex; i++ )
    if ( 0 == strncmp( name, dtarray[i].Name, 1024 ) )
      return i;
  return 0;
}

/*-------------------------------------------------------------------*/
void loadtable( void );
void loadtable( void )
{
  static FILE * dtfile;
  static char line[ 1024 ], word1[ 128 ], word2[ 128 ];
  char * w1 = word1; char * w2 = word2;
  int i, done;
  if ( 0 == (dtfile = fopen( "o_objNameKL.csv", "r" )) ) {
    printf( "loadtable failed to open o_objNameKL.csv\n" );
    exit( 1 );
  }
  /* Read the class names and key letters.  */
  done = 0;
  while ( ! done ) {
    if ( 0 == fgets( line, 1024, dtfile ) ) {
      done = 1;
    } else {
      strncpy( dtarray[ dtindex ].Name, strtok( line, "," ), 128 );
      strncpy( dtarray[ dtindex ].Key_Lett, strtok( 0, ",\n" ), 128 );
      dtindex++;
    }
  }
  fclose( dtfile );
#ifdef LETTHISRUNFOROTHERSTUFF
  /* Read the data types and add them to the list at the right spot.  */
  if ( 0 == (dtfile = fopen( "s_dtid.csv", "r" )) ) {
    printf( "loadtable failed to open s_dtid.csv\n" );
    exit( 1 );
  }
  done = 0;
  while ( ! done ) {
    if ( 0 == fgets( line, 1024, dtfile ) ) {
      done = 1;
    } else {
      strncpy( word1, strtok( line, "," ), 128 );
      strncpy( word2, strtok( 0, ",\n" ), 128 );
      w1 = word1; w2 = word2;
      if ( 0 == strncmp( w2, "inst_ref", 8 ) ) {
        /* extract class name from <IRDT type name> */
        char inst_ref_set = 0; char * anglebracket;
        int dtentry;
        w2 = w2 + 8;
        if ( 0 == strncmp( w2, "_set", 4 ) ) {
          inst_ref_set = 1;
          w2 = w2 + 4;
        }
        w2 = w2 + 1;  /* Skip past '<'.  */
        if ( 0 == ( anglebracket = strchr( w2, '>' ) ) ) {
          printf( "loadtable failed to find angle bracket '>'.\n" );
          exit( 1 );
        }
        *anglebracket = 0;
        /* find the class name in the dtarray */
        dtentry = dtnameindex( w2 );
        if ( 0 != dtentry ) {
          /* is this inst_ref or inst_ref_set? */
          if ( 0 == inst_ref_set ) {
            strncpy( dtarray[ dtentry ].inst_refDT, w1, 128 );
          } else {
            strncpy( dtarray[ dtentry ].inst_ref_setDT, w1, 128 );
          }
        } else {
          /* not found so add normal data type entry */
          *anglebracket = '>';
          strncpy( dtarray[ dtindex ].Name, word2, 128 );
          strncpy( dtarray[ dtindex ].inst_refDT, word1, 128 );
          dtindex++;
        }
      } else {
        /* This is a new data type.  Add a new record.  */
        strncpy( dtarray[ dtindex ].Name, w2, 128 );
        strncpy( dtarray[ dtindex ].inst_refDT, w1, 128 );
        dtindex++;
      }
    }
  }
  fclose( dtfile );
#endif
}


/*-------------------------------------------------------------------*/
void dump_insert_statements( void );
void dump_insert_statements( void )
{
  int i;
  /* S_FIP */
  printf("INSERT INTO S_FIP VALUES (\n\t%s,\n", dtnameid( "S_FPK", "" ) );
  printf("\t\"00000000-c0de-3020-0000-e5ce1%-7.7d\");\n",s_sync_id);
  /* S_SYNC */
  printf("INSERT INTO S_SYNC VALUES (\n\t\"00000000-c0de-3020-0000-e5ce1%-7.7d\",\n",s_sync_id);
  printf("\t%s,\n", dtnameid( "S_DOM", "" ) );
  printf("\t'%s',\n",S_SYNC__Name);
  printf("\t'generated rsl2func converted function %s',\n",S_SYNC__Name);
  printf("\t'//',\n"); /* Action_Semantics */
  if ( 0 == s_sdt ) {
    printf("\t%s,\n", dtnameid( "void", "" ) );
  } else {
    printf("\t\"00000000-c0de-3020-2222-e5ce1%-7.7d\",\n",s_sync_id);
  }
  printf("\t0,\n");   /* Suc_Pars */
  printf("\t'');\n"); /* Return_Dimensions */
  /* S_DT_PROXY for S_SYNC return value */
  printf("INSERT INTO S_DT_PROXY VALUES (\n");
  if ( 0 == s_sdt ) {
    printf("\t%s,\n", dtnameid( "void", "" ) );
    printf("\t%s,\n", dtnameid( "S_DOM", "" ) );
    printf("\t'void',\n");
    printf("\t'',\n"); /* Description */
    printf("\t'',\n"); /* DefaultValue */
    printf("\t'../../Datatypes/Datatypes.xtuml');\n");
  } else {
    printf("\t\"00000000-c0de-3020-2222-e5ce1%-7.7d\",\n",s_sync_id);
    printf("\t%s,\n", dtnameid( "S_DOM", "" ) );
    printf("\t'%s_returntype',\n",S_SYNC__Name);
    printf("\t'',\n"); /* Description */
    printf("\t'',\n"); /* DefaultValue */
    printf("\t'../../Datatypes/dt0902/dt0902.xtuml');\n");
    /* S_DIP */
    fprintf(stderr,"INSERT INTO S_DIP VALUES (\n\t%s,\n", dtnameid( "S_DPK", "" ) );
    fprintf(stderr,"\t\"00000000-c0de-3020-2222-e5ce1%-7.7d\");\n",s_sync_id);
    /* S_DT for S_SYNC return value */
    fprintf(stderr,"INSERT INTO S_DT VALUES (\n");
    fprintf(stderr,"\t\"00000000-c0de-3020-2222-e5ce1%-7.7d\",\n",s_sync_id);
    fprintf(stderr,"\t%s,\n", dtnameid( "S_DOM", "" ) );
    fprintf(stderr,"\t'%s_returntype',\n",S_SYNC__Name);
    fprintf(stderr,"\t'',\n"); /* Description */
    fprintf(stderr,"\t'');\n"); /* DefaultValue */
    /* S_SDT for S_SYNC return value */
    fprintf(stderr,"INSERT INTO S_SDT VALUES (\n");
    fprintf(stderr,"\t\"00000000-c0de-3020-2222-e5ce1%-7.7d\");\n",s_sync_id);
  }
  for ( i = 0; i < s_sdt; i++ ) {
    char * mbrdtid = dtnameid( S_SYNC__S_SDT__NameR25[i], "" );
    if ( 0 == strlen( mbrdtid ) ) mbrdtid = dtnameid( "string", "" );
    /* S_MBR for S_SYNC return value */
    fprintf(stderr,"INSERT INTO S_MBR VALUES (\n");
    fprintf(stderr,"\t\"00000000-c0de-3020-3333-e5ce1%-7.7d\",\n",s_mbr_id);
    fprintf(stderr,"\t'%s',\n",S_SYNC__S_SDT__NameR25[i]); /* Name */
    fprintf(stderr,"\t'generated return member type %s for %s_returntype.',\n",S_SYNC__S_SDT__NameR25[i], S_SYNC__Name);
    fprintf(stderr,"\t\"00000000-c0de-3020-2222-e5ce1%-7.7d\",\n",s_sync_id); /* Parent */
    fprintf(stderr,"\t%s,\n", mbrdtid ); /* DT_ID */
    if ( 0 == i ) {
      fprintf(stderr,"\t\"00000000-0000-0000-0000-000000000000\",\n");
    } else {
      fprintf(stderr,"\t\"00000000-c0de-3020-3333-e5ce1%-7.7d\",\n",Previous_S_MBR_ID);
    }
    fprintf(stderr,"\t'');\n"); /* Dimensions */
    /* S_DT_PROXY for S_SYNC return structured member data type */
    fprintf(stderr,"INSERT INTO S_DT_PROXY VALUES (\n\t%s,\n", mbrdtid );
    fprintf(stderr,"\t%s,\n", dtnameid( "S_DOM", "" ) );
    fprintf(stderr,"\t'%s',\n", S_SYNC__S_SDT__NameR25[i] ); /* Name */
    fprintf(stderr,"\t'',\n"); /* Description */
    fprintf(stderr,"\t'',\n"); /* DefaultValue */
    fprintf(stderr,"\t'../Datatypes.xtuml');\n");
    Previous_S_MBR_ID = s_mbr_id;
    s_mbr_id++;
  }
  for (i=0; i<s_sparm; i++) {
    char * s = dtKLid( S_SPARM__Name[i] );
    /* S_SPARM */
    printf("INSERT INTO S_SPARM VALUES (\n\t\"00000000-c0de-3020-1111-e5ce1%-7.7d\",\n",s_sparm_id);
    printf("\t\"00000000-c0de-3020-0000-e5ce1%-7.7d\",\n",s_sync_id);
    printf("\t'%s',\n", S_SPARM__Name[i]);
    if ( 0 == strncmp( S_SPARM__S_DT__NameR26[i], "inst_ref_set", 12) )
      ;
    else if ( 0 == strncmp( S_SPARM__S_DT__NameR26[i], "inst_ref", 8 ))
      ;
    else /* DT_ID */
      s = dtnameid( S_SPARM__S_DT__NameR26[i], "" );
    printf("\t%s,\n", s );
    printf("\t0,\n"); /* By_Ref */
    printf("\t'',\n"); /* Dimensions */
    if ( 0 == i ) {
      printf("\t\"00000000-0000-0000-0000-000000000000\",\n");
    } else {
      printf("\t\"00000000-c0de-3020-1111-e5ce1%-7.7d\",\n",Previous_SParm_ID);
    }
    printf("\t'generated paramter %s for function %s');\n",S_SPARM__Name[i],S_SYNC__Name);
    /* S_SPARM data type proxy */
    printf("INSERT INTO S_DT_PROXY VALUES (\n\t%s,\n", s );
    printf("\t%s,\n", dtnameid( "S_DOM", "" ) );
    printf("\t'',\n"); /* Name */
    printf("\t'',\n"); /* Description */
    printf("\t'',\n"); /* DefaultValue */
    printf("\t'../../Datatypes/Datatypes.xtuml');\n");
    Previous_SParm_ID = s_sparm_id;
    s_sparm_id++;
  }
  s_sparm=0; s_sync_ret=0; s_sdt=0;
  s_sync_id++;
}
