import java.io.*;

public class MaslDSLExporter implements Serial {

    private PrintStream     output;             // output stream

    // public constructor
    public MaslDSLExporter() {
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
                output.print( arg );
            }
        }

        // print newline
        output.println();
    }

    // render
    public void render( String element, String name ) {}

    // tostring
    public void tostring( String element, String name ) {}

    // validate
    public void validate( String element ) {}

}
