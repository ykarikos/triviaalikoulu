#(set-global-staff-size 16)

global = {
%  \numericTimeSignature
  \time 2/2
%  \autoBeamOff
  \key a \minor
  \set Staff.midiInstrument = #"voice oohs"
}


SopranoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus I"
	\set Staff.shortInstrumentName = "C I"

	\incipit { \clef "mensural-g" \key a \minor \time 2/2 d''2 }

  \repeat volta 2 {
  	a2 c8 d e4 | e2 d4 d | c2 h4 h | e8 d c4 h2 | a4 e e e8 fis | g4 g8 a h4 g |
    fis e fis2 | g4 g8 a h4 a | g e'4. d8 c4 | h4 a g a | h a gis2 | a2
  }
  \repeat volta 2 {
    r4 e | g e e e | r e' d c | h h r h | h4. h8 c4. c8 | d4. d8 d4 d |
% 2
    e4. e8 d4. d8 | c4 c h2 | a r4 e'8 d | c4 c h  h | a a r d8 c |
    h4 h a a | g g r d'8 c | h4 h a a | g g r  e' | c a gis gis | a a r a |
    a2 r4 a | h2 r4 h8 c | d4. d8 c h a4( | a) gis8 fis gis4 gis | a2 r4 a |
    a2 r4 a | h2 r4 h8 c | d4. d8 c h a4( | a) gis8 fis gis4 gis |
  }
  \alternative {
    {
      \set Timing.measureLength = #(ly:make-moment 1/2)
      a2 |
    }
    {
      \set Timing.measureLength = #(ly:make-moment 4/2)
      a\breve \bar "|."
    }
  }
}

stanzaOneLyrics = \lyricmode {
	I Her -- _ rans Tie -- na -- re
  lof -- wer Her -- ran och prij -- sar
  Hans _ hel -- _ _ _ _ _ _ ga hel -- ga namn.
  Lof -- _ _ wer med flöjt,
  lof -- wer ho -- nom med psal -- ta -- re och har -- por.

  Ty han är nå -- dig och så barm -- her -- tig,
  ja tå -- lig och af sto -- ra god -- het,
  sto -- ra god -- het, sto -- ra god -- het,

  lof -- wer med kla -- ra cym -- ba -- ler,
  lå -- ter och the lu -- tor klin -- ga
  lå -- ter och the lu -- tor klin -- ga
  siun -- ger med ett gladt hiär -- ta,

  lof prijs, lof prijs,
  prijs _ wa -- re Gud i sin hög -- _ _ da thron,

  lof prijs, lof prijs,
  prijs _ wa -- re Gud i sin hög -- _ _ da thron,
  thron.
}

SopranoTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Cantus II"
	\set Staff.shortInstrumentName = "C II"

	\incipit { \clef "mensural-g" \key a \minor \time 2/2 a'2 }

  \repeat volta 2 {
    e2 a8 h c4 | c2 h4 h | a8 h c d e4 h | c8 h a4 g2 | a4. a8 c2 | h4 h8 a g4 fis8 e |
    dis4 e2 dis4 | e2 r4 e'4( | e8) d c4 h a | g a e2 | e1 | e2
  }
  \repeat volta 2 {
    r4 c' h a g g | r g h a | g g r g | g4. g8 a4. a8 | a4. a8 h4 h |
% 2
    c4. c8 h4. h8 | a4 a gis2 | a2 r4 a8 a | a4 a gis gis | a a r h8 a |
    g4 g fis fis | g g r h8 a | g4 g fis fis | g g r c | a a e e | e e r fis |
    e2 r4 fis | g2 r4 g4 | fis a a e8 e | e2. e4 | e2 r4 fis |
    e2 r4 fis | g2 r4 g4 | fis a a e8 e | e2. e4 |
  }
  \alternative {
    {
      \set Timing.measureLength = #(ly:make-moment 1/2)
      e2 |
    }
    {
      \set Timing.measureLength = #(ly:make-moment 4/2)
      e\breve \bar "|."
    }
  }
}

