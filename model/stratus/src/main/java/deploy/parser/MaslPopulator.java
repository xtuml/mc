package deploy.parser;

import io.ciera.runtime.instanceloading.generic.util.LOAD;

public class MaslPopulator extends MaslParserBaseListener {
    
    private LOAD loader;
    
    public MaslPopulator(LOAD loader) {
        this.loader = loader;
    }

    @Override
    public void exitObjectDeclaration(MaslParser.ObjectDeclarationContext ctx) {
        System.out.printf("Exiting: '%s'\n", ctx.objectName().getText());
    }

}
