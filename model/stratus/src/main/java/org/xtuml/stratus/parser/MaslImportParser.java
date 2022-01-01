package org.xtuml.stratus.parser;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.regex.Pattern;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.ParserRuleContext;
import io.ciera.runtime.instanceloading.generic.IGenericLoader;
import io.ciera.runtime.instanceloading.generic.util.LOAD;

public class MaslImportParser implements IGenericLoader {

    // private fields
    private LOAD loader; // OOA API

    // parse a MASL file
    public void parse(String fn) {
        // check args and set current file
        if (fn == null) {
            return;
        }

        try {
            // Tokenize the file
            CharStream input = CharStreams.fromStream(new FileInputStream(fn));
            MaslLexer lexer = new MaslLexer(input);
            MaslParser parser = new MaslParser(new CommonTokenStream(lexer));

            // Parse the file
            ParserRuleContext ctx = parser.target();

            // Walk the parse tree
            MaslPopulator listener = new MaslPopulator(input, loader, new File(fn).getName());
            listener.visit(ctx);

        } catch (IOException e) {
            // TODO error handling
            e.printStackTrace();
        }

    }

    // parse a MASL domain
    public void parseDomain(String directory) {
        File dir, modFile = null;
        File[] domainFiles;

        // check args
        if (directory == null) {
            System.err.println("-parse: ERROR null directory");
            return;
        }

        // read the directory
        dir = new File(directory);
        domainFiles = dir.listFiles();
        if (domainFiles == null) {
            System.err.println("-parseDomain: ERROR listFiles() returned null");
            return;
        }

        // find the domain (.mod) file
        for (File f : domainFiles) {
            if (Pattern.matches(".*\\.mod", f.getName())) {
                modFile = f;
                break;
            }
        }

        // parse interface files not matching the mod file and then the mod file
        if (modFile != null) {
            String[] modFileTokens = modFile.getName().split("\\.(?=[^\\.]+$)");
            for (File f : domainFiles) {
                if (Pattern.matches(".*\\.int", f.getName())) {
                    String[] intFileTokens = f.getName().split("\\.(?=[^\\.]+$)");
                    if (!intFileTokens[0].equals(modFileTokens[0])) {
                        parse(f.getPath());
                    }
                }
            }
            // parse the domain (mod) file
            parse(modFile.getPath());
        } else {
            System.err.println("-parseDomain: ERROR no '.mod' file found in directory");
            return;
        }

        // parse all activities ( according the defined file extension convention )
        for (File f : domainFiles) {
            if (Pattern.matches(".*\\.svc", f.getName()) || Pattern.matches(".*\\.fn", f.getName())
                    || Pattern.matches(".*\\.ext", f.getName()) || Pattern.matches(".*\\.scn", f.getName())
                    || Pattern.matches(".*\\.al", f.getName()) || Pattern.matches(".*\\.tr", f.getName())) {

                // parse the file
                parse(f.getPath());
            }
        }

        // done
    }

    // parse a MASL project
    public void parseProject(String directory) {
        File dir;
        File[] projectFiles;

        // check args
        if (directory == null) {
            System.err.println("-parse: ERROR null directory");
            return;
        }

        // read the directory
        dir = new File(directory);
        projectFiles = dir.listFiles();
        if (projectFiles == null) {
            System.err.println("-parseProject: ERROR listFiles() returned null");
            return;
        }

        // parse the project file
        boolean foundPrj = false;
        for (File f : projectFiles) {
            if (Pattern.matches(".*\\.prj", f.getName())) {
                parse(f.getPath());
                foundPrj = true;
                break;
            }
        }

        if (!foundPrj) {
            System.err.println("-parseProject: ERROR no '.prj' file found in directory");
            return;
        }

        // parse all activities ( according the defined file extension convention )
        for (File f : projectFiles) {
            if (Pattern.matches(".*\\.tr", f.getName())) {
                // parse the file
                parse(f.getPath());
            }
        }

        // done
    }

    // print usage
    public void printUsage() {
        System.err.println("Usage:\n");
        System.err.println("Parse MASL domain:");
        System.err.println("\tjava -cp <classpath> MaslImportParser -d <domain directory> [-o [file name] ]\n");
        System.err.println("Parse MASL project:");
        System.err.println("\tjava -cp <classpath> MaslImportParser -p <project directory> [-o [file name] ]");
    }

    // main method
    public void load(LOAD loader, String args[]) {

        this.loader = loader;

        // check input args
        if (args.length < 2) {
            // print usage
            this.printUsage();
        } else {
            if (args[0].equals("-d")) { // parse MASL domain
                this.parseDomain(args[1]);
            } else if (args[0].equals("-p")) { // parse MASL project
                this.parseProject(args[1]);
            } else {
                // print usage
                this.printUsage();
            }
        }

    }

    // main method
    public static void main(String args[]) {
        MaslImportParser parser = new MaslImportParser(); // create new parser
        parser.load(null, args);
    }
}
