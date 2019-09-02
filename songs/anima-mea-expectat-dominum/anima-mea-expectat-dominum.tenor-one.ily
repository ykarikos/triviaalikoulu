TenoreOneMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor I"
	\set Staff.shortInstrumentName = "T I"

	\incipit { \clef "mensural-c4" \key c \major \time 2/2 h2. }

	\clef "treble_8"
	h2. h4 h2 d | d1 r | h2. h4 h2 d | d e c4 d e2 |
	f c1 d2 | d\breve | R\breve | R\breve | R\breve |
	r2 d4 d e e d2 | r2 d4 d e e d2 | R\breve |
% 2
	r1 r2 e2 | e h2. c4 g2 | a1 h | g4 a g a h c c2 |
	c a c4 h h2 | a e' h4 a g2 | g1. g2 | a1 g | r2 d' e c |
	\repeat volta 2 {
		a c c h4 a | h2 h c h |
% 3
		c c d g, | g r4 d' c4. d8 e4 d | c2 r4 d c4. d8 e4 d |
		c4 h a g a2 a | g r4 d' d4. d8 h4 a | g2 r4 d' d4. d8 h4 a |
		g g c g d'2 d | c\breve |
		\time 3/1
		\repeat unfold 5 R\breve. |
% 4
		h1 h h | c\breve c1 | d d d | c\breve c1 | R\breve. |
		h\breve c1 | d\breve a1 |
	}
	\alternative {
		{
			\time 2/2
			\set Timing.measureLength = #(ly:make-moment 4/2)
			g1 r2 d'2 |
			\set Timing.measureLength = #(ly:make-moment 2/2)
			e c |
		}
		{
			\set Timing.measureLength = #(ly:make-moment 4/2)
			g2 d' c1( |
			\set Timing.measureLength = #(ly:make-moment 6/2)
			c2) g h\breve \bar "|."
		}
	}
}
