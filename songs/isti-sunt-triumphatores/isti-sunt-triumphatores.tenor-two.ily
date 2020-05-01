TenoreTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor II"
	\set Staff.shortInstrumentName = "T II"

	\incipit {
		\clef "mensural-c4" \key f \major \time 2/2
		r1 c'
	}

	\clef "treble_8"
	R1 | c | c | a | r2 c | c4 c c2 | 
	a r4 a | c c c2 |
	a r4 a | c c c2 | a1 | R |

	r2 c4 c | b a h2 | c1 | R |
	r2 d4. c8 | h4 c2 h4 | c1 |
	\repeat unfold 7 { R | }

	r2 c | c c | c c4 c( | c) a a4. a8 |
	a2 d( | d4) c b2 | a g4 b | g f g2 | f1 | R |

	r2 a4 a | cis d e2 | d1 | R |
	r2 f4 d | cis d e2 | d1 |

	r2 d( | d) d | d, d |
	\set Timing.measureLength = #(ly:make-moment 4/2)
	f\breve | g\breve |
	\set Timing.measureLength = #(ly:make-moment 2/2)

	f1 | r2 c' | c1 | a | r2 c | c c | a a | c c | a1 |
	\repeat unfold 5 { R | }

	r2 c | c d | c1 | b2 es( | es) c | c1 | c |
	\repeat unfold 9 { R | }

	r2 d( | d) d | d b | b1( | b2) g | a1 |
	h2 h | c1 | d2 d( | d) cis | d1 | R |

	r2 a4 a | cis d e2 | d1 | R |
	r2 f4 d | cis d e2 | d1 |

	r2 d( | d) d | d, d |
	\set Timing.measureLength = #(ly:make-moment 4/2)
	f\breve | g | f \bar "|."
}
