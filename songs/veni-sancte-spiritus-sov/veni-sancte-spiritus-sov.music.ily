#(set-global-staff-size 16)

global = {
  \time 2/2
%	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \tempo 1 = 70
  \key f \major
  \set Staff.midiInstrument = #"voice oohs"
}

SopranoThemeOne = {
  f1 | g | a | b | a2 g | a1 |
}

SopranoThemeTwo = {
  a2 a | g g | f f | g g | a g | a f | c' c | a1 |
}

SopranoThemeThree = {
  a2 a4 a | g2 g | f f4 f | g2 g | a g4 g | a2 c | a1 |
}

SopranoThemeFour = {
  a2 a | g g | f f | g g | a g4 g | a2 c | 
}

AltoThemeOne = {
  c1 | e | f | d | f2 e | f1 |
}

AltoThemeTwo = {
  f2 f | e e | d d | e e | f g | f f | f e | f1 |
}

AltoThemeThree = {
  f2 f4 f | e2 e | d d4 d | e2 e | f e4 f | f2 e | f1 |
}

AltoThemeFour = {
  f2 f | e e | d d | e e | f e4 f | f2 e | 
}

AltoThemeFive = {
  c2 f( | f) e | f1 | d | f2 e | f1 |
}

TenorThemeOne = {
  a1 | c | a | g | a2 c | c1 |
}

SopranoThemeOneTenor = {
  f,1 | g | a | b | a2 g | a1 |
}

BassThemeOneTenor = {
  f,1 | c | d | g | d2 c | f1 |
}

TenorThemeTwo = {
  c2 c | c c | a a | c c | c c | a d | g, c | c1 |
}

TenorThemeThree = {
  c2 c4 c | c2 c | a2 a4 a | c2 c | a2 c4 c | c2 c | c1 |
}

TenorThemeFour = {
  c2 c | c c | a a | c c | a2 c4 c | c2 c |
}

BassThemeOne = {
  f1 | c | d | g | d2 c | f1 |
}

BassThemeTwo = {
  f2 f | c c | d d | c c | f e | d b | c c | f1 |
}

BassThemeThree = {
  f2 f4 f | c2 c | d d4 d | c2 c | d c4 d | c2 c | f1 |
}

BassThemeFour = {
  f2 f | c c | d d | c c | d2 c4 d | c2 c | 
}

SopranoMusic = \relative c' {
	\set Staff.instrumentName = #"Cantus"
	\set Staff.shortInstrumentName = "C"

  \repeat unfold 6 { R1 | }
  \SopranoThemeOne \break
  \SopranoThemeOne
  \SopranoThemeOne \break

  \repeat volta 2 {
    \SopranoThemeTwo
  } \break

  \repeat unfold 6 { R1 | }
  \SopranoThemeOne \break
  \SopranoThemeOne
  \SopranoThemeOne \break

  \repeat volta 2 {
    \SopranoThemeTwo
  } \break

  \repeat volta 2 {
    \SopranoThemeThree
  } \break

  \repeat volta 2 {
    \SopranoThemeFour
  }
  \alternative {
    {
      a1 | \break
    }
    {
      a1( | a) |
    }
  }

  R1 | R1 |
  \bar "||"
  \SopranoThemeOne
  f1 | g | a | b | \break a2 g | a1 |
  \repeat unfold 6 { R1 | }
  \SopranoThemeOne \break

  \repeat volta 2 {
    \SopranoThemeTwo
  } \break

  a2 a4 a | g2 g | R1 | R1 |
  a2 g4 g | a2 c | a1 | \break
  R1 | R1 | f2 f4 f | g2 g |
  a2 g4 g | a2 c | a1 | \break

  a2 a | g g | R1 | R1 |
  a2 g4 g | a2 c | a1 | \break

  \SopranoThemeFour a1
  \bar "|."
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

  \repeat unfold 6 { R1 | }
  \AltoThemeOne \break
  \repeat unfold 6 { R1 | }
  \AltoThemeOne \break

  \repeat volta 2 {
    \AltoThemeTwo
  } \break

  \repeat unfold 6 { R1 | }
  \SopranoThemeOne \break
  \repeat unfold 6 { R1 | }
  \SopranoThemeOne \break

  \repeat volta 2 {
    \AltoThemeTwo
  } \break

  \repeat volta 2 {
    \AltoThemeThree
  } \break

  \repeat volta 2 {
    \AltoThemeFour
  }
  \alternative {
    {
      f1 | \break
    }
    {
      f1(^\markup{\italic{(chitarra o liuto ad lib)}} | f) |
    }
  }

  \repeat unfold 2 { R1 | }
  \bar "||"
  c2 f( | f) e | f1 | d2. e4 | f2 e | f1 |
  \AltoThemeFive
  \repeat unfold 6 { R1 | }
  \AltoThemeFive \break

  \repeat volta 2 {
    \AltoThemeTwo
  } \break

  f2 f4 f | e2 e | R1 | R1 |
  f2 e4 f | f2 e | f1 | \break
  R1 | R1 | d2 d4 d | e2 e |
  f2 e4 f | f2 e | f1 | \break

  f2 f | e e | R1 | R1 |
  f2 e4 f | f2 e | f1 | \break

  \AltoThemeFour f1
  \bar "|."
}

