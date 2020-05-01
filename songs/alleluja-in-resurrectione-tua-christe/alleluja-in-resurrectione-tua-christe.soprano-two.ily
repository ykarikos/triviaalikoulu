SopranoTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Cantus II"
	\set Staff.shortInstrumentName = "C II"

	\incipit {
		\clef "mensural-c1" \key f \major \time 2/2
		r1 f'1
	}

	R1 | R | f1 | f2 g | a1 | R | R | R |
	c | b2 a | g4 g a g | g f f e | f1 | 
	r2 a | b c | a1 |
	\repeat unfold 6 { R | }
	c1 | c2 c | a a | f f | d d | f e | f1 | R |
	f | f2 g | a1 | R |
	R | R | a1 | g2 a | b4 b a g | a a g fis | g1 |
	a | f | d | a' |
	\repeat unfold 7 { R | }

	r2 a | a g | a d( | d) cis | d a | a1 | a2 a | g g |
	g a( | a4) c h2 | c1 | r2 g | a4 b c2 | r4 c b c | 
	a2 r4 c | c2 a |

	\time 3/1
	a\breve r1 | 
	\repeat unfold 5 { R\breve. | }
	a\breve g1 | a1. g2 fis1 | g a a | b2 b1 a2 g1 |
	g2 g1 f2 e1 | f\breve r1 |
	c'1 a g | a2 b c d c1 |
	c a g | a2 b c d c1 |
	c a a | a2 b c b a g | a\breve. \bar "|."
}
