AltoOneMusic = \relative c' {
	\set Staff.instrumentName = #"Altus I"
	\set Staff.shortInstrumentName = "A I"

	\incipit { \clef "mensural-c3" \key f \major \time 2/2 f'1 }

	f1 | f | c | r2 f | f4 f f2 | c r4 f | f f f2 | c r4 f | f f f2 | c1 |
	r2 f4 f | d d d2 | f1 | R | r2 f4 f | f g e2 | f1 | R |
	r2 e | e e | f e4 f( | f) d d4. d8 | d2 f( | f4) e d2 | 
	cis d4. e8 | f4 f e2 | f1 |
	\repeat unfold 7 { R | }

	r2 a4 a | a f a2 | f1 | R |
	r2 a4 a | a f a2 | f1 | R |
	r2 f( | f) d | f f | f f4 g | 
	\set Timing.measureLength = #(ly:make-moment 4/2)
	a g f e f c f2( | f) e4 d e1 |
	\set Timing.measureLength = #(ly:make-moment 2/2)
	f2 f( | f) f | c1 |

	r2 f | f f | c f | f f | c1 |
	r2 f | f f | f1 | d2 g( | g4) g f2( | f4) e8 d e2 | f1 |
	\repeat unfold 5 { R | }

	r2 f( | f) f | f d | d1( | d2) d f1 | f2 f | f2. f4 | f1 | e | f |
	\repeat unfold 9 { R | }

	r2 a4 a | a f a2 | f1 | R |
	r2 a4 a | a f a2 | f1 | R |

	r2 f( | f) d | f f | f f4 g |
	\set Timing.measureLength = #(ly:make-moment 4/2)
	a g f e f c f2( | f) e4 d e1 |
	f\breve \bar "|."
}
