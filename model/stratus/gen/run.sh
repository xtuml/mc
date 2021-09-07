#!/bin/bash
CIERA_VERSION=2.4.0
ANTLR_VERSION=3.5.2
STRATUS_VERSION=1.0.0
CLASSPATH=~/.m2/repository/org/antlr/antlr-runtime/$ANTLR_VERSION/antlr-runtime-$ANTLR_VERSION.jar:~/.m2/repository/io/ciera/runtime/$CIERA_VERSION/runtime-$CIERA_VERSION.jar:~/.m2/repository/org/xtuml/stratus/$STRATUS_VERSION/stratus-$STRATUS_VERSION.jar
java -ea -cp $CLASSPATH stratus.StratusApplication $@
