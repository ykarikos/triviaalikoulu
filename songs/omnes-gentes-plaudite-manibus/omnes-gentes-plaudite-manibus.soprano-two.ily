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
	g4. f8 e4 d e f2 e4 | f2
}
