#(set-global-staff-size 16)

global = {
%  \numericTimeSignature
  \time 2/2
	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \key f \major
  \set Staff.midiInstrument = #"voice oohs"
}


SopranoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus"
	\set Staff.shortInstrumentName = "C"

	\incipit {
    \clef "mensural-g"
    \set Staff.middleCClefPosition = #3
    \set Staff.middleCPosition = #3
    \set Staff.clefPosition = #0
    \key f \major
    \time 2/2
    c'1.
  }

	c1. a2 | c1 a2 c | b1 a | r2 c b a | f g a1 |
  g1. g2 | g1 g2 a( | a) g f f | e e r g | a c c h |
  c2. b4 a2 g | f1 e4 f g e | f1. e4 d | e2 f f1( | f) f2 f2 | f\breve\fermata |
% 2
  a1 a | a2 g f f | e e r g | a c b g |
  a c b a | f g a a | f g a b |
  \set Timing.measureLength = #(ly:make-moment 2/2)
  c2. b4 |
  \set Timing.measureLength = #(ly:make-moment 4/2)
  a2 g f f | e1 r2 c | d f1 e2 |
  \set Timing.measureLength = #(ly:make-moment 2/2)
  f1( |
  \set Timing.measureLength = #(ly:make-moment 4/2)
  f) r | r a | a2 a b1 | a2 a b b | a a b1( | b) a |
% 3
  r2 a f f | f f f f | e1 r2 g | a b c1 |
  c2 c b a | f g a a | g1 r2 g | g1 g2 a( | a) g f f | e e r g |
  a c c h | c2. b4 a2 g | f1  e4 f g e | f1. e4 d | e2 f f1( |
  f) f2 f | f\breve \bar "|."
}

stanzaOneLyrics = \lyricmode {
	Gau -- de et lae -- _ ta -- re, Gau -- de et lae -- ta -- re,
  Gau -- de et lae -- ta -- re, Hie -- ru -- sa -- lem.
  Et ca -- ni -- to Al -- le -- _ _ lu -- ja,
  Al -- _ _ _ le -- _ _  lu -- ja, Al -- le -- lu -- ja

  Rex Re -- gum at -- que coe -- lo -- rum
  Et Do -- mi -- nus An -- ge -- lo -- rum,
  An -- ge -- lo -- rum,
  Et Do -- mi -- nus An -- ge -- lo -- rum,
  An -- ge -- lo -- rum,
  App -- ro -- ping -- va -- bit,
  As -- sump -- ta car -- ne ex Ma -- ri -- a Vir -- gi -- ne.
  Par -- vo que lac -- te pas -- tus est,
  per -- quem to -- ti -- us mun -- di
  mac -- hi -- na re -- gi -- tur,

  Et fac -- tus est ser -- vus hu -- mi -- lis.
  Et in car -- ne no -- bis si -- mi -- _ lis.
  Al -- _ _ _ le -- _ _  lu -- ja,
  Al -- le -- lu -- ja.
}

stanzaOneLyricsAlto = \lyricmode {
	Gau -- de et lae -- ta -- re, Gau -- de et lae -- ta -- re,
  Gau -- de et lae -- ta -- re, Hie -- ru -- sa -- lem.
  Et ca -- ni -- to Al -- le -- lu -- ja, Al -- le -- lu -- ja,
  Al -- le -- lu -- ja, Al -- le -- _ lu -- ja

  Rex Re -- gum at -- que coe -- lo -- rum
  Et Do -- mi -- nus An -- ge -- lo -- rum,
  An -- ge -- lo -- rum,
  Et Do -- mi -- nus An -- ge -- lo -- rum,
  An -- ge -- lo -- rum,
  App -- ro -- ping -- va -- bit,

  As -- sump -- ta car -- _ ne ex Ma -- ri -- a Vir -- gi -- ne.
  Par -- vo que lac -- te pas -- tus est,
  per -- quem to -- ti -- us mun -- di
  mac -- hi -- na re -- gi -- tur,

  Et fac -- tus est ser -- vus hu -- mi -- lis.
  Et in __ _ car -- _ _ ne no -- bis si -- mi -- lis.
  Al -- le -- lu -- ja,
  Al -- le -- _ lu -- ja.
}

stanzaOneLyricsTenore = \lyricmode {
	Gau -- de et __ _ lae -- ta -- re, Gau -- de et lae -- ta -- re,
  Gau -- de et lae -- ta -- re, Hie -- ru -- sa -- lem.
  Et ca -- ni -- to Al -- le -- _ _ _ _ _ lu -- ja, __ _ _
  Al -- le -- _ lu -- ja,
  Al -- le -- _ _ lu -- _ _ ja.

  Rex Re -- gum at -- que coe -- lo -- rum
  Et Do -- mi -- nus An -- ge -- lo -- rum,
  An -- ge -- lo -- rum,
  Et Do -- mi -- nus An -- ge -- lo -- rum,
  An -- ge -- lo -- rum,
  App -- ro -- ping -- va -- _ bit,

  As -- sump -- ta car -- ne ex Ma -- ri -- a Vir -- gi -- ne.
  Par -- vo que lac -- te pas -- tus est,
  per -- quem to -- ti -- us mun -- di
  mac -- hi -- na re -- gi -- tur,

  Et fac -- tus est ser -- vus hu -- mi -- lis.
  Et in car -- ne no -- bis si -- _ _ _ _ mi -- lis.
  Al -- le -- _ lu -- ja,
  Al -- le -- _ _ _ _ _ lu -- ja.
}

