#(set-global-staff-size 16)

global = {
%  \numericTimeSignature
  \time 2/2
  \set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \key f \major
  \set Staff.midiInstrument = #"voice oohs"
}

% TODO: 
% - bar 27 first beat
% - bar 71 first beat

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
	ut e -- qu -- _ as _ _ me. Es -- to mi -- hi in De -- um
	Pro -- tec -- to -- _ _ _ rum et in lo -- cum 
	re -- fu -- gu -- i, 
	ut sal -- vum me fa -- _ ci -- as.

	Quo -- ni -- am for -- ti -- tu -- do me -- a
	et re -- fu -- gi -- um me -- um es -- tu,
	et prop -- ter no -- men tu -- um
	de -- du -- _ _ ces me 
	e -- nut -- ri -- es me e -- le -- du -- ces me,
	de -- la -- que -- o, quem abs con -- de -- _ _ _ runt
	mi -- _ _ _ hi,
	Quo -- ni -- am tu es pro -- tec -- _ _ _ _ tor me -- us.

	In ma -- _ nus tu -- as Do -- mi -- ne 
	com -- men -- _ do spi -- ri -- tum me -- um,
	re -- de -- mis -- ti me,
	Do -- mi -- ne De -- us ve -- _ _ _ ri -- _ ta -- tis.
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \key f \major \time 2/2 c'1 }

	c1 c | f e | f2 g g1 |
	e1 r2 
}

stanzaOneLyricsAlto = \lyricmode {
	In te Do -- mi -- ne spe -- ra -- vi
	non con -- fun -- dar in ae -- ter -- num.
	In jus -- ti -- ti -- a tu -- a li -- be -- ra me.
	Inc -- li -- na ad me au -- rem tu -- am ac -- ce -- le -- ra 
	ut e -- qu -- _ _ as me. Es -- to mi -- hi De -- um
	Pro -- tec -- to -- rum et in lo -- cum 
	re -- fu -- gu -- i, 
	ut sal -- vum me fa -- _ _ ci -- as.

	Quo -- ni -- am for -- ti -- tu -- do me -- a
	et re -- fu -- gi -- um me -- um es -- _ _ tu,
	et prop -- ter no -- men tu -- um
	de -- du -- ces me
	e -- nut -- ri -- es me __ _

	de -- du -- ces me,
	de -- la -- que -- o, 
	quem abs con -- de -- runt _
	mi -- hi,
	Quo -- ni -- am tu es pro -- tec -- tor me -- _ _ us.

	In ma -- _ nus tu -- as Do -- mi -- ne 
	com -- men -- do spi -- ri -- tum me -- um,
	re -- de -- mis -- ti me,
	Do -- mi -- ne De -- us ve -- _ _ ri -- ta -- tis.
}

TenoreMusic = \relative c {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c3" \key f \major \time 2/2 f1 }

	\clef "treble_8"
	f1 a | c1. c2 | c c d1 |
	c a2 b | c1 c | a2 f g1 |
	f r2 c' | c1 c | c2 c d1 | c2 f1 e2 |
% p2
	d1 c | r2 c c1 | a2 b c1 | d2 c b1 |
	a2 a c c | c1 c2 d | c f2. d4 e2 | f1 r2 f |
	e1 f | c2 f1 e2 | d c d1 | c c2 c |
% p3
	d1 c | a2 c b1 | a r2 c | c c c2. b4 |
	a2 b g1 | f\breve\fermata |
	c'1. c2 | c1 r2 c | c c1 c2 |
	d1 c | r2 c c f( | f) e c d | c f2. d4 e2 |
% p4
	f1 r2 c | f f e c | d1 c2 c | d1 b |
	c r2 c | c d1 c2 | b1 a | r1 r2 a |
	c c c1 | r2 a c c | c1 r2 c | c f2. e4 d c |
% p5
	d1 c | r2 c1 c2 | c1 r2 c | c1 r2 c |
	c1 c2 d( | d) c b1 | c\breve\fermata |
	\time 3/1 r\breve c1 |
	c\breve c1 | d\breve e1 | f\breve e1 | 
	f\breve f1 | c\breve c1 |
% p6
	d\breve c1 | a b\breve | a\breve r1 |
	a\breve b1 | c\breve c1 | c\breve r1 |
	f1. e2 d1 | c\breve r1 | c\breve c1 | d1. c2 b1 |
	a g\breve | f\breve. \bar "|."
}

