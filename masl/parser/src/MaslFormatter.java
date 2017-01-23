import java.io.*;
import org.antlr.runtime.*;
import org.antlr.runtime.tree.*;
import java.util.regex.Pattern;
import java.util.Arrays;

public class MaslFormatter {

    // public fields
    public static final int FILE = 0;
    public static final int DIR = 1;

    // private fields
    private boolean sort;
    private boolean reorder;
    private boolean comments;
    private int tabwidth;
    private PrintStream outStream;

    // public constructor
    public MaslFormatter() {
        sort = false;
        reorder = false;
        comments = false;
        tabwidth = -1;
        outStream = null;
    }

    // setup method
    public void setup( boolean sort, boolean reorder, boolean comments, int tabwidth ) {
        this.sort = sort;
        this.reorder = reorder;
        this.comments = comments;
        this.tabwidth = tabwidth;
    }

    // parse a directory of MASL files
    public void parseDir( String indir, String outdir ) {

        // check args
        if ( null == indir || null == outdir ) {
            System.err.println( "-parseDir: ERROR null directory" );
            return;
        }

        // read the input directory
        File inputDir = new File( indir );
        File[] maslFiles = inputDir.listFiles();
        if ( null == maslFiles ) {
            System.err.println( "-parseDir: ERROR listFiles() returned null" );
            return;
        }

        // get the output directory
        File outputDir = new File( outdir );
        if ( outputDir.exists() ) {
            if ( !outputDir.isDirectory() ) {
                System.err.println( "-parseDir: ERROR output exists and is not a directory" );
                return;
            }
            if ( !outputDir.canWrite() || !outputDir.canWrite() ) {
                System.err.println( "-parseDir: ERROR output directory access denied" );
                return;
            }
        }
        else {
            try {
                outputDir.mkdirs();
            } catch ( SecurityException e ) {
                System.err.println( "-parseDir: ERROR: " + e );
                return;
            }
        }

        // format all files
        for ( File f : maslFiles ) {
            if ( Pattern.matches( ".*\\.svc", f.getName() ) ||
                 Pattern.matches( ".*\\.fn", f.getName() ) ||
                 Pattern.matches( ".*\\.ext", f.getName() ) ||
                 Pattern.matches( ".*\\.scn", f.getName() ) ||
                 Pattern.matches( ".*\\.al", f.getName() ) ||
                 Pattern.matches( ".*\\.tr", f.getName() ) ||
                 Pattern.matches( ".*\\.int", f.getName() ) ||
                 Pattern.matches( ".*\\.mod", f.getName() ) ||
                 Pattern.matches( ".*\\.prj", f.getName() ) ) {

                // get a new file output stream
                String outpath = outputDir.getPath() + "/" + f.getName();
                try {
                    outStream = new PrintStream( new File( outpath ) );
                } catch ( FileNotFoundException e ) {
                    System.err.println( "-parseDir: ERROR: " + e );
                    return;
                } catch ( SecurityException e ) {
                    System.err.println( "-parseDir: ERROR: " + e );
                    return;
                }

                // get a new input stream
                InputStream inStream = null;
                try {
                    inStream = new FileInputStream( f );
                } catch ( FileNotFoundException e ) {
                    System.err.println( "-parseDir: ERROR: " + e );
                    return;
                }
                     
                // parse the file
                if ( inStream != null ) parse( inStream );
            }
        }

        // done
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
        formatter.setComments( comments );
        if ( tabwidth >= 0 ) formatter.setTabWidth( tabwidth );
        if ( outStream != null ) formatter.setOut( outStream );

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
        System.err.println("\tjava -cp <classpath> MaslFormatter [-s(ort)] [-r(eorder)] [-c(omments)] [-t <tabwidth>] < <input> > <output>\n");
        System.err.println("Format directory:");
        System.err.println("\tjava -cp <classpath> MaslImportParser [-s(ort)] [-r(eorder)] [-c(omments)] [-t <tabwidth>] -i <input directory> -o <output directory>\n");
    }

    // main method
    public static void main(String args[]) throws Exception {

        MaslFormatter formatter = new MaslFormatter();      // create new formatter

        boolean sort = false;
        boolean reorder = false;
        boolean comments = false;
        int tabwidth = -1;
        int mode = MaslFormatter.FILE;

        // get options
        int i, j;
        if ( Arrays.asList(args).contains("-h") ) {
            formatter.printUsage();
            return;
        }

        if ( Arrays.asList(args).contains("-s") ) sort = true;
        if ( Arrays.asList(args).contains("-r") ) reorder = true;
        if ( Arrays.asList(args).contains("-c") ) comments = true;

        i = Arrays.asList(args).indexOf("-t");
        if ( i != -1 && args.length > i+1 ) {
            tabwidth = Integer.parseInt( args[i+1] );
        }

        i = Arrays.asList(args).indexOf("-i");
        j = Arrays.asList(args).indexOf("-o");
        String indir = null;
        String outdir = null;
        if ( i != -1 && args.length > i+1 && j != -1 && args.length > j+1 ) {
            mode = MaslFormatter.DIR;
            indir = args[i+1];
            outdir = args[j+1];
        }
        
        // run formatter
        formatter.setup( sort, reorder, comments, tabwidth );
        if ( MaslFormatter.FILE == mode ) {
            formatter.parse( System.in );
        }
        else if ( MaslFormatter.DIR == mode ) {
            formatter.parseDir( indir, outdir );
        }
        else {
            formatter.printUsage();
        }

    }
}

