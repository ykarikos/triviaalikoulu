#(set-global-staff-size 16)

global = {
%  \numericTimeSignature
  \time 4/4
%	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \key c \major
  \set Staff.midiInstrument = #"voice oohs"
  \omit Slur
}


SopranoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus I"
	\set Staff.shortInstrumentName = "C I"

	\incipit { \clef "mensural-g" \key f \major \time 2/2 f''4 }

  \repeat volta 2 {
    \partial 4 c4 |	a( c) c h |
    \set melismaBusyProperties = #'()
    \undo \omit Slur \slurDashed
    c2 c4 c8( c) | h4 c c h c2 r4 c8 c |
    h4 h a a | gis gis r c8 c | h4 a a gis | a2.
  }
  \repeat volta 2 {
    a4 | h a h c | d2 d4 g, | a g a h | c2 r4 c8 c |
    h4 h8 h a4 a8 a | gis4 gis r c8 c |
    h4 a a gis | a2. \bar "|."
  }
}

stanzaOneLyrics = \lyricmode {
	Nunc Zymp -- ho -- ni -- za -- te lau -- _ des De -- o nost -- ro
  qu -- ia nos -- ter est Sal -- va -- tor, qu -- ia nos -- ter cre -- a -- tor.
  Nam Chris -- tus  dul -- cis men -- tis te -- ne -- bras dis -- cu -- tit
  a -- ni -- mas -- que pi -- us re -- fo -- cil -- lat le -- vi -- ta -- te Sui ju -- gi.
}

stanzaTwoLyrics = \lyricmode {
  Id cir -- co gau -- de -- te  ju -- ve -- nes cum se -- ni bus
  o -- pu -- len -- ti cum men -- di -- cis, mu -- li -- e -- res et vi -- ri.
  Di -- ce -- mus  er  -- go gra -- tes Chris -- to De -- o nost -- ro,
  a -- lae -- res sci -- mus at -- que pre -- ce -- mur
  ma -- la cunc -- ta pro -- pel -- lat.
}

SopranoTwoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus II"
	\set Staff.shortInstrumentName = "C II"

	\incipit { \clef "mensural-g" \key f \major \time 2/2 c''4 }

  \repeat volta 2 {
    \partial 4 g4 | f( e) d d |
    \set melismaBusyProperties = #'()
    \undo \omit Slur \slurDashed
    e2 e4 g8( g) | f4 e d d | e2 r4 g8 g |
    g4 g e e | e e  r g8 g | g4 e e e | e2.
  }
  \repeat volta 2 {
    e4 | g a g e | f2 f4 e |  f g f d | e2 r4 g8 g |
    g4 g8 g e4 e8 e | e4 e r g8 g |
    g4 e f e | e2. \bar "|."
  }
}


AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c2" \key f \major \time 2/2 a'4 }

  \repeat volta 2 {
    \partial 4 e4 | d( c) a d |
    \set melismaBusyProperties = #'()
    \undo \omit Slur \slurDashed
    c2 c4 e8( e) | d4 c a d | c2 r4 e8 e |
    d4 d c c | h h r e8 e | d4 c h e | cis2.
  }
  \repeat volta 2 {
    c4 | d fis e e | d2 d4 e | c e d d | c2 r4 e8 e |
    d4 d8 d c4 c8 c | h4 h r c8 c | d4 a a e' |
    cis2. \bar "|."
  }
}

TenoreMusic = \relative c {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c3" \key f \major \time 2/2 a4 }

	\clef "treble_8"
  \repeat volta 2 {
    \partial 4 e4 | f( g) a g |
    \set melismaBusyProperties = #'()
    \undo \omit Slur \slurDashed
    g2 g4 e8( e) | f4 g a g | g2 r4 c8 c|
    d4 h c a | h e, r4 c'8 c | d4 a h h | a2.
  }
  \repeat volta 2 {
    a4 | d d h a | a2 a4 c | c c a g | g2 r4 c8 c |
    d4 h8 h c4 a8 a | h4 e, r e'8 e | d4 c d h | a2. \bar "|."
  }
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
    \time 2/2 f4
  }

	\clef bass
  \repeat volta 2 {
    \partial 4 c4 | d( e) f g |
    \set melismaBusyProperties = #'()
    \undo \omit Slur \slurDashed
    c,2 c4 c8( c) | d4 e f g | c,2 r4 c8 c |
    g4 g a a | e' e r c8 c | g4 a e' e | a,2.
  }
  \repeat volta 2 {
    a'4 | g fis g a | d,2 d4 c | f e f g |
    c,2 r4 c8 c | g'4 g8 g a4 a,8 a |
    e'4 e r c8 c | g'4 a d, e | a,2. \bar "|."
  }
}
