#(set-global-staff-size 16)

global = {
%  \numericTimeSignature
  \time 3/1
  \key f \major
  \set Staff.midiInstrument = #"voice oohs" %"
  \slurDashed
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
  	r1 r f2( f) | a\breve b2 b | c\breve b2( b) | a\breve g1 | a\breve. |
    r1 r a2( a) | a\breve g2( g) | b1. a2 g2 g | f\breve  e1 | f\breve. |
  }
  r1 r f | f\breve g2 g | b\breve a2 a | g\breve fis2 fis | g\breve. |
  r1 r g | a\breve b1 | c\breve b2( b) | a\breve g2( g) | a\breve. |
  r1 r f1 | g1. a2 b1 | a\breve g2( g) | f\breve e1 | f\breve. \bar "|."
}

stanzaOneLyrics = \lyricmode {
	All -- e -- nas -- te Gud i him -- mel -- rik
  wa-re lof och pris för si -- na nå -- _ der,
  På jor -- den är kom -- men stor gläd -- ie och frid,
  men -- nis -- kan må wäl glä -- dias wid
  Guds yn -- nest och go -- da wil -- _ ja.
}

stanzaOneRepeatLyrics = \lyricmode {
  som han haf -- wer giort i jor -- de -- rik,
  i thes -- sa_här nå -- de -- li -- ga da -- _ gar:
}

stanzaOneLyricsFin = \lyricmode {
  Ai -- no -- an _ Ju -- malan cor -- keu -- des
  Kij -- tos ja cun -- ni -- a _ ol -- _ con.
  Nyt on suu -- ri rau -- ha _ ta -- pah -- tunt maas
  Ju -- mal on Ih -- mis-ten ys -- tä-wä taas
  Sijt ol -- con he suu -- re-sa i -- _ los.
}

stanzaOneRepeatLyricsFin = \lyricmode {
  Hä-nen ar -- mons _ e -- dest_ja rac -- kau -- dens
  Joll_ei cos -- can  lop -- _ pu _ tul -- _ co.
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
  	r1 r c2( c) | f\breve f2 f | a\breve g2( g) | f1 d e | fis\breve. |
    r1 r f2( f) | f\breve e2( e) | f\breve es1 | d2 d c\breve | c\breve. |
  }
  r1 r c | d\breve e2 e | f1 g e2 e | d1 es d2 d | d\breve. |
  r1 r d | f\breve f1 | g\breve g2( g) | f1 d e | f\breve. |
  r1 r c | e1. f2 f1 | f\breve e2( e) | c1 d c | c\breve. \bar "|."
}

stanzaOneLyricsAlto = \lyricmode {
	All -- e -- nas -- te Gud i him -- _ mel -- rik
  wa-re lof och pris för si -- na nå -- der,
  På jor -- den är kom -- _ men stor gläd -- _ ie och frid,
  men -- nis -- kan må wäl glä -- _ dias wid
  Guds yn -- nest och go -- da wil -- _ _ ja.
}

stanzaOneRepeatLyricsAlto = \lyricmode {
  som han haf -- wer giort i jor -- _ de -- rik,
  i thes -- sa_här nå -- de -- li -- ga da -- gar:
}

stanzaOneLyricsAltoFin = \lyricmode {
  Ai -- no -- an _ Ju -- malan cor -- _ keu -- des
  Kij -- tos ja cun -- ni -- a _ ol -- con.
  Nyt on suu -- ri rau -- _ ha _ ta -- pah -- tunt _ maas
  Ju -- mal on Ih -- mis-ten ys -- tä -- wä taas
  Sijt ol -- con he suu -- re-sa i -- _ _ los.
}

stanzaOneRepeatLyricsAltoFin = \lyricmode {
  Hä-nen ar -- mons _ e -- dest_ja rac -- _ kau -- dens
  Joll_ei cos -- can  lop -- pu tul -- _ _ co.
}


TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \key f \major \time 3/1 r1 r a }

	\clef "treble_8"
  \repeat volta 2 {
  	r1 r a2( a) | c\breve d2 d | \slurSolid c1( a) \slurDashed b2( b) | c1 d b | a\breve. |
    r1 r d2( d) | c\breve c2( c) | d1. c2 b1 | a g\breve | a\breve. |
  }
  r1 r a | a\breve c2 c | d\breve c2 c | b b a\breve | g\breve. |
  r1 r b | c\breve d1 | g,\breve b2( b) | c\breve b2( b) | a\breve. |
  r1 r a | c1. c2 d1 | c\breve b2( b) | a1 g\breve | a\breve. \bar "|."
}

stanzaOneLyricsTenore = \lyricmode {
	All -- e -- nas -- te Gud i him -- _ mel -- rik
  wa-re lof och pris för si -- na nå -- der,
  På jor -- den är kom -- men stor gläd -- ie och frid,
  men -- nis -- kan må wäl glä -- dias wid
  Guds yn -- nest och go -- da wil -- _ ja.
}

stanzaOneLyricsTenoreFin = \lyricmode {
  Ai -- no -- an _ Ju -- ma-lan cor -- _ keu -- des
  Kij -- tos ja cun -- ni -- a ol -- _ con.
  Nyt on suu -- ri rau -- ha _ ta -- pah -- tunt maas
  Ju -- mal on Ih -- mis-ten ys -- tä-wä taas
  Sijt ol -- con he suu -- re-sa i -- _ los.
}

stanzaOneRepeatLyricsTenoreFin = \lyricmode {
  Hä-nen ar -- mons _ e -- dest_ja rac -- _ kau -- dens
  Joll_ei cos -- can  lop -- _ pu tul -- _ co.
}


BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \key f \major \time 3/1 r1 r f }

	\clef bass
  \repeat volta 2 {
	  r1 r f2( f) | f\breve b,2 b | f'\breve g2( g) | a1 f g | d\breve. |
    r1 r d2( d) | f\breve c2( c) | b\breve es1 | f2 f c\breve | f,\breve. |
  }
  r1 r f' | d\breve c2 c | b1 g a | b c d | g,\breve. |
  r1 r g' | f\breve d1 | c2 d e c g'1 | a f g | d\breve. |
  r1 r f | c1. f2 b,1 | f' f, g | a b c | f,\breve. \bar "|."
}

stanzaOneLyricsBass = \lyricmode {
 	All -- e -- nas -- te Gud i him -- _ mel -- rik
  wa-re lof och pris för si -- na nå -- der,
  På jor -- den är kom -- men stor gläd -- ie och frid,
  men -- nis -- kan må __ _ _ _ wäl glä -- _ dias wid
  Guds yn -- nest och go -- _ da wil -- _ _ ja.
}

stanzaOneLyricsBassFin = \lyricmode {
  Ai -- no -- an _ Ju -- malan cor -- _ keu -- des
  Kij -- tos ja cun -- ni -- a _ ol -- con.
  Nyt on suu -- ri rau -- _ ha ta -- pah -- tunt maas
  Ju -- mal on Ih -- _ mis -- _ ten ys -- tä -- wä taas
  Sijt ol -- con he suu -- re -- sa i -- _ _ los.
}
