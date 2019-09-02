SopranoOneMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus I"
	\set Staff.shortInstrumentName = "C I"

	\incipit { \clef "mensural-c1" \key c \major \time 2/2 g'2. }

	g2. g4 g2 a | h1 r | g2. g4 g2 a | h h c1 |
	c2 c1 h2 | a1 h | R\breve | R\breve | R\breve |
	r2 d4 d c c h2 | r2 d4 d c c h2 | R\breve |
% 2
	r1 r2 c | h4 a g1 g2( | g4) fis8 e fis2 g1 | r2 g g c( |
	c2) c2. h2 h4 | e e r a, h2 h | c1. h2 |
	a1 d | r2 h c a( |
	\repeat volta 2 {
		a2) a g g | g1 g2 g |
% 3
		a c c h | c r4 d4 e4. d8 c4 h | c2 r4 d4 e4. d8 c4 h |
		a g g1 fis2 | g r4 a h4. a8 g4 fis | g2 r4 a h4. a8 g4 fis |
		g1. g2 | g\breve |
		\time 3/1
		\repeat unfold 5 R\breve. |
% 4
		d'1 d d | e\breve e1 | d d d | e\breve e1 | R\breve. |
		h\breve g1 | d'\breve. |
	}
	\alternative {
		{
			\time 2/2
			\set Timing.measureLength = #(ly:make-moment 4/2)
			d1 r2 h |
			\set Timing.measureLength = #(ly:make-moment 2/2)
			c
			\shape #'((0 . 0.1) (-1 . -0.7) (-2.5 . -1.5) (-3.5 . -1.3)) PhrasingSlur
			a\( <>\) |
		}
		{
			\set Timing.measureLength = #(ly:make-moment 4/2)
			d2 d e2. e4( |
			\set Timing.measureLength = #(ly:make-moment 6/2)
			e2) e d\breve \bar "|."
		}
	}
}
