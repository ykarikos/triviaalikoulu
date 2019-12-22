#!/bin/bash

SONG="$1"
PART="$2"
SONGFILENAME=`echo -n $SONG | tr [:upper:] [:lower:] | sed 's/ /-/g'`
BASEDIR="/triviaalikoulu"
SONGDIR="songs/${SONGFILENAME}"

if [ "$PART" == "" ]; then
	SOURCE="${SONGFILENAME}.ly"
else
	SOURCE="parts/${SONGFILENAME}.${PART}.ly"
fi

if [ ! -f "$PWD/${SONGDIR}/$SOURCE" ]; then
	echo "$PWD/${SONGDIR}/$SOURCE source for ${SONG} does not exist."
	exit 1;
fi

docker run --rm -v "${PWD}:${BASEDIR}" -w "${BASEDIR}/${SONGDIR}" lilypond "${SOURCE}"