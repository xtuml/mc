import java.io.*;
import org.antlr.runtime.*;
import org.antlr.runtime.tree.*;
import java.util.regex.Pattern;

public class WaslImportParser {

    // private fields
    private Serial          serial;             // external interface
    private File            workingDir;         // directory containing all model files

    // public constructor
    public WaslImportParser( Serial serial ) {
        if ( serial != null )
            this.serial = serial;
        else
            this.serial = null;
    }

    // set output stream
    public void setOutput( PrintStream out ) {
        if ( null != out && null != serial ) {
            serial.setOutput( out );
        }
    }

    // parse a WASL file
    public void parse( String rule, String fn, File dir, int pass ) {
        // check args and set current file
        if ( fn == null || rule == null )
            return;

        WaslLexer               lex;
        CommonTokenStream       tokens;
        WaslParser              parser;
        CommonTree              tree;
        CommonTreeNodeStream    nodes;

        try {
            lex = new WaslLexer( new ANTLRFileStream( dir.getPath() + File.separator + fn ) );
        } catch ( IOException e ) {
            System.err.println( e );
            return;
        }

        tokens = new CommonTokenStream( lex );
        parser = new WaslParser( tokens );
        parser.setErrorHandler( (msg) -> {} );
        parser.setInterface( serial );
        parser.setWaslParser( this );
        parser.setDirectory( dir );

        try {
            // Parse the chosen rule
            switch ( rule ) {
                case "domainDefinition":
                    parser.domainDefinition();
                    break;
                case "objectDefinitions":
                    parser.objectDefinitions(pass);
                    break;
                case "typeDefinitions":
                    parser.typeDefinitions();
                    break;
                case "relationshipDefinitions":
                    parser.relationshipDefinitions();
                    break;
                case "subtypeDefinitions":
                    parser.subtypeDefinitions();
                    break;
                case "eventDataDefinitions":
                    parser.eventDataDefinitions();
                    break;
                default:
                    System.err.println( "-parse: ERROR unrecognized rule." );
                    break;
            }
        } catch ( RecognitionException e ) {
            System.err.println( e );
            return;
        }

    }

    // parse a WASL domain
    public void parseDomain( String directory, String out ) {
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
        workingDir = new File( directory );
        domainFiles = workingDir.listFiles();
        if ( null == domainFiles ) {
            System.err.println( "-parseDomain: ERROR listFiles() returned null" );
            return;
        }

        // parse the domain file
        boolean found_dmp = false;
        for ( File f : domainFiles ) {
            if ( Pattern.matches( ".*\\.dmp", f.getName() ) ) {

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
                parse( "domainDefinition", f.getName(), workingDir, 1 );
                found_dmp = true;
                break;
            }
        }

        if ( !found_dmp ) {
            System.err.println( "-parseDomain: ERROR no .mod file found in directory" );
            return;
        }

        // done
    }

    // parse a WASL project
    public void parseProject( String directory, String out ) {
    }

    // print usage
    public void printUsage() {
        System.err.println("Usage:\n");
        System.err.println("Parse WASL domain:");
        System.err.println("\tjava -cp <classpath> WaslImportParser -d <domain directory> [-o [file name] ]\n");
        System.err.println("Parse WASL project:");
        System.err.println("\tjava -cp <classpath> WaslImportParser -p <project directory> [-o [file name] ]\n");
        System.err.println("Parse WASL file:");
        System.err.println("\tjava -cp <classpath> WaslImportParser -f <rule> <file name> [-o [file name] ]\n");
    }

    // main method
    public static void main(String args[]) throws Exception {

        Serial              serial = new MaslSerial();                  // create new serial interface
        WaslImportParser     parser = new WaslImportParser( serial );     // create new parser

        // check input args
        if ( args.length < 1 ) {
            // print usage
            parser.printUsage();
        }
        else {
            if ( args[0].equals( "-d" ) ) {        // parse WASL domain
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
            else if ( args[0].equals( "-p" ) ) {        // parse WASL project
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

                // parse the project
                parser.parseProject( args[1], out );
            }
            else if ( args[0].equals( "-f" ) ) {        // parse WASL file
                if ( args.length == 3 ) {
                    File wd = new File( args[3] );
                    // parse the file
                    parser.parse( args[1], args[2], wd, 1 );
                }
                else {
                    // print usage
                    parser.printUsage();
                    return;
                }
            }
            else {
                // print usage
                parser.printUsage();
            }
        }

    }
}