stanzaOneLyricsBass = \lyricmode {
	Gau -- de et lae -- ta -- re, Gau -- de et lae -- ta -- re,
  Gau -- de et lae -- ta -- re, Hie -- ru -- sa -- lem.
  Et ca -- ni -- to Al -- le -- _ _ lu -- ja,
  Al -- le -- lu -- _ _ ja,
  Al -- le -- _ lu -- _ ja.

  Rex Re -- gum at -- que coe -- lo -- rum
  Et Do -- mi -- nus An -- ge -- lo -- rum,
  An -- ge -- lo -- rum,
  Et Do -- mi -- nus An -- ge -- lo -- rum,
  An -- ge -- lo -- rum,
  App -- ro -- ping -- _ va -- bit,

  As -- sump -- ta car -- ne ex Ma -- ri -- a Vir -- gi -- ne.
  Par -- vo que lac -- te pas -- tus est,
  per -- quem to -- ti -- us mun -- di
  mac -- hi -- na re -- gi -- tur,

  Et fac -- tus est ser -- vus hu -- mi -- lis.
  Et in car -- ne no -- bis __ _ si -- mi -- lis.
  Al -- le -- lu -- _ _ ja,
  Al -- le -- lu -- ja.
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \key f \major \time 2/2 r1 f' }

	r1 f | e2 f1 f2 | \omit Slur d2.( e4) f1 |
  r2 a g f | f e f1 |
  \undo \omit Slur
  e1. e2 | e1 e2 f( | f) e d d | c c r e | f g a g |
  e c c c | d d g,1 | r2 d' d b | c1. c2 |
  \undo \omit Slur d b d1 | c\breve\fermata |
% 2
  f1 f | f2 e d d | c c r e | f f d e |
  f a g e | d2. e4 f2 f | f e d d |
  \set Timing.measureLength = #(ly:make-moment 2/2)
  c c |
  \set Timing.measureLength = #(ly:make-moment 4/2)
  c c d d | g,1 r2 g | a b g1 |
  \set Timing.measureLength = #(ly:make-moment 2/2)
  f |
  \set Timing.measureLength = #(ly:make-moment 4/2)
  R\breve | r1 f' | f2 f d2. e4 | f2 f d2. e4 | f2 f g1( | g) f |
% 3
  r2 c d d | c c d d | g,1 r2 e'2 | f f g g |
  a1 g2 f | f e f f | e1 r2 e | e1 e2 f( | f) e d d | c c r e |
  f g a2. g4 | e2 c c c | d d g,1 | r2 d' d b c1. c2 |
  d b d1 | c\breve \bar "|."
}

TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c3" \key f \major \time 2/2 c'1 }

	\clef "treble_8"
	c1 a2 c( | c) a1 a2 | b1 c | r2 f d c | d b c1 |
  c1. c2 | c1 c2 c( | c) c a b | g g r c | c e f d |
  c f,4 g a b c2( | c) h c2. b4 | a2 b a f | a1 g2. a4 |
  b c d2 d c4 b | a\breve\fermata |
% 2
  c1 c | c2 c a b | g g r c | c a b c |
  c a b c | d g, c1 | R\breve |
  \set Timing.measureLength = #(ly:make-moment 2/2)
  r2 a |
  \set Timing.measureLength = #(ly:make-moment 4/2)
  f g a b | c2. b4 a2 g | f f c'1 |
  \set Timing.measureLength = #(ly:make-moment 2/2)
  r2 c |
  \set Timing.measureLength = #(ly:make-moment 4/2)
  d f f e | f1 r2 c | d c b1 | c2 c b b | c c es1( | es) c |
% 3
  r2 a b b | a c c h | c1 r2 c | c d e e |
  f1 d2 c | d b c c | c1 r2 c | c1 c2 c( | c) c a b | g g r c |
  c e f d | c f,4 g a b c2( | c) h c2. b4 | a2 b a f |
  a1 g2. a4 | b c d2. c4 b2 | a\breve \bar "|."
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
    \time 2/2 r1 f
  }

	\clef bass
	r1 f | c2 f1 f2 | g1 f | r2 f g a | b g f1 |
  c1. c2 | c1 c2 f( | f) c d b | c c r c | f c f g |
  a2. g4 f2 e | d1 c2 c | d b d1 | c\breve | b1 b4 c d e | f\breve |
% 2
  f1 f | f2 c d b | c c r c | f f g c, | f f g a | b g f1 | R\breve |
  \set Timing.measureLength = #(ly:make-moment 2/2)
  r2 f |
  \set Timing.measureLength = #(ly:make-moment 4/2)
  f e d d | c2. c4 f2 e | d d c1 |
  \set Timing.measureLength = #(ly:make-moment 2/2)
  r2 f |
  \set Timing.measureLength = #(ly:make-moment 4/2)
  b a g g | f1 r2 f | f f g1 | f2 f g g | f f es1( | es) f |
% 3
  r2 f d d | f2. e4 d2 d | c1 r2 c | f d c c |
  f1 g2 a | b g f f | c1 r2 c | c1 c2 f( | f) c d b | c c r c |
  f c f g | a2. g4 f2 e | d1 c2 c | d b d1 | c\breve |
  b1 b2 b | f'\breve \bar "|."
}
