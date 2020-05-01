SopranoTwoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus II"
	\set Staff.shortInstrumentName = "C II"

	\incipit {
		\clef "mensural-c1" \key f \major \time 2/2
		r1 a'1
	}

	R1 | a | a | c | r2 a | a4 a c2 | c r4 a |
	a a c2 | c r4 a | a a c2 | c1 |
	R | r2 a4 a | g fis g2 | a1 | R |
	                 % a1 ?
	r2 a4 a | g f g2 | g1 | 
	\repeat unfold 7 { R | }

	r2 a | a a | g a4 g( | g) f e e |
	f2 b( | b4) a g2 | fis g4. f8 | e4 f e2 | f1 |

	R r2 d'4 f | e d cis2 | d1 | R |
	r2 d4 f | e d cis2 | d1 |
	r2 d( | d) b | b b |
	\set Timing.measureLength = #(ly:make-moment 4/2)
	        % a
	a\breve | g |
	\set Timing.measureLength = #(ly:make-moment 2/2)
	a1 | r2 a( | a) a | c1 |

	r2 a | a c | c a | a c | c1 |
	\repeat unfold 5 { R | }

	r2 a | a b( | b) a | g b( | b) a | g1 | a |
	\repeat unfold 9 { R | }

	r2 a( | a) a | a g | f1 | g2 g( | g) fis |
	g g | a2. a4 | a1 | a | a | R |

	r2 d4 f | e d cis2 | d1 | R |
	r2 d4 f | e d cis2 | d1 | 
	r2 d( | d) b | b b | 
	\set Timing.measureLength = #(ly:make-moment 4/2)
	a\breve | g\breve | a\breve \bar "|."
}
