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
	r2 g | g g |
	% 123
	e1 | e2 fis | g g4 f( | f) d d2 | d1 |
	r2 g( | g4) g g2( | g) d | e1 |
	r2 e( | e) e | d1 | e1 | R1 | R | R |
	r2 e | f g | a a | a4 g2 g4 | e1 |
}