TenoreMusic = \relative c {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\clef "treble_8"
  \SopranoThemeOne
  \TenorThemeOne \break
  \repeat unfold 6 { R1 | }
  \TenorThemeOne \break

  \repeat volta 2 {
    \TenorThemeTwo
  } \break

  \SopranoThemeOneTenor
  \SopranoThemeOne \break
  \repeat unfold 6 { R1 | }
  \SopranoThemeOne \break

  \repeat volta 2 {
    \TenorThemeTwo
  } \break

  \repeat volta 2 {
    \TenorThemeThree
  } \break

  \repeat volta 2 {
    \TenorThemeFour
  }
  \alternative {
    {
      c1 | \break
    }
    {
      c1( | c) |
    }
  }

  \repeat unfold 2 { R1 | }
  \bar "||"
  \repeat unfold 6 { R1 | }
  \TenorThemeOne
  \SopranoThemeOneTenor
  \TenorThemeOne \break

  \repeat volta 2 {
    \TenorThemeTwo
  } \break

  R1 | R1 | f,2 f4 f | g2 g |
  a2 c4 c | c2 c | c1 | \break
  a2 a4 a | g2 g | R1 | R1 |
  a2 c4 c | c2 c | c1 | \break

  R1 | R1 | f,2 f | g g |
  a2 c4 c | c2 c | c1 |

  \TenorThemeFour c1
  \bar "|."
}

BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\clef bass
  \repeat unfold 6 { R1 | }
  \BassThemeOne \break
  \repeat unfold 6 { R1 | }
  \BassThemeOne \break

  \repeat volta 2 {
    \BassThemeTwo
  } \break

  \repeat unfold 6 { R1 | }
  \SopranoThemeOne \break
  \repeat unfold 6 { R1 | }
  \SopranoThemeOne \break

  \repeat volta 2 {
    \BassThemeTwo
  } \break

  \repeat volta 2 {
    \BassThemeThree
  } \break

  \repeat volta 2 {
    \BassThemeFour
  }
  \alternative {
    {
      f1 | \break
    }
    {
      f1( | f) |
    }
  }

  \repeat unfold 2 { R1 | }
  \bar "||"
  f1-\markup{\italic{B. c. senza canto}} | c | d | g | d2 c | f1 |
  \BassThemeOne
  \BassThemeOne
  \BassThemeOne \break

  \repeat volta 2 {
    \BassThemeTwo
  } \break

  f2-\markup{\italic{B. c. senza canto}} f4 f | c2 c |
  d d4 d | c2 c | d c4 d | c2 c | f1 | \break
  f2 f4 f | c2 c | d-\markup{\italic{B. c. senza canto}} d4 d |
  c2 c | d c4 d | c2 c | f1 | \break

  f2-\markup{\italic{B. c. senza canto}} f | c c | d d | c c |
  d2 c4 d | c2 c | f1 | \break

  \BassThemeFour f1 
  \bar "|."
}
