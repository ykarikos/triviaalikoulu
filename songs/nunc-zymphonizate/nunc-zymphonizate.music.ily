#(set-global-staff-size 16)

global = {
%  \numericTimeSignature
  \time 4/4
%	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \key c \major
  \set Staff.midiInstrument = #"voice oohs"
}


SopranoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus I"
	\set Staff.shortInstrumentName = "C I"

	\incipit { \clef "mensural-c1" \key c \major \time 2/2 c'4 }

  \partial 4 c4 |
  \repeat volta 2 {
  	a( c) c h | c2 c4 c | h c c h c2 r4 c8 c |
    h4 h a a | gis gis r c8 c | h4 a a gis |
  }
  \alternative {
    {
      a2. c4 |
    }
    {
      a2. a4 |
    }
  }
%  g\breve\fermata \bar "|."
}

stanzaOneLyrics = \lyricmode {
	Nunc Zymp -- ho -- ni -- za -- te lau -- des De -- o nost -- ro
  qu -- ia nos -- ter est Sal -- va -- tor, qu -- ia nos -- ter cre -- a -- tor.
  Nam  Chris -- tus  dul -- cis men -- tis te -- ne -- bras dis -- cu -- tit
  a -- ni -- mas -- que pius re -- fo - cil -- lat le -- vi -- ta -- te Sui ju -- gi.
}

SopranoTwoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus II"
	\set Staff.shortInstrumentName = "C II"

	\incipit { \clef "mensural-c1" \key c \major \time 2/2 g'4 }

  \partial 4 g4 |
  \repeat volta 2 {
    f( e)  d d | e2 e4 g | f e d d | e2 r4 g8 g |
    g4 g e e | e e  r g8 g | g4 e e e |
  }
  \alternative {
    {
      e2. g4 |
    }
    {
      e2. e4 |
    }
  }
%  g\breve\fermata \bar "|."
}


AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \key c \major \time 2/2 e'4 }

  \partial 4 e4 |
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  d\breve\fermata
}

TenoreMusic = \relative c {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \key c \major \time 2/2 e1 }

	\clef "treble_8"
  \partial 4 e4 |
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g\breve\fermata
}

BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \key c \major \time 2/2 c1 }

	\clef bass
  \partial 4 c4 |
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g,\breve\fermata
}
