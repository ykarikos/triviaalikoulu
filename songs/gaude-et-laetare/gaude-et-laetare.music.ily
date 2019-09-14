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

	\incipit { \clef "mensural-c1" \key f \major \time 2/2 c''1. }

  \set Timing.measureLength = #(ly:make-moment 4/2)
	c1. a2 | c1 a2( c) | b1 a | r2 c b a | f g a1 |
  g1. g2 | g1 g2 a( | a) g f f | e e r g | a c c h |
  c2.( b4 a2) g | f1 e4 f g e | f1. e4 d | e2 f f1( | f) f2 f2 | f\breve\fermata |
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
	Gau -- de et lae -- ta -- re, Gau -- de et lae -- ta -- re,
  Gau -- de et lae -- ta -- re, Hie -- ru -- sa -- lem.
  Et ca -- ni -- to Al -- le -- lu -- ja,
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

stanzaOneLyricsTenore = \lyricmode {
	Gau -- de et __ _ lae -- ta -- re,
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \key f \major \time 2/2 r1 f }

  \set Timing.measureLength = #(ly:make-moment 4/2)
	r1 f | e2 f1 f2 |
  \omit Slur d2.( e4) f1 |
%  d\breve\fermata
}

TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \key f \major \time 2/2 c1 }

	\clef "treble_8"
  \set Timing.measureLength = #(ly:make-moment 4/2)
	c1 a2 c( | c) a1 a2 | b1 c |
%  g\breve\fermata
}

BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \key f \major \time 2/2 r1 f }

	\clef bass
  \set Timing.measureLength = #(ly:make-moment 4/2)
	r1 f | c2 f1 f2 | g1 f |
%  g,\breve\fermata
}
