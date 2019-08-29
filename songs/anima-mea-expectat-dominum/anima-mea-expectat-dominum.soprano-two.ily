SopranoTwoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus II"
	\set Staff.shortInstrumentName = "C II"

	\incipit {
		\clef "mensural-c1" \key c \major \time 2/2
		r\breve g'2.
	}

	R\breve | g2. g4 g2 a | h1 r | R\breve |
	R\breve | r1 g2. g4 | g2 a  h h | c1 c2 c( |c ) h2 a1 |
	h r2 d4 d | c c h2 r2 d4 d | c c h2 h4 g c2( |
% 2
	c4) h8 a h2 c1 | R\breve | r2 a h2. c4 | d1 e( |
	e2) e e2. e4 | cis1 d | e1. d2 |
	d1 h( | h) r1 |
	\repeat volta 2 {
		R\breve | R\breve |
% 3
		r1 r2 r4 d | e4. d8 c4 h c2 r4 d | e4. d8 c4 h c2 r2 |
		r1 r2 r4 a | h4. a8 g4 fis g2 r4 a | h4. a8 g4 fis g2 r4 a |
		h2 c d d | e1( c) |
		\time 3/1
		c1 c h | a\breve g1 | fis\breve g1 | a\breve g1 |
% 4
		g g fis | g\breve r1 | c c c | h\breve h1 | c c c | h\breve c1 |
		d\breve c1 | h a\breve |
	}
	\alternative {
		{
			\time 2/2
			\set Timing.measureLength = #(ly:make-moment 4/2)
			h\breve |
			\set Timing.measureLength = #(ly:make-moment 2/2)
			r1 |
		}
		{
			\set Timing.measureLength = #(ly:make-moment 4/2)
			h2 h c1( |
			\set Timing.measureLength = #(ly:make-moment 6/2)
			c2) c h\breve \bar "|."
		}
	}
}
