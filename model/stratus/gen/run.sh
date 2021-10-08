#!/bin/bash
MAVEN_HOME=~/.m2/repository
CIERA_VERSION=2.6.2-SNAPSHOT
ANTLR_VERSION=4.9.1
STRATUS_VERSION=1.0.1-SNAPSHOT
CLASSPATH=$MAVEN_HOME/org/antlr/antlr4-runtime/$ANTLR_VERSION/antlr4-runtime-$ANTLR_VERSION.jar:$MAVEN_HOME/io/ciera/runtime/$CIERA_VERSION/runtime-$CIERA_VERSION.jar:$MAVEN_HOME/org/xtuml/stratus/$STRATUS_VERSION/stratus-$STRATUS_VERSION.jar
java -ea -cp $CLASSPATH stratus.StratusApplication $@
#java -ea -cp $CLASSPATH deploy.parser.MaslImportParser $@
