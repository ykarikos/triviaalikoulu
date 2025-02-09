SopranoOneMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus I"
	\set Staff.shortInstrumentName = "C I"

	\incipit { \clef "mensural-c1" \globalkey \globaltime g'1 }

	g1 | g | a1 | g2 h( | h4) h a2 | h a |
	gis2 a4. h8 | c4 h a2 | gis a | a1 | a2 h4 c | d4. c8 h2 | c1 |
	\repeat unfold 3 {R |}
}
