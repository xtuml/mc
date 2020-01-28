#!/bin/bash
CIERA_VERSION=1.2.0-SNAPSHOT
CLASSPATH=~/.m2/repository/org/antlr/antlr-runtime/3.5.2/antlr-runtime-3.5.2.jar:~/.m2/repository/io/ciera/runtime/$CIERA_VERSION/runtime-$CIERA_VERSION.jar:~/.m2/repository/org/xtuml/stratus/1.0.0-SNAPSHOT/stratus-1.0.0-SNAPSHOT.jar
java -cp $CLASSPATH stratus.StratusApplication $@
