import java.io.*;
import org.antlr.runtime.*;
import org.antlr.runtime.tree.*;

public class MaslDiff {

    // parse a MASL file, return the AST
    public CommonTree parse( String rule, String fn ) {
        // check args and set current file
        if ( fn == null || rule == null )
            return null;

        MaslLexer               lex;
        CommonTokenStream       tokens;
        MaslParser              parser;
        CommonTree              tree;

        try {
            lex = new MaslLexer( new ANTLRFileStream( fn ) );
        } catch ( IOException e ) {
            System.err.println( e );
            return null;
        }

        tokens = new CommonTokenStream( lex );
        parser = new MaslParser( tokens );

        try {
            tree = ( CommonTree )parser.target().getTree();
        } catch ( RecognitionException e ) {
            System.err.println( e );
            return null;
        }

        return tree;
    }

    // diff 2 masl ASTs
    public void diff( CommonTree t1, CommonTree t2 ) {

        // check args
        if ( null == t1 || null == t2 ) {
            System.err.println( "-diff: ERROR null tree" );
            return;
        }

        // diff
        if ( t1.equals( t2 ) )
            System.out.println( "MASL files are syntactically identical" );
        else
            System.out.println( "MASL files contain differences" );

    }

    // main method
    public static void main(String args[]) throws Exception {

        MaslDiff    dt = new MaslDiff();
            
        CommonTree  tree1;
        CommonTree  tree2;

        // check input args
        if ( args.length < 2 || args.length > 3 ) {
            System.out.println( "Usage:\tjava -cp<classpath> MaslDiff [rule] <MASL_file_1> <MASL_file_2>" );
            return;
        }

        if ( args.length == 2 ) {
            tree1 = dt.parse( "target", args[0] );  // parse first file
            tree2 = dt.parse( "target", args[1] );  // parse second file
        }
        else {
            tree1 = dt.parse( args[0], args[1] );   // parse first file
            tree2 = dt.parse( args[0], args[2] );   // parse second file
        }

        dt.diff( tree1, tree2 );
    }
}

