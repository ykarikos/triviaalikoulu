
BassTwoMusic = \relative c {
	\set Staff.instrumentName = #"Bassus II"
	\set Staff.shortInstrumentName = "B II"

	\incipit {
		\clef "mensural-f" \key f \major \time 2/2
		r1 f1
	}

	\clef bass
	R1 | R | f1 | d2 c | f,1 | R | R | R |
	f' | b2 f | g4 c, f g | c, f, b c | f,1 |
	r2 f' | b, f | f'1 |
	\repeat unfold 6 { R1 | }
	c' | f,2 a | d, f | b, d | g, b | f c' |
	f,1 | R | f' | d2 c | f,1 | 
	\repeat unfold 3 { R1 | }
	f' | c2 f | b,4 b' f g | f f c d | c1 |
	f,( | f2) f | b1 | f |
	\repeat unfold 7 { R1 | }
	r2 d' | d g | f d | a'1 | d,2 d | a1 |
	d2 f | c g' | c, f( | f4) c g'2 |
	c,1 | r2 c2 | f4 d c2 | r4 f g c, |
	f2 r4 c | f,2 f |
	\time 3/1
	f1 r\breve |
	\repeat unfold 5 { R\breve. | }
	f'\breve c1 | f1. c2 d1 | g d a' |
	g2 b1 f2 g1 | c,2 es1 b2 c1 | c\breve r1 |
	f f c | f,2 g a b c1 | f1 f c |
	f,2 g a b c1 | f,\breve f1 | f\breve. |
	f\breve. \bar "|."

}
