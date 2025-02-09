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
	r2 c2( | c) c | c f2( | f4) f f2 |
	e g | g4 e e d | e2 e | e1 | e2 c | a d( | d) c( | c) h | c1 |
	r2 e | d c | h g | g d' | e1 | r2 e | f e| R1 | R |
}
