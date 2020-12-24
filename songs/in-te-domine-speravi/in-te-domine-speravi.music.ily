#(set-global-staff-size 16)

global = {
%  \numericTimeSignature
  \time 2/2
  \set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \key f \major
  \set Staff.midiInstrument = #"voice oohs"
}


SopranoMusic = \relative c' {
	\set Staff.instrumentName = #"Cantus"
	\set Staff.shortInstrumentName = "C"

	\incipit { \clef "mensural-c1" \key f \major \time 2/2 f'1 }

	f1 c'2 a( | a) g4 f g2 g | a c1 h2 |
	c2 c1 b2 | a1 g | c,2 f2. e8 d e2 |
	f1 r2 a | g a1 g2 | a1 b2 a4 g | a2 d2. c4 c2( |
% p2
	c) h c1 | r2 g a1 | a2 g a1 | b2 a1 g2 |
	a a a g | a c1 h2 | c d d c4 b | a1 r2 a |
	g g a a | a1 a2 c | b c2. b8 a b2 | c1 a2 a |
% p3
	b1 a | r2 a g2. g4 | a1 r2 g | a g a g( | 
	g) f1 e2 | f\breve\fermata |
	a1. g2 | a1 r2 a | g a1 a2 |
	b1 a | r2 a a a( | a) g a b | a1 b |
% p4
	a1 r2 a | a a g c( | c) h c c b2. a4 g2 g |
	a1 r2 a2 | a b1 a2 | g1 a2 a | c c c1 |
	r2 a c c | c1 r2 c | c c c2. b4 | a g a2 b c ( |
% p5
	c4) a h2 c1 | r2 a1 g2 | g1 r2 g2 | a1 r2 a |
	a2. b4 c2 f,( | f4) g a2 b1 | a\breve\fermata |
	\time 3/1
	r\breve a1 | a1. b2 c1 | b\breve c1 |
	a\breve g1 | a\breve a1 | a1. b2 c1 |
% p6
	b\breve a1 | a g\breve | fis\breve r1 | 
	f!\breve g1 | a\breve g1 | a\breve r1 |
	c\breve h1 | c\breve r1 | a\breve a1 | b2. a4 g1 f |
	f2 d e\breve | f\breve. \bar "|."
}

stanzaOneLyrics = \lyricmode {
	In te Do -- _ _ mi -- ne spe -- ra -- _ vi
	non con -- fun -- dar in ae -- _ _ ter -- num.
	In jus -- ti -- tia tu -- _ _ _ a li -- _ be -- ra me.
	Inc -- li -- na ad me au -- rem tu -- am ac -- ce -- le -- ra
	ut  e -- qu -- _ as _ _ me. Es -- to mi -- hi in De -- um
	Pro -- tec -- to -- _ _ _ rum et in lo -- cum 
	re -- fu -- gu -- i, 
	ut sal -- vum me fa -- _ ci -- as.

	Quo -- ni -- am for -- ti -- tu -- do me -- a
	et re -- fu -- gi -- um me -- um es -- tu,
	et prop -- ter no -- men tu -- um
	de -- du -- _ _ ces me 
	e -- nut -- ri -- es me e -- le -- du -- ces me,
	de -- la -- que -- o, quem abs con -- de -- -- _ _ _ runt
	mi -- _ _ _ hi,
	Quo -- ni -- am tu es pro -- tec -- _ _ _ _ tor me us.

	In ma -- _ nus tu -- as Do -- mi -- ne 
	com -- men -- _ do spi -- ri -- tum me -- um,
	re -- de -- mis -- ti me,
	Do -- mi -- ne De -- us ve -- _ _ _ ri -- _ ta -- tis.
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \key f \major \time 2/2 c'1 }

	c1 c | f e |
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  d\breve\fermata
}

TenoreMusic = \relative c {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c3" \key f \major \time 2/2 f1 }

	\clef "treble_8"
	f1 a | c1. c2 |
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g\breve\fermata
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
    f1
  }

	\clef bass
	f1 f2 f( | f) e4 d c2 c |
%  \time 4/2
%  \once \override Staff.TimeSignature.break-visibility = ##(#t #f #t)
%  g,\breve\fermata
}
