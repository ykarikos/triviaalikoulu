SopranoOneMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus I"
	\set Staff.shortInstrumentName = "C I"

	\incipit { \clef "mensural-c1" \globalkey \globaltime g'1 }

	g1 | g | a1 | g2 h( | h4) h a2 | h a |
	gis2 a4. h8 | c4 h a2 | gis a | a1 | a2 h4 c | d4. c8 h2 | c1 |
	\repeat unfold 11 {R |}
	% s 122
	r2 g | g g | h c | d e | d4( c h a | g2) g | a g | r c | c c4 h | a g g fis | g1 |
	\repeat unfold 6 { R |}
}
