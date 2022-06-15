package org.xtuml.stratus.parser;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.URI;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.misc.Interval;

import io.ciera.runtime.instanceloading.generic.util.LOAD;
import io.ciera.runtime.summit.classes.IModelInstance;
import io.ciera.runtime.summit.exceptions.XtumlException;

public class AslPopulator extends AslParserBaseVisitor<Object> {

    private final CharStream input;
    private final LOAD loader;
    private final String filename;
    private final AslImportParser aslParser;

    private Object emptyObject;
    private Object emptyCodeBlock;
    private Object currentProject;
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

    // trace routine
    private void xtumlTrace(Exception e, String message, ParserRuleContext ctx) {
        System.err.println("xtumlTrace(" + message + ") - " + filename + ":" + ctx.getStart().getLine());
        e.printStackTrace();
        System.exit(1);
    }

    public AslPopulator(AslImportParser aslParser, LOAD loader, CharStream input, String filename) {
        this.input = input;
        this.loader = loader;
        this.filename = filename;
        this.aslParser = aslParser;
    }

    @Override
    public Object visitObjectReference(AslParser.ObjectReferenceContext ctx) {
        try {
            return loader.call_function("select_ObjectDeclaration_where_name", getName(currentDomain),
                    ctx.objectName().getText());
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitRelationshipSpec(AslParser.RelationshipSpecContext ctx) {
        try {
            String objectOrRole = ctx.objOrRole != null ? ctx.objOrRole.getText() : "";
            Object toObject = ctx.objectReference() != null ? visit(ctx.objectReference()) : currentRelToObject;
            Object relationshipSpecification = loader.call_function("create_RelationshipSpecification",
                    visit(ctx.relationshipReference()), currentObject, objectOrRole, toObject);
            return relationshipSpecification;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitParameterDefinition(AslParser.ParameterDefinitionContext ctx) {
        try {
            Object parameter = loader.create("ParameterDefinition");
            loader.set_attribute(parameter, "name", ctx.parameterName().getText());
            loader.set_attribute(parameter, "mode", visit(ctx.parameterMode()));
            loader.relate(visit(ctx.parameterType()), parameter, 5200, "");
            return parameter;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitParameterList(AslParser.ParameterListContext ctx) {
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitServiceVisibility(AslParser.ServiceVisibilityContext ctx) {
        return ctx.PRIVATE() != null ? "MaslVisibility::private" : "MaslVisibility::public";
    }

    @Override
    public Object visitParameterMode(AslParser.ParameterModeContext ctx) {
        return ctx.IN() != null ? "ParameterMode::in" : "ParameterMode::out";
    }

    @Override
    public Object visitRelationshipReference(AslParser.RelationshipReferenceContext ctx) {
        try {
            return loader.call_function("select_RelationshipDeclaration_where_name",
                    ctx.domainReference() != null ? visit(ctx.domainReference()) : getName(currentDomain),
                    ctx.relationshipName().getText());
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitDomainServiceDefinition(AslParser.DomainServiceDefinitionContext ctx) {
        try {
            currentDomain = loader.call_function("select_Domain_where_name", visit(ctx.domainReference()));
            currentService = loader.call_function("select_Service_where_name", visit(ctx.domainReference()),
                    ctx.serviceName().getText());
            loader.set_attribute(currentService, "filename", filename);
            visit(ctx.codeBlock());
            return currentService;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitTerminatorServiceDefinition(AslParser.TerminatorServiceDefinitionContext ctx) {
        try {
            currentDomain = loader.call_function("select_Domain_where_name", visit(ctx.domainReference()));
            currentService = loader.call_function("select_TerminatorService_where_name", visit(ctx.domainReference()),
                    ctx.terminatorName().getText(), ctx.serviceName().getText());
            loader.set_attribute(currentService, "filename", filename);
            visit(ctx.codeBlock());
            return currentService;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitStateDefinition(AslParser.StateDefinitionContext ctx) {
        try {
            currentDomain = loader.call_function("select_Domain_where_name", visit(ctx.domainReference()));
            currentBodyObject = visit(ctx.objectReference());
            currentOOAState = loader.call_function("select_State_related_where_name", currentBodyObject,
                    ctx.stateName().getText());
            loader.set_attribute(currentOOAState, "filename", filename);
            visit(ctx.codeBlock());
            return currentOOAState;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitObjectServiceDefinition(AslParser.ObjectServiceDefinitionContext ctx) {
        try {
            currentDomain = loader.call_function("select_Domain_where_name", visit(ctx.domainReference()));
            currentBodyObject = visit(ctx.objectReference());
            currentService = loader.call_function("select_ObjectService_where_name", currentBodyObject,
                    ctx.serviceName().getText());
            loader.set_attribute(currentService, "filename", filename);
            visit(ctx.codeBlock());
            return currentService;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitCodeBlock(AslParser.CodeBlockContext ctx) {
        try {
            // create code block
            Object codeBlock = loader.create("MaslCodeBlock");
            Object oldCodeBlock = currentCodeBlock;
            currentCodeBlock = codeBlock;
            loader.set_attribute(codeBlock, "topLevel", true);

            // link to the service or state as the top level block
            if (currentService != null) {
                loader.relate(codeBlock, currentService, 5403, "");
            } else {
                loader.relate(codeBlock, currentOOAState, 6115, "");
            }

            // variable declarations
            for (AslParser.VariableDeclarationContext ctx2 : ctx.variableDeclaration()) {
                loader.relate(visit(ctx2), codeBlock, 5151, "");
            }

            // statements
            if (ctx.statementList() != null) {
                Object firstStatement = visit(ctx.statementList());
                if (firstStatement != null) {
                    loader.relate(firstStatement, codeBlock, 5150, "");
                }
            }

            // exception handlers
            Object previousExceptionHandler = null;
            for (AslParser.ExceptionHandlerContext ctx2 : ctx.exceptionHandler()) {
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

            // replace old current code block
            currentCodeBlock = oldCodeBlock;
            return codeBlock;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }


    @Override
    public Object visitVariableDeclaration(AslParser.VariableDeclarationContext ctx) {
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitStatementList(AslParser.StatementListContext ctx) {
        try {
            Object firstStatement = null;
            Object previousStatement = null;
            for (AslParser.StatementContext ctx2 : ctx.statement()) {
                Object statement = visit(ctx2);
                if (statement != null) {
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
            }
            return firstStatement;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitStatement(AslParser.StatementContext ctx) {
        try {
            Object statement = null;
            if (ctx.nullStatement() == null) {
                // Don't create a statement for the "null" statement
                statement = loader.create("MaslStatement");
            }
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
            } else if (ctx.codeBlockStatement() != null) {
                loader.relate(visit(ctx.codeBlockStatement()), statement, 5135, "");
            }
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitAssignStatement(AslParser.AssignStatementContext ctx) {
        try {
            Object statement = loader.create("AssignmentStatement");
            loader.relate(visit(ctx.lhs), statement, 5101, "");
            loader.relate(visit(ctx.rhs), statement, 5100, "");
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitStreamStatement(AslParser.StreamStatementContext ctx) {
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitCallStatement(AslParser.CallStatementContext ctx) {
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitStreamValue(AslParser.StreamValueContext ctx) {
        try {
            Object streamOperator = loader.create("StreamOperator");
            loader.set_attribute(streamOperator, "operator", visit(ctx.streamOperator()));
            return streamOperator;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitStreamOperator(AslParser.StreamOperatorContext ctx) {
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
    public Object visitReturnStatement(AslParser.ReturnStatementContext ctx) {
        try {
            Object statement = loader.create("ReturnStatement");
            loader.relate(currentService, statement, 5127, "");
            loader.relate(visit(ctx.expression()), statement, 5128, "");
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }

    }

    @Override
    public Object visitLinkStatement(AslParser.LinkStatementContext ctx) {
        try {
            Object statement = loader.create("LinkUnlinkStatement");
            loader.set_attribute(statement, "isLink", visit(ctx.linkType()));
            Object lhs = visit(ctx.lhs);
            loader.relate(lhs, statement, 5122, "");
            if (ctx.rhs != null) {
                Object rhs = visit(ctx.rhs);
                loader.relate(rhs, statement, 5119, "");
                currentRelToObject = loader.call_function("select_ObjectDeclaration_related_by_Expression", rhs);
                if (ctx.assoc != null) {
                    loader.relate(visit(ctx.assoc), statement, 5121, "");
                }
            }
            currentObject = loader.call_function("select_ObjectDeclaration_related_by_Expression", lhs);
            loader.relate(visit(ctx.relationshipSpec()), statement, 5120, "");
            currentRelToObject = emptyObject;
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }

    }

    @Override
    public Object visitLinkType(AslParser.LinkTypeContext ctx) {
        return ctx.LINK() != null;
    }

    @Override
    public Object visitGenerateStatement(AslParser.GenerateStatementContext ctx) {
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitIfStatement(AslParser.IfStatementContext ctx) {
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
            for (AslParser.ElsifBlockContext ctx2 : ctx.elsifBlock()) {
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitElsifBlock(AslParser.ElsifBlockContext ctx) {
        try {
            Object alternative = loader.create("Alternative");
            loader.set_attribute(alternative, "else_otherwise", false);
            String actionText = input
                    .getText(new Interval(ctx.getStart().getStartIndex(), ctx.THEN().getSymbol().getStopIndex()));
            loader.set_attribute(alternative, "actions", actionText);
            loader.relate_using(visit(ctx.condition()), alternative, loader.create("AlternativeExpression"), 5147,
                    null);
            if (ctx.statementList() != null) {
                Object firstStatement = visit(ctx.statementList());
                if (firstStatement != null) {
                    loader.relate(firstStatement, alternative, 5148, "");
                }
            }
            return alternative;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitElseBlock(AslParser.ElseBlockContext ctx) {
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitRangeExpression(AslParser.RangeExpressionContext ctx) {
        // TODO
        return visit(ctx.logicalOr(0));
    }

    @Override
    public Object visitLogicalOr(AslParser.LogicalOrContext ctx) {
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitWhereClause(AslParser.WhereClauseContext ctx) {
        return ctx.findCondition() != null ? visit(ctx.findCondition()) : null;
    }

    @Override
    public Object visitFindLogicalOr(AslParser.FindLogicalOrContext ctx) {
        try {
            if (ctx.findLogicalOr() != null) {
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
                return visit(ctx.findLogicalXor());
            }
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitLogicalXor(AslParser.LogicalXorContext ctx) {
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitFindLogicalXor(AslParser.FindLogicalXorContext ctx) {
        try {
            if (ctx.findLogicalXor() != null) {
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
                return visit(ctx.findLogicalAnd());
            }
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitLogicalAnd(AslParser.LogicalAndContext ctx) {
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitFindLogicalAnd(AslParser.FindLogicalAndContext ctx) {
        try {
            if (ctx.findLogicalAnd() != null) {
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
                return visit(ctx.findPrimary());
            }
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitFindComparison(AslParser.FindComparisonContext ctx) {
        try {
            Object expression = loader.create("MaslExpression");
            Object binaryExpression = loader.create("BinaryExpression");
            loader.relate(binaryExpression, expression, 5517, "");
            Object compBinary = loader.create("BinaryComparisonExpression");
            loader.relate(compBinary, binaryExpression, 5000, "");
            if (ctx.EQUAL() != null) {
                loader.set_attribute(binaryExpression, "operator", "Operator::equal");
            } else if (ctx.NOT_EQUAL() != null) {
                loader.set_attribute(binaryExpression, "operator", "Operator::notequal");
            } else if (ctx.LT() != null) {
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
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }

    }

    @Override
    public Object visitFindName(AslParser.FindNameContext ctx) {
        try {
            Object expression = loader.call_function("resolve_FindNameExpression", ctx.att.getText(),
                    ctx.comp != null ? ctx.comp.getText() : "", currentObject);
            if (ctx.expression() != null) {
                // TODO handle array element expression
            }
            return expression;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitEquality(AslParser.EqualityContext ctx) {
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitRelationalExp(AslParser.RelationalExpContext ctx) {
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitAdditiveExp(AslParser.AdditiveExpContext ctx) {
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitMultExp(AslParser.MultExpContext ctx) {
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitUnaryExp(AslParser.UnaryExpContext ctx) {
        try {
            if (ctx.linkExpression() != null) {
                return visit(ctx.linkExpression());
            } else {
                return loader.call_function("resolve_UnaryExpression", visit(ctx.exp), visit(ctx.unaryOperator()));
            }
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitUnaryOperator(AslParser.UnaryOperatorContext ctx) {
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
    public Object visitLinkExpression(AslParser.LinkExpressionContext ctx) {
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @SuppressWarnings("unchecked")
    @Override
    public Object visitNavigateExpression(AslParser.NavigateExpressionContext ctx) {
        try {
            if (ctx.lhs != null) {
                if (ctx.WITH() != null) {
                    Object expression = loader.create("MaslExpression");
                    Object correlatedNavExpression = loader.create("CorrelatedNavExpression");
                    loader.relate(correlatedNavExpression, expression, 5517, "");
                    Object lhs = visit(ctx.lhs);
                    loader.relate(lhs, correlatedNavExpression, 5506, "");
                    Object rhs = visit(ctx.rhs);
                    loader.relate(rhs, correlatedNavExpression, 5508, "");
                    Object prevCurrentObject = currentObject;
                    currentObject = loader.call_function("select_ObjectDeclaration_related_by_Expression", lhs);
                    Object relSpec = visit(ctx.relationshipSpec());
                    loader.relate(relSpec, correlatedNavExpression, 5507, "");
                    loader.call_function("resolve_CorrelatedNavExpression", expression);
                    currentObject = prevCurrentObject;
                    return expression;
                } else if (ctx.ORDERED_BY() != null || ctx.REVERSE_ORDERED_BY() != null) {
                    Object expression = loader.call_function("OrderingExpression_initialize", visit(ctx.lhs), ctx.REVERSE_ORDERED_BY() != null);
                    int index = 1;
                    for (Object[] sortComponent : ((Stream<Object[]>) visit(ctx.sortOrder())).collect(Collectors.toList())) {
                        loader.call_function("OrderingExpression_sort", expression, sortComponent[1], sortComponent[0], index);
                        index++;
                    }
                    return expression;
                } else {
                    Object expression = loader.create("MaslExpression");
                    Object navigationExpression = loader.create("NavigationExpression");
                    loader.relate(navigationExpression, expression, 5517, "");
                    Object lhs = visit(ctx.lhs);
                    loader.relate(lhs, navigationExpression, 5532, "");
                    Object prevCurrentObject = currentObject;
                    currentObject = loader.call_function("select_ObjectDeclaration_related_by_Expression", lhs);
                    Object relSpec = visit(ctx.relationshipSpec());
                    loader.relate(relSpec, navigationExpression, 5531, "");
                    loader.call_function("resolve_NavigationExpression", expression);
                    currentObject = loader.call_function("select_ObjectDeclaration_related_by_Expression", expression);
                    Object whereClause = ctx.whereClause() != null ? visit(ctx.whereClause()) : null;
                    if (whereClause != null) {
                        loader.relate(whereClause, navigationExpression, 5530, "");
                    }
                    currentObject = prevCurrentObject;
                    return expression;
                }
            } else {
                return visit(ctx.extendedExpression());
            }
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitSortOrder(AslParser.SortOrderContext ctx) {
        return ctx.sortOrderComponent().stream().map(this::visit);
    }

    @Override
    public Object visitSortOrderComponent(AslParser.SortOrderComponentContext ctx) {
        return new Object[] { ctx.REVERSE() != null, ctx.identifier().getText() };
    }


    @Override
    public Object visitExtendedExpression(AslParser.ExtendedExpressionContext ctx) {
        if (ctx.postfixExpression() != null) {
            return visit(ctx.postfixExpression());
        } else if (ctx.createExpression() != null) {
            return visit(ctx.createExpression());
        } else {
            return visit(ctx.findExpression());
        }
    }

    @SuppressWarnings("unchecked")
    @Override
    public Object visitCreateExpression(AslParser.CreateExpressionContext ctx) {
        try {
            Object expression = loader.create("MaslExpression");
            Object createExpression = loader.create("CreateExpression");
            Object obj = visit(ctx.objectReference());
            loader.relate(obj, createExpression, 5511, "");
            Object instType = loader.call_function("select_create_InstanceType", obj, false);
            loader.relate(createExpression, expression, 5517, "");
            loader.relate(instType, expression, 5570, "");
            currentObject = obj;
            for (Object attributeInitialization : (List<Object>) visit(ctx.createArgumentList())) {
                loader.relate(attributeInitialization, createExpression, 5566, "");
            }
            currentObject = emptyObject;
            return expression;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitCreateArgumentList(AslParser.CreateArgumentListContext ctx) {
        return ctx.createArgument().stream().map(this::visit).collect(Collectors.toList());
    }

    @Override
    public Object visitCreateArgument(AslParser.CreateArgumentContext ctx) {
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitFindExpression(AslParser.FindExpressionContext ctx) {
        try {
            Object expression = loader.create("MaslExpression");
            Object findExpression = loader.create("FindExpression");
            loader.relate(findExpression, expression, 5517, "");
            loader.set_attribute(findExpression, "flavor", visit(ctx.findType()));
            Object lhs = visit(ctx.postfixNoCallExpression());
            loader.relate(lhs, findExpression, 5519, "");
            loader.call_function("resolve_FindExpression_type", expression);
            Object prevCurrentObject = currentObject;
            currentObject = loader.call_function("select_ObjectDeclaration_related_by_Expression", lhs);
            Object whereClause = visit(ctx.whereClause());
            if (whereClause != null) {
                loader.relate(whereClause, findExpression, 5520, "");
            }
            currentObject = prevCurrentObject;
            return expression;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitFindType(AslParser.FindTypeContext ctx) {
        if (ctx.FIND() != null) {
            return "FindType::find";
        } else if (ctx.FIND_ONE() != null) {
            return "FindType::find_one";
        } else {
            return "FindType::find_only";
        }
    }

    @Override
    public Object visitPostfixExpression(AslParser.PostfixExpressionContext ctx) {
        try {
            if (ctx.root != null) {
                if (ctx.argumentList() != null) {
                    Object expression = visit(ctx.root);
                    Object firstArgument = visit(ctx.argumentList());
                    if (firstArgument != null) {
                        loader.call_function("resolve_Expression_ArgumentList", expression, firstArgument);
                    }
                    return expression;
                } else if (ctx.DOT() != null) {
                    Object expression = loader.call_function("create_DotExpression", visit(ctx.root),
                            ctx.identifier().getText());
                    return expression;
                } else if (ctx.TERMINATOR_SCOPE() != null) {
                    Object expression = visit(ctx.root);
                    loader.call_function("resolve_TerminatorServiceInvocation", expression, ctx.identifier().getText());
                    return expression;
                } else if (ctx.characteristic() != null) {
                    Object expression = visit(ctx.characteristic());
                    loader.call_function("resolve_CharacteristicExpression", expression, visit(ctx.root));
                    return expression;
                } else if (ctx.LBRACKET() != null) {
                    return loader.call_function("resolve_SliceExpression", visit(ctx.root), visit(ctx.expression()));
                } else {
                    System.err.println("Unsupported postfix expression");
                    return null;
                }
            } else {
                return visit(ctx.primaryExpression());
            }
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitPostfixNoCallExpression(AslParser.PostfixNoCallExpressionContext ctx) {
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitPrimaryExpression(AslParser.PrimaryExpressionContext ctx) {
        if (ctx.literal() != null) {
            return visit(ctx.literal());
        } else if (ctx.parenthesisedExpression() != null) {
            return visit(ctx.parenthesisedExpression());
        } else if (ctx.nameExpression() != null) {
            return visit(ctx.nameExpression());
        } else {
            System.err.println("Unsupported primary expression");
            return null;
        }
    }

    @Override
    public Object visitNameExpression(AslParser.NameExpressionContext ctx) {
        try {
            Object expression = loader.call_function("resolve_NameExpression",
                    ctx.domainReference() != null ? visit(ctx.domainReference()) : getName(currentDomain),
                    ctx.identifier().getText(), currentCodeBlock);
            return expression;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitParenthesisedExpression(AslParser.ParenthesisedExpressionContext ctx) {
        if (ctx.expression().size() == 1) {
            return visit(ctx.expression(0));
        } else {
            // TODO aggregate expression
            return null;
        }
    }

    @Override
    public Object visitArgumentList(AslParser.ArgumentListContext ctx) {
        try {
            Object firstArgument = null;
            Object previousArgument = null;
            for (AslParser.ExpressionContext ctx2 : ctx.expression()) {
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitLiteral(AslParser.LiteralContext ctx) {
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
                Object charLiteral = loader.create("CharacterLiteral");
                loader.relate(charLiteral, literalExpression, 5700, "");
                loader.set_attribute(charLiteral, "original", literalText);
                loader.set_attribute(charLiteral, "noQuotes", literalText.substring(1, literalText.length() - 1));
                Object charType = loader.call_function("select_BasicType_where_name", "", "character");
                loader.relate(charType, expression, 5570, "");
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitScheduleStatement(AslParser.ScheduleStatementContext ctx) {
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitScheduleType(AslParser.ScheduleTypeContext ctx) {
        return ctx.AT() != null;
    }

    @Override
    public Object visitCancelTimerStatement(AslParser.CancelTimerStatementContext ctx) {
        try {
            Object statement = loader.create("CancelTimerStatement");
            loader.relate(visit(ctx.timerId), statement, 5102, "");
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitCharacteristic(AslParser.CharacteristicContext ctx) {
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitRaiseStatement(AslParser.RaiseStatementContext ctx) {
        try {
            Object statement = loader.create("RaiseStatement");
            loader.relate(visit(ctx.exceptionReference()), statement, 5126, "");
            if (ctx.expression() != null) {
                loader.relate(visit(ctx.expression()), statement, 5125, "");
            }
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitExceptionHandler(AslParser.ExceptionHandlerContext ctx) {
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitOtherHandler(AslParser.OtherHandlerContext ctx) {
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
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitExitStatement(AslParser.ExitStatementContext ctx) {
        try {
            Object statement = loader.create("ExitStatement");
            if (ctx.condition() != null) {
                loader.relate(visit(ctx.condition()), statement, 5109, "");
            }
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitWhileStatement(AslParser.WhileStatementContext ctx) {
        try {
            Object statement = loader.create("WhileStatement");
            String actionText = input
                    .getText(new Interval(ctx.getStart().getStartIndex(), ctx.LOOP(0).getSymbol().getStopIndex()));
            loader.set_attribute(statement, "actions", actionText);
            loader.relate(visit(ctx.condition()), statement, 5142, "");
            Object firstStatement = visit(ctx.statementList());
            if (firstStatement != null) {
                loader.relate(firstStatement, statement, 5141, "");
            }
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitDelayStatement(AslParser.DelayStatementContext ctx) {
        try {
            Object statement = loader.create("DelayStatement");
            loader.relate(visit(ctx.expression()), statement, 5104, "");
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitDeleteStatement(AslParser.DeleteStatementContext ctx) {
        try {
            Object statement = loader.create("DeleteStatement");
            loader.relate(visit(ctx.expression()), statement, 5105, "");
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitForStatement(AslParser.ForStatementContext ctx) {
        try {
            Object statement = loader.create("ForStatement");
            String actionText = input
                    .getText(new Interval(ctx.getStart().getStartIndex(), ctx.LOOP(0).getSymbol().getStopIndex()));
            loader.set_attribute(statement, "actions", actionText);
            loader.relate(visit(ctx.loopVariableSpec()), statement, 5110, "");
            Object firstStatement = visit(ctx.statementList());
            if (firstStatement != null) {
                loader.relate(firstStatement, statement, 5153, "");
            }
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitLoopVariableSpec(AslParser.LoopVariableSpecContext ctx) {
        try {
            Object loopSpec = loader.create("LoopSpec");
            loader.set_attribute(loopSpec, "isreverse", ctx.REVERSE() != null);
            loader.set_attribute(loopSpec, "loopVariable", ctx.identifier().getText());
            // Loop variables are implicitly declared. Create it.
            Object variableDefinition = loader.create("VariableDefinition");
            loader.set_attribute(variableDefinition, "name", ctx.identifier().getText());
            loader.set_attribute(variableDefinition, "isreadonly", true);
            loader.relate(variableDefinition, loopSpec, 5154, "");
            loader.relate(variableDefinition, currentCodeBlock, 5151, "");
            Object basicType = loader.call_function("resolve_LoopSpec", loopSpec, visit(ctx.expression()));
            loader.relate(basicType, variableDefinition, 5137, "");
            return loopSpec;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitCaseStatement(AslParser.CaseStatementContext ctx) {
        try {
            Object statement = loader.create("CaseStatement");
            loader.relate(visit(ctx.expression()), statement, 5103, "");
            String actionText = input
                    .getText(new Interval(ctx.getStart().getStartIndex(), ctx.IS().getSymbol().getStopIndex()));
            loader.set_attribute(statement, "actions", actionText);
            // handle discrete alternatives
            Object previousAlternative = null;
            for (AslParser.CaseAlternativeContext ctx2 : ctx.caseAlternative()) {
                Object alternative = visit(ctx2);
                loader.relate(alternative, statement, 5146, "");
                if (previousAlternative != null) {
                    loader.relate(alternative, previousAlternative, 5158, "succeeds");
                }
                previousAlternative = alternative;
            }
            // handle default alternative
            if (ctx.caseOthers() != null) {
                Object alternative = visit(ctx.caseOthers());
                loader.relate(alternative, statement, 5146, "");
                if (previousAlternative != null) {
                    loader.relate(alternative, previousAlternative, 5158, "succeeds");
                }
                previousAlternative = alternative;
            }
            return statement;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @SuppressWarnings("unchecked")
    @Override
    public Object visitCaseAlternative(AslParser.CaseAlternativeContext ctx) {
        try {
            Object alternative = loader.create("Alternative");
            loader.set_attribute(alternative, "else_otherwise", false);
            String actionText = input
                    .getText(new Interval(ctx.getStart().getStartIndex(), ctx.GOES_TO().getSymbol().getStopIndex()));
            loader.set_attribute(alternative, "actions", actionText);
            // link all choices
            for (ListIterator<Object> choices = ((List<Object>) visit(ctx.choiceList())).listIterator(); choices
                    .hasNext();) {
                Object altExpr = loader.create("AlternativeExpression");
                loader.set_attribute(altExpr, "order", choices.nextIndex());
                loader.relate_using(choices.next(), alternative, altExpr, 5147, null);
            }
            Object firstStatement = visit(ctx.statementList());
            if (firstStatement != null) {
                loader.relate(firstStatement, alternative, 5148, "");
            }
            return alternative;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitCaseOthers(AslParser.CaseOthersContext ctx) {
        try {
            Object alternative = loader.create("Alternative");
            loader.set_attribute(alternative, "else_otherwise", true);
            String actionText = input
                    .getText(new Interval(ctx.getStart().getStartIndex(), ctx.GOES_TO().getSymbol().getStopIndex()));
            loader.set_attribute(alternative, "actions", actionText);
            Object firstStatement = visit(ctx.statementList());
            if (firstStatement != null) {
                loader.relate(firstStatement, alternative, 5148, "");
            }
            return alternative;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

    @Override
    public Object visitChoiceList(AslParser.ChoiceListContext ctx) {
        return ctx.expression().stream().map(o -> visit(o)).collect(Collectors.toList());
    }

}
