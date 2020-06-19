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

	r1 r f1 | a\breve b1 |
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g\breve\fermata \bar "|."
}

stanzaOneLyrics = \lyricmode {
	All -- e -- naste Gud i him -- mel -- rijk
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

	r1 r c1 | f\breve f1 |
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  d\breve\fermata
}

TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \key f \major \time 3/1 r1 r a }

	\clef "treble_8"
	r1 r a1 | c\breve d1 |
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g\breve\fermata
}

BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \key f \major \time 3/1 r1 r f }

	\clef bass
	r1 r f1 | f\breve b,1 |
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g,\breve\fermata
}
