package org.xtuml.stratus.parser;

import java.lang.reflect.InvocationTargetException;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.misc.Interval;

import io.ciera.runtime.instanceloading.generic.util.LOAD;
import io.ciera.runtime.summit.classes.IModelInstance;
import io.ciera.runtime.summit.exceptions.XtumlException;

public class MaslPopulator extends MaslParserBaseVisitor<Object> {

    private final CharStream input;
    private final LOAD loader;
    private final String filename;

    private Object emptyObject;
    private Object emptyCodeBlock;
    private Object currentProject;
    private Object currentProjectDomain;
    private Object currentDomain;
    private Object currentService;
    private Object currentObject;
    private Object currentBodyObject;
    private Object currentRelToObject;
    private Object previousAttribute;
    private Object currentAttribute;
    private Object currentOOAState;
    private Object currentCodeBlock;
    private Object currentMarkable;

    // utility method for checking type of an object
    private static boolean keyLettersAre(Object o, String keyLetters) {
        if (o != null) {
            return ((IModelInstance<?, ?>) o).getKeyLetters().equals(keyLetters);
        }
        return false;
    }

    private static Object getName(Object o) {
        if (o != null) {
            try {
                return o.getClass().getMethod("getName").invoke(o);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException
                    | NoSuchMethodException | SecurityException e) {
                return "";
            }
        } else {
            return "";
        }
    }

    private void createMark(String featureName, String value) throws XtumlException {
        if (keyLettersAre(currentMarkable, "ObjectDeclaration")) {
            loader.call_function("mark_object", currentDomain, currentMarkable, featureName, value);
        } else if (keyLettersAre(currentMarkable, "DomainService")) {
            loader.call_function("mark_domain_service", currentDomain, currentMarkable, featureName, value);
        }
    }

    // trace routine
    private void xtumlTrace(Exception e, String message) {
        System.err.println("xtumlTrace(" + message + ") - " + /* TODO */ "getFile()" + ":  " + e);
        e.printStackTrace();
        System.exit(1);
    }