stanzaOneLyricsSopranoTwo = \lyricmode {
	I Her -- _ rans Tie -- na -- re
  lof -- _ _ wer Her -- ran och _ prij -- sar
  Hans hel -- ga hel -- ga _ namn.
  Lof -- _ _ wer med flöjt,
  lof -- wer ho -- nom med psal -- tare och har -- por.

  Ty han är nå -- dig och så barm -- her -- tig,
  ja tå -- lig och af sto -- ra god -- het,
  sto -- ra god -- het, sto -- ra god -- het,

  lof -- wer med kla -- ra cym -- ba -- ler,
  lå -- ter och the lu -- tor klin -- ga
  lå -- ter och the lu -- tor klin -- ga
  siun -- ger med ett gladt hiär -- ta,

  lof prijs, lof prijs,
  prijs wa -- re Gud i sin hög -- da thron,

  lof prijs, lof prijs,
  prijs wa -- re Gud i sin  hög -- da thron,
  thron.
}


AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c2" \key a \minor \time 2/2 f'2 }

  \repeat volta 2 {
  	c2 e4 c | c2 d4 h | e2 e |
    r4 a, h2 | c4 c8 d e2( | e) d |
    h4 g h2 | r4 e4. d8 c4 | h4. a8 gis4 a |
    e' e r e | e8 d c4 h2 | cis
  }
  \repeat volta 2 {
    r4 e | d c h h | r e g e | e e r e |
    e4. e8 e4. e8 | fis4. fis8 g4 g |
    g4. g8 g4. g8 | e4 e e2 | e r4 e8 e |
    e4 e e e | e e r g8 g |
    d4 d d d | d d r g8 g | d4 d d d |
    d d r c8 d | e4 c h h | cis cis r d |
    cis2 r4 d | d2 r4 d | d4. d8 e4 c8 c | e2 h | cis r4 d4 |
    cis2 r4 d | d2 r4 d | d4. d8 e4 c8 c | e2 h |
  }
  \alternative {
    {
      \set Timing.measureLength = #(ly:make-moment 1/2)
      cis2 |
    }
    {
      \set Timing.measureLength = #(ly:make-moment 4/2)
      cis\breve \bar "|."
    }
  }
}

stanzaOneLyricsAlto = \lyricmode {
	I Her -- rans Tie -- na -- re
  lof -- wer och prij -- sar
  Hans _ hel -- ga, hel -- ga namn.
  Lof -- wer ho -- nom med flöjt,
  lof -- wer med psal -- ta -- re och har -- por.

  Ty han är nå -- dig och så barm -- her -- tig,
  ja tå -- lig och af sto -- ra god -- het,
  sto -- ra god -- het, sto -- ra god -- het,

  lof -- wer med kla -- ra cym -- ba -- ler,
  lå -- ter och the lu -- tor klin -- ga
  lå -- ter och the lu -- tor klin -- ga
  siun -- _ ger med ett gladt hiär -- ta,

  lof prijs, lof prijs,
  prijs wa -- re Gud i sin hög -- da thron,

  lof prijs, lof prijs,
  prijs wa -- re Gud i sin hög -- da thron,
  thron.
}


TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c3" \key a \minor \time 2/2 d'2 }

	\clef "treble_8"
  \repeat volta 2 {
	  a2 a4 a | g2 g4 g | e4. fis8 g4 g |
    a8 h c d e4 e | e c8 h a4 g8 a | h4 g g2 |
    r4 a h h | h2 h4 c8 d | e2 r4 e4(
    | e8) d c4 h a | gis4 a h2 | a
  }
  \repeat volta 2 {
    r4 g | g a e e | r c' d a | h h r h |
    h4. h8 a4. a8 | a4. a8 g4 g |
    g c d4. d8 | a4 a h2 | cis r4 c8 h |
    a4 a h h | cis cis r h8 c |
    d4 g, a a | h h r h8 c | d4 g, a a |
    h h r a | a a h h | a a r a |
    a2 r4 a | g2 r4 h | a fis e a | c h8 a h4 h | a2 r4 a |
    a2 r4 a | g2 r4 h | a fis e a | c h8 a h4 h |
  }
  \alternative {
    {
      \set Timing.measureLength = #(ly:make-moment 1/2)
      a2 |
    }
    {
      \set Timing.measureLength = #(ly:make-moment 4/2)
      a\breve \bar "|."
    }
  }
}

