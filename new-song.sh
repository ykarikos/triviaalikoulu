#!/bin/bash

TEMPLATE=$1
SONG=$2

if [ "$SONG" == "" ] || [ "$TEMPLATE" != "a4" ] && [ "$TEMPLATE" != "a8" ]; then
	echo "Usage: $0 [a4|a8] \"Song Name\""
	exit 0
fi

SONGFILE=`echo -n $SONG | tr [:upper:] [:lower:] | sed 's/ /-/g; s/ä/a/g; s/ö/o/g'`

echo Copying template $TEMPLATE to songs/$SONGFILE...
cp -r templates/$TEMPLATE songs/$SONGFILE
cd songs/$SONGFILE
rename "s/template\./$SONGFILE./" * parts/*
find . -type f | xargs perl -pi -e "s/template\./$SONGFILE./"
find . -type f | xargs perl -pi -e "s/The Song Title/$SONG/"

