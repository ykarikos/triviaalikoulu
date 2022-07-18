TenoreTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor II"
	\set Staff.shortInstrumentName = "T II"

	\incipit {
		\clef "mensural-c4" \globalkey \globaltime
		r\longa
		c'\longa\rest
		r\longa
		c'2.
	}

	\clef "treble_8"
	\repeat unfold 12 { R1 | }
	c2. h4 | a2 g | a
}
