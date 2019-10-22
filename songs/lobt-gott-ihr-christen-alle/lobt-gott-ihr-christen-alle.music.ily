#(set-global-staff-size 16)

global = {
%  \numericTimeSignature
  \time 2/2
%	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \key f \major
  \set Staff.midiInstrument = #"voice oohs"
}


SopranoOneMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus I"
	\set Staff.shortInstrumentName = "C I"

	\incipit { \clef "mensural-c1" \key d \minor \time 2/2 c'4 }

  \repeat volta 2 {
  	\partial 4 c4 | a d c b | a2 a4 e' | f4. e8 d4 d |
    e2 r4 c | d c d e | f2 e4 e | f e d c |
    b2 a4 c8 b | a4 f f e | f2 r4
  }
  \repeat volta 2 {
    c'4 | d4. d8 d4 c |
    h4. h8 h4 c8 c | d4 e f d | e2 r4 e8 e |
    f2 r4 e8 e | d2 r4 c8 c | b2 r4 a8 a | g2 r4 c8 b |
    a4 a g g | a2 r4 e'8 e | f4 e8 e d4 c8 c |
    b4 a8 a g4 c8 b | a4 a g g | a2.
  }
}

stanzaOneLyrics = \lyricmode {
	Lobt Gott ihr Chris -- ten al -- le
	% Mu -- si -- cirt, tri -- um -- phirt, ju -- bi -- lirt,
}

SopranoTwoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus II"
	\set Staff.shortInstrumentName = "C II"

	\incipit { \clef "mensural-c1" \key d \minor \time 2/2 a'4 }

	\partial 4 a4 | c b a b | c2 c4
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \key d \minor \time 2/2 f'4 }

	\partial 4 f4 | f f f f | f2 f4
}

TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \key d \minor \time 2/2 c'4 }

	\clef "treble_8"
	\partial 4 c4 | c d a b | c2 c4
}

BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \key d \minor \time 2/2 f4 }

	\clef bass
  \repeat volta 2 {
  	\partial 4 f4 | f b a g | f2 f4 c | f4. c8 g'4 g |
    c,2 r4 f | d a b c | f,2 c'4 c | f c d a |
    b2 f4 f8 g | a4 b c c | f,2 f'4(
  }
  \repeat volta 2 {
    f4) | b,4. b8 b4 f' |
    g4. g8 g4 f8 f | d4 c f g | c,2 r4 c8 c |
    f2 r4 c8 c | d2 r4 a8 a | b2 r4 f8 f | c'2 r4 f,8 g |
    a4 f c' c | f,2 r4 c'8 c | f4 c8 c d4 a8 a |
    b4 f8 f c'4 f,8 g | a4 f c' c | f2.
  }
}
