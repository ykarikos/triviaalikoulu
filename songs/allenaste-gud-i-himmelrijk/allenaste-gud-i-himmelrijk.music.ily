#(set-global-staff-size 16)

global = {
%  \numericTimeSignature
  \time 3/1
  \key f \major
  \set Staff.midiInstrument = #"voice oohs" %"
  \slurDashed
  \set melismaBusyProperties = #'()
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
  	r1 r f | a( a) b | c( c) b | a\breve g1 | a\breve. | \break
    r1 r a | a( a) g | b1. a2 g2( g) | f\breve  e1 | f\breve. |
  } \break
  r1 r f | f( f) g | b( b) a | g( g) fis | g\breve. | \break
  r1 r g | a\breve b1 | c( c) b | a( a) g | a\breve. | \break
  r1 r f1 | g1. a2 b1 | a( a) g | f\breve e1 | f\breve. \bar "|."
}

stanzaOneLyrics = \lyricmode {
	All -- e -- nas -- te Gud _ i him -- mel -- rik
  wa -- re lof och pris för si -- na nå -- _ der,
  På jor -- den är kom -- men stor gläd -- ie och frid,
  men -- nis -- kan må _ wäl glä -- _ dias wid
  Guds yn -- nest och go -- _ da wil -- _ ja.
}

stanzaOneRepeatLyrics = \lyricmode {
  som han haf -- wer giort _ i jor -- de -- rik,
  i thes -- sa här nå -- de -- li -- ga da -- _ gar:
}

stanzaOneLyricsFin = \lyricmode {
  Ai -- no -- _ an Ju -- ma -- lan cor -- keu -- des
  Kij -- tos _ ja cun -- ni -- a _ ol -- _ con.
  Nyt on suu -- ri rau -- ha ta -- pah -- tu -- nut maas
  Ju -- mal on Ih -- mis -- ten ys -- tä -- wä taas
  Sijt ol -- con he suu -- re -- sa i -- _ los.
}

stanzaOneRepeatLyricsFin = \lyricmode {
  Hä -- nen ar -- mons e -- dest ja rac -- kau -- dens
  Joll ei cos -- can  lop -- _ pu _ tul -- _ co.
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
  	r1 r c | f( f) f | a( a) g | f1 d e | fis\breve. | \break
    r1 r f | f( f) e | f f es | d c\breve | c\breve. |
  } \break
  r1 r c | d( d) e | f g e | d es d | d\breve. | \break
  r1 r d | f\breve f1 | g( g) g | f d e | f\breve. | \break
  r1 r c | e1. f2 f1 | f( f) e | c1 d c | c\breve. \bar "|."
}

stanzaOneLyricsAlto = \lyricmode {
	All -- e -- nas -- te Gud _ i him -- _ mel -- rik
  wa -- re lof och pris för si -- na nå -- der,
  På jor -- den är kom -- men stor gläd -- ie och frid,
  men -- nis -- kan må _ wäl glä -- _ dias wid
  Guds yn -- nest och go -- _ da wil -- _ _ ja.
}

stanzaOneRepeatLyricsAlto = \lyricmode {
  som han haf -- wer giort _ i jor -- _ de -- rik,
  i thes -- sa här nå -- de -- li -- ga da -- gar:
}

stanzaOneLyricsAltoFin = \lyricmode {
  Ai -- no -- _ an Ju -- ma -- lan cor -- _ keu -- des
  Kij -- tos _ ja cun -- _ ni -- a ol -- con.
  Nyt on suu -- ri rau -- ha ta -- pah -- tu -- nut maas
  Ju -- mal on Ih -- mis -- ten ys -- tä -- wä taas
  Sijt ol -- con he suu -- re -- sa i -- _ _ los.
}

stanzaOneRepeatLyricsAltoFin = \lyricmode {
  Hä -- nen ar -- mons e -- dest ja rac -- _ kau -- dens
  Joll ei _ cos -- can _ lop -- pu tul -- co.
}


TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \key f \major \time 3/1 r1 r a }

	\clef "treble_8"
  \repeat volta 2 {
  	r1 r a | c( c) d | \slurSolid c1( a) \slurDashed b | 
    c d b | a\breve. | \break
    r1 r d | c( c) c | d1. c2 b1 | a g\breve | a\breve. |
  } \break
  r1 r a | a( a) c | d( d) c | b1 a( a) | g\breve. | \break
  r1 r b | c\breve d1 | g,( g) b | c( c) b | a\breve. | \break
  r1 r a | c1. c2 d1 | c( c) b | a g\breve | a\breve. \bar "|."
}

stanzaOneLyricsTenore = \lyricmode {
	All -- e -- nas -- te Gud _ i him -- _ mel -- rik
  wa -- re lof och pris för si -- na nå -- der,
  På jor -- den är kom -- men stor gläd -- ie och frid,
  men -- nis -- kan må _ wäl glä -- _ dias wid
  Guds yn -- nest och go -- _ da wil -- _ ja.
}

stanzaOneLyricsTenoreFin = \lyricmode {
  Ai -- no -- an Ju -- ma -- _ lan cor -- _ keu -- des
  Kij -- tos _ ja cun -- ni -- a ol -- _ con.
  Nyt on suu -- ri rau -- ha ta -- pah -- tu -- nut maas
  Ju -- mal on Ih -- mis -- ten ys -- tä -- wä taas
  Sijt ol -- con he suu -- re -- sa i -- _ los.
}

stanzaOneRepeatLyricsTenoreFin = \lyricmode {
  Hä -- nen ar -- mons e -- _ dest ja rac -- kau -- dens
  Joll ei cos -- can  lop -- _ pu tul -- _ co.
}


BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \key f \major \time 3/1 r1 r f }

	\clef bass
  \repeat volta 2 {
	  r1 r f | f( f) b, | f'( f) g | a f g | d\breve. | \break
    r1 r d | f( f) c | b( b) es | f c\breve | f,\breve. |
  } \break
  r1 r f' | d( d) c | b g a | b c d | g,\breve. | \break
  r1 r g' | f\breve d1 | c2 d e c g'1 | a f g | d\breve. | \break
  r1 r f | c1. f2 b,1 | f' f, g | a b c | f,\breve. \bar "|."
}

stanzaOneLyricsBass = \lyricmode {
 	All -- e -- nas -- te Gud _ i him -- _ mel -- rik
  wa -- re lof och pris för si -- na nå -- der,
  På jor -- den är kom -- men stor gläd -- ie och frid,
  men -- nis -- kan må __ _ _ _ wäl glä -- _ dias wid
  Guds yn -- nest och go -- _ da wil -- _ _ ja.
}

stanzaOneLyricsBassFin = \lyricmode {
  Ai -- no -- _ an Ju -- ma -- lan cor -- _ keu -- des
  Kij -- tos _ ja cun -- _ ni -- a ol -- con.
  Nyt on suu -- ri rau -- ha ta -- pah -- tu -- nut maas
  Ju -- mal on Ih -- _ mis -- _ ten ys -- tä -- wä taas
  Sijt ol -- con he suu -- re -- sa i -- _ _ los.
}
