/* 
 * masl_url_encode
 *
 * This function encodes a serial MASL string, replacing
 * special characters according to the following table:
 *
 * | Character | Encoding |
 * |:---------:|:--------:|
 * | %         | %25      |
 * | ,         | %2C      |
 * | \n        | %0A      |
 * | \r        | %0D      |
 *
 * @arg dst     Destination string, must be allocated by
 *              the user with enough memory to store the
 *              encoded string
 * @arg src     Well formed string to encode
 */
void masl_url_encode( char * dst, const char * src );

/* 
 * masl_url_decode
 *
 * This function decodes a serial MASL string, replacing
 * special characters according to the following table:
 *
 * | Character | Encoding |
 * |:---------:|:--------:|
 * | %         | %25      |
 * | ,         | %2C      |
 * | \n        | %0A      |
 * | \r        | %0D      |
 *
 * @arg dst     Destination string, must be allocated by
 *              the user with enough memory to store the
 *              decoded string
 * @arg src     Well formed string to decode
 */
void masl_url_decode( char * dst, const char * src );
