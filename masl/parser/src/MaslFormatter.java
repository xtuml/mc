import java.io.*;
import org.antlr.runtime.*;
import org.antlr.runtime.tree.*;
import java.util.regex.Pattern;
import java.util.Arrays;

public class MaslFormatter {

    // public fields
    public static final int FILE = 0;
    public static final int DOMAIN = 1;
    public static final int PROJECT = 2;

    // private fields
    private boolean sort;
    private boolean reorder;
    private int tabwidth;

    // public constructor
    public MaslFormatter() {
    }

    // setup method
    public void setup( boolean sort, boolean reorder, int tabwidth ) {
        this.sort = sort;
        this.reorder = reorder;
        this.tabwidth = tabwidth;
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
        formatter.setSort( sort );
        formatter.setReorder( reorder );
        if ( tabwidth >= 0 ) formatter.setTabWidth( tabwidth );

        // run formatter
        try {
            formatter.target();
        } catch ( RecognitionException e ) {
            System.err.println( e );
            return;
        }

    }

    // print usage
    public void printUsage() {
        System.err.println("Usage:\n");
        System.err.println("Format single MASL file:");
        System.err.println("\tjava -cp <classpath> MaslFormatter [-s] [-r] [-t <tabwidth>] < <input> > <output>\n");
        System.err.println("Format MASL domain:");
        System.err.println("\tjava -cp <classpath> MaslImportParser [-s] [-r] [-t <tabwidth>] -d <domain directory> -o <output directory>\n");
        System.err.println("Format MASL project:");
        System.err.println("\tjava -cp <classpath> MaslImportParser [-s] [-r] [-t <tabwidth>] -p <project directory> -o <output directory>\n");
    }

    // main method
    public static void main(String args[]) throws Exception {

        MaslFormatter formatter = new MaslFormatter();      // create new formatter

        boolean sort = false;
        boolean reorder = false;
        int tabwidth = -1;
        int mode = MaslFormatter.FILE;

        // get options
        if ( Arrays.asList(args).contains("-h") ) {
            formatter.printUsage();
            return;
        }

        if ( Arrays.asList(args).contains("-s") ) sort = true;
        if ( Arrays.asList(args).contains("-r") ) reorder = true;

        int i = Arrays.asList(args).indexOf("-t");
        if ( i != -1 && args.length > i+1 ) {
            tabwidth = Integer.parseInt( args[i+1] );
        }
        
        // run formatter
        formatter.setup( sort, reorder, tabwidth );
        if ( MaslFormatter.FILE == mode ) {
            formatter.parse( System.in );
        }
        else if ( MaslFormatter.DOMAIN == mode ) {
        }
        else if ( MaslFormatter.PROJECT == mode ) {
        }
        else {
            formatter.printUsage();
        }

    }
}

