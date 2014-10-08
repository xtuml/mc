#!/bin/bash
BPHOMEDIR="/usr/local/MentorGraphics/BridgePoint"
BP_VERSION="4.1.0"

#
# DO NOT MODIFY ANY OF THE FOLLOWING LINES.
#
export ORIGINAL_PATH=$PATH
export PATH=$PATH:$BPHOMEDIR/tools/docgen/docbook
export GDK_NATIVE_WINDOWS=true
export MGC_EMBEDDED_HOME=$BPHOMEDIR
export BP_JVM=$BPHOMEDIR/jre/lib/i386/client/libjvm.so

#$BPHOMEDIR/eclipse/eclipse -vm $BP_JVM $1 $2 $3 $4 $5 $6 $7 $8 $9

export BPMCHOME=$BPHOMEDIR/eclipse_extensions/BridgePoint/eclipse/plugins/com.mentor.nucleus.bp.mc.c.binary_4.1.0/
rm -f src/*
rm -f src/.mcpaas_done
cd gen
rm -f code_generation/_system.sql
rm -rf code_generation/_ch
$BPMCHOME/mc3020/bin/xtumlmc_build -home $BPMCHOME -l3b -e -d code_generation -O ../../src/  > ../xb_log.txt
cd ..
mv xb_log.txt src/.mcpaas_done

# Restore the path
export PATH=$ORIGINAL_PATH
