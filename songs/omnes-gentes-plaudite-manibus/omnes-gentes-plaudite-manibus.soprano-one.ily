SopranoOneMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus I"
	\set Staff.shortInstrumentName = "C I"

	\incipit { \clef "mensural-c1" \globalkey \globaltime g'1 }

	g1 | g | a1 | g2 h( | h4) h a2 | h a |
	gis2 a4. h8 | c4 h a2 | gis a | a1 | a2 h4 c | d4. c8 h2 | c1 |
	\repeat unfold 11 {R |}
	% s 122
	r2 g | g g | h c | d e | d4( c h a | g2) g | a g | r c | c c4 h | a g g fis | g1 |
	\repeat unfold 5 { R1 | }
	% s 123
	r2 h( | h4) h d2 | h1 | d |	 r2 g, | h c |
	g1( | g) | r2 g | a h | c d | e4 c2 h4 | c1 |
	\repeat unfold 3 { R1 | }
	% s 124
	r2 e, | fis g | a h | c4 e2 d4 | e1 | R | R | R |
	r2 g, | a2. a4 | gis2 a | h4 c2 h4 | c1 | R | R |
	r2 g | g4 c2 h4 | c2 r4 g | g c2 h4 | c2 d |

	\time 3/1
    \set Score.tempoHideNote = ##t
    \tempo 2 = 240
	e\breve r1 |
	h1. a2 h1 | g1. g2 g1 | a1. g2 a1 | g f g |
	g e d | e\breve r1 |
	\repeat unfold 5 { R\breve. | }
}
