AltoTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus II"
	\set Staff.shortInstrumentName = "A II"

	\incipit {
		\clef "mensural-c3" \key f \major \time 2/2
		r1 f'
	}

	R1 | f | | f | c | r2 f | f4 f f2 | 
	c r4 f | f f f2 | 
	c r4 f | f f f2 | f1 | R |
	r2 f4 f | d d d2 | f1 | R |
	r2 f4 f | d c d2 | e1 | 
	\repeat unfold 7 { R | }

	r2 f | f f | e f4 e | e d2 cis4 | 
	d2 f( | f4) f d2 | d b4. d8 | c4 b c2 | c1 | R |
	r2 a'4 a | a f a2 | f1 | R |
	r2 a4 a | a f a2 | f1 |
	r2 f( | f) d | b f | 

	\set Timing.measureLength = #(ly:make-moment 4/2)
	f a2. g4 a b | c\breve |
	\set Timing.measureLength = #(ly:make-moment 2/2)

	c1 | r2 f( | f) f | c1 | r2 f | f f | c f | f f | c1 |
	\repeat unfold 5 { R | }

	r2 f | f f | f1 | d2 g( | g4) g f2( | f) e | f1 |
	\repeat unfold 9 { R | }

	r2 f( | f) f | f es( | es) d( | d) c | d1 | 
	d2 d | f2. f4 | f1 | e | fis | R |

	r2 a4 a | a f a2 | f1 | R |
	r2 a4 a | a f a2 | f1 | 

	r2 f( | f) d | b f |
	\set Timing.measureLength = #(ly:make-moment 4/2)
	f a2. g4 a b | c\breve | c \bar "|."
}
