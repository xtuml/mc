#include <string.h>
#include <stdio.h>

// masl_url_encode
void masl_url_encode( char * dst, const char * src ) {
    // check argument
    if ( !src ) return;

    char * s = (char *)src;

    // copy character by character checking for encodings
    while ( *s != '\0' ) {

        switch ( *s ) {
            case '%':
                *dst = '%';
                *(dst+1) = '2';
                *(dst+2) = '5';
                dst += 3;
                s++;
                break;
            case ',':
                *dst = '%';
                *(dst+1) = '2';
                *(dst+2) = 'C';
                dst += 3;
                s++;
                break;
            case '\n':
                *dst = '%';
                *(dst+1) = '0';
                *(dst+2) = 'A';
                dst += 3;
                s++;
                break;
            case '\r':
                *dst = '%';
                *(dst+1) = '0';
                *(dst+2) = 'D';
                dst += 3;
                s++;
                break;
            default:
                *dst++ = *s++;      // copy the character
                break;
        }

    }

    *dst = '\0';    // null terminate the encoded string

}

// masl_url_decode
void masl_url_decode( char * dst, const char * src ) {
    // check argument
    if ( !src ) return;

    char * s = (char *)src;

    // copy character by character checking for encodings
    while ( *s != '\0' ) {

        switch ( *s ) {
            case '%':
                // replace the encoding
                if ( *(s+1) == '2' && *(s+2) == '5' ) *dst++ = '%';
                else if ( *(s+1) == '2' && ( *(s+2) == 'C' || *(s+2) == 'c' ) ) *dst++ = ',';
                else if ( *(s+1) == '0' && ( *(s+2) == 'A' || *(s+2) == 'a' ) ) *dst++ = '\n';
                else if ( *(s+1) == '0' && ( *(s+2) == 'D' || *(s+2) == 'd' ) ) *dst++ = '\r';
                else {
                    fprintf( stderr, "Invalid URL encoding encountered. Aborting.\n" );
                    return;
                }
                s += 3;
                break;
            default:
                *dst++ = *s++;      // copy the character
                break;
        }

    }

    *dst = '\0';    // null terminate the decoded string

}
