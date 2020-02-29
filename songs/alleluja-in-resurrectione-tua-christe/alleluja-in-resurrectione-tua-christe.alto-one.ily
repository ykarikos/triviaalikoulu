AltoOneMusic = \relative c' {
	\set Staff.instrumentName = #"Altus I"
	\set Staff.shortInstrumentName = "A I"

	\incipit { \clef "mensural-c3" \key f \major \time 2/2 c'1 }

	c1 | d2 e | f1 | R | f | f2 f | d4 e f d | e c d c | c1 |
	R | R | R |
	f1 | d2 c | f1 | r2 c | b b | d2. d4 | f2 f | a2. a4 |
	a2 a4 a( | a) g g2 | g1 | 
	\repeat unfold 5 { R | }
	
	c,1 | d2 e | f1 | R | f | f2 f | d4 f f d | f f f d | f1 |
	R | R | R | R |
	c( | c2) f | f1 | f2 f | e f | f2. f4 | f2 e | f d |
	e4 f a a | a f f a | a f f a | f1 |
	\repeat unfold 9 { R | }

	r2 e | f4 f g2 | r4 f e e | f2 r4 f | f2 g | a1 |
	\time 3/1
	f1 f f | f\breve e1 | d1. d2 f1 | f f d | 
	e2 f1 a2 a1 | a2 g1 f e2 | f\breve r1 |
	\repeat unfold 4 { R\breve. | }

	f1 f e | f\breve r1 |
	f1 f e | f\breve r1 |
	f1 f f | f\breve r1 |
	f1 f f | f\breve. \bar "|."
}
