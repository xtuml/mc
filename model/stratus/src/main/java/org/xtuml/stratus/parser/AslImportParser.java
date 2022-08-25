package org.xtuml.stratus.parser;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UncheckedIOException;
import java.net.URI;
import java.nio.file.Path;
import java.nio.file.Files;

import org.antlr.v4.runtime.BaseErrorListener;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.RecognitionException;
import org.antlr.v4.runtime.Recognizer;
import org.antlr.v4.runtime.misc.ParseCancellationException;

import io.ciera.runtime.instanceloading.generic.IGenericLoader;

public class AslImportParser extends MaslImportParser implements IGenericLoader {

    // parse an ASL activity file
    @Override
    public void parseFile(final URI fileURI) throws IOException {
        if (fileURI.toString().endsWith(".mod") || fileURI.toString().endsWith(".int")) {
            // Use the MASL parser for structural files
            super.parseFile(fileURI);
        } else {
        parsingResources.push(fileURI);
        System.out.println("Parsing resource: " + fileURI);

        try (InputStream is = fileURI.toURL().openConnection().getInputStream()) {
            final String filename = new File(fileURI.getPath()).getName();
            Path filePath = Path.of(fileURI).normalize();
            // The following is a work-around for activity files with no end-of-line <EOL> character on the last line.
            String s = Files.readString(filePath) + "\n";

            // Tokenize the file
            CharStream input = CharStreams.fromString(s);
            AslLexer lexer = new AslLexer(input);
            AslParser parser = new AslParser(new CommonTokenStream(lexer));
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
            AslPopulator listener = new AslPopulator(this, loader, input, filename);
            listener.visit(ctx);

        } catch (IOException e) {
            throw new UncheckedIOException(e);
        } finally {
            parsingResources.pop();
            }
        }

    }

    // main method
    public static void main(String args[]) {
        AslImportParser parser = new AslImportParser(); // create new parser
        parser.load(null, args);
    }
}
