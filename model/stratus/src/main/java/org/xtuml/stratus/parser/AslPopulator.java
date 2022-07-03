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
    public Object visitDomainReference(AslParser.DomainReferenceContext ctx) {
        try {
            final String domainName = ctx.domainName().getText();
            Object domain = loader.call_function("select_Domain_where_name", domainName);
            if (((IModelInstance<?, ?>) domain).isEmpty()) {
                // Find and parse the domain interface
                try {
                    System.err.println("NOT LOOKING FOR interface file '" + domainName + ".int' for domain: " + domainName);
                } catch (NoSuchElementException e) {
                    System.err.println("Could not find interface file '" + domainName + ".int' for domain: " + domainName);
                    xtumlTrace(e, "", ctx);
                    return null;
                }
            }
            return domainName;
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

            // statements
            if (ctx.statementList() != null) {
                Object firstStatement = visit(ctx.statementList());
                if (firstStatement != null) {
                    loader.relate(firstStatement, codeBlock, 5150, "");
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
            } else if (ctx.callStatement() != null) {
                loader.relate(visit(ctx.callStatement()), statement, 5135, "");
            } else if (ctx.exitStatement() != null) {
                loader.relate(visit(ctx.exitStatement()), statement, 5135, "");
            } else if (ctx.deleteStatement() != null) {
                loader.relate(visit(ctx.deleteStatement()), statement, 5135, "");
            } else if (ctx.linkStatement() != null) {
                loader.relate(visit(ctx.linkStatement()), statement, 5135, "");
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
    public Object visitLinkType(AslParser.LinkTypeContext ctx) {
        return ctx.LINK() != null;
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
                    Object multBinary = loader.create("BinaryMultiplicativeExpression");
                    loader.relate(multBinary, binaryExpression, 5000, "");
                if (ctx.TIMES() != null) {
                    loader.set_attribute(binaryExpression, "operator", "Operator::times");
                } else if (ctx.DIVIDE() != null) {
                    loader.set_attribute(binaryExpression, "operator", "Operator::divide");
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
        } else {
            return "Operator::not";
        }
    }

    @Override
    public Object visitSortOrder(AslParser.SortOrderContext ctx) {
        return ctx.sortOrderComponent().stream().map(this::visit);
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
            } else if (ctx.StringLiteral() != null) {
                Object stringLiteral = loader.create("StringLiteral");
                loader.relate(stringLiteral, literalExpression, 5700, "");
                loader.set_attribute(stringLiteral, "original", literalText);
                loader.set_attribute(stringLiteral, "noQuotes", literalText.substring(1, literalText.length() - 1));
                Object stringType = loader.call_function("select_BasicType_where_name", "", "string");
                loader.relate(stringType, expression, 5570, "");
            } else if (ctx.TRUE() != null || ctx.FALSE() != null) {
                Object booleanLiteral = loader.create("BooleanLiteral");
                loader.relate(booleanLiteral, literalExpression, 5700, "");
                loader.set_attribute(booleanLiteral, "value", ctx.TRUE() != null);
                Object booleanType = loader.call_function("select_BasicType_where_name", "", "boolean");
                loader.relate(booleanType, expression, 5570, "");
            } else if (ctx.THIS() != null) {
                Object thisLiteral = loader.create("ThisLiteral");
                loader.relate(thisLiteral, literalExpression, 5700, "");
                Object instanceType = loader.call_function("select_create_InstanceType", currentBodyObject, false);
                loader.relate(instanceType, expression, 5570, "");
            }
            return expression;
        } catch (XtumlException e) {
            xtumlTrace(e, "", ctx);
            return null;
        }
    }

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

}