    public MaslPopulator(CharStream input, LOAD loader, String filename) {
        this.input = input;
        this.loader = loader;
        this.filename = filename;
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
            currentObject = emptyObject;
            currentBodyObject = emptyObject;
            currentRelToObject = emptyObject;
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
                if (keyLettersAre(domainItem, "ObjectDeclaration")) {
                    loader.call_function("relate_ObjectDeclaration_to_Domain", domainItem, domain);
                } else if (keyLettersAre(domainItem, "DomainService")) {
                    loader.relate(domainItem, domain, 5303, "");
                } else if (keyLettersAre(domainItem, "DomainTerminator")) {
                    loader.relate(domainItem, domain, 5304, "");
                } else if (keyLettersAre(domainItem, "RelationshipDeclaration")) {
                    loader.relate(domainItem, domain, 6003, "");
                } else if (keyLettersAre(domainItem, "MaslUserDefinedType")) {
                    loader.relate(domainItem, domain, 6235, "");
                } else if (keyLettersAre(domainItem, "ExceptionDeclaration")) {
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
            Object exceptionDeclaration = loader.call_function("select_ExceptionDeclaration_where_name",
                    ctx.domainName() != null ? ctx.domainName().getText() : getName(currentDomain),
                    ctx.exceptionName().getText());
            if (((IModelInstance<?, ?>) exceptionDeclaration).isEmpty()) {
                Object builtin = loader.create("BuiltinException");
                loader.relate(exceptionReference, builtin, 5401, "");
                loader.set_attribute(builtin, "flavor", ctx.exceptionName().getText());
            } else {
                Object userException = loader.create("UserDefinedExceptionReference");
                loader.relate(exceptionReference, userException, 5401, "");
                loader.relate(exceptionDeclaration, userException, 5402, "");
            }
            return exceptionReference;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitExceptionVisibility(MaslParser.ExceptionVisibilityContext ctx) {
        return ctx.PRIVATE() != null ? "MaslVisibility::private" : "MaslVisibility::public";
    }

    @Override
    public Object visitTypeForwardDeclaration(MaslParser.TypeForwardDeclarationContext ctx) {
        try {
            Object userDefinedType = loader.call_function("select_UserDefinedType_where_name", "",
                    ctx.typeName().getText());
            if (((IModelInstance<?, ?>) userDefinedType).isEmpty()) {
                Object typeDefinition = loader.create("TypeDefinition");
                Object basicType = loader.create("BasicType");
                userDefinedType = loader.create("MaslUserDefinedType");
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
                userDefinedType = loader.create("MaslUserDefinedType");
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
        return ctx.PRIVATE() != null ? "MaslVisibility::private" : "MaslVisibility::public";
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
    public Object visitDeprecatedType(MaslParser.DeprecatedTypeContext ctx) {
        try {
            Object basicType = loader.call_function("select_BasicType_where_name", "", ctx.getText());
            return basicType;
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
            return loader.call_function("select_ObjectDeclaration_where_name", getName(currentDomain),
                    ctx.objectName().getText());
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitFullObjectReference(MaslParser.FullObjectReferenceContext ctx) {
        try {
            return loader.call_function("select_ObjectDeclaration_where_name",
                    ctx.domainName() != null ? ctx.domainName().getText() : getName(currentDomain),
                    ctx.objectName().getText());
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
                    getName(currentDomain), ctx.objectName().getText());
            loader.set_attribute(objectDeclaration, "name", ctx.objectName().getText());
            currentObject = objectDeclaration;
            previousAttribute = null;
            boolean nonExistentExists = false;
            // object items
            for (MaslParser.ObjectItemContext ctx2 : ctx.objectItem()) {
                Object objectItem = visit(ctx2);
                if (keyLettersAre(objectItem, "AttributeDeclaration")) {
                    loader.relate(objectItem, objectDeclaration, 5802, "");
                    previousAttribute = objectItem;
                } else if (keyLettersAre(objectItem, "ObjectService")) {
                    loader.relate(objectItem, objectDeclaration, 5808, "");
                } else if (keyLettersAre(objectItem, "EventDeclaration")) {
                    loader.relate(objectItem, objectDeclaration, 6101, "");
                } else if (keyLettersAre(objectItem, "MaslState")) {
                    if (!nonExistentExists) {
                        // Create a Non_Existent state.
                        Object ooastate = loader.create("MaslState");
                        loader.set_attribute(ooastate, "name", "Non_Existent");
                        loader.relate(ooastate, objectDeclaration, 6105, "");
                        nonExistentExists = true;
                    }
                    loader.relate(objectItem, objectDeclaration, 6105, "");
                } else if (keyLettersAre(objectItem, "TransitionTable")) {
                    loader.relate(objectItem, objectDeclaration, 6113, "");
                }
            }
            currentMarkable = objectDeclaration;
            visit(ctx.pragmaList());
            currentMarkable = null;
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
            Object toObject = ctx.objectReference() != null ? visit(ctx.objectReference()) : currentRelToObject;
            Object relationshipSpecification = loader.call_function("create_RelationshipSpecification",
                    visit(ctx.relationshipReference()), currentObject, objectOrRole, toObject);
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
            Object OOAState = loader.create("MaslState");
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
                    !((String) endStateOrType).startsWith("MaslTransitionType::") ? "MaslTransitionType::to_state"
                            : endStateOrType);
            loader.relate(visit(ctx.eventReference()), transitionOption, 6108, "");
            if (!((String) endStateOrType).startsWith("MaslTransitionType::")) {
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
            return "MaslTransitionType::ignore";
        } else if (ctx.CANNOT_HAPPEN() != null) {
            return "MaslTransitionType::cannot_happen";
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
        return ctx.PRIVATE() != null ? "MaslVisibility::private" : "MaslVisibility::public";
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
        return ctx.ONE() != null ? "MaslMultiplicity::one" : "MaslMultiplicity::many";
    }

    @Override
    public Object visitRelationshipReference(MaslParser.RelationshipReferenceContext ctx) {
        try {
            return loader.call_function("select_RelationshipDeclaration_where_name",
                    ctx.domainName() != null ? ctx.domainName().getText() : getName(currentDomain),
                    ctx.relationshipName().getText());
        } catch (XtumlException e) {
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
            currentDomain = loader.call_function("select_Domain_where_name", ctx.domainName().getText());
            currentService = loader.call_function("select_Service_where_name", ctx.domainName().getText(),
                    ctx.serviceName().getText());
            loader.set_attribute(currentService, "filename", filename);
            visit(ctx.codeBlock());
            return currentService;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitTerminatorServiceDefinition(MaslParser.TerminatorServiceDefinitionContext ctx) {
        try {
            currentDomain = loader.call_function("select_Domain_where_name", ctx.domainName().getText());
            currentService = loader.call_function("select_DomainTerminatorService_where_name",
                    ctx.domainName().getText(), ctx.terminatorName().getText(), ctx.serviceName().getText());
            loader.set_attribute(currentService, "filename", filename);
            visit(ctx.codeBlock());
            return currentService;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitStateDefinition(MaslParser.StateDefinitionContext ctx) {
        try {
            currentDomain = loader.call_function("select_Domain_where_name", ctx.domainName().getText());
            currentBodyObject = visit(ctx.objectReference());
            currentOOAState = loader.call_function("select_State_related_where_name", currentBodyObject,
                    ctx.stateName().getText());
            loader.set_attribute(currentOOAState, "filename", filename);
            visit(ctx.codeBlock());
            return currentOOAState;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitObjectServiceDefinition(MaslParser.ObjectServiceDefinitionContext ctx) {
        try {
            currentDomain = loader.call_function("select_Domain_where_name", ctx.domainName().getText());
            currentBodyObject = visit(ctx.objectReference());
            currentService = loader.call_function("select_ObjectService_where_name", currentBodyObject,
                    ctx.serviceName().getText());
            loader.set_attribute(currentService, "filename", filename);
            visit(ctx.codeBlock());
            return currentService;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitCodeBlock(MaslParser.CodeBlockContext ctx) {
        try {
            Object codeBlock = loader.create("MaslCodeBlock");
            // TODO - nest the code_block instances.
            if (currentService != null) {
                loader.relate(codeBlock, currentService, 5403, "");
            } else {
                loader.relate(codeBlock, currentOOAState, 6115, "");
            }
            if (!((IModelInstance<?, ?>) currentCodeBlock).isEmpty()) {
                loader.relate(codeBlock, currentCodeBlock, 5160, "nested_within");
            }
            Object oldCodeBlock = currentCodeBlock;
            currentCodeBlock = codeBlock;
            for (MaslParser.VariableDeclarationContext ctx2 : ctx.variableDeclaration()) {
                loader.relate(visit(ctx2), codeBlock, 5151, "");
            }
            if (ctx.statementList() != null) {
                Object firstStatement = visit(ctx.statementList());
                if (firstStatement != null) {
                    loader.relate(firstStatement, codeBlock, 5150, "");
                }
            }
            // exception handlers
            Object previousExceptionHandler = null;
            for (MaslParser.ExceptionHandlerContext ctx2 : ctx.exceptionHandler()) {
                Object exceptionHandler = visit(ctx2);
                loader.relate(exceptionHandler, codeBlock, 5149, "");
                if (previousExceptionHandler != null) {
                    loader.relate(exceptionHandler, previousExceptionHandler, 5162, "follows");
                }
                previousExceptionHandler = exceptionHandler;
            }
            if (ctx.otherHandler() != null) {
                Object exceptionHandler = visit(ctx.otherHandler());
                loader.relate(exceptionHandler, codeBlock, 5149, "");
                if (previousExceptionHandler != null) {
                    loader.relate(exceptionHandler, previousExceptionHandler, 5162, "follows");
                }
            }
            currentCodeBlock = oldCodeBlock;
            return codeBlock;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitVariableDeclaration(MaslParser.VariableDeclarationContext ctx) {
        try {
            Object variableDefinition = loader.create("VariableDefinition");
            loader.set_attribute(variableDefinition, "name", ctx.variableName().getText());
            loader.set_attribute(variableDefinition, "isreadonly", ctx.READONLY() != null);
            String actionText = input
                    .getText(new Interval(ctx.getStart().getStartIndex(), ctx.getStop().getStopIndex()));
            loader.set_attribute(variableDefinition, "actions", actionText);
            loader.set_attribute(variableDefinition, "line_number", ctx.getStart().getLine());
            loader.relate(visit(ctx.typeReferenceWithCA()), variableDefinition, 5137, "");
            if (ctx.expression() != null) {
                loader.relate(visit(ctx.expression()), variableDefinition, 5138, "");
            }
            return variableDefinition;

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
                String actionText = input
                        .getText(new Interval(ctx2.getStart().getStartIndex(), ctx2.getStop().getStopIndex()));
                loader.set_attribute(statement, "actions", actionText);
                loader.set_attribute(statement, "line_number", ctx2.getStart().getLine());
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
            Object statement = loader.create("MaslStatement");
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
    public Object visitAssignStatement(MaslParser.AssignStatementContext ctx) {
        try {
            Object statement = loader.create("AssignmentStatement");
            loader.relate(visit(ctx.lhs), statement, 5101, "");
            loader.relate(visit(ctx.rhs), statement, 5100, "");
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
            Object previousStreamOperator = null;
            for (int i = 0; i < ctx.streamValue().size(); i++) {
                Object streamOperator = visit(ctx.streamValue(i));
                loader.set_attribute(streamOperator, "index", i);
                loader.relate_using(visit(ctx.streamValue(i).expression()), statement, streamOperator, 5115, null);
                if (previousStreamOperator != null) {
                    loader.relate(streamOperator, previousStreamOperator, 5159, "follows");
                }
                previousStreamOperator = streamOperator;
            }
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitCallStatement(MaslParser.CallStatementContext ctx) {
        try {
            Object statement = loader.create("ServiceCall");
            Object expression = visit(ctx.root);
            Object firstArgument = visit(ctx.argumentList());
            if (firstArgument != null) {
                loader.call_function("resolve_Expression_ArgumentList", expression, firstArgument);
            }
            loader.call_function("resolve_ServiceCall", statement, expression);
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitStreamValue(MaslParser.StreamValueContext ctx) {
        try {
            Object streamOperator = loader.create("StreamOperator");
            loader.set_attribute(streamOperator, "operator", visit(ctx.streamOperator()));
            return streamOperator;
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
    public Object visitReturnStatement(MaslParser.ReturnStatementContext ctx) {
        try {
            Object statement = loader.create("ReturnStatement");
            loader.relate(currentService, statement, 5127, "");
            loader.relate(visit(ctx.expression()), statement, 5128, "");
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }

    }

    @Override
    public Object visitLinkStatement(MaslParser.LinkStatementContext ctx) {
        try {
            Object statement = loader.create("LinkUnlinkStatement");
            loader.set_attribute(statement, "isLink", visit(ctx.linkType()));
            Object lhs = visit(ctx.lhs);
            loader.relate(lhs, statement, 5122, "");
            currentObject = loader.call_function("select_ObjectDeclaration_related_by_Expression", lhs);
            if (ctx.rhs != null) {
                Object rhs = visit(ctx.rhs);
                loader.relate(rhs, statement, 5119, "");
                currentRelToObject = loader.call_function("select_ObjectDeclaration_related_by_Expression", rhs);
                if (ctx.assoc != null) {
                    loader.relate(visit(ctx.assoc), statement, 5121, "");
                }
            }
            loader.relate(visit(ctx.relationshipSpec()), statement, 5120, "");
            currentRelToObject = emptyObject;
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }

    }

    @Override
    public Object visitLinkType(MaslParser.LinkTypeContext ctx) {
        return ctx.LINK() != null;
    }

    @Override
    public Object visitGenerateStatement(MaslParser.GenerateStatementContext ctx) {
        try {
            Object statement = loader.create("GenerateStatement");
            loader.relate(visit(ctx.eventReference()), statement, 5112, "");

            Object firstArgument = visit(ctx.argumentList());
            if (firstArgument != null) {
                loader.relate(visit(ctx.argumentList()), statement, 5114, "");
            }
            if (ctx.expression() != null) {
                loader.relate(visit(ctx.expression()), statement, 5113, "");
            }
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitIfStatement(MaslParser.IfStatementContext ctx) {
        try {
            Object previousAlternative = null;
            Object statement = loader.create("IfStatement");
            String actionText = input
                    .getText(new Interval(ctx.getStart().getStartIndex(), ctx.THEN().getSymbol().getStopIndex()));
            loader.set_attribute(statement, "actions", actionText);
            loader.relate(visit(ctx.condition()), statement, 5143, "");
            if (ctx.statementList() != null) {
                Object firstStatement = visit(ctx.statementList());
                if (firstStatement != null) {
                    loader.relate(firstStatement, statement, 5144, "");
                }
            }
            for (MaslParser.ElsifBlockContext ctx2 : ctx.elsifBlock()) {
                Object elseIfBlock = visit(ctx2);
                loader.relate(elseIfBlock, statement, 5145, "");
                if (previousAlternative != null) {
                    loader.relate(elseIfBlock, previousAlternative, 5158, "succeeds");
                }
                previousAlternative = elseIfBlock;
            }
            if (ctx.elseBlock() != null) {
                Object elseBlock = visit(ctx.elseBlock());
                loader.relate(elseBlock, statement, 5145, "");
                if (previousAlternative != null) {
                    loader.relate(elseBlock, previousAlternative, 5158, "succeeds");
                }
            }
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitElsifBlock(MaslParser.ElsifBlockContext ctx) {
        try {
            Object alternative = loader.create("Alternative");
            loader.set_attribute(alternative, "else_otherwise", false);
            String actionText = input
                    .getText(new Interval(ctx.getStart().getStartIndex(), ctx.THEN().getSymbol().getStopIndex()));
            loader.set_attribute(alternative, "actions", actionText);
            loader.relate(visit(ctx.condition()), alternative, 5147, "");
            if (ctx.statementList() != null) {
                Object firstStatement = visit(ctx.statementList());
                if (firstStatement != null) {
                    loader.relate(firstStatement, alternative, 5148, "");
                }
            }
            return alternative;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitElseBlock(MaslParser.ElseBlockContext ctx) {
        try {
            Object alternative = loader.create("Alternative");
            loader.set_attribute(alternative, "else_otherwise", true);
            String actionText = input
                    .getText(new Interval(ctx.getStart().getStartIndex(), ctx.ELSE().getSymbol().getStopIndex()));
            loader.set_attribute(alternative, "actions", actionText);
            if (ctx.statementList() != null) {
                Object firstStatement = visit(ctx.statementList());
                if (firstStatement != null) {
                    loader.relate(firstStatement, alternative, 5148, "");
                }
            }
            return alternative;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitRangeExpression(MaslParser.RangeExpressionContext ctx) {
        // TODO
        return visit(ctx.logicalOr(0));
    }

    @Override
    public Object visitLogicalOr(MaslParser.LogicalOrContext ctx) {
        try {
            if (ctx.logicalOr() != null) {
                Object expression = loader.create("MaslExpression");
                Object binaryExpression = loader.create("BinaryExpression");
                loader.relate(binaryExpression, expression, 5517, "");
                Object logicalBinary = loader.create("BinaryLogicalExpression");
                loader.relate(logicalBinary, binaryExpression, 5000, "");
                loader.set_attribute(binaryExpression, "operator", "Operator::or_");
                Object lhs = visit(ctx.lhs);
                Object rhs = visit(ctx.rhs);
                loader.call_function("resolve_BinaryExpression_type", expression, lhs, rhs);
                loader.relate(binaryExpression, lhs, 5001, "");
                loader.relate(binaryExpression, rhs, 5002, "");
                return expression;
            } else {
                return visit(ctx.logicalXor());
            }
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitLogicalXor(MaslParser.LogicalXorContext ctx) {
        try {
            if (ctx.logicalXor() != null) {
                Object expression = loader.create("MaslExpression");
                Object binaryExpression = loader.create("BinaryExpression");
                loader.relate(binaryExpression, expression, 5517, "");
                Object logicalBinary = loader.create("BinaryLogicalExpression");
                loader.relate(logicalBinary, binaryExpression, 5000, "");
                loader.set_attribute(binaryExpression, "operator", "Operator::xor");
                Object lhs = visit(ctx.lhs);
                Object rhs = visit(ctx.rhs);
                loader.call_function("resolve_BinaryExpression_type", expression, lhs, rhs);
                loader.relate(binaryExpression, lhs, 5001, "");
                loader.relate(binaryExpression, rhs, 5002, "");
                return expression;
            } else {
                return visit(ctx.logicalAnd());
            }
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitLogicalAnd(MaslParser.LogicalAndContext ctx) {
        try {
            if (ctx.logicalAnd() != null) {
                Object expression = loader.create("MaslExpression");
                Object binaryExpression = loader.create("BinaryExpression");
                loader.relate(binaryExpression, expression, 5517, "");
                Object logicalBinary = loader.create("BinaryLogicalExpression");
                loader.relate(logicalBinary, binaryExpression, 5000, "");
                loader.set_attribute(binaryExpression, "operator", "Operator::and_");
                Object lhs = visit(ctx.lhs);
                Object rhs = visit(ctx.rhs);
                loader.call_function("resolve_BinaryExpression_type", expression, lhs, rhs);
                loader.relate(binaryExpression, lhs, 5001, "");
                loader.relate(binaryExpression, rhs, 5002, "");
                return expression;
            } else {
                return visit(ctx.equality());
            }
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitEquality(MaslParser.EqualityContext ctx) {
        try {
            if (ctx.equality() != null) {
                Object expression = loader.create("MaslExpression");
                Object binaryExpression = loader.create("BinaryExpression");
                loader.relate(binaryExpression, expression, 5517, "");
                Object compBinary = loader.create("BinaryComparisonExpression");
                loader.relate(compBinary, binaryExpression, 5000, "");
                if (ctx.EQUAL() != null) {
                    loader.set_attribute(binaryExpression, "operator", "Operator::equal");
                } else if (ctx.NOT_EQUAL() != null) {
                    loader.set_attribute(binaryExpression, "operator", "Operator::notequal");
                }
                Object lhs = visit(ctx.lhs);
                Object rhs = visit(ctx.rhs);
                loader.call_function("resolve_BinaryExpression_type", expression, lhs, rhs);
                loader.relate(binaryExpression, lhs, 5001, "");
                loader.relate(binaryExpression, rhs, 5002, "");
                return expression;
            } else {
                return visit(ctx.relationalExp());
            }
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitRelationalExp(MaslParser.RelationalExpContext ctx) {
        try {
            if (ctx.relationalExp() != null) {
                Object expression = loader.create("MaslExpression");
                Object binaryExpression = loader.create("BinaryExpression");
                loader.relate(binaryExpression, expression, 5517, "");
                Object compBinary = loader.create("BinaryComparisonExpression");
                loader.relate(compBinary, binaryExpression, 5000, "");
                if (ctx.LT() != null) {
                    loader.set_attribute(binaryExpression, "operator", "Operator::lessthan");
                } else if (ctx.GT() != null) {
                    loader.set_attribute(binaryExpression, "operator", "Operator::greaterthan");
                } else if (ctx.LTE() != null) {
                    loader.set_attribute(binaryExpression, "operator", "Operator::lessthanequal");
                } else if (ctx.GTE() != null) {
                    loader.set_attribute(binaryExpression, "operator", "Operator::greaterthanequal");
                }
                Object lhs = visit(ctx.lhs);
                Object rhs = visit(ctx.rhs);
                loader.call_function("resolve_BinaryExpression_type", expression, lhs, rhs);
                loader.relate(binaryExpression, lhs, 5001, "");
                loader.relate(binaryExpression, rhs, 5002, "");
                return expression;
            } else {
                return visit(ctx.additiveExp());
            }
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitAdditiveExp(MaslParser.AdditiveExpContext ctx) {
        try {
            if (ctx.additiveExp() != null) {
                Object expression = loader.create("MaslExpression");
                Object binaryExpression = loader.create("BinaryExpression");
                loader.relate(binaryExpression, expression, 5517, "");
                if (ctx.PLUS() != null || ctx.MINUS() != null) {
                    Object addBinary = loader.create("BinaryAdditiveExpression");
                    loader.relate(addBinary, binaryExpression, 5000, "");
                } else {
                    Object collectionBinary = loader.create("BinaryCollectionExpression");
                    loader.relate(collectionBinary, binaryExpression, 5000, "");
                }
                if (ctx.PLUS() != null) {
                    loader.set_attribute(binaryExpression, "operator", "Operator::plus");
                } else if (ctx.MINUS() != null) {
                    loader.set_attribute(binaryExpression, "operator", "Operator::minus");
                } else if (ctx.CONCATENATE() != null) {
                    loader.set_attribute(binaryExpression, "operator", "Operator::concatenate");
                } else if (ctx.UNION() != null) {
                    loader.set_attribute(binaryExpression, "operator", "Operator::union");
                } else if (ctx.NOT_IN() != null) {
                    loader.set_attribute(binaryExpression, "operator", "Operator::notin");
                }
                Object lhs = visit(ctx.lhs);
                Object rhs = visit(ctx.rhs);
                loader.call_function("resolve_BinaryExpression_type", expression, lhs, rhs);
                loader.relate(binaryExpression, lhs, 5001, "");
                loader.relate(binaryExpression, rhs, 5002, "");
                return expression;
            } else {
                return visit(ctx.multExp());
            }
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitMultExp(MaslParser.MultExpContext ctx) {
        try {
            if (ctx.multExp() != null) {
                Object expression = loader.create("MaslExpression");
                Object binaryExpression = loader.create("BinaryExpression");
                loader.relate(binaryExpression, expression, 5517, "");
                if (ctx.INTERSECTION() != null || ctx.DISUNION() != null) {
                    Object collectionBinary = loader.create("BinaryCollectionExpression");
                    loader.relate(collectionBinary, binaryExpression, 5000, "");
                } else {
                    Object multBinary = loader.create("BinaryMultiplicativeExpression");
                    loader.relate(multBinary, binaryExpression, 5000, "");
                }
                if (ctx.TIMES() != null) {
                    loader.set_attribute(binaryExpression, "operator", "Operator::times");
                } else if (ctx.DIVIDE() != null) {
                    loader.set_attribute(binaryExpression, "operator", "Operator::divide");
                } else if (ctx.MOD() != null) {
                    loader.set_attribute(binaryExpression, "operator", "Operator::modulo");
                } else if (ctx.POWER() != null) {
                    loader.set_attribute(binaryExpression, "operator", "Operator::power");
                } else if (ctx.REM() != null) {
                    loader.set_attribute(binaryExpression, "operator", "Operator::rem");
                } else if (ctx.INTERSECTION() != null) {
                    loader.set_attribute(binaryExpression, "operator", "Operator::intersection");
                } else if (ctx.DISUNION() != null) {
                    loader.set_attribute(binaryExpression, "operator", "Operator::disunion");
                }
                Object lhs = visit(ctx.lhs);
                Object rhs = visit(ctx.rhs);
                loader.call_function("resolve_BinaryExpression_type", expression, lhs, rhs);
                loader.relate(binaryExpression, lhs, 5001, "");
                loader.relate(binaryExpression, rhs, 5002, "");
                return expression;
            } else {
                return visit(ctx.unaryExp());
            }
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
                System.err.println("Unsupported unary expression: " + ctx.getText());
                Object expression = visit(ctx.exp);
                loader.call_function("resolve_NumericUnaryLiteral", expression, visit(ctx.unaryOperator()));
                return expression;
            }
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitUnaryOperator(MaslParser.UnaryOperatorContext ctx) {
        if (ctx.PLUS() != null) {
            return "Operator::plus";
        } else if (ctx.MINUS() != null) {
            return "Operator::minus";
        } else if (ctx.NOT() != null) {
            return "Operator::not";
        } else {
            return "Operator::abs";
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
            if (ctx.lhs != null) {
                // TODO where clause, correlated nav, orderby
                Object expression = loader.create("MaslExpression");
                Object navigationExpression = loader.create("NavigationExpression");
                loader.relate(navigationExpression, expression, 5517, "");
                Object lhs = visit(ctx.lhs);
                loader.relate(lhs, navigationExpression, 5532, "");
                currentObject = loader.call_function("select_ObjectDeclaration_related_by_Expression", lhs);
                Object relSpec = visit(ctx.relationshipSpec());
                loader.relate(relSpec, navigationExpression, 5531, "");
                currentObject = emptyObject;
                loader.call_function("resolve_NavigationExpression", expression);
                return expression;
            } else {
                return visit(ctx.extendedExpression());
            }
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitExtendedExpression(MaslParser.ExtendedExpressionContext ctx) {
        if (ctx.postfixExpression() != null) {
            return visit(ctx.postfixExpression());
        } else if (ctx.createExpression() != null) {
            return visit(ctx.createExpression());
        } else {
            return visit(ctx.findExpression());
        }
    }

    @Override
    public Object visitCreateExpression(MaslParser.CreateExpressionContext ctx) {
        try {
            Object expression = loader.create("MaslExpression");
            Object createExpression = loader.create("CreateExpression");
            Object obj = visit(ctx.objectReference());
            loader.relate(obj, createExpression, 5511, "");
            Object instType = loader.call_function("select_create_InstanceType", obj, false);
            loader.relate(createExpression, expression, 5517, "");
            loader.relate(instType, expression, 5570, "");
            currentObject = obj;
            visit(ctx.createArgumentList());
            currentObject = emptyObject;
            return expression;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitCreateArgument(MaslParser.CreateArgumentContext ctx) {
        try {
            Object attributeInitialization = loader.create("AttributeInitialization");
            if (ctx.attributeName() != null) {
                Object attributeDeclaration = loader.call_function("select_AttributeDeclaration_related_where_name",
                        currentObject, ctx.attributeName().getText());
                loader.relate(attributeDeclaration, attributeInitialization, 5565, "");
                loader.relate(visit(ctx.expression()), attributeInitialization, 5568, "");
            } else {
                Object ooastate = loader.call_function("select_State_related_where_name", currentObject,
                        ctx.stateName().getText());
                loader.relate(ooastate, attributeInitialization, 5567, "");
            }
            return attributeInitialization;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitFindExpression(MaslParser.FindExpressionContext ctx) {
        try {
            Object expression = loader.create("MaslExpression");
            Object findExpression = loader.create("FindExpression");
            loader.relate(findExpression, expression, 5517, "");
            loader.set_attribute(findExpression, "flavor", visit(ctx.findType()));
            loader.relate(visit(ctx.postfixNoCallExpression()), findExpression, 5519, "");
            loader.call_function("resolve_FindExpression_type", expression);
            // TODO where clause
            return expression;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitFindType(MaslParser.FindTypeContext ctx) {
        if (ctx.FIND() != null) {
            return "FindType::find";
        } else if (ctx.FIND_ONE() != null) {
            return "FindType::find_one";
        } else {
            return "FindType::find_only";
        }
    }

    @Override
    public Object visitPostfixExpression(MaslParser.PostfixExpressionContext ctx) {
        try {
            if (ctx.root != null) {
                if (ctx.DOT() != null) {
                    Object expression = loader.call_function("create_DotExpression", visit(ctx.root),
                            ctx.identifier().getText());
                    return expression;
                } else if (ctx.argumentList() != null) {
                    Object expression = visit(ctx.root);
                    Object firstArgument = visit(ctx.argumentList());
                    if (firstArgument != null) {
                        loader.call_function("resolve_Expression_ArgumentList", expression, firstArgument);
                    }
                    return expression;
                } else if (ctx.TERMINATOR_SCOPE() != null) {
                    Object expression = visit(ctx.root);
                    loader.call_function("resolve_TerminatorServiceInvocation", expression, ctx.identifier().getText());
                    return expression;
                } else if (ctx.characteristic() != null) {
                    Object expression = visit(ctx.characteristic());
                    loader.call_function("resolve_CharacteristicExpression", expression, visit(ctx.root));
                    return expression;
                } else {
                    System.err.println("Unsupported postfix expression");
                    return null;
                }
            } else {
                return visit(ctx.primaryExpression());
            }
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitPostfixNoCallExpression(MaslParser.PostfixNoCallExpressionContext ctx) {
        try {
            if (ctx.root != null) {
                if (ctx.DOT() != null) {
                    Object expression = loader.call_function("create_DotExpression", visit(ctx.root),
                            ctx.identifier().getText());
                    return expression;
                } else if (ctx.TERMINATOR_SCOPE() != null) {
                    Object expression = visit(ctx.root);
                    loader.call_function("resolve_TerminatorServiceInvocation", expression, ctx.identifier().getText());
                    return expression;
                } else {
                    System.err.println("Unsupported postfix expression");
                    return null;
                }
            } else {
                return visit(ctx.primaryExpression());
            }
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
            } else if (ctx.parenthesisedExpression() != null) {
                return visit(ctx.parenthesisedExpression());
            } else if (ctx.nameExpression() != null) {
                return visit(ctx.nameExpression());
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
    public Object visitNameExpression(MaslParser.NameExpressionContext ctx) {
        try {
            Object expression = loader.call_function("resolve_NameExpression",
                    ctx.domainName() != null ? ctx.domainName().getText() : getName(currentDomain),
                    ctx.identifier().getText(), currentCodeBlock);
            return expression;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitParenthesisedExpression(MaslParser.ParenthesisedExpressionContext ctx) {
        if (ctx.expression().size() == 1) {
            return visit(ctx.expression(0));
        } else {
            // TODO aggregate expression
            return null;
        }
    }

    @Override
    public Object visitArgumentList(MaslParser.ArgumentListContext ctx) {
        try {
            Object firstArgument = null;
            Object previousArgument = null;
            for (MaslParser.ExpressionContext ctx2 : ctx.expression()) {
                Object expression = visit(ctx2);
                Object argument = loader.create("Argument");
                loader.relate(argument, expression, 5577, "");
                if (firstArgument == null) {
                    firstArgument = argument;
                }
                if (previousArgument != null) {
                    loader.relate(argument, previousArgument, 5576, "follows");
                }
                previousArgument = argument;
            }
            return firstArgument;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitLiteral(MaslParser.LiteralContext ctx) {
        try {
            Object expression = loader.create("MaslExpression");
            Object literalExpression = loader.create("LiteralExpression");
            loader.relate(literalExpression, expression, 5517, "");
            String literalText = ctx.getText();
            if (ctx.IntegerLiteral() != null) {
                Object numericLiteral = loader.create("NumericLiteral");
                loader.set_attribute(numericLiteral, "text", literalText); // TODO naive implementation does no
                                                                           // conversion
                loader.relate(numericLiteral, literalExpression, 5700, "");
                Object integerLiteral = loader.create("IntegerLiteral");
                loader.set_attribute(integerLiteral, "value", Integer.parseInt(literalText));
                loader.relate(integerLiteral, numericLiteral, 5703, "");
                Object intType = loader.call_function("select_BasicType_where_name", "", "integer");
                loader.relate(intType, expression, 5570, "");
            } else if (ctx.RealLiteral() != null) {
                Object numericLiteral = loader.create("NumericLiteral");
                loader.set_attribute(numericLiteral, "text", literalText); // TODO naive implementation does no
                                                                           // conversion
                loader.relate(numericLiteral, literalExpression, 5700, "");
                Object realLiteral = loader.create("RealLiteral");
                loader.set_attribute(realLiteral, "value", Double.parseDouble(literalText));
                loader.relate(realLiteral, numericLiteral, 5703, "");
                Object realType = loader.call_function("select_BasicType_where_name", "", "real");
                loader.relate(realType, expression, 5570, "");
            } else if (ctx.CharacterLiteral() != null) {
                // TODO
            } else if (ctx.StringLiteral() != null) {
                Object stringLiteral = loader.create("StringLiteral");
                loader.relate(stringLiteral, literalExpression, 5700, "");
                loader.set_attribute(stringLiteral, "original", literalText);
                loader.set_attribute(stringLiteral, "noQuotes", literalText.substring(1, literalText.length() - 1));
                Object stringType = loader.call_function("select_BasicType_where_name", "", "string");
                loader.relate(stringType, expression, 5570, "");
            } else if (ctx.TimestampLiteral() != null) {
                Object timestampLiteral = loader.create("TimestampLiteral");
                loader.relate(timestampLiteral, literalExpression, 5700, "");
                String timestampText = ctx.TimestampLiteral().getText();
                loader.set_attribute(timestampLiteral, "original",
                        timestampText.substring(1, timestampText.length() - 1));
                Object timestampType = loader.call_function("select_BasicType_where_name", "", "timestamp");
                loader.relate(timestampType, expression, 5570, "");
            } else if (ctx.DurationLiteral() != null) {
                Object durationLiteral = loader.create("DurationLiteral");
                loader.relate(durationLiteral, literalExpression, 5700, "");
                String durationText = ctx.DurationLiteral().getText();
                loader.set_attribute(durationLiteral, "literal", durationText.substring(1, durationText.length() - 1));
                Object durationType = loader.call_function("select_BasicType_where_name", "", "duration");
                loader.relate(durationType, expression, 5570, "");
            } else if (ctx.TRUE() != null || ctx.FALSE() != null) {
                Object booleanLiteral = loader.create("BooleanLiteral");
                loader.relate(booleanLiteral, literalExpression, 5700, "");
                loader.set_attribute(booleanLiteral, "value", ctx.TRUE() != null);
                Object booleanType = loader.call_function("select_BasicType_where_name", "", "boolean");
                loader.relate(booleanType, expression, 5570, "");
            } else if (ctx.NULL() != null) {
                Object nullLiteral = loader.create("NullLiteral");
                loader.relate(nullLiteral, literalExpression, 5700, "");
                Object instanceType = loader.call_function("select_BasicType_where_name", "", "instance");
                loader.relate(instanceType, expression, 5570, "");
            } else if (ctx.FLUSH() != null) {
                Object flushLiteral = loader.create("FlushLiteral");
                loader.relate(flushLiteral, literalExpression, 5700, "");
                // special flush literal has no type
            } else if (ctx.ENDL() != null) {
                Object endlLiteral = loader.create("EndlLiteral");
                loader.relate(endlLiteral, literalExpression, 5700, "");
                Object stringType = loader.call_function("select_BasicType_where_name", "", "string");
                loader.relate(stringType, expression, 5570, "");
            } else if (ctx.THIS() != null) {
                Object thisLiteral = loader.create("ThisLiteral");
                loader.relate(thisLiteral, literalExpression, 5700, "");
                Object instanceType = loader.call_function("select_create_InstanceType", currentBodyObject, false);
                loader.relate(instanceType, expression, 5570, "");
            } else if (ctx.CONSOLE() != null) {
                Object consoleLiteral = loader.create("ConsoleLiteral");
                loader.relate(consoleLiteral, literalExpression, 5700, "");
                Object deviceType = loader.call_function("select_BasicType_where_name", "", "device");
                loader.relate(deviceType, expression, 5570, "");
            }
            return expression;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitScheduleStatement(MaslParser.ScheduleStatementContext ctx) {
        try {
            Object statement = loader.create("ScheduleStatement");
            loader.relate(visit(ctx.timerId), statement, 5132, "");
            // create an orphaned statement to represent the generate
            Object statement2 = loader.create("MaslStatement");
            Object genStatement = visit(ctx.generateStatement());
            loader.relate(genStatement, statement2, 5135, "");
            loader.relate(genStatement, statement, 5129, "");
            loader.set_attribute(statement, "isAbsolute", visit(ctx.scheduleType()));
            loader.relate(visit(ctx.time), statement, 5130, "");
            if (ctx.period != null) {
                loader.relate(visit(ctx.period), statement, 5131, "");
            }
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitScheduleType(MaslParser.ScheduleTypeContext ctx) {
        return ctx.AT() != null;
    }

    @Override
    public Object visitCancelTimerStatement(MaslParser.CancelTimerStatementContext ctx) {
        try {
            Object statement = loader.create("CancelTimerStatement");
            loader.relate(visit(ctx.timerId), statement, 5102, "");
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitCharacteristic(MaslParser.CharacteristicContext ctx) {
        try {
            Object expression = loader.create("MaslExpression");
            Object call_expression = loader.create("CallExpression");
            loader.relate(call_expression, expression, 5517, "");
            Object characteristic = loader.create("CharacteristicExpression");
            loader.relate(characteristic, call_expression, 5500, "");
            loader.set_attribute(characteristic, "characteristic", ctx.Identifier() != null ? ctx.Identifier().getText()
                    : ctx.RANGE() != null ? ctx.RANGE().getText() : ctx.DELTA().getText());
            return expression;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitRaiseStatement(MaslParser.RaiseStatementContext ctx) {
        try {
            Object statement = loader.create("RaiseStatement");
            loader.relate(visit(ctx.exceptionReference()), statement, 5126, "");
            if (ctx.expression() != null) {
                loader.relate(visit(ctx.expression()), statement, 5125, "");
            }
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitExceptionHandler(MaslParser.ExceptionHandlerContext ctx) {
        try {
            Object handler = loader.create("ExceptionHandler");
            loader.set_attribute(handler, "isother", false);
            String actionText = input.getText(
                    new Interval(ctx.WHEN().getSymbol().getStartIndex(), ctx.GOES_TO().getSymbol().getStopIndex()));
            loader.set_attribute(handler, "actions", actionText);
            loader.relate(visit(ctx.exceptionReference()), handler, 5108, "");
            Object firstStatement = visit(ctx.statementList());
            if (firstStatement != null) {
                loader.relate(firstStatement, handler, 5152, "");
            }
            return handler;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

    @Override
    public Object visitOtherHandler(MaslParser.OtherHandlerContext ctx) {
        try {
            Object handler = loader.create("ExceptionHandler");
            loader.set_attribute(handler, "isother", true);
            String actionText = input.getText(
                    new Interval(ctx.WHEN().getSymbol().getStartIndex(), ctx.GOES_TO().getSymbol().getStopIndex()));
            loader.set_attribute(handler, "actions", actionText);
            Object firstStatement = visit(ctx.statementList());
            if (firstStatement != null) {
                loader.relate(firstStatement, handler, 5152, "");
            }
            return handler;
        } catch (XtumlException e) {
            xtumlTrace(e, "");
            return null;
        }
    }

}
