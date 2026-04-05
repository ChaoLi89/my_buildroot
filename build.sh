#!/bin/bash

BOARD=$1

OUTPUT_DIR=output/$BOARD
DEFCONFIG=${BOARD}_defconfig

BR2_EXTERNAL=$(pwd)/external/ make $DEFCONFIG -C buildroot/ O=$(pwd)/output/${BOARD}

# EXTERNAL_NETRADAR_SOURCE_PATH=../netradar make $@