stanzaOneLyricsTenore = \lyricmode {
	I Her -- rans Tie -- na -- re
  lof -- wer Her -- ran och _ prij -- _ sar
  Hans hel -- ga _ namn.
  Lof -- _ wer med flöjt,
  lof -- wer med flöjt,
  lof -- wer med flöjt,
  lof -- wer med psal -- ta -- re och har -- por.

  Ty han är nå -- dig och så barm -- her -- tig,
  ja tå -- lig och af sto -- ra god -- het,
  sto -- ra god -- het, sto -- ra god -- het,

  lof -- wer med kla -- ra cym -- ba -- ler,
  lå -- ter och the lu -- tor klin -- ga
  lå -- ter och the lu -- tor klin -- ga
  siun -- ger med ett gladt hiär -- ta,

  lof prijs, lof prijs,
  prijs wa -- re Gud i sin hög -- _ _ da thron,

  lof prijs, lof prijs,
  prijs wa -- re Gud i sin hög -- _ _ da thron,
  thron.
}


BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

  \incipit {
    \clef "mensural-f"
    \set Staff.middleCClefPosition = #4
    \set Staff.middleCPosition = #4
    \set Staff.clefPosition = #0
    \key a \minor
    \time 2/2
    d2
  }

	\clef bass
  \repeat volta 2 {
  	a2 a8 h c4 | c2 g4 g | a a e e | r a e'2 | a, a | e4. fis8 g4. a8 |
    h4 c h2 | e4. fis8 g4 a | e2 e | e e4 e | e e e2 | a,2
  }
  \repeat volta 2 {
    r4 c | g a e' e | r c g a | e' e r e | e4. e8 a,4. a8 | d4. d8 g,4. g8 |
    c4. c8 g4. g8 | a4 a e'2 | a, r4 a8 a | a4 a e' e | a, a r g8 g |
    g4 g d' d | g, g r g8 g | g4 g d' d | g, g r a | a a e' e | a, a r d |
    a2 r4 d | g,2 r4 g' | d4. d8 a4 a8 a | e'2. e4 | a,2 r4 d |
    a2 r4 d | g,2 r4 g' | d4. d8 a4 a8 a | e'2. e4 |
  }
  \alternative {
    {
      \set Timing.measureLength = #(ly:make-moment 1/2)
      a,2 |
    }
    {
      \set Timing.measureLength = #(ly:make-moment 4/2)
      a\breve \bar "|."
    }
  }
}

stanzaOneLyricsBass = \lyricmode {
	I Her -- _ rans Tie -- na -- re
  lof -- wer Her -- ran och prij -- sar
  Hans hel -- ga namn.
  Lof -- wer med flöjt,
  lof -- wer med flöjt,
  lof -- wer med psal -- ta -- re och har -- por.

  Ty han är nå -- dig och så barm -- her -- tig,
  ja tå -- lig och af sto -- ra god -- het,
  sto -- ra god -- het, sto -- ra god -- het,

  lof -- wer med kla -- ra cym -- ba -- ler,
  lå -- ter och the lu -- tor klin -- ga
  lå -- ter och the lu -- tor klin -- ga
  siun -- ger med ett gladt hiär -- ta,

  lof prijs, lof prijs,
  prijs wa -- re Gud i sin hög -- da thron,

  lof prijs, lof prijs,
  prijs wa -- re Gud i sin hög -- da thron,
  thron.
}
