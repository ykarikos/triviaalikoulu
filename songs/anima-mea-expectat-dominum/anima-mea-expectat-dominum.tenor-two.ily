TenoreTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor II"
	\set Staff.shortInstrumentName = "T II"

	\incipit {
		\clef "mensural-c4" \key c \major \time 2/2
		r\breve h2.
	}

	\clef "treble_8"
	R\breve | h2. h4 h2 d | d1 r | R\breve |
	R\breve | r1 h2. h4 | h2 d d e | c4 d e2 f c( |
	c) d d1( | d) r2 d4 d | e e d2 r2 d4 d | e e d4.( c8 h2) c |
% 2
	d d c1 | R\breve r2 d d4 c h a | g a h2 c c4 d |
	e d c2 h2. h4 | a1 r2 d | c1. h2 | d d d1 | h r |
	\repeat volta 2 {
		R\breve | R\breve |
% 3
		r1 r2 r4 d | c4. d8 e4 d c2 r4 d | c4. d8 e4 d c2 r2 |
		r1 r2 r4 d | d4. d8 h4 a g2 r4 d' | d4. d8 h4 a g2 r4 d' |
		d2 g, g g | g\breve |
		\time 3/1
		e'1 f d | d\breve h1 | a\breve h1 | c\breve h1 |
% 4
		c a a | g\breve r1 | g g g | h h2 c d1 | r2 g,2 g1 c |
		d\breve e1 | d h c2 g | g1 d d' |
		}
		\alternative {
			{
				\time 2/2
				\set Timing.measureLength = #(ly:make-moment 4/2)
				d\breve |
				\set Timing.measureLength = #(ly:make-moment 2/2)
				r1 |
			}
			{
				\set Timing.measureLength = #(ly:make-moment 4/2)
				h2. a4 g1(
				\set Timing.measureLength = #(ly:make-moment 6/2)
				g2) g g\breve \bar "|."
			}
	}
}
