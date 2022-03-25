package org.xtuml.stratus.parser;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UncheckedIOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.file.Path;
import java.util.Optional;
import java.util.Stack;
import java.util.function.Predicate;
import java.util.jar.JarFile;
import java.util.stream.Stream;

import org.antlr.v4.runtime.BaseErrorListener;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.RecognitionException;
import org.antlr.v4.runtime.Recognizer;
import org.antlr.v4.runtime.misc.ParseCancellationException;

import io.ciera.runtime.instanceloading.generic.IGenericLoader;
import io.ciera.runtime.instanceloading.generic.util.LOAD;
import io.ciera.runtime.summit.exceptions.XtumlException;
import io.ciera.runtime.summit.util.CommandLine;

public class MaslImportParser implements IGenericLoader {

    private LOAD loader;
    private Stack<URI> parsingResources;
    private String[] domainPath;

    public MaslImportParser() {
        parsingResources = new Stack<>();
    }

    // parse a MASL file
    public void parseFile(final URI fileURI) throws IOException {
        parsingResources.push(fileURI);
        System.out.println("Parsing resource: " + fileURI);

        try (InputStream is = fileURI.toURL().openConnection().getInputStream()) {
            final String filename = Path.of(fileURI.toURL().getPath()).getFileName().toString();

            // Tokenize the file
            CharStream input = CharStreams.fromStream(is);
            MaslLexer lexer = new MaslLexer(input);
            MaslParser parser = new MaslParser(new CommonTokenStream(lexer));
            parser.removeErrorListeners();
            parser.addErrorListener(new BaseErrorListener() {
                @Override
                public void syntaxError(Recognizer<?, ?> recognizer, Object offendingSymbol, int line,
                        int charPositionInLine, String msg, RecognitionException e) throws ParseCancellationException {
                    throw new ParseCancellationException(
                            filename + ": line " + line + ":" + charPositionInLine + " " + msg);
                }
            });

            // Parse the file
            ParserRuleContext ctx = parser.target();

            // Walk the parse tree
            MaslPopulator listener = new MaslPopulator(this, loader, input, filename);
            listener.visit(ctx);

        } catch (IOException e) {
            throw new UncheckedIOException(e);
        } finally {
            parsingResources.pop();
        }

    }

    public URI findFile(final String fileName) {
        return findFile(null, fileName);
    }

    public URI findFile(final String domainName, final String fileName) {
        // look for resources on the local file system
        try {
            final File currentFile = new File(parsingResources.peek());

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
            Optional<URI> localURI = Stream.of(localFiles, domainPathFiles, domainPathFiles2).flatMap(s -> s)
                    .filter(f -> f.getName().equals(fileName)).map(File::toURI).findAny();
            if (localURI.isPresent()) {
                return localURI.orElseThrow();
            }
        } catch (IllegalArgumentException e) {
            // not a local file
        }

        // Look in "masl/" folder within JAR files
        return Stream.of(domainPath).filter(p -> p.endsWith(".jar")).filter(path -> {
            try (JarFile jarFile = new JarFile(path)) {
                return jarFile.getEntry("masl/" + fileName) != null;
            } catch (IOException e1) {
                return false;
            }
        }).map(path -> String.format("jar:file:%s!/masl/%s", path, fileName)).map(t -> {
            try {
                return new URI(t);
            } catch (URISyntaxException e2) {
                throw new RuntimeException(e2);
            }
        }).findAny().orElseThrow();

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
                parseFile(new File(modFile).toURI());
            } else if (modFile.isBlank() && !prjFile.isBlank()) {
                // parse project model
                parseFile(new File(prjFile).toURI());
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
