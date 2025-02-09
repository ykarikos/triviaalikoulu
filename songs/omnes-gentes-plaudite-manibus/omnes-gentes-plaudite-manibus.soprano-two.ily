SopranoTwoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus II"
	\set Staff.shortInstrumentName = "C II"

	\incipit {
		\clef "mensural-c1" \globalkey \globaltime
		h'\longa\rest
		r\longa
		h'\longa\rest
		g'4.
	}

	\repeat unfold 12 { R1 | }
	g4.( f8 e4 d e f2) e4 | f2 a2( | a4) a a2 |
	g c | h4 a gis a | gis2 a( | a) gis | a g | a f( | f) e | d1 | e1 |
	r2 g | g g | h c | d g,( | g) e | r g | a g | R1 | R |
}
