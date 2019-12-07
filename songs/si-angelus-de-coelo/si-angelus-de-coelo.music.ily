#(set-global-staff-size 16)

global = {
%  \numericTimeSignature
  \time 2/2
%	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \key f \major
  \set Staff.midiInstrument = #"voice oohs"
}


SopranoMusic = \relative c' {
	\set Staff.instrumentName = #"Cantus"
	\set Staff.shortInstrumentName = "C"

	\incipit { \clef "mensural-c1" \key d \minor \time 2/2 f'1 }

  \repeat volta 2 {
	  f1 | e2 f | f4 f e2 | f a | g a | b4 b a2 |
    g r4 a | g2 f | f e | f1 |
  }
  \repeat volta 2 {
    r2 a | h4 c c h | c2 a |
    b4 a g2 | g f | f f | e1 |
    r2 f | g a | g4 f g2 |
    g2 a | b c | h4 c2 h4 | c2 a4 a |
    b a g f | e2 a | g f4 f | f2 e |
    \set Timing.measureLength = #(ly:make-moment 4/2)
    f\breve |
  }
}

stanzaOneLyrics = \lyricmode {
	Si An -- ge -- lus de coe -- lo,
  a -- li -- ud do -- cu -- e -- rit
  quam nos do -- cu -- i -- mus.
  Si An -- ge -- lus de coe -- lo
  a -- li -- ud, do -- cu -- e -- rit vos,
  a -- li -- ud a -- na -- the -- ma
  sit do -- cu -- e -- _ rit vos,
  a -- _ li -- ud a -- na -- the -- ma
  sit, a -- na -- the -- ma sit.
}

stanzaTwoLyrics = \lyricmode {
  Is -- tam e -- go di -- le -- xi
  a ju -- ven -- tu -- te me -- a
  hanc e -- go qua -- si -- vi.
  Hanc stu -- du -- _ i ad -- jun -- ge -- _ re
  mi -- hi in spon -- tam,
  et pul -- chri -- tu -- di -- nis e -- jus,
  pul -- chri -- tu -- di -- nis e -- jus,
  a -- mo -- re cap -- tus sum
  a -- mo -- re _ cap -- tus sum.
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \key d \minor \time 2/2 c'1 }

  \repeat volta 2 {
	  c1 | c2 c | d4 d c2 | c f | e f |
    f4 f f2 | e f | d c | d c | a1 |
  }
  \repeat volta 2 {
    r2 f' | f4 g g g | e2 f |
    f4 f d2 | e d | d d | c1 |
    r2 c | e f | d4 c d2 |
    e2 f | f a | g4 g g2 | e f4 f |
    f f es d | c2 f | d c4 c | d2 c |
    \set Timing.measureLength = #(ly:make-moment 4/2)
    a\breve |
  }
}

TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \key d \minor \time 2/2 a1 }

	\clef "treble_8"
  \repeat volta 2 {
	  a1 | g2 a | b4 b g2 | a c | c c |
    d4 d c2 | c2 r4 c | b2 a | g g | f1 |
  }
  \repeat volta 2 {
    r2 c' | d4 es d d | c2 c |
    d4 c b2 | c a | a b | g1 |
    r2 a | c c | b4 c2 b4 |
    c2 c | d f  | d4 es d2 | c c4 c |
    d c b a | g2 c | b a4 a | g2 g |
    \set Timing.measureLength = #(ly:make-moment 4/2)
    f\breve |
  }
}

BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \key d \minor \time 2/2 f1 }

	\clef bass
  \repeat volta 2 {
	  f1 | c2 f, | b4 b c2 | f, f' | c f |
    b,4 b f'2 | c f, | g a | b c | f,1 |
  }
  \repeat volta 2 {
    r2 f' | d4 c g' g | c,2 f |
    b4 f g2 | c, d | d b | c1 |
    r2 f | c f | g4 a g2 |
    c, f | b f | g4 c, g'2 | c, f4 f |
    b, c es f | c2 f, | g a4 a | b2 c |
    \set Timing.measureLength = #(ly:make-moment 4/2)
    f,\breve |
  }
}
