AltoTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus II"
	\set Staff.shortInstrumentName = "A II"

	\incipit {
		\clef "mensural-c3" \globalkey \globaltime
		r\longa
		e'\longa\rest
		r\longa
		r2 c'2
	}

	\repeat unfold 12 { R1 | }
	r2 c2( | c) c | c 
}
