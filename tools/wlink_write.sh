#!/bin/bash

if [ ${#1} -eq 0 ]; then
    echo "usage: $0 image-file"
    exit 0
fi

OPENOCD_DIR=../openocd-hacks

OPENOCD=${OPENOCD_DIR}/src/openocd
SDIR=${OPENOCD_DIR}/tcl
INTERFACE=${OPENOCD_DIR}/tcl/interface/wlink.cfg
CFG=${OPENOCD_DIR}/tcl/target/wch-riscv.cfg

IMAGE_FILE=$1

sudo $OPENOCD -s ${SDIR} -f ${INTERFACE} -f ${CFG} -c  "init;halt;program ${IMAGE_FILE} 0x0;reset;exit"
