
BOOK = triviaalikoulu
OUTDIR = out
INCLUDEDIRS := $(shell find songs/* -type d -not -name "parts")
INCLUDESPEC := $(shell for d in $(INCLUDEDIRS); do echo "--include=$$d/"; done)
NOTATION := $(shell find songs/*/ -name "*.ly" -or -name "*.ily")
PARTS := $(shell find songs/*/parts -name "*.ly")
PARTS_PDF := $(subst .ly,.pdf,$(PARTS))
PARTS_MIDI := $(subst .ly,.midi,$(PARTS))
PDF_CMD = cd $(OUTDIR) && xelatex $(BOOK)

$(BOOK).pdf: $(BOOK).lytex *.tex $(NOTATION) facsimile/bassus.jpg cc-zero.png facsimile/christus-adest-justus.jpg
	lilypond-book $(INCLUDESPEC) --output=$(OUTDIR) --pdf $<
	$(PDF_CMD)
	cd $(OUTDIR) && makeindex $(BOOK)
	$(PDF_CMD)
	mv $(OUTDIR)/$@ .

%.pdf %.midi: %.ly
	cd $(dir $<) && lilypond $(notdir $<)

.PHONY: parts
parts: $(PARTS_PDF)

all: $(BOOK).pdf parts

.PHONY: clean
clean:
	rm -rf $(OUTDIR)
	rm -f $(PARTS_PDF) $(PARTS_MIDI)
	rm -f $(BOOK).pdf

.PHONY: clean-book
clean-book:
	rm -rf $(OUTDIR)
	rm -f $(BOOK).pdf
