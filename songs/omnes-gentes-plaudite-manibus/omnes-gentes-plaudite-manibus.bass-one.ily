BassOneMusic = \relative c {
	\set Staff.instrumentName = #"Bassus I"
	\set Staff.shortInstrumentName = "B I"

	\incipit { \clef "mensural-f" \globalkey \globaltime c1 }

	\clef bass
	c1 | g' | f | c2 g'( | g4) e a2 | g d |
	e a4. gis8 | a4 e a2 | e d | d8( e f g a2) | d, g4 c, | g'4. a8 g2 | c,1 |
	\repeat unfold 3 {R |}
}
