import java.io.*;
import org.antlr.runtime.*;
import org.antlr.runtime.tree.*;
import java.util.regex.Pattern;

public class MaslImportParser {

    // private fields
    private Serial          serial;             // external interface
    private String          current_file;       // current file parsing

    // public constructor
    public MaslImportParser( Serial serial ) {
        if ( serial != null )
            this.serial = serial;
        else
            this.serial = null;

        current_file = null;
    }

    // set output stream
    public void setOutput( PrintStream out ) {
        if ( null != out && null != serial ) {
            serial.setOutput( out );
        }
    }

    // public getter for current_file
    public String getFile() {
        return current_file;
    }

    // parse a MASL file
    public void parse( String rule, String fn ) {
        // check args and set current file
        if ( fn == null || rule == null )
            return;

        current_file = fn;

        MaslLexer              lex;
        CommonTokenStream       tokens;
        MaslParser             parser;
        CommonTree              tree;
        CommonTreeNodeStream    nodes;
        MaslWalker                  walker;

        try {
            lex = new MaslLexer( new ANTLRFileStream( fn ) );
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
        walker = new MaslWalker( nodes );
        walker.setInterface( serial );
        walker.setMaslParser( this );

        // Walk the chosen rule
        switch ( rule ) {
            case "target":
                try {
                    walker.target();
                } catch ( RecognitionException e ) {
                    System.err.println( e );
                    return;
                }
                break;
            case "activityDefinition":
                try {
                    walker.activityDefinition();
                } catch ( RecognitionException e ) {
                    System.err.println( e );
                    return;
                }
                break;
            case "objectServiceDefinition":
                try {
                    walker.objectServiceDefinition();
                } catch ( RecognitionException e ) {
                    System.err.println( e );
                    return;
                }
                break;
            case "stateDefinition":
                try {
                    walker.stateDefinition();
                } catch ( RecognitionException e ) {
                    System.err.println( e );
                    return;
                }
                break;
            case "domainServiceDefinition":
                try {
                    walker.domainServiceDefinition();
                } catch ( RecognitionException e ) {
                    System.err.println( e );
                    return;
                }
                break;
            case "terminatorServiceDefinition":
                try {
                    walker.terminatorServiceDefinition();
                } catch ( RecognitionException e ) {
                    System.err.println( e );
                    return;
                }
                break;
            case "projectTerminatorServiceDefinition":
                try {
                    walker.projectTerminatorServiceDefinition();
                } catch ( RecognitionException e ) {
                    System.err.println( e );
                    return;
                }
                break;
            default:
                System.err.println( "-parse: ERROR unrecognized rule." );
                break;
        }

        current_file = null;

    }

    // parse a single MASL file
    public void parseFile( String rule, String fn, String out ) {

        PrintStream     output = System.out;

        // check args
        if ( null == rule || null == fn ) {
            System.err.println( "-parseFile: ERROR invalid arguments" );
            return;
        }

        // set output
        if ( null == out ) {
            setOutput( System.out );
        }
        else if ( !out.equals( "auto" ) ) {
            try {
                output = new PrintStream( out );
            } catch ( FileNotFoundException e ) {
                System.err.println( "-parse: ERROR " + e );
            }
            setOutput( output );
        }
        else {
            File f = new File( fn );
            out = f.getName();
            try {
                output = new PrintStream( out + ".smasl" );
            } catch ( FileNotFoundException e ) {
                System.err.println( "-parse: ERROR " + e );
            }
            setOutput( output );
        }

        // parse the file
        parse( rule, fn );

        // done
    }
    // parse a MASL domain
    public void parseDomain( String directory, String out ) {
        File            dir;
        File[]          domainFiles;
        
        PrintStream     output = System.out;

        String          domainName;

        // check args
        if ( null == directory ) {
            System.err.println( "-parse: ERROR null directory" );
            return;
        }

        // set output
        if ( null == out ) {
            setOutput( System.out );
        }
        else if ( !out.equals( "auto" ) ) {
            try {
                output = new PrintStream( out );
            } catch ( FileNotFoundException e ) {
                System.err.println( "-parse: ERROR " + e );
            }
            setOutput( output );
        }

        // read the directory
        dir = new File( directory );
        domainFiles = dir.listFiles();
        if ( null == domainFiles ) {
            System.err.println( "-parseDomain: ERROR listFiles() returned null" );
            return;
        }

        // parse the domain file
        for ( File f : domainFiles ) {
            if ( Pattern.matches( ".*\\.mod", f.getName() ) ) {

                if ( null != out && out.equals( "auto" ) ) {
                    // set the domain name
                    domainName = f.getName().substring( 0, f.getName().length() - 4 );
                    try {
                        output = new PrintStream( domainName + ".smasl" );
                    } catch ( FileNotFoundException e ) {
                        System.err.println( "-parse: ERROR " + e );
                    }
                    setOutput( output );
                }

                // parse the file
                parse( "target", f.getPath() );
                break;
            }
        }

        // parse all activities ( according the defined file extension convention )
        for ( File f : domainFiles ) {
            if ( Pattern.matches( ".*\\.svc", f.getName() ) ||
                 Pattern.matches( ".*\\.fn", f.getName() ) ||
                 Pattern.matches( ".*\\.ext", f.getName() ) ||
                 Pattern.matches( ".*\\.scn", f.getName() ) ||
                 Pattern.matches( ".*\\.al", f.getName() ) ||
                 Pattern.matches( ".*\\.tr", f.getName() ) ) {
                     
                // parse the file
                parse( "activityDefinition", f.getPath() );
            }
        }

        // done
    }

    // parse a MASL project
    public void parseProject( String directory, String out ) {
        File            dir;
        File[]          projectFiles;
        
        PrintStream     output = System.out;

        String          projectName;

        // check args
        if ( null == directory ) {
            System.err.println( "-parse: ERROR null directory" );
            return;
        }

        // set output
        if ( null == out ) {
            setOutput( System.out );
        }
        else if ( !out.equals( "auto" ) ) {
            try {
                output = new PrintStream( out );
            } catch ( FileNotFoundException e ) {
                System.err.println( "-parse: ERROR " + e );
            }
            setOutput( output );
        }

        // read the directory
        dir = new File( directory );
        projectFiles = dir.listFiles();
        if ( null == projectFiles ) {
            System.err.println( "-parseProject: ERROR listFiles() returned null" );
            return;
        }

        // parse the project file
        for ( File f : projectFiles ) {
            if ( Pattern.matches( ".*\\.prj", f.getName() ) ) {

                if ( null != out && out.equals( "auto" ) ) {
                    // set the project name
                    projectName = f.getName().substring( 0, f.getName().length() - 4 );
                    try {
                        output = new PrintStream( projectName + ".smasl" );
                    } catch ( FileNotFoundException e ) {
                        System.err.println( "-parse: ERROR " + e );
                    }
                    setOutput( output );
                }

                // parse the file
                parse( "target", f.getPath() );
                break;
            }
        }

        // parse all activities ( according the defined file extension convention )
        for ( File f : projectFiles ) {
            if ( Pattern.matches( ".*\\.tr", f.getName() ) ) {
                // parse the file
                parse( "activityDefinition", f.getPath() );
            }
        }

        // done
    }

    // print usage
    public void printUsage() {
        System.err.println("Usage:\n");
        System.err.println("Parse single MASL file:");
        System.err.println("\tjava -cp <classpath> MaslImportParser -f <rule> <MASL file> [-o [file name] ]\n");
        System.err.println("Parse MASL domain:");
        System.err.println("\tjava -cp <classpath> MaslImportParser -d <domain directory> [-o [file name] ]\n");
        System.err.println("Parse MASL project:");
        System.err.println("\tjava -cp <classpath> MaslImportParser -p <project directory> [-o [file name] ]");
    }

    // main method
    public static void main(String args[]) throws Exception {

        Serial              serial = new MaslSerial();                  // create new serial interface
        MaslImportParser    parser = new MaslImportParser( serial );    // create new parser

        // check input args
        if ( args.length < 1 ) {
            // print usage
            parser.printUsage();
        }
        else {
            if ( args[0].equals( "-f" ) ) {             // parse single MASL file
                String out = null;
                if ( args.length == 3 ) {
                    out = null;
                }
                else if ( args.length == 4 && args[3].equals( "-o" ) ) {
                    out = "auto";
                }
                else if ( args.length == 5 && args[3].equals( "-o" ) ) {
                    out = args[4];
                }
                else {
                    // print usage
                    parser.printUsage();
                    return;
                }

                // parse the file
                parser.parseFile( args[1], args[2], out );
            }
            else if ( args[0].equals( "-d" ) ) {        // parse MASL domain
                String out = null;
                if ( args.length == 2 ) {
                    out = null;
                }
                else if ( args.length == 3 && args[2].equals( "-o" ) ) {
                    out = "auto";
                }
                else if ( args.length == 4 && args[2].equals( "-o" ) ) {
                    out = args[3];
                }
                else {
                    // print usage
                    parser.printUsage();
                    return;
                }

                // parse the domain
                parser.parseDomain( args[1], out );
            }
            else if ( args[0].equals( "-p" ) ) {        // parse MASL project
                String out = null;
                if ( args.length == 2 ) {
                    out = null;
                }
                else if ( args.length == 3 && args[2].equals( "-o" ) ) {
                    out = "auto";
                }
                else if ( args.length == 4 && args[2].equals( "-o" ) ) {
                    out = args[3];
                }
                else {
                    // print usage
                    parser.printUsage();
                    return;
                }

                // parse the domain
                parser.parseProject( args[1], out );
            }
            else {
                // print usage
                parser.printUsage();
            }
        }

    }
}

