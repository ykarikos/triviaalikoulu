AltoTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus II"
	\set Staff.shortInstrumentName = "A II"

	\incipit {
		\clef "mensural-c3" \key c \major \time 2/2
		r\breve d'2.
	}

	R\breve | d2. d4 e2 fis | g1 r | R\breve |
	R\breve | r1 d2. d4 | e2 fis g g | e a a2. g8 f |
	e4 f g2( g) fis | g1 r2 g4 g | g g g2 r2 g4 g | g g g g d e f e8 f |
% 2
 	g1 e | R\breve | r2 d h4 a g2 | g'2. f4 e d c2( |
	c4) d e2( e4) d8 c h2 | a1 d4 c h a | g2 c g d' |
	d1. g2 | g1 r |
	\repeat volta 2 {
		R\breve | R\breve |
% 3
		r1 r2 r4 g | g4. g8 g4 g g2 r4 g | g4. g8 g4 g g2 r2 |
		r1 r2 r4 d | d4. d8 d4 d d2 r4 d | d4. d8 d4 d d2 r4 d |
		d2 e d g | g2.( f4 e1) |
		\time 3/1
		g1 a g | fis\breve d1 | d\breve d1 | f!\breve d1 |
		e d1. d2 | d\breve r1 | c e g | g d g | c, e g | g g g |
		g1. g2 g1( | g) g fis |
	}
	\alternative {
		{
			\time 2/2
			\set Timing.measureLength = #(ly:make-moment 4/2)
			g\breve |
			\set Timing.measureLength = #(ly:make-moment 2/2)
			r1 |
		}
		{
			\set Timing.measureLength = #(ly:make-moment 4/2)
			g2 g g1( |
			\set Timing.measureLength = #(ly:make-moment 6/2)
			g2) g g\breve \bar "|."
		}
	}
}
