
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
	% 124
	R | R | R |
	r2 a | d c | f e | a g4. g8 | c,1 | R | R | R |
	r2 c | f d | e a4 g( | g) c, g'2 | c, r4 g' | e c g2 | c r4 g' | e c g2 |

	% 125
	\time 3/1
    \set Score.tempoHideNote = ##t
    \tempo 2 = 240
	c\breve r1 |
	\repeat unfold 6 { R\breve. | }
	c1. g2 c1 | f1. c2 f1 | d1. a2 d1 |
	% 126
	g a g | c, c g |
	\globaltime c | R |
	g | c2 e | d1 | R |
	a d2 f | e1 | R | R | R |
	r2 c | g' d |
}
