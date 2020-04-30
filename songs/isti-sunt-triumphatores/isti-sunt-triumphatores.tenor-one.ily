TenoreOneMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor I"
	\set Staff.shortInstrumentName = "T I"

	\incipit { \clef "mensural-c4" \key f \major \time 2/2 c'1 }

	\clef "treble_8"
	c1 | c | a | r2 c | c4 c c2 | 
	a r4 a | c c c2 |
	a r4 a | c c c2 | a1 |
	
	r2 c4 c | b a h2 | c1 | R |
	r2 a4 c | d d2 cis4 | d1 | R |
	
	r2 c | c c | c c4 c( | c) b a4. a8 |
	h2 c( | c4) c a2 | a a4. c8 | c4 a g2 | f1 |
	\repeat unfold 7 { R | }

	r2 a4 a | cis d e2 | d1 | R |
	r2 f4 d | cis d e2 | d1 | R |

	r2 d( | d) b | b b | b1 |
	\set Timing.measureLength = #(ly:make-moment 4/2)
	c\breve | c1 r |
	\set Timing.measureLength = #(ly:make-moment 2/2)

	c1 | c | a | r2 c | c c | a a | c c | a1 |
	r2 c | c d | c1 | b2 es( | es) c | c1 | c |
	\repeat unfold 5 { R | }

	r2 c( | c) c | c b | a1 | b | c | d2 b | a2 c |
	d d( | d4) cis8 h cis2 | d1 |
	\repeat unfold 9 { R | }

	r2 a4 a | cis d e2 | d1 | R |
	r2 f4 d | cis d e2 | d1 | R |

	r2 d( | d) b | b b | b1 |
	\set Timing.measureLength = #(ly:make-moment 4/2)
	c\breve( | c) | a\breve | 
	\bar "|."
}
