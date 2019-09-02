
BassTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Bassus II"
	\set Staff.shortInstrumentName = "B II"

	\incipit {
		\clef "mensural-f" \key c \major \time 2/2
		r\breve g2.
	}

	\clef bass
	R\breve | g2. g4 e2 d | g,1 r | R\breve |
	R\breve | r1 g'2. g4 | e2 d g e | a2. g4 f2. g4 |
	a2 g d d | g,1 r2 g'4 g | c, c g2 r g'4 g |
	c, c g'2 g4 e f2 |
% 2
	g1 c, | R\breve | r2 d g g( | g) g c,2. c4 |
	a1 e'2 e | a,1 g | c1. g2 | d'1 g,( | g) r1 |
	\repeat volta 2 {
		R\breve | R\breve |
		r1 r2 r4 g' | c4. h8 c4 g c,2 r4 g' |
		c4. h8 c4 g c,2 r | r1 r2 r4 d4 | g4. fis8 g4 d g,2 r4 d'4 |
		g4. fis8 g4 d g,2 r4 d' | g2 e g g | e1( g) |
		\time 3/1
		c,1 f g | d\breve g,1 | d'\breve g1 | f\breve g1 |
% 4
		c,1 d d | g,\breve r1 | r2 c1 c c2 | g'\breve  g1 |
		c, c c | g'1. g2 c,1 | g g c | g d'1. d2 |
	}
	\alternative {
		{
			\time 2/2
			\set Timing.measureLength = #(ly:make-moment 4/2)
			g,\breve |
			\set Timing.measureLength = #(ly:make-moment 2/2)
			R1
		}
		{
		  \set Timing.measureLength = #(ly:make-moment 4/2)
			g2 g c1( |
			\set Timing.measureLength = #(ly:make-moment 6/2)
			c2) c g\breve \bar "|."
		}
	}
}
