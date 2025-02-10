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
	r2 h | c h |
	% 123
	a1 | gis2 a | c h4 a( | a) g2 fis4 | g1 | r2 h( | h4) h d2 | h1 | c |
	r2 g | c c( | c h) | c1 | R1 | R | R | r2 g | a h | c d | e4 c2 h4 | c1 |
}
