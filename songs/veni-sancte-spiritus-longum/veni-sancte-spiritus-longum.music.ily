#(set-global-staff-size 16)

global = {
  \time 2/2
  \key c \major
  \set Staff.midiInstrument = #"voice oohs"
}


SopranoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus I"
	\set Staff.shortInstrumentName = "C I"

	\incipit { \clef "mensural-g" \key c \major \time 2/2 e''4. }

	e4. e8 d4. d8 | h4. c8 c4. h8 | c2 r |
	R1 | R1 | R1 | 
	h4. h8 c4. c8 | e4. e8 d4. d8 | e2 r |
	c4. c8 h4. c8 | c4. c8 e2 |
}

stanzaOneLyrics = \lyricmode {
	Ve -- ni Sanc -- te, Sanc -- te Spi -- ri -- tus,
	Ve -- ni Sanc -- te, Sanc -- te Spi -- ri -- tus,
	Ve -- ni Sanc -- te Spi -- ri -- tus
}

SopranoTwoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus II"
	\set Staff.shortInstrumentName = "C II"

	\incipit { \clef "mensural-c1" \key c \major \time 2/2 c''4. }

	c4. c8 a4. a8 | g4. a8 g4. g8 | g2 r |
	R1 | R1 | R1 | 
	g4. g8 a4. a8 | c4. c8 h4. h8 | c2 r |
	a4. a8 g4. a8 | g4. g8 c2 |	
}

AltoMusic = \relative c'' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \key c \major \time 2/2 e'4. } % !! e or g?

	g4. g8 f4. f8 | e4. f8 d4. d8 | e2 r |
	g4. g8 f4. f8 | e4. e8 h4. h8 | c2 r |
	R1 | R1 | R1 |
	f4. f8 e4. f8 | e4. e8 g2 |
}

TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \key c \major \time 2/2 g4. }

	\clef "treble_8"
	g4. g8 a4. a8 | h4. a8 g4. g8 | g2 r |
	e'4. e8 d4. d8 | c4. c8 g4. g8 | g2 r |
	R1 | R1 | R1 | 
	c4. c8 h4. c8 | c4. h8 c2 |
}

BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \key c \major \time 2/2 c4. }

	\clef bass
	c4. c8 d4. d8 | e4. f8 g4. g8 | c,2 r |
	g'4. g8 f4. f8 | e4. e8 d4. d8 | e2 r |
	R1 | R1 | R1 | 
	f4. f8 e4. f8 | g4. g8 c,2 |
}
