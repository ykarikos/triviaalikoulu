
includedirs := $(shell find songs/* -type d)
includespec := $(shell for d in $(includedirs); do echo " --include=$$d/"; done)

.PHONY: clean

triviaalikoulu.pdf : triviaalikoulu.lytex
	lilypond-book $(includespec) --output=out --pdf $<
	cd out && xelatex triviaalikoulu
	mv out/$@ .

clean :
	rm -rf out
