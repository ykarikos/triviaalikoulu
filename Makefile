

BOOK = triviaalikoulu
OUTDIR = out
INCLUDEDIRS := $(shell find songs/* -type d)
INCLUDESPEC := $(shell for d in $(INCLUDEDIRS); do echo "--include=$$d/"; done)
NOTATION := $(shell find songs/*/ -name "*.ly")
PDF_CMD = cd $(OUTDIR) && xelatex $(BOOK)

.PHONY: clean

$(BOOK).pdf: $(BOOK).lytex introduction.tex copyright.tex $(NOTATION)
	lilypond-book $(INCLUDESPEC) --output=$(OUTDIR) --pdf $<
	$(PDF_CMD)
	cd $(OUTDIR) && makeindex $(BOOK)
	$(PDF_CMD)
	mv $(OUTDIR)/$@ .

clean:
	rm -rf $(OUTDIR)
	rm $(BOOK).pdf
