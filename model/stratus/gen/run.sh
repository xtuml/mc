#!/bin/bash
CIERA_VERSION=2.4.0
ANTLR_VERSION=4.9.1
STRATUS_VERSION=1.0.0-SNAPSHOT
CLASSPATH=~/.m2/repository/org/antlr/antlr4-runtime/$ANTLR_VERSION/antlr4-runtime-$ANTLR_VERSION.jar:~/.m2/repository/io/ciera/runtime/$CIERA_VERSION/runtime-$CIERA_VERSION.jar:~/.m2/repository/org/xtuml/stratus/$STRATUS_VERSION/stratus-$STRATUS_VERSION.jar
java -ea -cp $CLASSPATH stratus.StratusApplication $@
#java -ea -cp $CLASSPATH deploy.parser.MaslImportParser $@
