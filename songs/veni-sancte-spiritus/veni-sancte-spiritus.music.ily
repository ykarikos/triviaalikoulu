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
  Ve -- ni, ve -- ni, ve -- ni, ve -- ni,
  ve -- ni Sanc -- te Spi -- ri -- tus.
  Rep -- le -- tu -- o -rum, rep -- le -- tu -- o -rum,
  cor -- da fi -- de -- li -- um.
  Cor -- da, cor -- da, cor -- da, cor -- da,
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

  \repeat volta 2 {
	  c1 | c | a | d | c2 c | c1 |
  }
  \repeat volta 2 {
    c2 c | c c | a a | g g | a g | a d | c c | c1 |
  }
  \repeat volta 2 {
    c2 c4 c | c2 c | a2 a4 a | g2 g | a4 g a2 | c c | c1 |
  }
  \repeat volta 2 {
    c2 c | c c | a a | g g | a4 g a2 | c c | c1 |
  }
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
  \repeat volta 2 {
	  a1 | g | a | b | a2 g | a1 |
  }
  \repeat volta 2 {
    a2 a | g g | f f | e e | f e | d f | g g | a1 |
  }
  \repeat volta 2 {
    a2 a4 a | g2 g | f f4 f | f2 e | f e | f g4 g | a1 |
  }
  \repeat volta 2 {
    a2 a | g g | f f | e e | f e | f g4 g | a1 |
  }
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
  \repeat volta 2 {
	  f1 | c | d | g | f2 c | f1 |
  }
  \repeat volta 2 {
    f2 f | c c | d d | c c | c c | d b | c c | f1 |
  }
  \repeat volta 2 {
    f2 f4 f | c2 c | d d4 d | c2 c | d c4 d | c2 c | f1 |
  }
  \repeat volta 2 {
    f2 f | c c | d d | c c | d c4 d | c2 c | f1 |
  }
}
