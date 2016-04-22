import java.io.*;
import java.util.regex.Matcher;

public class MaslSerial implements Serial {

    private PrintStream     output;             // output stream

    // public constructor
    public MaslSerial() {
        output = System.out;
    }

    // set output stream
    public void setOutput( PrintStream out ) {
        if ( null != out ) {
            output = out;
        }
    }

    // populate
    public void populate( String classname, String[] value ) {
        // check args
        if ( classname == null || classname.equals("") || value == null )
            return;

        // print the classname
        output.print( classname );

        // if there are args
        if ( value.length > 0 && value[0] != null ) {

            // print all args
            for ( String arg : value ) {
                output.print( "," );

                // print arg
                output.print( serial_MASL_encode( arg ) );
            }
        }

        // print newline
        output.println();
    }

    /* 
     * serial_MASL_encode
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
     * expects a string to encode as an argument
     */
    private String serial_MASL_encode( String str ) {
        if ( null == str ) return null;
        return str.replaceAll( "%", "%25" ).replaceAll( ",", "%2C" ).replaceAll( "\n", "%0A" ).replaceAll( "\r", "%0D" );
    }

}
