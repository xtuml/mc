import java.io.*;
import org.antlr.runtime.*;
import org.antlr.runtime.tree.*;
import java.util.regex.Pattern;

public class MaslSort {

    // private fields

    // public constructor
    public MaslSort() {
    }

    // parse a MASL file, return the sorted version as a string
    public String parse( InputStream in ) {
        // check args and set current file
        if ( in == null )
            return null;

        MaslLexer               lex;
        CommonTokenStream       tokens;
        MaslSortParser          parser;

        try {
            lex = new MaslLexer( new ANTLRReaderStream( new InputStreamReader( in ) ) );
        } catch ( IOException e ) {
            System.err.println( e );
            return null;
        }

        tokens = new CommonTokenStream( lex );
        parser = new MaslSortParser( tokens );

        try {
            parser.target();
        } catch ( RecognitionException e ) {
            System.err.println( e );
            return null;
        }

        return parser.getResult();

    }

    // main method
    public static void main(String args[]) throws Exception {

        MaslSort    parser = new MaslSort();        // create new parser

        String output = parser.parse( System.in );

        System.out.print( output );
        System.out.flush();

    }
}

