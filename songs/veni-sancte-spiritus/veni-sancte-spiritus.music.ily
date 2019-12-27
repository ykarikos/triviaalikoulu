#(set-global-staff-size 16)

global = {
  \time 2/2
  \key f \major
  \set Staff.midiInstrument = #"voice oohs"
}


SopranoMusic = \relative c' {
	\set Staff.instrumentName = #"Cantus"
	\set Staff.shortInstrumentName = "C"

	\incipit {
    \clef "mensural-c2"
    \set Staff.middleCClefPosition = #4
    \set Staff.middleCPosition = #4
    \override Staff.KeySignature.flat-positions = #'((0 . 5))
    \key f \major
    \time 2/2
    f1
  }

  \repeat volta 2 {
	  f1 | g | a | b | a2 g | a1 |
  }
  \repeat volta 2 {
    a2 a | g g | f f | g g | a g | a f | c' c | a1 |
  }
  \repeat volta 2 {
    a2 a4 a | g2 g | f2 f4 f | g2 g | a g | a c4 c | a1 |
  }
  \repeat volta 2 {
    a2 a | g g | f f | g g | a g | a c4 c | a1 |
  }
}

stanzaOneLyrics = \lyricmode {
	Ve -- ni  Sanc -- te Spi -- ri -- tus.
  Ve -- ni, ve -- ni, ve -- ni, ve -- ni
  ve -- ni Sanc -- te Spi -- ri -- tus.
  Rep -- le -- tu -- o -rum, rep -- le -- tu -- o -rum,
  cor -- da fi -- de -- li -- um.
  Cor -- da, cor -- da, cor -- da, cor -- da
  cor -- da fi -- de -- li -- um.
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit {
    \clef "mensural-c2"
    \set Staff.middleCClefPosition = #2
    \set Staff.middleCPosition = #2
    \override Staff.KeySignature.flat-positions = #'((0 . 5))
    \key f \major
    \time 2/2
    c'1
  }

	c1 |
}

TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit {
    \clef "mensural-c2"
    \set Staff.middleCClefPosition = #2
    \set Staff.middleCPosition = #2
    \override Staff.KeySignature.flat-positions = #'((0 . 5))
    \key f \major
    \time 2/2
    a1
  }

	\clef "treble_8"
	a1 |
}

BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit {
    \clef "mensural-c3"
    \set Staff.middleCClefPosition = #4
    \set Staff.middleCPosition = #4
%    \override Staff.KeySignature.flat-positions = #'((-5 . 5))
    \key f \major
    \time 2/2
    f1
  }

	\clef bass
	f1 |
}
