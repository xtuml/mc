#!/bin/bash
CIERA_VERSION=1.2.0-SNAPSHOT
CLASSPATH=~/.m2/repository/io/ciera/runtime/$CIERA_VERSION/runtime-$CIERA_VERSION.jar:~/.m2/repository/io/ciera/ooamasl/1.0.0-SNAPSHOT/ooamasl-1.0.0-SNAPSHOT.jar
java -cp $CLASSPATH ooamasl.OoamaslApplication $@
