#!/bin/bash

SOURCE=triviaalikoulu

CURRENT_DIR=$(pwd)
includespec=""
for i in  $CURRENT_DIR/songs/* ; do
  if [[ -d $i ]] ; then
    includespec="$includespec --include=$i/"
  fi
done

lilypond-book $includespec --output=out --pdf $SOURCE.lytex
cd out
#pdflatex $SOURCE
xelatex $SOURCE
mv $SOURCE.pdf ..
cd ..
