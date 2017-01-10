#!/bin/bash
module load extrae
export EXTRAE_CONFIG_FILE=./extrae_conf/extrae.ompss.xml
export NX_ARGS="${NX_ARGS} --instrumentation=extrae "
export LD_PRELOAD=${EXTRAE_HOME}/lib/libnanosmpitrace.so
#export LD_PRELOAD=${EXTRAE_HOME}/lib/libnanosmpitracef.so

$*
