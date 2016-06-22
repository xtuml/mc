import java.io.*;
import org.antlr.runtime.*;
import org.antlr.runtime.tree.*;
import java.util.regex.Pattern;

public class MaslFormatter {

    // private fields

    // public constructor
    public MaslFormatter() {
    }

    // parse a MASL file, output formatted MASL
    public void parse( InputStream in ) {
        // check args and set current file
        if ( in == null )
            return;

        MaslLexer               lex;
        CommonTokenStream       tokens;
        MaslParser              parser;
        CommonTree              tree;
        CommonTreeNodeStream    nodes;
        MaslFormat              formatter;

        try {
            lex = new MaslLexer( new ANTLRReaderStream( new InputStreamReader( in ) ) );
        } catch ( IOException e ) {
            System.err.println( e );
            return;
        }

        tokens = new CommonTokenStream( lex );
        parser = new MaslParser( tokens );

        try {
            tree = ( CommonTree )parser.target().getTree();
        } catch ( RecognitionException e ) {
            System.err.println( e );
            return;
        }

        nodes = new CommonTreeNodeStream(tree);
        formatter = new MaslFormat( nodes );
        formatter.init();
        formatter.setSort(true);
        formatter.setReorder(true);

        // run formatter
        try {
            formatter.target();
        } catch ( RecognitionException e ) {
            System.err.println( e );
            return;
        }

    }

    // main method
    public static void main(String args[]) throws Exception {

        MaslFormatter   formatter = new MaslFormatter();    // create new formatter

        formatter.parse( System.in );

    }
}

