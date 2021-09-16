package org.xtuml.stratus.parser;

import deploy.stratus.ooamasl.domain.Domain;
import deploy.stratus.ooamasl.domain.DomainService;
import deploy.stratus.ooamasl.domain.DomainTerminator;
import deploy.stratus.ooamasl.domain.ExceptionDeclaration;
import deploy.stratus.ooamasl.object.AttributeDeclaration;
import deploy.stratus.ooamasl.object.ObjectDeclaration;
import deploy.stratus.ooamasl.object.ObjectService;
import deploy.stratus.ooamasl.relationship.RelationshipDeclaration;
import deploy.stratus.ooamasl.statemodel.EventDeclaration;
import deploy.stratus.ooamasl.statemodel.State;
import deploy.stratus.ooamasl.statemodel.TransitionTable;
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
    private Object previousAttribute;
    private Object currentAttribute;
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
            Object basicType = loader.call_function("select_BasicType_where_name",
                    (ctx.domainName() != null ? ctx.domainName().getText() : ""), ctx.typeName().getText());
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

    @Override
    public Object visitTerminatorDefinition(MaslParser.TerminatorDefinitionContext ctx) {
        try {
            if (currentProject == null) { // domain terminator
                Object domainTerminator = loader.create("DomainTerminator");
                loader.set_attribute(domainTerminator, "name", ctx.terminatorName().getText());
                for (Object terminatorServiceDeclaration : ctx.terminatorItem().stream().map(o -> visit(o)).toArray()) {
                    loader.relate(terminatorServiceDeclaration, domainTerminator, 5306, "");
                }
                return domainTerminator;
            } else { // project terminator
                Object projectTerminator = loader.create("ProjectTerminator");
                loader.set_attribute(projectTerminator, "name", ctx.terminatorName().getText());
                for (Object projectTerminatorServiceDeclaration : ctx.terminatorItem().stream().map(o -> visit(o))
                        .toArray()) {
                    loader.relate(projectTerminatorServiceDeclaration, projectTerminator, 5903, "");
                }
                return projectTerminator;
            }
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitTerminatorServiceDeclaration(MaslParser.TerminatorServiceDeclarationContext ctx) {
        try {
            Object service = loader.create("Service");
            currentService = service;
            loader.set_attribute(service, "name", ctx.serviceName().getText());
            loader.set_attribute(service, "visibility", visit(ctx.serviceVisibility()));
            if (currentProject == null) { // domain terminator service
                Object domainTerminatorService = loader.create("DomainTerminatorService");
                loader.relate(domainTerminatorService, service, 5203, "");
            } else { // project terminator service
                Object projectTerminatorService = loader.create("ProjectTerminatorService");
                loader.relate(projectTerminatorService, service, 5203, "");
            }

            Object firstParameter = visit(ctx.parameterList());
            if (firstParameter != null) {
                loader.relate(firstParameter, service, 5204, "");
            }
            if (ctx.returnType() != null) {

                loader.relate(visit(ctx.returnType()), service, 5205, "");
            }
            return service;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitObjectReference(MaslParser.ObjectReferenceContext ctx) {
        try {
            return loader.call_function("select_ObjectDeclaration_where_name", "", ctx.objectName().getText());
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitFullObjectReference(MaslParser.FullObjectReferenceContext ctx) {
        try {
            return loader.call_function("select_ObjectDeclaration_where_name",
                    ctx.domainName() != null ? ctx.domainName().getText() : "", ctx.objectName().getText());
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitObjectDeclaration(MaslParser.ObjectDeclarationContext ctx) {
        try {
            Object objectDeclaration = loader.create("ObjectDeclaration");
            loader.set_attribute(objectDeclaration, "name", ctx.objectName().getText());
            return objectDeclaration;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitObjectDefinition(MaslParser.ObjectDefinitionContext ctx) {
        try {
            Object objectDeclaration = loader.call_function("select_ObjectDeclaration_where_name",
                    ((Domain) currentDomain).getName(), ctx.objectName().getText());
            loader.set_attribute(objectDeclaration, "name", ctx.objectName().getText());
            currentObject = objectDeclaration;
            previousAttribute = null;
            boolean nonExistentExists = false;
            // object items
            for (Object objectItem : ctx.objectItem().stream().map(o -> visit(o)).toArray()) {
                if (objectItem instanceof AttributeDeclaration) {
                    loader.relate(objectItem, objectDeclaration, 5802, "");
                    previousAttribute = objectItem;
                } else if (objectItem instanceof ObjectService) {
                    loader.relate(objectItem, objectDeclaration, 5808, "");
                } else if (objectItem instanceof EventDeclaration) {
                    loader.relate(objectItem, objectDeclaration, 6101, "");
                } else if (objectItem instanceof State) {
                    if (!nonExistentExists) {
                        // Create a Non_Existent state.
                        Object ooastate = loader.create("State");
                        loader.set_attribute(ooastate, "name", "Non_Existent");
                        loader.relate(ooastate, objectDeclaration, 6105, "");
                        nonExistentExists = true;
                    }
                    loader.relate(objectItem, objectDeclaration, 6105, "");
                } else if (objectItem instanceof TransitionTable) {
                    loader.relate(objectItem, objectDeclaration, 6113, "");
                }
            }

            currentObject = emptyObject;
            return objectDeclaration;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitAttributeDefinition(MaslParser.AttributeDefinitionContext ctx) {
        try {
            Object attributeDeclaration = loader.create("AttributeDeclaration");
            loader.set_attribute(attributeDeclaration, "name", ctx.attributeName().getText());
            currentAttribute = attributeDeclaration;
            if (previousAttribute != null) {
                loader.relate(attributeDeclaration, previousAttribute, 5809, "succeeds");
            }
            if (ctx.PREFERRED() != null) {
                loader.set_attribute(attributeDeclaration, "isPreferredIdentifier", true);
                // TODO Be sure we create it only for the first occurrence of the preferred key
                // word.
                // still not linking to ObjectDeclaration and being sure only one...
                Object identifierDeclaration = loader.create("IdentifierDeclaration");
                loader.set_attribute(identifierDeclaration, "ispreferred", true);
                loader.relate(attributeDeclaration, identifierDeclaration, 5807, "");
            }
            if (ctx.UNIQUE() != null) {
                loader.set_attribute(attributeDeclaration, "isUnique", true);
            }
            if (ctx.attReferentials() != null) {
                visit(ctx.attReferentials());
            }
            loader.relate(attributeDeclaration, visit(ctx.typeReference()), 5803, "");

            if (ctx.defaultValue != null) {
                loader.relate(attributeDeclaration, visit(ctx.defaultValue), 5801, "");
            }
            currentAttribute = null;
            return attributeDeclaration;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitAttReferential(MaslParser.AttReferentialContext ctx) {
        try {
            Object referentialAttributeDefinition = loader.create("ReferentialAttributeDefinition");
            loader.set_attribute(referentialAttributeDefinition, "name", ctx.attributeName().getText());
            // Link referential to itself until after all objects and attributes have been
            // created.
            loader.relate_using(currentAttribute, currentAttribute, referentialAttributeDefinition, 5800, "refers_to");
            loader.relate(referentialAttributeDefinition, visit(ctx.relationshipSpec()), 5811, "");
            return referentialAttributeDefinition;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitRelationshipSpec(MaslParser.RelationshipSpecContext ctx) {
        try {
            String objectOrRole = ctx.objOrRole != null ? ctx.objOrRole.getText() : "";
            Object toObject = ctx.objectReference() != null ? visit(ctx.objectReference()) : emptyObject;
            Object relationshipSpecification = loader.call_function("create_RelationshipSpecification",
                    visit(ctx.relationshipReference()), currentObject, objectOrRole, toObject, true, false); // TODO
                                                                                                             // allow_assoc,
                                                                                                             // force_assoc
            // TODO - know about whether we need a set or not
            // if (((IModelInstance)to_object).isEmpty()) {
            // to_object = loader.call_function( "select_ObjectDeclaration_where_name", "",
            // object_or_role );
            // }
            // $basic_type = loader.call_function( "select_create_InstanceType", to_object,
            // false ); TODO need this?
            return relationshipSpecification;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitObjectServiceDeclaration(MaslParser.ObjectServiceDeclarationContext ctx) {
        try {
            Object service = loader.create("Service");
            currentService = service;
            loader.set_attribute(service, "name", ctx.serviceName().getText());
            loader.set_attribute(service, "visibility", visit(ctx.serviceVisibility()));
            Object objectService = loader.create("ObjectService");
            loader.relate(objectService, service, 5203, "");
            Object firstParameter = visit(ctx.parameterList());
            if (firstParameter != null) {
                loader.relate(firstParameter, service, 5204, "");
            }
            if (ctx.returnType() != null) {
                loader.relate(visit(ctx.returnType()), service, 5205, "");
            }
            return objectService;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitIdentifierDefinition(MaslParser.IdentifierDefinitionContext ctx) {
        try {
            Object identifierDeclaration = loader.create("IdentifierDeclaration");
            loader.set_attribute(identifierDeclaration, "ispreferred", false);
            loader.relate(identifierDeclaration, currentObject, 5804, "");
            for (Object attributeName : ctx.attributeName().stream().map(o -> o.getText()).toArray()) {
                Object attributeDeclaration = loader.call_function("select_AttributeDeclaration_related_where_name",
                        currentObject, attributeName);
                loader.relate(attributeDeclaration, identifierDeclaration, 5807, "");
            }
            return identifierDeclaration;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitEventDefinition(MaslParser.EventDefinitionContext ctx) {
        try {
            Object eventDeclaration = loader.create("EventDeclaration");
            loader.set_attribute(eventDeclaration, "name", ctx.eventName().getText());
            loader.set_attribute(eventDeclaration, "flavor", visit(ctx.eventType()));
            Object firstParameter = visit(ctx.parameterList());
            if (firstParameter != null) {
                loader.relate(eventDeclaration, firstParameter, 6100, "");
            }
            return eventDeclaration;

        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitEventType(MaslParser.EventTypeContext ctx) {
        if (ctx.ASSIGNER() != null) {
            return "EventType::assigner";
        } else if (ctx.CREATION() != null) {
            return "EventType::creation";
        } else {
            return "EventType::normal";
        }
    }

    @Override
    public Object visitStateDeclaration(MaslParser.StateDeclarationContext ctx) {
        try {
            Object OOAState = loader.create("State");
            loader.set_attribute(OOAState, "name", ctx.stateName().getText());
            loader.set_attribute(OOAState, "flavor", visit(ctx.stateType()));
            Object firstParameter = visit(ctx.parameterList());
            if (firstParameter != null) {
                loader.relate(OOAState, firstParameter, 6104, "");
            }
            return OOAState;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitStateType(MaslParser.StateTypeContext ctx) {
        if (ctx.ASSIGNER() != null) {
            return "StateType::assigner";
        } else if (ctx.START() != null) {
            return "StateType::assigner_start";
        } else if (ctx.CREATION() != null) {
            return "StateType::creation";
        } else if (ctx.TERMINAL() != null) {
            return "StateType::terminal";
        } else {
            return "StateType::normal";
        }
    }

    @Override
    public Object visitTransitionTable(MaslParser.TransitionTableContext ctx) {
        try {
            Object transitionTable = loader.create("TransitionTable");
            loader.set_attribute(transitionTable, "isassigner", visit(ctx.transTableType()));
            for (Object transitionRow : ctx.transitionRow().stream().map(o -> visit(o)).toArray()) {
                loader.relate(transitionRow, transitionTable, 6114, "");
            }
            return transitionTable;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitTransTableType(MaslParser.TransTableTypeContext ctx) {
        return ctx.ASSIGNER() != null;
    }

    @Override
    public Object visitTransitionRow(MaslParser.TransitionRowContext ctx) {
        try {
            Object transitionRow = loader.create("TransitionRow");
            Object OOAState = loader.call_function("select_State_where_name", currentObject, visit(ctx.startState()));
            loader.relate(OOAState, transitionRow, 6111, "");
            for (Object transitionOption : ctx.transitionOption().stream().map(o -> visit(o)).toArray()) {
                loader.relate(transitionOption, transitionRow, 6112, "");
            }
            return transitionRow;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitTransitionOption(MaslParser.TransitionOptionContext ctx) {
        try {
            Object transitionOption = loader.create("TransitionOption");
            Object endStateOrType = visit(ctx.endState());
            loader.set_attribute(transitionOption, "flavor",
                    !((String) endStateOrType).startsWith("TransitionType::") ? "TransitionType::to_state"
                            : endStateOrType);
            loader.relate(visit(ctx.eventReference()), transitionOption, 6108, "");
            if (endStateOrType == "TransitionType::to_state") {
                Object OOAState = loader.call_function("select_State_where_name", currentObject, endStateOrType);
                loader.relate(OOAState, transitionOption, 6109, "");
            }
            return transitionOption;

        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitStartState(MaslParser.StartStateContext ctx) {
        return ctx.NON_EXISTENT() != null ? "Non_Existent" : ctx.stateName().getText();
    }

    @Override
    public Object visitEndState(MaslParser.EndStateContext ctx) {
        if (ctx.IGNORE() != null) {
            return "TransitionType::ignore";
        } else if (ctx.CANNOT_HAPPEN() != null) {
            return "TransitionType::cannot_happen";
        } else {
            return ctx.stateName().getText();
        }
    }

    @Override
    public Object visitEventReference(MaslParser.EventReferenceContext ctx) {
        try {
            return loader.call_function("select_EventDeclaration_where_name",
                    ctx.objectReference() != null ? visit(ctx.objectReference()) : "", ctx.eventName().getText());
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitDomainServiceDeclaration(MaslParser.DomainServiceDeclarationContext ctx) {
        try {
            Object service = loader.create("Service");
            currentService = service;
            loader.set_attribute(service, "name", ctx.serviceName().getText());
            loader.set_attribute(service, "visibility", visit(ctx.serviceVisibility()));
            Object domainService = loader.create("DomainService");
            loader.relate(domainService, service, 5203, "");
            Object firstParameter = visit(ctx.parameterList());
            if (firstParameter != null) {
                loader.relate(firstParameter, service, 5204, "");
            }
            if (ctx.returnType() != null) {
                loader.relate(visit(ctx.returnType()), service, 5205, "");
            }
            return domainService;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitParameterDefinition(MaslParser.ParameterDefinitionContext ctx) {
        try {
            Object parameter = loader.create("ParameterDefinition");
            loader.set_attribute(parameter, "name", ctx.parameterName().getText());
            loader.set_attribute(parameter, "mode", visit(ctx.parameterMode()));
            loader.relate(visit(ctx.parameterType()), parameter, 5200, "");
            return parameter;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitParameterList(MaslParser.ParameterListContext ctx) {
        try {
            Object previousParameter = null;
            Object firstParameter = null;
            for (Object parameterDefinition : ctx.parameterDefinition().stream().map(o -> visit(o)).toArray()) {
                if (previousParameter == null) {
                    firstParameter = parameterDefinition;
                } else {
                    loader.relate(parameterDefinition, previousParameter, 5208, "succeeds");
                }
                previousParameter = parameterDefinition;
            }
            return firstParameter;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitServiceVisibility(MaslParser.ServiceVisibilityContext ctx) {
        return ctx.PRIVATE() != null ? "Visibility::private" : "Visibility::public";
    }

    @Override
    public Object visitParameterMode(MaslParser.ParameterModeContext ctx) {
        return ctx.IN() != null ? "Visibility::in" : "Visibility::out";
    }

    @Override
    public Object visitRelationshipDefinition(MaslParser.RelationshipDefinitionContext ctx) {
        try {
            Object relationshipDeclaration = loader.create("RelationshipDeclaration");
            loader.set_attribute(relationshipDeclaration, "name", ctx.relationshipName().getText());
            if (ctx.regularRelationshipDefinition() != null) {
                loader.relate(visit(ctx.regularRelationshipDefinition()), relationshipDeclaration, 6010, "");
            } else if (ctx.assocRelationshipDefinition() != null) {
                loader.relate(visit(ctx.assocRelationshipDefinition()), relationshipDeclaration, 6010, "");
            } else if (ctx.subtypeRelationshipDefinition() != null) {
                loader.relate(visit(ctx.subtypeRelationshipDefinition()), relationshipDeclaration, 6010, "");
            }
            return relationshipDeclaration;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitRegularRelationshipDefinition(MaslParser.RegularRelationshipDefinitionContext ctx) {
        try {
            Object normalRelationshipDeclaration = loader.create("NormalRelationshipDeclaration");
            loader.relate(visit(ctx.forwards), normalRelationshipDeclaration, 6007, "");
            loader.relate(visit(ctx.backwards), normalRelationshipDeclaration, 6008, "");
            return normalRelationshipDeclaration;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitAssocRelationshipDefinition(MaslParser.AssocRelationshipDefinitionContext ctx) {
        try {
            Object associativeRelationshipDeclaration = loader.create("AssociativeRelationshipDeclaration");
            loader.relate(visit(ctx.forwards), associativeRelationshipDeclaration, 6000, "");
            loader.relate(visit(ctx.backwards), associativeRelationshipDeclaration, 6002, "");
            loader.relate(visit(ctx.objectReference()), associativeRelationshipDeclaration, 6001, "");
            return associativeRelationshipDeclaration;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitHalfRelationshipDefinition(MaslParser.HalfRelationshipDefinitionContext ctx) {
        try {
            Object halfRelationship = loader.create("HalfRelationship");
            loader.set_attribute(halfRelationship, "isconditional", visit(ctx.conditionality()));
            loader.set_attribute(halfRelationship, "role", ctx.rolePhrase().getText());
            loader.set_attribute(halfRelationship, "multiplicity", visit(ctx.multiplicity()));
            loader.relate(visit(ctx.from), halfRelationship, 6006, "");
            loader.relate(visit(ctx.to), halfRelationship, 6004, "");
            return halfRelationship;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitSubtypeRelationshipDefinition(MaslParser.SubtypeRelationshipDefinitionContext ctx) {
        try {
            Object subtypeRelationshipDeclaration = loader.create("SubtypeRelationshipDeclaration");
            loader.relate(visit(ctx.supertype), subtypeRelationshipDeclaration, 6017, "");
            for (Object subtype : ctx.subtype.stream().map(o -> visit(o)).toArray()) {
                loader.relate(subtype, subtypeRelationshipDeclaration, 6016, "");
            }
            return subtypeRelationshipDeclaration;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitConditionality(MaslParser.ConditionalityContext ctx) {
        return ctx.CONDITIONALLY() != null;
    }

    @Override
    public Object visitMultiplicity(MaslParser.MultiplicityContext ctx) {
        return ctx.ONE() != null ? "Multiplicity::one" : "Multiplicity::many";
    }

    @Override
    public Object visitRelationshipReference(MaslParser.RelationshipReferenceContext ctx) {
        try {
            return loader.call_function("select_RelationshipDeclaration_where_name",
                    ctx.domainName() != null ? ctx.domainName().getText() : "", ctx.relationshipName().getText());
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

}
