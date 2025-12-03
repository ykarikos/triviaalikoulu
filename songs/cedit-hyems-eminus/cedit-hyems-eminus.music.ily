#(set-global-staff-size 16)

global = {
%  \numericTimeSignature
  \time 2/2
%	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \key d \minor
  \set Staff.midiInstrument = #"voice oohs"
}

SopranoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus"
	\set Staff.shortInstrumentName = "C"

	\incipit { \clef "mensural-c1" \key d \minor \time 2/2 g'2. }

  \repeat volta 2 {
  	g2. g4 | fis2 g4 a( | a) g fis2 | r4 f! g a | b2 a4 g( | g) fis g b |
    a g g fis | g8 a b c d4 b | a g g fis | g1 \break |
  }
  \repeat volta 2 {
    fis4. fis8 fis4 fis | g g fis2 | f!4. g8 a4 b | b a b2 |
    c4. c8 c4 d | h c d2 | b4. b8 a4 g | g fis g4. f16 e |
    d2 d4 d | e g g fis |
  }
  \alternative {
    {
      g1 |
    }
    {
      \set Timing.measureLength = #(ly:make-moment 4/2)
      g\breve \bar "|."
    }
  }
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \key d \minor \time 2/2 d'2. }

  \repeat volta 2 {
	  d2. d4 | d2 d4 f( | f) d d2 | r4 d d f | f2. d4 | es4. d8 b4. f'8 |
    f4 d es d | d2. d4 | d d es d | d1 \break |
  }
  \repeat volta 2 {
    d4. d8 d4 d | d es d2 | d4. d8 f4 f | f f f2 |
    f4. f8 f4 f | d g fis2 | g4. f!8 f4 d | es d d2 |
    h2. h4 | c d d d |
  }
  \alternative {
    {
      h1 |
    }
    {
      \set Timing.measureLength = #(ly:make-moment 4/2)
      h\breve \bar "|."
    }
  }
}

TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \key d \minor \time 2/2 b2. }

	\clef "treble_8"
  \repeat volta 2 {
	  b2. b4 | a2 b4 c( | c) b a2 | r4 a h c | d2 c8 a h4 |
    c4. a8 g4 d' | c h c a | b8 a g a b4 g | a b c a | g1 \break |
  }
  \repeat volta 2 {
    a4. a8 a4 a | h c a2 | a4. b8 c4 d | c c d2 |
    a4. a8 a4 b | g g a8 d, d'4 | d4. d8 c4 b | c a b2 |
    g2. g4 | g b a a | 
  }
  \alternative {
    {
      g1 |
    }
    {
      \set Timing.measureLength = #(ly:make-moment 4/2)
      g\breve \bar "|."
    }
  }
}

BassMusic = \relative c' {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \key d \minor \time 2/2 g2. }

	\clef bass
  \repeat volta 2 {
  	g2. g4 | d2 g4 f( | f) g d2 | r4 d g f |
    b,8 c d e f4 g | c,4. d8 es4 b |
    f' g c, d | g,2. g'4 | fis g c, d | g,1 \break |
  }
  \repeat volta 2 {
    d'4. d8 d4 d | g c, d2 | d4. g8 f4 b, | f' f b,2 |
    f'4. f8 f4 d | g es d2 | g4. b8 f4 g |
    c, d g,2( | g4) g'2 g4 | c, g d' d |
  }
  \alternative {
    {
      g,1 |
    }
    {
      \set Timing.measureLength = #(ly:make-moment 4/2)
      g\breve \bar "|."
    }
  }
}
