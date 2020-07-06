#(set-global-staff-size 16)

global = {
%  \numericTimeSignature
  \time 3/1
  \key f \major
  \set Staff.midiInstrument = #"voice oohs"
}


SopranoMusic = \relative c' {
	\set Staff.instrumentName = #"Cantus"
	\set Staff.shortInstrumentName = "C"

	\incipit {
    \clef "mensural-c1"
    \key f \major
    \time 3/1 r1 r f'
  }

  \repeat volta 2 {
  	r1 r f | a\breve b2 b | c\breve b1 | a\breve g1 | a\breve. |
    r1 r a | a\breve g1 | b1. a2 g2 g | f\breve  e1 | f\breve. |
  }
  r1 r f | f\breve g2 g | b\breve a2 a | g\breve fis2 fis | g\breve. |
  r1 r g | a\breve b1 | c\breve b1 | a\breve g1 | a\breve. |
  r1 r f1 | g1. a2 b1 | a\breve g1 | f\breve e1 | f\breve. \bar "|."
}

stanzaOneLyrics = \lyricmode {
	All -- e -- nas -- te Gud i him -- mel -- rijk
  ware lof och pris för si -- na nå -- _ der,
  På jor -- den är kom -- men stor gläd -- ie och frid,
  men -- nis -- kan må wäl glä -- dias wid
  Guds yn -- nest och go -- da wil -- _ ja.
}

stanzaTwoLyrics = \lyricmode {
  som han haf -- wer giort i jor -- de -- rijk,
  i thessa här nå -- de -- li -- ga da -- _ gar:
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit {
    \clef "mensural-c1"
    \set Staff.middleCClefPosition = #0
    \set Staff.middleCPosition = #0
    \set Staff.clefPosition = #-4
    \key f \major
    \time 3/1 r1 r c'
  }

  \repeat volta 2 {
  	r1 r c | f\breve f2 f | a\breve g1 | f d e | fis\breve. |
    r1 r f | f\breve e1 | f\breve es1 | d2 d c\breve | c\breve. |
  }
  r1 r c | d\breve e2 e | f1 g e2 e | d1 es d2 d | d\breve. |
  r1 r d | f\breve f1 | g\breve g1 | f d e | f\breve. |
  r1 r c | e1. f2 f1 | f\breve e1 | c d c | c\breve. \bar "|."
}

stanzaOneLyricsAlto = \lyricmode {
	All -- e -- nas -- te Gud i him -- _ mel -- rijk
  ware lof och pris för si -- na nå -- der,
  På jor -- den är kom -- _ men stor gläd -- _ ie och frid,
  men -- nis -- kan må wäl glä -- _ dias wid
  Guds yn -- nest och go -- da wil -- _ _ ja.
}

stanzaTwoLyricsAlto = \lyricmode {
  som han haf -- wer giort i jor -- _ de -- rijk,
  i thessa här nå -- de -- li -- ga da -- gar:
}

TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \key f \major \time 3/1 r1 r a }

	\clef "treble_8"
  \repeat volta 2 {
  	r1 r a | c\breve d2 d | c1( a) b | c d b | a\breve. |
    r1 r d | c\breve c1 | d1. c2 b1 | a g\breve | a\breve. |
  }
  r1 r a | a\breve c2 c | d\breve c2 c | b b a\breve | g\breve. |
  r1 r b | c\breve d1 | g,\breve b1 | c\breve b1 | a\breve. |
  r1 r a | c1. c2 d1 | c\breve b1 | a g\breve | a\breve. \bar "|."
}

stanzaOneLyricsTenore = \lyricmode {
	All -- e -- nas -- te Gud i him -- _ mel -- rijk
  ware lof och pris för si -- na nå -- der,
  På jor -- den är kom -- men stor gläd -- ie och frid,
  men -- nis -- kan må wäl glä -- dias wid
  Guds yn -- nest och go -- da wil -- _ ja.
}

BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \key f \major \time 3/1 r1 r f }

	\clef bass
  \repeat volta 2 {
	  r1 r f | f\breve b,2 b | f'\breve g1 | a f g | d\breve. |
    r1 r d | f\breve c1 | b\breve es1 | f2 f c\breve | f,\breve. |
  }
  r1 r f' | d\breve c2 c | b1 g a | b c d | g,\breve. |
  r1 r g' | f\breve d1 | c2 d e c g'1 | a f g | d\breve. |
  r1 r f | c1. f2 b,1 | f' f, g | a b c | f,\breve. \bar "|."
}

stanzaOneLyricsBass = \lyricmode {
	All -- e -- nas -- te Gud i him -- _ mel -- rijk
  ware lof och pris för si -- na nå -- der,
  På jor -- den är kom -- men stor gläd -- ie och frid,
  men -- nis -- kan må __ _ _ _ wäl glä -- _ dias wid
  Guds yn -- nest och go -- _ da wil -- _ _ ja.
}
