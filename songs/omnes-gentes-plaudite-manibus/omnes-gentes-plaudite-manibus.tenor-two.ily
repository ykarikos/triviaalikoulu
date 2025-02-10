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
	c2.( h4 | a2) g | a c2( | c4) c c2 |
	c e | d4 c h a | h2 c | h1 | a2 e | c' b( | b) g | g1 | g |
	r2 c | h g | g2. a4 | h2 h | c1 | r2 c | c c | R1 | R |
	r2 d | e d |
	% 123
	c1 | h2 d | e e4 c( | c) h a2 | g1 |
	r2 d'( | d4) d h2 | g1 | g |
	r2 g( | g) g | d'1 | c | R1 | R | R |
	r2 c | c e | e f | e4 e2 d4 | c1 |
}
