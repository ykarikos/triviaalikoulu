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

	\incipit {
    \clef "mensural-c1"
    \key d
    \minor
    \time 2/2
    g'1
  }

  \repeat volta 2 {
	  g1 | f2 g | a1 | b | a2 g | f g | g fis |
    \set Timing.measureLength = #(ly:make-moment 4/2)
  }
  \alternative {
    {
      g1. g2
    }
    {
      g\breve
    }
  }
  \set Timing.measureLength = #(ly:make-moment 2/2)
  \repeat volta 2 {
    g1 | g2 a | b1 | c | a2 d | d cis |
    \set Timing.measureLength = #(ly:make-moment 4/2)
    d\breve |
    \set Timing.measureLength = #(ly:make-moment 2/2)
    a1 | c2 b | a1 | a | g2 a | b a | g1 |
    \set Timing.measureLength = #(ly:make-moment 4/2)
    fis\breve
    \set Timing.measureLength = #(ly:make-moment 2/2)
    b1 | a2 g | f1 | g | b2 a | g1 | fis |
    \set Timing.measureLength = #(ly:make-moment 4/2)
    g\breve
  }
}

stanzaOneLyrics = \lyricmode {
	Laus ti -- bi Chris -- te qui sal -- vos nos ho -- mi -- nes.
  Et \skip 1
  De -- o  qui nos ho -- mi -- nes co -- pu -- las,
  a -- vul -- sos pri -- us de -- lic -- tis La -- ren -- tum
  Sus -- ci -- pe nos su -- mus e -- nim tu -- i
}

stanzaTwoLyrics = \lyricmode {
   pro -- tec -- ti -- o -- ne tu -- a nos sus -- ci -- _
   \repeat unfold 2 { \skip 1 }
   pis.
  \repeat unfold 21 { \skip 1 }
  Et mi -- se -- re -- re nos -- tri Do -- mi -- nus.
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit {
    \clef "mensural-c3"
    \key d \minor
    \time 2/2
    d'1
  }

  \repeat volta 2 {
	  d1 | d2 d | f1 | f | f2 d | d r4 g, | d'2 d |
    \set Timing.measureLength = #(ly:make-moment 4/2)
  }
  \alternative {
    {
      d1. d2
    }
    {
      d\breve
    }
  }
  \set Timing.measureLength = #(ly:make-moment 2/2)
  \repeat volta 2 {
    d1 | d2 f | f1 | c | c2 d | a' a |
    \set Timing.measureLength = #(ly:make-moment 4/2)
    fis\breve |
    \set Timing.measureLength = #(ly:make-moment 2/2)
    d1 | c2 f | f1 | f | d2 f | f f | d1 |
    \set Timing.measureLength = #(ly:make-moment 4/2)
    d\breve |
    \set Timing.measureLength = #(ly:make-moment 2/2)
    f1 | f2 d | d1 | d | f2 f| d1 | d |
    \set Timing.measureLength = #(ly:make-moment 4/2)
    d\breve
  }
}

TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c3" \key d \minor \time 2/2 g1 }

	\clef "treble_8"
  \repeat volta 2 {
	  g1 | a2 b | c1 | d | c2 b | a c | a a |
    \set Timing.measureLength = #(ly:make-moment 4/2)
  }
  \alternative {
    {
      g1. g2
    }
    {
      g\breve
    }
  }
  \set Timing.measureLength = #(ly:make-moment 2/2)
  \repeat volta 2 {
    g1 | b2 c | d1 | e | f2 f | e e |
    \set Timing.measureLength = #(ly:make-moment 4/2)
    d\breve |
    \set Timing.measureLength = #(ly:make-moment 2/2)
    f1 | e2 d | c1 | a | b2 c | d c | b1 |
    \set Timing.measureLength = #(ly:make-moment 4/2)
    a\breve |
    \set Timing.measureLength = #(ly:make-moment 2/2)
    d1 | c2 b | a1 | b | d2 c | b1 | a |
    \set Timing.measureLength = #(ly:make-moment 4/2)
    g\breve
  }
}

BassMusic = \relative c' {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit {
    \clef "mensural-c3"
    \set Staff.middleCClefPosition = #4
    \set Staff.middleCPosition = #4
    \set Staff.clefPosition = #0
    \key d \minor
    \time 2/2
    g1
  }

	\clef bass
  \repeat volta 2 {
	  g1 | d2 g | f1 | b | f2 g | d c | d d |
    \set Timing.measureLength = #(ly:make-moment 4/2)
  }
  \alternative {
    {
      g1. g2
    }
    {
      g\breve
    }
  }
  \set Timing.measureLength = #(ly:make-moment 2/2)
  \repeat volta 2 {
    g1 | g2 f | b1 | a | f2 b | a a |
    \set Timing.measureLength = #(ly:make-moment 4/2)
    d,\breve |
    \set Timing.measureLength = #(ly:make-moment 2/2)
    d1 | a'2 b | f1 | f | g2 f | b, f' | g1 |
    \set Timing.measureLength = #(ly:make-moment 4/2)
    d\breve |
    \set Timing.measureLength = #(ly:make-moment 2/2)
    b1 | f'2 g | d1 | g | b,2 f' | g1 | d |
    \set Timing.measureLength = #(ly:make-moment 4/2)
    g\breve
  }

}
