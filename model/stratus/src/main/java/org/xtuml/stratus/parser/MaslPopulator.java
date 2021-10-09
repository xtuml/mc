package org.xtuml.stratus.parser;

import java.lang.reflect.InvocationTargetException;
import java.util.stream.Stream;

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
    private Object currentMarkable;

    // utility method for checking type of an object
    private static boolean instanceOf(Object o, String className) {
        if (o != null) {
            return Stream.of(o.getClass().getInterfaces()).anyMatch(iface -> iface.getSimpleName().equals(className));
        }
        return false;
    }

    private void createMark(String featureName, String value) throws XtumlException {
        if (instanceOf(currentMarkable, "ObjectDeclaration")) {
            loader.call_function("mark_object", currentDomain, currentMarkable, featureName, value);
        } else if (instanceOf(currentMarkable, "DomainService")) {
            loader.call_function("mark_domain_service", currentDomain, currentMarkable, featureName, value);
        }
    }

    // trace routine
    private void xtumlTrace(Exception e, String message) {
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
            currentMarkable = null;
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
            for (MaslParser.DomainItemContext ctx2 : ctx.domainItem()) {
                Object domainItem = visit(ctx2);
                if (instanceOf(domainItem, "ObjectDeclaration")) {
                    loader.call_function("relate_ObjectDeclaration_to_Domain", domainItem, domain);
                } else if (instanceOf(domainItem, "DomainService")) {
                    loader.relate(domainItem, domain, 5303, "");
                } else if (instanceOf(domainItem, "DomainTerminator")) {
                    loader.relate(domainItem, domain, 5304, "");
                } else if (instanceOf(domainItem, "RelationshipDeclaration")) {
                    loader.relate(domainItem, domain, 6003, "");
                } else if (instanceOf(domainItem, "UserDefinedType2")) {
                    loader.relate(domainItem, domain, 6235, "");
                } else if (instanceOf(domainItem, "ExceptionDeclaration")) {
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
        return ctx.PRIVATE() != null ? "Visibility2::private" : "Visibility2::public";
    }

    @Override
    public Object visitTypeForwardDeclaration(MaslParser.TypeForwardDeclarationContext ctx) {
        try {
            Object userDefinedType = loader.call_function("select_UserDefinedType_where_name", "",
                    ctx.typeName().getText());
            if (((IModelInstance<?, ?>) userDefinedType).isEmpty()) {
                Object typeDefinition = loader.create("TypeDefinition");
                Object basicType = loader.create("BasicType");
                userDefinedType = loader.create("UserDefinedType2");
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
                userDefinedType = loader.create("UserDefinedType2");
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
        return ctx.PRIVATE() != null ? "Visibility2::private" : "Visibility2::public";
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
            Object firstParameter = visit(ctx.parameterList());
            if (firstParameter != null) {
                loader.relate(firstParameter, service, 5204, "");
            }
            if (ctx.returnType() != null) {
                loader.relate(visit(ctx.returnType()), service, 5205, "");
            }
            if (currentProject == null) { // domain terminator service
                Object domainTerminatorService = loader.create("DomainTerminatorService");
                loader.relate(domainTerminatorService, service, 5203, "");
                return domainTerminatorService;
            } else { // project terminator service
                Object projectTerminatorService = loader.create("ProjectTerminatorService");
                loader.relate(projectTerminatorService, service, 5203, "");
                return projectTerminatorService;
            }
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
            Object domainName = currentDomain.getClass().getMethod("getName").invoke(currentDomain);
            Object objectDeclaration = loader.call_function("select_ObjectDeclaration_where_name", domainName,
                    ctx.objectName().getText());
            loader.set_attribute(objectDeclaration, "name", ctx.objectName().getText());
            currentObject = objectDeclaration;
            previousAttribute = null;
            boolean nonExistentExists = false;
            // object items
            for (MaslParser.ObjectItemContext ctx2 : ctx.objectItem()) {
                Object objectItem = visit(ctx2);
                if (instanceOf(objectItem, "AttributeDeclaration")) {
                    loader.relate(objectItem, objectDeclaration, 5802, "");
                    previousAttribute = objectItem;
                } else if (instanceOf(objectItem, "ObjectService")) {
                    loader.relate(objectItem, objectDeclaration, 5808, "");
                } else if (instanceOf(objectItem, "EventDeclaration")) {
                    loader.relate(objectItem, objectDeclaration, 6101, "");
                } else if (instanceOf(objectItem, "State2")) {
                    if (!nonExistentExists) {
                        // Create a Non_Existent state.
                        Object ooastate = loader.create("State2");
                        loader.set_attribute(ooastate, "name", "Non_Existent");
                        loader.relate(ooastate, objectDeclaration, 6105, "");
                        nonExistentExists = true;
                    }
                    loader.relate(objectItem, objectDeclaration, 6105, "");
                } else if (instanceOf(objectItem, "TransitionTable")) {
                    loader.relate(objectItem, objectDeclaration, 6113, "");
                }
            }
            currentMarkable = objectDeclaration;
            visit(ctx.pragmaList());
            currentMarkable = null;
            currentObject = emptyObject;
            return objectDeclaration;
        } catch (XtumlException | IllegalAccessException | IllegalArgumentException | InvocationTargetException
                | NoSuchMethodException | SecurityException e) {
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
            loader.set_attribute(objectService, "isInstance", ctx.INSTANCE() != null);
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
            Object OOAState = loader.create("State2");
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
                    !((String) endStateOrType).startsWith("TransitionType2::") ? "TransitionType2::to_state"
                            : endStateOrType);
            loader.relate(visit(ctx.eventReference()), transitionOption, 6108, "");
            if (!((String) endStateOrType).startsWith("TransitionType2::")) {
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
            return "TransitionType2::ignore";
        } else if (ctx.CANNOT_HAPPEN() != null) {
            return "TransitionType2::cannot_happen";
        } else {
            return ctx.stateName().getText();
        }
    }

    @Override
    public Object visitEventReference(MaslParser.EventReferenceContext ctx) {
        try {
            return loader.call_function("select_EventDeclaration_where_name",
                    ctx.objectReference() != null ? visit(ctx.objectReference()) : currentObject,
                    ctx.eventName().getText());
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
            currentMarkable = domainService;
            visit(ctx.pragmaList());
            currentMarkable = null;
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
        return ctx.PRIVATE() != null ? "Visibility2::private" : "Visibility2::public";
    }

    @Override
    public Object visitParameterMode(MaslParser.ParameterModeContext ctx) {
        return ctx.IN() != null ? "ParameterMode::in" : "ParameterMode::out";
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
        return ctx.ONE() != null ? "Multiplicity2::one" : "Multiplicity2::many";
    }

    @Override
    public Object visitRelationshipReference(MaslParser.RelationshipReferenceContext ctx) {
        try {
            Object domainName = currentDomain.getClass().getMethod("getName").invoke(currentDomain);
            return loader.call_function("select_RelationshipDeclaration_where_name",
                    ctx.domainName() != null ? ctx.domainName().getText() : domainName,
                    ctx.relationshipName().getText());
        } catch (XtumlException | IllegalAccessException | IllegalArgumentException | InvocationTargetException
                | NoSuchMethodException | SecurityException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitPragma(MaslParser.PragmaContext ctx) {
        try {
            String value = ctx.pragmaValue().stream().map(o -> {
                String text = o.getText();
                if (text.startsWith("\"") && text.endsWith("\"")) {
                    return text.substring(1, text.length() - 1);

                } else {
                    return text;
                }
            }).reduce("", (a, b) -> "".equals(a) ? b : a + "," + b);
            createMark(ctx.pragmaName().getText(), value);
            return null;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitDomainServiceDefinition(MaslParser.DomainServiceDefinitionContext ctx) {
        try {
            // TODO - must deal with overloading by including parameter list in
            // identification.
            currentCodeBlock = emptyCodeBlock;
            Object service = loader.call_function("select_Service_where_name", ctx.domainName().getText(),
                    ctx.serviceName().getText());
            currentService = service;
            visit(ctx.codeBlock());
            currentService = null;
            return service;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitCodeBlock(MaslParser.CodeBlockContext ctx) {
        try {
            Object codeBlock = loader.create("CodeBlock");
            loader.set_attribute(codeBlock, "actions", ctx.statementList().getText());
            // TODO - nest the code_block instances.
            if (null != currentService) {
                loader.relate(codeBlock, currentService, 5403, "");
            } else {
                loader.relate(codeBlock, currentOOAState, 6115, "");
            }
            currentCodeBlock = codeBlock;
            // TODO for each variableDeclaration
            // loader.relate( $variableDeclaration.variable_definition, $code_block, 5151,
            // "" );
            if (ctx.statementList() != null) {
                loader.relate(visit(ctx.statementList()), codeBlock, 5150, "");
            }
            // TODO for each exceptionHandler
            // loader.relate( $exceptionHandler.handler, code_block, 5149, "" );
            // TODO other handler
            // loader.relate( $exceptionHandler.handler, code_block, 5149, "" );
            currentCodeBlock = emptyCodeBlock;
            return codeBlock;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitStatementList(MaslParser.StatementListContext ctx) {
        try {
            Object firstStatement = null;
            Object previousStatement = null;
            for (MaslParser.StatementContext ctx2 : ctx.statement()) {
                Object statement = visit(ctx2);
                loader.set_attribute(statement, "actions", ctx2.getText());
                if (previousStatement == null) {
                    firstStatement = statement;
                } else {
                    loader.relate(statement, previousStatement, 5155, "succeeds");
                }
                previousStatement = statement;
            }
            return firstStatement;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitStatement(MaslParser.StatementContext ctx) {
        try {
            Object statement = loader.create("Statement");
            if (ctx.assignStatement() != null) {
                loader.relate(visit(ctx.assignStatement()), statement, 5135, "");
            } else if (ctx.streamStatement() != null) {
                loader.relate(visit(ctx.streamStatement()), statement, 5135, "");
            } else if (ctx.callStatement() != null) {
                loader.relate(visit(ctx.callStatement()), statement, 5135, "");
            } else if (ctx.exitStatement() != null) {
                loader.relate(visit(ctx.exitStatement()), statement, 5135, "");
            } else if (ctx.returnStatement() != null) {
                loader.relate(visit(ctx.returnStatement()), statement, 5135, "");
            } else if (ctx.delayStatement() != null) {
                loader.relate(visit(ctx.delayStatement()), statement, 5135, "");
            } else if (ctx.raiseStatement() != null) {
                loader.relate(visit(ctx.raiseStatement()), statement, 5135, "");
            } else if (ctx.deleteStatement() != null) {
                loader.relate(visit(ctx.deleteStatement()), statement, 5135, "");
            } else if (ctx.eraseStatement() != null) {
                loader.relate(visit(ctx.eraseStatement()), statement, 5135, "");
            } else if (ctx.linkStatement() != null) {
                loader.relate(visit(ctx.linkStatement()), statement, 5135, "");
            } else if (ctx.scheduleStatement() != null) {
                loader.relate(visit(ctx.scheduleStatement()), statement, 5135, "");
            } else if (ctx.cancelTimerStatement() != null) {
                loader.relate(visit(ctx.cancelTimerStatement()), statement, 5135, "");
            } else if (ctx.generateStatement() != null) {
                loader.relate(visit(ctx.generateStatement()), statement, 5135, "");
            } else if (ctx.ifStatement() != null) {
                loader.relate(visit(ctx.ifStatement()), statement, 5135, "");
            } else if (ctx.caseStatement() != null) {
                loader.relate(visit(ctx.caseStatement()), statement, 5135, "");
            } else if (ctx.forStatement() != null) {
                loader.relate(visit(ctx.forStatement()), statement, 5135, "");
            } else if (ctx.whileStatement() != null) {
                loader.relate(visit(ctx.whileStatement()), statement, 5135, "");
            }
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitStreamStatement(MaslParser.StreamStatementContext ctx) {
        try {
            Object statement = loader.create("IOStreamStatement");
            loader.relate(visit(ctx.lhs), statement, 5156, "");
            loader.relate(visit(ctx.rhs.get(0)), statement, 5115, "");
            loader.set_attribute(statement, "operator", visit(ctx.streamOperator(0)));
            // TODO - I am not sure what to do with multiple different operators.
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitStreamOperator(MaslParser.StreamOperatorContext ctx) {
        if (ctx.STREAM_IN() != null) {
            return "IOop::in";
        } else if (ctx.STREAM_OUT() != null) {
            return "IOop::out";
        } else if (ctx.STREAM_LINE_IN() != null) {
            return "IOop::linein";
        } else if (ctx.STREAM_LINE_OUT() != null) {
            return "IOop::lineout";
        } else {
            return "";
        }
    }

    @Override
    public Object visitRangeExpression(MaslParser.RangeExpressionContext ctx) {
        try {
            Object logicalOr = visit(ctx.logicalOr(0));
            // TODO
            if (false)
                throw new XtumlException("");
            return logicalOr;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitLogicalOr(MaslParser.LogicalOrContext ctx) {
        try {
            Object logicalXor = visit(ctx.logicalXor(0));
            // TODO
            if (false)
                throw new XtumlException("");
            return logicalXor;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitLogicalXor(MaslParser.LogicalXorContext ctx) {
        try {
            Object logicalAnd = visit(ctx.logicalAnd(0));
            // TODO
            if (false)
                throw new XtumlException("");
            return logicalAnd;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitLogicalAnd(MaslParser.LogicalAndContext ctx) {
        try {
            Object equality = visit(ctx.equality(0));
            // TODO
            if (false)
                throw new XtumlException("");
            return equality;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitEquality(MaslParser.EqualityContext ctx) {
        try {
            Object relationalExp = visit(ctx.relationalExp(0));
            // TODO
            if (false)
                throw new XtumlException("");
            return relationalExp;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitRelationalExp(MaslParser.RelationalExpContext ctx) {
        try {
            Object additiveExp = visit(ctx.additiveExp(0));
            // TODO
            if (false)
                throw new XtumlException("");
            return additiveExp;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitAdditiveExp(MaslParser.AdditiveExpContext ctx) {
        try {
            Object multExp = visit(ctx.multExp(0));
            // TODO
            if (false)
                throw new XtumlException("");
            return multExp;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitMultExp(MaslParser.MultExpContext ctx) {
        try {
            Object unaryExp = visit(ctx.unaryExp(0));
            // TODO
            if (false)
                throw new XtumlException("");
            return unaryExp;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitUnaryExp(MaslParser.UnaryExpContext ctx) {
        try {
            if (ctx.linkExpression() != null) {
                return visit(ctx.linkExpression());
            } else {
                // TODO
                if (false)
                    throw new XtumlException("");
                return null;
            }
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitLinkExpression(MaslParser.LinkExpressionContext ctx) {
        try {
            if (ctx.navigateExpression() != null) {
                return visit(ctx.navigateExpression(0));
            } else {
                // TODO
                if (false)
                    throw new XtumlException("");
                return null;
            }
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitNavigateExpression(MaslParser.NavigateExpressionContext ctx) {
        try {
            Object extendedExpression = visit(ctx.extendedExpression(0));
            // TODO
            if (false)
                throw new XtumlException("");
            return extendedExpression;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitExtendedExpression(MaslParser.ExtendedExpressionContext ctx) {
        try {
            if (ctx.postfixExpression() != null) {
                return visit(ctx.postfixExpression());
            } else {
                // TODO
                if (false)
                    throw new XtumlException("");
                return null;
            }
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitPostfixExpression(MaslParser.PostfixExpressionContext ctx) {
        try {
            Object primaryExpression = visit(ctx.primaryExpression());
            // TODO
            if (false)
                throw new XtumlException("");
            return primaryExpression;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitPrimaryExpression(MaslParser.PrimaryExpressionContext ctx) {
        try {
            if (ctx.literal() != null) {
                return visit(ctx.literal());
            } else {
                // TODO
                if (false)
                    throw new XtumlException("");
                return null;
            }
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitLiteral(MaslParser.LiteralContext ctx) {
        try {
            Object expression = loader.create("Expression");
            Object literalExpression = loader.create("LiteralExpression");
            loader.relate(literalExpression, expression, 5517, "");
            if (ctx.StringLiteral() != null) {
                Object stringLiteral = loader.create("StringLiteral");
                loader.relate(stringLiteral, literalExpression, 5700, "");
                String literalText = ctx.StringLiteral().getText();
                loader.set_attribute(stringLiteral, "original", literalText);
                loader.set_attribute(stringLiteral, "noQuotes", literalText.substring(1, literalText.length() - 1));
                Object stringType = loader.call_function("select_BasicType_where_name", "", "string");
                loader.relate(stringType, expression, 5570, "");
            } else if (ctx.CONSOLE() != null) {
                Object consoleLiteral = loader.create("ConsoleLiteral");
                loader.relate(consoleLiteral, literalExpression, 5700, "");
                Object deviceType = loader.call_function("select_BasicType_where_name", "", "device");
                loader.relate(deviceType, expression, 5570, "");
            }
            // TODO
            return expression;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }
}
