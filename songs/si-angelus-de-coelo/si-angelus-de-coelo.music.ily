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
    b4 a g2 | g f( | f) f | e1 |
    r2 f | g a | g4 f g2 |
    g2 a | b c | h4 c2 h4 | c2 a |
    b4 a g f | e2 a | g f | f e |
    \set Timing.measureLength = #(ly:make-moment 4/2)
    f\breve |
  }
}

stanzaOneLyrics = \lyricmode {
	Si An -- ge -- lus de coe -- lo, a -- li -- ud
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \key d \minor \time 2/2 c'1 }

	c1 | c2 c | d4 d c2 | c f | e f |
}

TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \key d \minor \time 2/2 a1 }

	\clef "treble_8"
	a1 | g2 a | b4 b g2 | a c | c c |
}

BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \key d \minor \time 2/2 f1 }

	\clef bass
	f1 | c2 f, | b4 b c2 | f, f' | c f |
}
