
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
	c c' | g4 a e f | e2 a | e1 |
	a,2 c | f, b( | b) c | g1 | c |
	r2 c | g c | g' c, | g g | c1 | r2 c | f c | R1 | R |
	r2 g' | c, g' |
	% 123
	a1 | e2 d | c e4 f( | f) g d2 | g,1 |
	r2 g'( | g4) g g,2 | g1 | c |
	r2 c( | c) c | g1 | c | R1 | R | R |
	r2 c | f e | a d, | a'4 c2 g4 | c,1 |
}
