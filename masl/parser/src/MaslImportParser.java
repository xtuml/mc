import java.io.*;
import org.antlr.runtime.*;
import org.antlr.runtime.tree.*;
import java.util.regex.Pattern;
import java.nio.file.Files;
import java.nio.file.Paths;

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
    public void parse( String rule, String fn, String dialect ) {
        // check args and set current file
        if ( fn == null || rule == null )
            return;

        current_file = fn;

        MaslLexer               lex;
        CommonTokenStream       tokens;
        MaslParser              parser;
        CommonTree              tree;
        CommonTreeNodeStream    nodes;
        MaslWalker              walker;

        try {
            String fileString = new String( Files.readAllBytes( Paths.get( fn ) ) );
            fileString.replaceAll( "\\r\\n", "\n" );
            if ( dialect.equals( "WASL" ) && rule.equals( "activityDefinition" ) ) {
              fileString = new String( fileString.replaceFirst( "(?m)\\) is$", "\\) is\n#ASL-BEGIN" ) ) + "#ASL-END;";
            }
            lex = new MaslLexer( new ANTLRStringStream( fileString ) );
        } catch ( IOException e ) {
            System.err.println( e );
            return;
        }
        lex.setMaslParser( this );

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
                    walker.target( dialect );
                } catch ( RecognitionException e ) {
                    System.err.println( e );
                    return;
                }
                break;
            case "activityDefinition":
                try {
                    walker.activityDefinition( dialect );
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
    public void parseFile( String rule, String fn, String out, String dialect ) {

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
        parse( rule, fn, dialect );

        // done
    }
    // parse a MASL domain
    public void parseDomain( String directory, String out, String dialect ) {
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
        boolean found_mod = false;
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
                parse( "target", f.getPath(), dialect );
                found_mod = true;
                break;
            }
        }

        if ( !found_mod ) {
            System.err.println( "-parseDomain: ERROR no .mod file found in directory" );
            return;
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
                parse( "activityDefinition", f.getPath(), dialect );
            }
        }

        // done
    }

    // parse a MASL project
    public void parseProject( String directory, String out, String dialect ) {
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
        boolean found_prj = false;
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
                parse( "target", f.getPath(), dialect );
                found_prj = true;
                break;
            }
        }

        if ( !found_prj ) {
            System.err.println( "-parseProject: ERROR no .prj file found in directory" );
            return;
        }

        // parse all activities ( according the defined file extension convention )
        for ( File f : projectFiles ) {
            if ( Pattern.matches( ".*\\.tr", f.getName() ) ) {
                // parse the file
                parse( "activityDefinition", f.getPath(), dialect );
            }
        }

        // done
    }

    // print usage
    public void printUsage() {
        System.err.println("Usage:\n");
        System.err.println("Parse single MASL file:");
        System.err.println("\tjava -cp <classpath> MaslImportParser -a <dialect> -f <rule> <MASL file> [-o [file name] ]\n");
        System.err.println("Parse MASL domain:");
        System.err.println("\tjava -cp <classpath> MaslImportParser -a <dialect> -d <domain directory> [-o [file name] ]\n");
        System.err.println("Parse MASL project:");
        System.err.println("\tjava -cp <classpath> MaslImportParser -a <dialect> -p <project directory> [-o [file name] ]");
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
            if ( args[2].equals( "-f" ) ) {             // parse single MASL file
                String out = null;
                if ( args.length == 5 ) {
                    out = null;
                }
                else if ( args.length == 6 && args[5].equals( "-o" ) ) {
                    out = "auto";
                }
                else if ( args.length == 7 && args[5].equals( "-o" ) ) {
                    out = args[6];
                }
                else {
                    // print usage
                    parser.printUsage();
                    return;
                }

                // parse the file
                parser.parseFile( args[3], args[4], out, args[1] );
            }
            else if ( args[2].equals( "-d" ) ) {        // parse MASL domain
                String out = null;
                if ( args.length == 4 ) {
                    out = null;
                }
                else if ( args.length == 5 && args[4].equals( "-o" ) ) {
                    out = "auto";
                }
                else if ( args.length == 6 && args[4].equals( "-o" ) ) {
                    out = args[5];
                }
                else {
                    // print usage
                    parser.printUsage();
                    return;
                }

                // parse the domain
                parser.parseDomain( args[3], out, args[1] );
            }
            else if ( args[2].equals( "-p" ) ) {        // parse MASL project
                String out = null;
                if ( args.length == 4 ) {
                    out = null;
                }
                else if ( args.length == 5 && args[4].equals( "-o" ) ) {
                    out = "auto";
                }
                else if ( args.length == 6 && args[4].equals( "-o" ) ) {
                    out = args[5];
                }
                else {
                    // print usage
                    parser.printUsage();
                    return;
                }

                // parse the project
                parser.parseProject( args[3], out, args[1] );
            }
            else {
                // print usage
                parser.printUsage();
            }
        }

    }
}

