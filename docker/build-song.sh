#!/bin/bash

SONG="$1"
SONGFILENAME=`echo -n $SONG | tr [:upper:] [:lower:] | sed 's/ /-/g'`
SONGDIR="songs/${SONGFILENAME}"
SOURCE="${SONGFILENAME}.ly"
BASEDIR="/triviaalikoulu"

if [ ! -f "$PWD/${SONGDIR}/$SOURCE" ]; then
	echo "$PWD/${SONGDIR}/$SOURCE source for ${SONG} does not exist."
	exit 1;
fi

docker run -v "${PWD}:${BASEDIR}" -w "${BASEDIR}/${SONGDIR}" lilypond "${SOURCE}"