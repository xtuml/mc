package deploy.parser;

import deploy.stratus.ooamasl.domain.DomainService;
import deploy.stratus.ooamasl.domain.DomainTerminator;
import deploy.stratus.ooamasl.domain.ExceptionDeclaration;
import deploy.stratus.ooamasl.object.ObjectDeclaration;
import deploy.stratus.ooamasl.relationship.RelationshipDeclaration;
import deploy.stratus.ooamasl.type.UserDefinedType;
import io.ciera.runtime.instanceloading.generic.util.LOAD;
import io.ciera.runtime.summit.classes.IModelInstance;
import io.ciera.runtime.summit.exceptions.XtumlException;

public class MaslPopulator extends MaslParserBaseVisitor<Object> {

    private LOAD loader;
    private Object emptyObject;
    private Object emptyCodeBlock;
    private Object currentProject;
    private Object currentProjectDomain;
    private Object currentDomain;
    private Object currentService;
    private Object currentObject;
    private Object currentOOAState;
    private Object currentCodeBlock;

    // trace routine
    private void xtuml_trace(XtumlException e, String message) {
        System.err.println("xtuml_trace(" + message + ") - " + /* TODO */ "getFile()" + ":  " + e);
        e.printStackTrace();
        System.exit(1);
    }

    public MaslPopulator(LOAD loader) {
        this.loader = loader;
    }

    @Override
    public Object visitDefinition(MaslParser.DefinitionContext ctx) {
        try {
            // initialize instance fields
            emptyObject = loader.call_function("select_ObjectDeclaration_where_name", "false", "false");
            emptyCodeBlock = loader.call_function("select_CodeBlock_empty");
            currentCodeBlock = emptyCodeBlock;
            currentProject = null;
            currentProjectDomain = null;
            currentDomain = null;
            currentService = null;
            currentObject = null;
            currentOOAState = null;
            return visitChildren(ctx);
        } catch (XtumlException e) {
            xtuml_trace(e, "");
            return null;
        }
    }

    @Override
    public Object visitProjectDefinition(MaslParser.ProjectDefinitionContext ctx) {
        try {
            Object project = loader.create("Project");
            loader.set_attribute(project, "name", ctx.projectName().getText());
            currentProject = project;
            for (Object projectDomainDefinition : ctx.projectItem().stream().map(pi -> visit(pi)).toArray()) {
                loader.relate(projectDomainDefinition, project, 5900, "");
            }
            return project;
        } catch (XtumlException e) {
            xtuml_trace(e, "");
            return null;
        }
    }

    @Override
    public Object visitProjectDomainDefinition(MaslParser.ProjectDomainDefinitionContext ctx) {
        try {
            Object projectDomain = loader.create("ProjectDomain");
            loader.set_attribute(projectDomain, "name", ctx.domainName().getText());
            currentProjectDomain = projectDomain;
            for (Object projectTerminatorDefinition : ctx.domainPrjItem().stream().map(dpi -> visit(dpi)).toArray()) {
                loader.relate(projectTerminatorDefinition, projectDomain, 5902, "");
            }
            return projectDomain;
        } catch (XtumlException e) {
            xtuml_trace(e, "");
            return null;
        }
    }

    @SuppressWarnings("rawtypes")
    @Override
    public Object visitDomainDefinition(MaslParser.DomainDefinitionContext ctx) {
        try {
            // Some interface files declare the domain with test objects. Allow it.
            Object domain = loader.call_function("select_Domain_where_name", ctx.domainName().getText());
            if (((IModelInstance) domain).isEmpty()) {
                domain = loader.create("Domain");
                loader.set_attribute(domain, "name", ctx.domainName().getText());
            }
            currentDomain = domain;
            // domain items
            for (Object domainItem : ctx.domainItem().stream().map(di -> visit(di)).toArray()) {
                if (domainItem instanceof ObjectDeclaration) {
                    loader.relate(domainItem, domain, 5805, "");
                } else if (domainItem instanceof DomainService) {
                    loader.relate(domainItem, domain, 5303, "");
                } else if (domainItem instanceof DomainTerminator) {
                    loader.relate(domainItem, domain, 5304, "");
                } else if (domainItem instanceof RelationshipDeclaration) {
                    loader.relate(domainItem, domain, 6003, "");
                } else if (domainItem instanceof UserDefinedType) {
                    loader.relate(domainItem, domain, 6235, "");
                } else if (domainItem instanceof ExceptionDeclaration) {
                    loader.relate(domainItem, domain, 5400, "");
                }
            }
            return domain;
        } catch (XtumlException e) {
            xtuml_trace(e, "");
            return null;
        }
    }

    @Override
    public Object visitExceptionDeclaration(MaslParser.ExceptionDeclarationContext ctx) {
        try {
            Object rejection = loader.create("ExceptionDeclaration");
            loader.set_attribute(rejection, "name", ctx.exceptionName().getText());
            loader.set_attribute(rejection, "visibility", visit(ctx.exceptionVisibility()));
            return rejection;
        } catch (XtumlException e) {
            xtuml_trace(e, "");
            return null;
        }
    }

    @Override
    public Object visitExceptionReference(MaslParser.ExceptionReferenceContext ctx) {
        try {
            Object exceptionReference = loader.create("ExceptionReference");
            Object builtin = loader.create("BuiltinException"); // TODO this is sketch.
            /*
             * hmm. i think i get it, however it seems as though R5401 may need to have another subtype for "UserDefinedException" and R5402 may need to be conditional on the 1 side...
             */
            loader.relate(exceptionReference, builtin, 5401, "");
            Object exceptionDeclaration = loader.call_function("select_ExceptionDeclaration_where_name",
                    ctx.domainName().getText(), ctx.exceptionName().getText());
            loader.relate(exceptionReference, exceptionDeclaration, 5402, "");
            return exceptionReference;
        } catch (XtumlException e) {
            xtuml_trace(e, "");
            return null;
        }
    }

    @Override
    public Object visitExceptionVisibility(MaslParser.ExceptionVisibilityContext ctx) {
        return ctx.PRIVATE() != null ? "Visibility::private" : "Visibility::public";
    }

}
