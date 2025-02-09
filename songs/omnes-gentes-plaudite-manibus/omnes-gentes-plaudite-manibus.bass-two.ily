
BassTwoMusic = \relative c {
	\set Staff.instrumentName = #"Bassus II"
	\set Staff.shortInstrumentName = "B II"

	\incipit {
		\clef "mensural-f" \globalkey \globaltime
		r\longa
		f\longa\rest
		r\longa
		c1.
	}

	\clef bass
	\repeat unfold 12 { R1 | }
	c1( | c2) c | f, f'( | f4) f f2 |
}
