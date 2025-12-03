BassOneMusic = \relative c {
	\set Staff.instrumentName = #"Bassus I"
	\set Staff.shortInstrumentName = "B I"

	\incipit { \clef "mensural-f" \key f \major \time 2/2 f1 }

	\clef bass
	f1 | f, | f' | r2 f, | f'4 f f2 | f r4 f, | f' f f2 |
	f r4 f, | f' f f2 | f1 | r2 f4 f | g d g2 | f1 | R |
	r2 f4 a | b g a2 | d,1 | R | 

	r2 c | c c | f c4 f( | f) g d4. d8 |
	g2 f( | f4) c d2 | a d4. c8 | f4 f, c'2 | f,1 |
	\repeat unfold 7 { R | }

	r2 f'4 f | a b a2 | d,1 | R |
	r2 d4 d | a' b a2 | d,1 | R |
	r2 d | b1 | b2 d | f1( | 
	\set Timing.measureLength = #(ly:make-moment 4/2)
	f) c | c r |
	\set Timing.measureLength = #(ly:make-moment 2/2)

	f | f, | f' | r2 f, | f' f | f f | f f | f1 |
	r2 f | f b, | f'1 | g2 es( | es) f | c1 | f, |
	\repeat unfold 5 { R | }

	r2 f'( | f) f | f g | d1 | g | f | b,2 b | f'2. f4 | d1 | a' | d, |
	\repeat unfold 9 { R | }

	r2 d4 d | a' b a2 | d,1 | R |
	r2 d4 d | a' b a2 | d,1 | R |
	r2 d | b1 | b2 d | 
	
	% d\breve | c1 | f,breve 
	f1( | 
	\set Timing.measureLength = #(ly:make-moment 4/2)
	f) c | c\breve( | c) \bar "|."
}