stanzaOneLyricsTenor = \lyricmode {
	In te Do -- mi -- ne spe -- ra -- vi
	non con -- fun -- dar in ae -- ter -- num.
	In jus -- ti -- ti -- a tu -- a li -- be -- ra me.
	Inc -- li -- na ad me au -- rem tu -- am ac -- ce -- le -- ra 
	ut e -- qu -- _ _ as me. Es -- to mi -- hi De -- um
	Pro -- tec -- to -- rum et in lo -- cum 
	re -- fu -- gu -- i, 
	ut sal -- vum me fa -- _ _ ci -- as.

	Quo -- ni -- am for -- ti -- tu -- do me -- a
	et re -- fu -- gi -- um me -- um es -- _ _ tu,
	et prop -- ter no -- men tu -- um
	de -- du -- ces me
	e -- nut -- ri -- es me __ _

	de -- du -- ces me,
	de -- la -- que -- o, 
	quem abs con -- de -- runt _
	mi -- hi,
	Quo -- ni -- am tu es pro -- tec -- tor me -- _ _ us.

	In ma -- nus tu -- as Do -- mi -- ne 
	com -- men -- do spi -- ri -- tum me -- um,
	re -- de -- mis -- ti me,
	Do -- _ mi -- ne De -- us ve -- _ _ ri -- ta -- tis.
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
	f1 f2 f( | f) e4 d c2 c | f c g'1 |
	c, f2 g | f1 c | f2 d c1 |
	f1 r2 f | c f1 c2 | f1 b,4 c d e | f2 d1 e2 |
% p2
	f g c,1 | r2 c f1 | f2 g f1 | b,2 f' g1 |
	d2 f f c | f2. g4 a2 g | a b g1 | f r2 f |
	c c f f | f2. e4 f2 c | g' a g1 | c, f2 f |
% p3
	b,4 c d e f1 | f2 f g1 | d r2 c | f c f c |
	f b, c1 | f\breve\fermata |
	f1. c2 | f1 r2 f | c f1 f2 |
	b,1 f' | r2 f f f( | f) c f b, | f'1 g |
% p4
	f r2 f | f f c' a | g1 a2 a | g1 g |
	f r2 f | f b1 f2 | g1 d | r1 r2 c |
	f f f1 | r2 c  f f | f1 r2 f | f f g a |
% p5
	g1 c, | r2 f1 c2 | c1 r2 c | f1 r2 f |
	f2. g4 a2 b( | b) a g1 | f\breve\fermata |
	\time 3/1 r\breve f1 |
	f1. g2 a1 | g\breve c,1 | f\breve c1 | f\breve f1 | f\breve c1 |
% p6
	g'\breve a1 | f g\breve | d\breve r1 |
	d\breve g1 | f\breve c1 | f\breve r1 |
	f\breve g1 | a\breve r1 |
	f\breve f1 | d1. e2 f1 | b, c\breve |
	f,\breve. \bar "|."
}

stanzaOneLyricsBass = \lyricmode {
	In te Do -- _ _ _ mi -- ne spe -- ra -- vi
	non con -- fun -- dar in ae -- ter -- num.
	In jus -- ti -- ti -- a tu -- _ _ _ a li -- _ be -- ra me.
	Inc -- li -- na ad me au -- rem tu -- am ac -- ce -- le -- ra __ _ _
	ut e -- qu -- as me. Es -- to mi -- hi in De -- _ _ um
	Pro -- tec -- to -- rum et in lo -- _ _ _ cum 
	re -- fu -- gu -- i, 
	ut sal -- vum me fa -- _ _ ci -- as.

	Quo -- ni -- am for -- ti -- tu -- do me -- a
	et re -- fu -- gi -- um me -- um es -- tu,
	et prop -- ter no -- men tu -- um
	de -- du -- ces me
	e -- nut -- ri -- es me __ _

	de -- du -- ces me,
	de -- la -- que -- o, 
	quem abs con -- de -- runt
	mi -- hi,
	Quo -- ni -- am tu es pro -- tec -- _ tor me -- _ _ us.

	In ma -- _ nus tu -- as Do -- mi -- ne 
	com -- men -- do spi -- ri -- tum me -- um,
	re -- de -- mis -- ti me,
	Do -- mi -- ne De -- us ve -- _ _ ri -- ta -- tis.
}

