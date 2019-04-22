#!/bin/bash

SOURCE=triviaalikoulu

lilypond-book --output=out --pdf $SOURCE.lytex
cd out
pdflatex $SOURCE
mv $SOURCE.pdf ..
cd ..
rm -r out