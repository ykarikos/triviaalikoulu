
BassTwoMusic = \relative c {
	\set Staff.instrumentName = #"Bassus II"
	\set Staff.shortInstrumentName = "B II"

	\incipit {
		\clef "mensural-f" \key f \major \time 2/2
		r1 f
	}

	\clef bass
	R1 | f | f, | f' | r2 f, | f'4 f f2 |
	f r4 f, | f' f f2 | f r4 f, | f' f f2 | f1 | R |
	r2 f4 f | g d g2 | f1 | R | r2 d4 f | g a g2 | c,1 |
	\repeat unfold 7 { R | }

	r2 f, | f f | c' f,4 c'( | c) d a4. a8 | d2 b( | b4) f4 g2 |
	d' es4. b8 | c4 d c2 | f,1 | R |
	r2 d'4 d | a' b a2 | d,1 | R |
	r2 d4 d | a' b a2 | d,1 | 
	r2 d | b1 | b2 b |
	\set Timing.measureLength = #(ly:make-moment 4/2)
	f\breve | c' |
	\set Timing.measureLength = #(ly:make-moment 2/2)

	f,1 | f' | f, | f' |
	r2 f, | f' f | f f, | f f | f'1 |
	\repeat unfold 5 { R | }
	r2 f | f b, | f'1 | g2 es( | es) f | c1 | f, |
	\repeat unfold 9 { R | }

	r2 d'( | d) d | d es | b1 | es | d | g,2 g' | f2. f4 |
	d1 | a' | d, | R |
	r2 d4 d | a' b a2 | d,1 | R |
	r2 d4 d | a' b a2 | d,1 |
	r2 d | b1 | b2 b |
	\set Timing.measureLength = #(ly:make-moment 4/2)
	f\breve | c' | f, \bar "|."
}
