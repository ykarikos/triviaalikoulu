#(set-global-staff-size 16)

theKey = {
  \key f \major
}

global = {
%  \numericTimeSignature
  \time 2/2
%	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \theKey
  \set Staff.midiInstrument = #"voice oohs"
}


SopranoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus"
	\set Staff.shortInstrumentName = "C"

	\incipit { \clef "mensural-c1" \theKey \time 2/2 c'1 }

  \repeat volta 2 {
	c1( | c2) c | a1( | a2) a | b1( | b2) b | g1 | g |
	c1 | c2 c | a c | b a | g g4 g | f1 |
  \time 4/2
  \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
	e\breve |
  }
  \repeat volta 2 {
	\time 2/2
	r2 c | d1 | f | e | r2 c | d e | f g | a a |
        \omit Slur g( f) | b1 |
	a | g2( f | e) \undo \omit Slur f( | f) e |
	\time 4/2 f\breve |
  }
  \repeat volta 2 {
	\time 2/2
	r2 a | c c | \omit Slur b4( a g b) | a1 | r | r |
	r2 a | g( b) | a1 | r1 |
	r2 a | g f( | e) \undo \omit Slur f( | f) e |
	\time 4/2 f\breve |
  }
  \repeat volta 2 {
	a\breve 
	\time 2/2 a4 a a a | a2 c |
	\time 4/2 a\breve | g\breve |
	\time 2/2 g4 g a f | g4 g a f | g4 g a f | g4 g a2( |
	a4) g f2( | f) e | \time 4/2 f\breve |
  }
}

stanzaOneLyrics = \lyricmode {
	Chris -- tus fac -- tus est pro no -- bis,
	Chris -- tus fac -- tus est pro no -- bis o -- be -- di -- ens,
	o -- be -- di -- ens, o -- be -- di -- ens, 
	o -- be -- di -- ens, __
	us -- que ad __ mor -- _ tem.
	Prop -- ter, prop -- ter __ quod,
	et De -- us
	e -- xal -- ta -- vit __ il -- lum.
	Quod, quod est su -- per om -- ne no -- men
	Al -- le -- lu -- ja,
	al -- le -- lu -- ja,
	al -- le -- lu -- ja,
	al -- le -- lu -- _ _ _ ja.
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \theKey \time 2/2 f'1 }

	f1 | f2 f |
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  d\breve\fermata
}

TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \theKey \time 2/2 a1 }

	\clef "treble_8"
	a1 | a1 |
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g\breve\fermata
}

BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \theKey \time 2/2 f1 }

	\clef bass
	f1( | f2) f |
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g,\breve\fermata
}
