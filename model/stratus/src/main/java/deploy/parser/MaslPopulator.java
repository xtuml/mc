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
    private void xtumlTrace(XtumlException e, String message) {
        System.err.println("xtumlTrace(" + message + ") - " + /* TODO */ "getFile()" + ":  " + e);
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
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitProjectDefinition(MaslParser.ProjectDefinitionContext ctx) {
        try {
            Object project = loader.create("Project");
            loader.set_attribute(project, "name", ctx.projectName().getText());
            currentProject = project;
            for (Object projectDomainDefinition : ctx.projectItem().stream().map(o -> visit(o)).toArray()) {
                loader.relate(projectDomainDefinition, project, 5900, "");
            }
            return project;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitProjectDomainDefinition(MaslParser.ProjectDomainDefinitionContext ctx) {
        try {
            Object projectDomain = loader.create("ProjectDomain");
            loader.set_attribute(projectDomain, "name", ctx.domainName().getText());
            currentProjectDomain = projectDomain;
            for (Object projectTerminatorDefinition : ctx.domainPrjItem().stream().map(o -> visit(o)).toArray()) {
                loader.relate(projectTerminatorDefinition, projectDomain, 5902, "");
            }
            return projectDomain;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitDomainDefinition(MaslParser.DomainDefinitionContext ctx) {
        try {
            // Some interface files declare the domain with test objects. Allow it.
            Object domain = loader.call_function("select_Domain_where_name", ctx.domainName().getText());
            if (((IModelInstance<?, ?>) domain).isEmpty()) {
                domain = loader.create("Domain");
                loader.set_attribute(domain, "name", ctx.domainName().getText());
            }
            currentDomain = domain;
            // domain items
            for (Object domainItem : ctx.domainItem().stream().map(o -> visit(o)).toArray()) {
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
            xtumlTrace(e, "");
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
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitExceptionReference(MaslParser.ExceptionReferenceContext ctx) {
        try {
            Object exceptionReference = loader.create("ExceptionReference");
            Object builtin = loader.create("BuiltinException"); // TODO this is sketch.
            /*
             * hmm. i think i get it, however it seems as though R5401 may need to have
             * another subtype for "UserDefinedException" and R5402 may need to be
             * conditional on the 1 side...
             */
            loader.relate(exceptionReference, builtin, 5401, "");
            Object exceptionDeclaration = loader.call_function("select_ExceptionDeclaration_where_name",
                    ctx.domainName().getText(), ctx.exceptionName().getText());
            loader.relate(exceptionReference, exceptionDeclaration, 5402, "");
            return exceptionReference;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitExceptionVisibility(MaslParser.ExceptionVisibilityContext ctx) {
        return ctx.PRIVATE() != null ? "Visibility::private" : "Visibility::public";
    }

    @Override
    public Object visitTypeForwardDeclaration(MaslParser.TypeForwardDeclarationContext ctx) {
        try {
            Object userDefinedType = loader.call_function("select_UserDefinedType_where_name", "",
                    ctx.typeName().getText());
            if (((IModelInstance<?, ?>) userDefinedType).isEmpty()) {
                Object typeDefinition = loader.create("TypeDefinition");
                Object basicType = loader.create("BasicType");
                userDefinedType = loader.create("UserDefinedType");
                Object typeDeclaration = loader.create("TypeDeclaration");
                loader.relate(basicType, typeDefinition, 6236, "");
                loader.relate(userDefinedType, basicType, 6205, "");
                loader.relate(userDefinedType, typeDeclaration, 6241, "");
                loader.set_attribute(userDefinedType, "name", ctx.typeName().getText());
                loader.set_attribute(userDefinedType, "visibility", visit(ctx.typeVisibility()));
            }
            return userDefinedType;

        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitTypeDeclaration(MaslParser.TypeDeclarationContext ctx) {
        try {
            Object typeDeclaration = null;
            boolean created = false;
            Object userDefinedType = loader.call_function("select_UserDefinedType_where_name", "",
                    ctx.typeName().getText());
            if (((IModelInstance<?, ?>) userDefinedType).isEmpty()) {
                Object typeDefinition = loader.create("TypeDefinition");
                Object basicType = loader.create("BasicType");
                userDefinedType = loader.create("UserDefinedType");
                typeDeclaration = loader.create("TypeDeclaration");
                loader.relate(basicType, typeDefinition, 6236, "");
                loader.relate(userDefinedType, basicType, 6205, "");
                loader.relate(userDefinedType, typeDeclaration, 6241, "");
                loader.set_attribute(userDefinedType, "name", ctx.typeName().getText());
                loader.set_attribute(userDefinedType, "visibility", visit(ctx.typeVisibility()));
                created = true;
            } else {
                // declared forward
                typeDeclaration = loader.call_function("select_TypeDeclaration_related_UserDefinedType",
                        userDefinedType);
            }
            if (created) {
                Object typeDefinition = visit(ctx.typeDefinition());
                loader.relate(typeDefinition, typeDeclaration, 6234, "");
            }
            return userDefinedType;

        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitTypeDefinition(MaslParser.TypeDefinitionContext ctx) {
        try {
            Object typeDefinition = null;
            if (ctx.structureTypeDefinition() != null) {
                typeDefinition = loader.create("TypeDefinition");
                Object fullTypeDefinition = loader.create("FullTypeDefinition");
                loader.relate(fullTypeDefinition, typeDefinition, 6236, "");
                loader.relate(visit(ctx.structureTypeDefinition()), fullTypeDefinition, 6219, "");
            } else if (ctx.constrainedTypeDefinition() != null) {
                typeDefinition = loader.create("TypeDefinition");
                Object fullTypeDefinition = loader.create("FullTypeDefinition");
                loader.relate(fullTypeDefinition, typeDefinition, 6236, "");
                loader.relate(visit(ctx.enumerationTypeDefinition()), fullTypeDefinition, 6219, "");
            } else if (ctx.typeReferenceWithCA() != null) {
                Object typeReference = visit(ctx.typeReferenceWithCA());
                typeDefinition = loader.call_function("select_TypeDefinitionRelated_BasicType", typeReference);
                if (((IModelInstance<?, ?>) typeDefinition).isEmpty()) {
                    typeDefinition = loader.create("TypeDefinition");
                    loader.relate(typeReference, typeDefinition, 6236, "");
                }
            } else if (ctx.unconstrainedArrayDefinition() != null) {
                typeDefinition = loader.create("TypeDefinition");
                Object fullTypeDefinition = loader.create("FullTypeDefinition");
                loader.relate(fullTypeDefinition, typeDefinition, 6236, "");
                loader.relate(visit(ctx.unconstrainedArrayDefinition()), fullTypeDefinition, 6219, "");
            }
            return typeDefinition;

        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitTypeVisibility(MaslParser.TypeVisibilityContext ctx) {
        return ctx.PRIVATE() != null ? "Visibility::private" : "Visibility::public";
    }

    @Override
    public Object visitConstrainedTypeDefinition(MaslParser.ConstrainedTypeDefinitionContext ctx) {
        try {
            Object constrainedType = loader.create("ConstrainedType");
            loader.relate(visit(ctx.namedTypeRef()), constrainedType, 6210, "");
            loader.relate(visit(ctx.typeConstraint()), constrainedType, 6209, "");
            return constrainedType;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitTypeConstraint(MaslParser.TypeConstraintContext ctx) {
        try {
            Object typeConstraint = loader.create("TypeConstraint");
            if (ctx.rangeConstraint() != null) {
                loader.relate(visit(ctx.rangeConstraint()), typeConstraint, 6232, "");
            } else if (ctx.deltaConstraint() != null) {
                loader.relate(visit(ctx.deltaConstraint()), typeConstraint, 6232, "");
            } else if (ctx.digitsConstraint() != null) {
                loader.relate(visit(ctx.digitsConstraint()), typeConstraint, 6232, "");
            }
            return typeConstraint;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitDeltaConstraint(MaslParser.DeltaConstraintContext ctx) {
        try {
            Object deltaConstraint = loader.create("DeltaConstraint");
            loader.relate(visit(ctx.constExpression()), deltaConstraint, 6211, "");
            loader.relate(visit(ctx.rangeConstraint()), deltaConstraint, 6212, "");
            return deltaConstraint;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitDigitsConstraint(MaslParser.DigitsConstraintContext ctx) {
        try {
            Object digitsConstraint = loader.create("RangeConstraint");
            loader.relate(visit(ctx.constExpression()), digitsConstraint, 6215, "");
            loader.relate(visit(ctx.rangeConstraint()), digitsConstraint, 6216, "");
            return digitsConstraint;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitStructureTypeDefinition(MaslParser.StructureTypeDefinitionContext ctx) {
        try {
            Object previousComponent = null;
            Object structureType = loader.create("StructureType");
            for (Object structureComponentDefinition : ctx.structureComponentDefinition().stream().map(o -> visit(o))
                    .toArray()) {
                if (previousComponent == null) {
                    loader.relate(structureComponentDefinition, structureType, 6244, "");
                } else {
                    loader.relate(structureComponentDefinition, previousComponent, 6243, "succeeds");
                }
                previousComponent = structureComponentDefinition;
            }
            return structureType;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitEnumerationTypeDefinition(MaslParser.EnumerationTypeDefinitionContext ctx) {
        try {
            Object previousEnumerator = null;
            Object enumerateType = loader.create("EnumerateType");
            for (Object enumerator : ctx.enumerator().stream().map(o -> visit(o)).toArray()) {
                if (previousEnumerator == null) {
                    loader.relate(enumerator, enumerateType, 6218, "");
                } else {
                    loader.relate(enumerator, previousEnumerator, 6242, "succeeds");
                }
                previousEnumerator = enumerator;
            }
            return enumerateType;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitEnumerator(MaslParser.EnumeratorContext ctx) {
        try {
            Object enumerateItem = loader.create("EnumerateItem");
            loader.set_attribute(enumerateItem, "name", ctx.enumeratorName().getText());
            if (ctx.constExpression() != null) {
                loader.relate(enumerateItem, visit(ctx.constExpression()), 6217, "");
            }
            return enumerateItem;

        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitUnconstrainedArrayDefinition(MaslParser.UnconstrainedArrayDefinitionContext ctx) {
        try {
            Object type = loader.create("UnconstrainedArrayType");
            loader.relate(visit(ctx.indexType), type, 6239, "");
            loader.relate(visit(ctx.arrayOf), type, 6240, "");
            return type;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitInstanceTypeRef(MaslParser.InstanceTypeRefContext ctx) {
        try {
            Object basicType = loader.create("BasicType");
            loader.set_attribute(basicType, "isanonymous", (ctx.ANONYMOUS() != null));
            Object instanceType = loader.create("InstanceType");
            loader.relate(instanceType, basicType, 6205, "");
            loader.relate(instanceType, visit(ctx.fullObjectReference()), 6220, "");
            return basicType;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitNamedTypeRef(MaslParser.NamedTypeRefContext ctx) {
        try {
            Object basicType = loader.call_function("select_BasicType_where_name", (ctx.domainName() != null ? ctx.domainName().getText() : ""),
                    ctx.typeName().getText());
            if (!((IModelInstance<?, ?>) basicType).isEmpty()) {
                loader.set_attribute(basicType, "isanonymous", (ctx.ANONYMOUS() != null));
            } else {
                System.err.println("namedTypeRef failed with name:  " + ctx.domainName().getText() + "::"
                        + ctx.typeName().getText());
            }
            return basicType;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitUserDefinedTypeRef(MaslParser.UserDefinedTypeRefContext ctx) {
        try {
            return loader.call_function("select_UserDefinedType_where_name", ctx.domainName().getText(),
                    ctx.typeName().getText());
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitConstrainedArrayTypeRef(MaslParser.ConstrainedArrayTypeRefContext ctx) {
        try {
            Object basicType = loader.create("BasicType");
            Object unconstrainedArraySubtype = loader.create("UnconstrainedArraySubtype");
            loader.relate(unconstrainedArraySubtype, basicType, 6205, "");
            loader.relate(unconstrainedArraySubtype, visit(ctx.userDefinedTypeRef()), 6238, "");
            loader.relate(unconstrainedArraySubtype, visit(ctx.arrayBounds()), 6237, "");
            return basicType;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitSequenceTypeRef(MaslParser.SequenceTypeRefContext ctx) {
        try {
            Object basicType = loader.create("BasicType");
            loader.set_attribute(basicType, "isanonymous", (ctx.ANONYMOUS() != null));
            Object collectionType = loader.create("CollectionType");
            loader.relate(collectionType, basicType, 6205, "");
            loader.relate(collectionType, visit(ctx.typeReference()), 6208, "");
            Object sequenceType = loader.create("SequenceType");
            loader.relate(sequenceType, collectionType, 6207, "");
            if (ctx.expression() != null) {
                loader.relate(sequenceType, visit(ctx.expression()), 6226, "");
            }
            return basicType;

        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitArrayTypeRef(MaslParser.ArrayTypeRefContext ctx) {
        try {
            Object basicType = loader.create("BasicType");
            loader.set_attribute(basicType, "isanonymous", (ctx.ANONYMOUS() != null));
            Object collectionType = loader.create("CollectionType");
            loader.relate(collectionType, basicType, 6205, "");
            loader.relate(collectionType, visit(ctx.typeReference()), 6208, "");
            Object arrayType = loader.create("ArrayType");
            loader.relate(arrayType, collectionType, 6207, "");
            loader.relate(arrayType, visit(ctx.arrayBounds()), 6201, "");
            return basicType;

        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitSetTypeRef(MaslParser.SetTypeRefContext ctx) {
        try {
            Object basicType = loader.create("BasicType");
            loader.set_attribute(basicType, "isanonymous", (ctx.ANONYMOUS() != null));
            Object collectionType = loader.create("CollectionType");
            loader.relate(collectionType, basicType, 6205, "");
            loader.relate(collectionType, visit(ctx.typeReference()), 6208, "");
            Object setType = loader.create("SetType");
            loader.relate(setType, collectionType, 6207, "");
            return basicType;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitBagTypeRef(MaslParser.BagTypeRefContext ctx) {
        try {
            Object basicType = loader.create("BasicType");
            loader.set_attribute(basicType, "isanonymous", (ctx.ANONYMOUS() != null));
            Object collectionType = loader.create("CollectionType");
            loader.relate(collectionType, basicType, 6205, "");
            loader.relate(collectionType, visit(ctx.typeReference()), 6208, "");
            Object bagType = loader.create("BagType");
            loader.relate(bagType, collectionType, 6207, "");
            return basicType;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitDictionaryTypeRef(MaslParser.DictionaryTypeRefContext ctx) {
        try {
            Object basicType = loader.create("BasicType");
            loader.set_attribute(basicType, "isanonymous", (ctx.ANONYMOUS() != null));
            Object dictionaryType = loader.create("DictionaryType");
            loader.relate(dictionaryType, basicType, 6205, "");
            // Link key and value.
            Object stringBasicType = loader.call_function("select_BasicType_where_name", "", "string");
            if (ctx.dictKeyType() != null) {
                loader.relate(dictionaryType, visit(ctx.dictKeyType()), 6213, "");
            } else {
                // No key provided. Supply string.
                loader.relate(dictionaryType, stringBasicType, 6213, "");
            }
            if (ctx.dictValueType() != null) {
                loader.relate(dictionaryType, visit(ctx.dictValueType()), 6214, "");
            } else {
                // No value provided. Supply string.
                loader.relate(dictionaryType, stringBasicType, 6214, "");
            }
            return basicType;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

}
