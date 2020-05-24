#(set-global-staff-size 16)

global = {
%  \numericTimeSignature
  \time 2/2
%	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \key f \major
  \set Staff.midiInstrument = #"voice oohs"
}


SopranoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus"
	\set Staff.shortInstrumentName = "C"

	\incipit { \clef "mensural-g" \key f \major \time 2/2 c''1 }

	c1 | c2 c | d2. c4 | b2 a | b a | g1 | a | f |
	g2 a | g a | b1 | a2 f' | e e | f2. e4 | d2 c | 
	d c( | c) h | c1( | c) | c | d2 e | f1 | e |
% p2
	r2 a, | a b | c1 | r2 c( | c4) b a g | 
	a2 f'( | f4) e d c | d1 | c |
	r2 a | c4 b a a | g f g2 | g a( | a4) a g2 | f1 | e |
	r2 f( | f) e | d b'( | b) a4 g | a1 |
% p3
	r2 f'( | f4) f e2 | d1 | cis |
	r2 c | a4 g a b | c2 d( | d) c( | c) h | c c |
	c4 c c c | c2 d( | d) c | f1 | e |
	r2 f | e d( | d4) d c2 | b1 | g | a2 f'( | f) e |
% p4
	d2. d4 | c1 | d | c | a |
	r2 c | a4 g a b | c2 d( | d4) d c2( | c) h | c c |
	c4 c c c | c2 d( | d) c | f1 | e |
	r2 f | e d( | d4) d c2 | b1 | g |
% p5
	a2 f'( | f) e | d2. d4 | c1 | d | c | a |
	r2 c( | c) d | d c | b1 | b | a\fermata \bar "|."
}

stanzaOneLyrics = \lyricmode {
	Ah Je -- su mel -- li -- tis -- si -- me,
	ah Je -- su,
	Je -- su mel -- li -- tis -- si -- me,
	ah Je -- su mel -- li -- tis -- si -- me,
	ah Je -- su mel -- li -- tis -- si -- me,
	mel -- li -- tis -- si -- me,
	mel -- li -- tis -- si -- me,
	mel -- li -- tis -- si -- me.

	Fac ti -- bi lec -- tu -- lum in me,
	lec -- tu -- lum in me, lec -- tu -- lum in me,
	lec -- tu -- lum in me.

	Qui -- es -- ce in me -- o, me -- o cor -- de.
	Qui -- es -- ce in me -- o, me -- o cor -- de.

	Ut nun -- quam ob -- li -- vis -- car te.
	Ut nun -- quam ob -- li -- vis -- car te.
	
	Qui -- es -- ce in me -- o, me -- o cor -- de.	
	Qui -- es -- ce in me -- o, me -- o cor -- de.	

	Ut nun -- quam ob -- li -- vis -- car te.
	Ut nun -- quam ob -- li -- vis -- car te.
	Ut nun -- quam ob -- li -- vis -- car te.
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit {
	  \clef "mensural-c2"
	  \override Staff.KeySignature.flat-positions = #'((-5 . 5))
	  \key f \major
	  \time 2/2 
	  c'1
	}

	c1 | f2 f | b2. a4 | g2 f | g f( | f) e | f1 | R |
	r2 f | d f | g1 | c,2 c' | c c | a2. a4 | b2 c | b g |
	g1 | e | r2 g | a1( | a2) g | f2. e8 d | g2 c | c c |
}

TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c3" \key f \major \time 2/2 r\maxima r1 c' }

	\clef "treble_8"
	\repeat unfold 5 { R1 | }
	c |	
}

BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

  \incipit {
    \clef "mensural-f"
    \set Staff.middleCClefPosition = #4
    \set Staff.middleCPosition = #4
    \set Staff.clefPosition = #0
    \override Staff.KeySignature.flat-positions = #'((-5 . 5))
    \key f \major
    \time 2/2 
    r\maxima r1 c
  }


	\clef bass
	\repeat unfold 5 { R | }
	c |
}
