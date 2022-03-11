package org.xtuml.stratus.parser;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Optional;
import java.util.function.Predicate;
import java.util.stream.Stream;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.ParserRuleContext;

import io.ciera.runtime.instanceloading.generic.IGenericLoader;
import io.ciera.runtime.instanceloading.generic.util.LOAD;
import io.ciera.runtime.summit.exceptions.XtumlException;
import io.ciera.runtime.summit.util.CommandLine;

public class MaslImportParser implements IGenericLoader {

    private LOAD loader;
    private File currentFile;
    private String[] domainPath;

    // parse a MASL file
    public void parseFile(final String filename) throws IOException {
        final File prevFile = currentFile;
        currentFile = new File(filename);

        System.out.println("Parsing file: " + filename);

        // Tokenize the file
        CharStream input = CharStreams.fromStream(new FileInputStream(currentFile));
        MaslLexer lexer = new MaslLexer(input);
        MaslParser parser = new MaslParser(new CommonTokenStream(lexer));

        // Parse the file
        ParserRuleContext ctx = parser.target();

        // Walk the parse tree
        MaslPopulator listener = new MaslPopulator(this, loader, input, currentFile.getName());
        listener.visit(ctx);

        currentFile = prevFile;
    }

    public String findFile(final String fileName) {
        return findFile(null, fileName);
    }

    public String findFile(final String domainName, final String fileName) {
        // Look in the directory of the current file
        Stream<File> localFiles = Stream.of(currentFile.getParentFile().listFiles());

        // Look in each domain path entry for the file
        Stream<File> domainPathFiles = Stream.of(domainPath)
                .flatMap(p -> Stream.of(Optional.ofNullable(new File(p).listFiles()).orElse(new File[0])));

        // Look in each domain path entry + domain directory for the file
        Stream<File> domainPathFiles2 = domainName != null ? Stream.of(domainPath).flatMap(p -> Stream.of(Optional
                .ofNullable(new File(p + File.separator + domainName + "_OOA").listFiles()).orElse(new File[0])))
                : Stream.of();

        // return the first match
        return Stream.of(localFiles, domainPathFiles, domainPathFiles2).flatMap(s -> s)
                .filter(f -> f.getName().equals(fileName)).findAny().orElseThrow().getAbsolutePath();
    }

    // main load
    public void load(LOAD loader, String args[]) {
        this.loader = loader;
        try {
            // parse command line arguments
            CommandLine cli = new CommandLine(args);
            cli.register_value("mod", "mod_file", "Path to the domain model file", "", false);
            cli.register_value("prj", "prj_file", "Path to the project model file", "", false);
            cli.register_value("domainpath", "domain_path", "Colon delimited path to dependency domain interfaces", "",
                    false);
            cli.read_command_line();
            String modFile = cli.get_value("mod");
            String prjFile = cli.get_value("prj");
            domainPath = Stream.of(cli.get_value("domainpath").split(":")).filter(Predicate.not(String::isBlank))
                    .toArray(String[]::new);
            if (!modFile.isBlank() && prjFile.isBlank()) {
                // parse domain model
                parseFile(modFile);
            } else if (modFile.isBlank() && !prjFile.isBlank()) {
                // parse project model
                parseFile(prjFile);
            } else if (!modFile.isBlank() && !prjFile.isBlank()) {
                throw new XtumlException("Cannot specify both domain and project file");
            } else {
                throw new XtumlException("No model file specified");
            }
        } catch (IOException | XtumlException e) {
            throw new RuntimeException(e);
        }
    }

    // main method
    public static void main(String args[]) {
        MaslImportParser parser = new MaslImportParser(); // create new parser
        parser.load(null, args);
    }
}
