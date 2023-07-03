#(set-global-staff-size 16)

global = {
%  \numericTimeSignature
  \time 2/2
%  \autoBeamOff
  \key d \minor
  \set Staff.midiInstrument = #"voice oohs"
}


SopranoMusic = \relative c'' {
  \set Staff.instrumentName = #"Cantus"
  \set Staff.shortInstrumentName = "C"

  \incipit { \clef "mensural-c1" \key d \minor \time 2/2 g'2 }

  g2 g | fis fis | g g | a a | b b | a g | fis fis |
  g1\fermata | g2 fis4 fis | g2 g4 g | b2 c4 c | f,!2 g | f4 f a2 | fis1 |
  g\fermata | g2 fis | g1 | a | b4 b b b | a a a a | f2 g |
% 2
  f g | a a | a1\fermata |
  f2 f | b b | a a | b a |
  b a | g fis4 fis | g1\fermata |
  g2 fis | g1 a | b4 b a a |
  d d b a | b2 c | a1 | g1\fermata |
  b2 b4 b | a2 a | g g4 g |
% 3
  a2 a | b a | g g~ | g fis2 |
  \time 4/2
  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
  g\breve\fermata \bar "|."
}

stanzaOneLyrics = \lyricmode {
	Gud wäl -- sig -- na, Gud wäl -- sig -- na,
	Gud wäl -- sig -- na, thet -- ta huus
	och al -- la, och al -- la, och al -- la the som
	här ä -- ro in -- ne,
	Gud gif -- wa oss
	lyc -- ka och frijd, lyc -- ka och frijd,
	lyc -- ka, frijd, och sa -- lig -- heet,
	att wij wå -- ga, att wij wå -- ga,
	äls -- ka oss in -- bör -- de
	af alt hjär -- ta af alt hjär -- ta
	af alt hjär -- ta och o -- för -- skyllt
	så som oss Je -- sus, så som oss Je -- sus
	Chris -- tus äls -- kat haf -- wer.
}

AltoMusic = \relative c' {
  \set Staff.instrumentName = #"Altus"
  \set Staff.shortInstrumentName = "A"

  \incipit { \clef "mensural-c3" \key d \minor \time 2/2 d'2 }

  d2 d | d d | d d | f c | b b | c d | d d |
  d1\fermata | d2 d4 d | b2 b4 b | d2 c4 c | d2 d | d4 d e2 | d1 |
  d\fermata | d2 d | d1 | d | b4 b b b | c c c c | a2 b |
% 2
  d2 d | e e | d1\fermata | d2 d | f f | f f | d f |
  d f | d2 d4 d | d1\fermata | d2 d | d1 | d | d4 d c c|
  f f d f | d2 c | d1 | d\fermata | d2 b4 b | d2 d | d d4 d |
% 3
  f2 f | d f | d es | d1 |
  \time 4/2
  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
  d\breve\fermata
}

TenoreMusic = \relative c' {
  \set Staff.instrumentName = #"Tenor"
  \set Staff.shortInstrumentName = "T"

  \incipit { \clef "mensural-c4" \key d \minor \time 2/2 b2 }

  \clef "treble_8"
  b2 b | a a | b b | c a | d d | c b | a a |
  b1\fermata | b2 a4 a | d2 d4 d| b2 a4 a | a2 b | a4 a a2 | a1 |
  g1\fermata | b2 a | b1 | a | d4 d d d | c c c c | a2 b |
% 2
  a d | cis cis | a1\fermata | a2 a | d d | c c | b c |
  b c | b a4 a | b1\fermata | b2 a | b1 | a | b4 b c c |
  a a b a | g2 a | a1 | g\fermata | d'2 d4 d | a2 a | b b4 b |
  c2 c | b c | d c | a1 |
  \time 4/2
  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
  g\breve\fermata
}

BassMusic = \relative c' {
  \set Staff.instrumentName = #"Bassus"
  \set Staff.shortInstrumentName = "B"

  \incipit { \clef "mensural-f" \key d \minor \time 2/2 g2 }

  \clef bass
  g2 g | d d | g g | f f | b, b | f' g | d d |
  g,1\fermata | g'2 d4 d | g,2 g4 g | g'2 f4 f | d2 g | d4 d c2 | d1 |
  g\fermata | g2 d | g1 | d | b4 b b b | f' f f f | a2 g |
% 2
  f b | a2 a | d,1\fermata | d2 d | b b | f' f | g f |
  b f | g  d4 d | g,1\fermata | g'2 d | g1 | d1 | b4 b f' f |
  d d g f | g2 f | d1 | g,\fermata | g'2 g4 g | d2 d | g g4 g |
  f2 f | g f | b, c d1 |
  \time 4/2
  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
  g,\breve\fermata
}
