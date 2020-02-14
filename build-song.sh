#!/bin/bash

SOURCEFILE="$1"
BASEDIR="/triviaalikoulu"

if [ ! -f "$PWD/$SOURCEFILE" ]; then
	echo "$PWD/$SOURCEFILE source does not exist."
	exit 1;
fi

docker run --rm -v "${PWD}:${BASEDIR}" -w "${BASEDIR}" ykarikos/lilypond "${SOURCEFILE}"