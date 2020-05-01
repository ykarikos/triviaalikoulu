AltoTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus II"
	\set Staff.shortInstrumentName = "A II"

	\incipit {
		\clef "mensural-c3" \key f \major \time 2/2
		r1 c'1
	}

	R1 | R | c1 | d2 e | f1 |
	R | R | R |
	f | f2 f | d4 e f d | e c d c | c1 |
	r2 f | d c | c1 |
	\repeat unfold 6 { R | }
	g'1 | a2 a | f f | d d | b b | c c | c1 | R |
	c | d2 e | f1 |
	R | R | R |
	f | e2 f | f4 f f d | f f e d | e1 | f | c | d | c |
	\repeat unfold 7 { R | }
	r2 f | f d | f a | a1 | a2 f | e1 | f2 f | e d |
	e f( | f4) g g2 | e1 | r2 e | f4 f g2 |
	r4 a g g | f f2 e4 | f1 |
	\time 3/1
    \set Score.tempoHideNote = ##t
    \tempo 2 = 240
    c\breve r1 |
    \repeat unfold 5 { R\breve. | }
    f\breve e1 | f1. e2 d1 | d f e | g2 f1 f2 d1 |
    es2 es1 d2 c1 | c\breve r1 |
    f1 f e | f\breve r1 |
    f1 f e | f\breve r1 |
    f,1 f f | f2 f'1 c2 c1 | c\breve. \bar "|."
}
