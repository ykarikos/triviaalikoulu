#(set-global-staff-size 16)

global = {
  \time 2/2
%	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \key f \major
  \set Staff.midiInstrument = #"voice oohs"
}

SopranoThemeOne = {
  f1 | g | a | b | a2 g | a1 |
}

SopranoThemeTwo = {
  a2 a | g g | f f | g g | a g | a f | c' c | a1 |
}

AltoThemeOne = {
  c1 | e | f | d | f2 e | f1 |
}

AltoThemeTwo = {
  f2 f | e e | d d | e e | f g | f f | f e | f1 |
}

TenorThemeOne = {
  a1 | c | a | b | d2 c | c1 |
}

SopranoThemeOneTenor = {
  f,1 | g | a | b | a2 g | a1 |
}

TenorThemeTwo = {
  c2 c | c c | a a | c c | c c | c d | g, c | c1 |
}

BassThemeOne = {
  f1 | c | d | g | d2 c | f1 |
}

BassThemeTwo = {
  f2 f | c c | d d | c c | f e | d b | c c | f1 |
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
%  \bar "|."
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

  \repeat unfold 6 { R1 | }
  \AltoThemeOne
  \repeat unfold 6 { R1 | }
  \AltoThemeOne

  \repeat volta 2 {
    \AltoThemeTwo
  }

  \repeat unfold 6 { R1 | }
  \SopranoThemeOne
  \repeat unfold 6 { R1 | }
  \SopranoThemeOne

  \repeat volta 2 {
    \AltoThemeTwo
  }
  %  \bar "|."
}

TenoreMusic = \relative c {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\clef "treble_8"
  \SopranoThemeOne
  \TenorThemeOne
  \repeat unfold 6 { R1 | }
  \TenorThemeOne

  \repeat volta 2 {
    \TenorThemeTwo
  }

  \SopranoThemeOneTenor
  \SopranoThemeOne
  \repeat unfold 6 { R1 | }
  \SopranoThemeOne

  \repeat volta 2 {
    \TenorThemeTwo
  }
  %  \bar "|."
}

BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\clef bass
  \repeat unfold 6 { R1 | }
  \BassThemeOne
  \repeat unfold 6 { R1 | }
  \BassThemeOne

  \repeat volta 2 {
    \BassThemeTwo
  }

  \repeat unfold 6 { R1 | }
  \SopranoThemeOne
  \repeat unfold 6 { R1 | }
  \SopranoThemeOne

  \repeat volta 2 {
    \BassThemeTwo
  }
  %  \bar "|."
}
