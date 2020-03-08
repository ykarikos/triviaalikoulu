SopranoOneMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus I"
	\set Staff.shortInstrumentName = "C I"

	\incipit { \clef "mensural-c1" \key f \major \time 2/2 a'1 }

	a1 | a | c | r2 a | a4 a c2 | c r4 a |
	a a c2 | c r4 a | a a c2 | c1 |
	r2 a4 a | g fis g2 | a1 | R |
	r2 c4 c | b b a2 | a1 | R |
	r2 g | g g | a g4 a( | a) g g fis |
	g2 a( | a4) g f2 | e f4. g8 | a4 c c2 | a1 |
	\repeat unfold 7 { R | }

	%  d4 ?
	r2 c4 f | e d cis2 | d1 | R |
	r2 d4 f | e d cis2 | d1 | R |
	%  b ?
	r2 a | b1 | d2 d | d1 |
	\set Timing.measureLength = #(ly:make-moment 4/2)
	c\breve | c\breve |
	\set Timing.measureLength = #(ly:make-moment 2/2)

	r2 a( | a) a | c1 | r2 a | a c | c a | a c | c1 |
	r2 a | a b( | b) a | g b( | b) a | g1 | a |
	\repeat unfold 5 { R | }

                 % a( | a) ?
	r2 a( | a) a | a g( | g) fis | g b( | b4) a a2 |
	b d | c a | a1 | a | a |
	\repeat unfold 9 { R | }

	r2 d4 f | e d cis2 | d1 | R |
	r2 d4 f | e d cis2 | d1 | R |
	r2 a | b1 | d2 d | d1 |
	\set Timing.measureLength = #(ly:make-moment 4/2)
	c\breve | c\breve \bar "|."
}
