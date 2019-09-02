BassOneMusic = \relative c' {
	\set Staff.instrumentName = #"Bassus I"
	\set Staff.shortInstrumentName = "B I"

	\incipit { \clef "mensural-f" \key c \major \time 2/2 g2. }

	\clef bass
	g2. g4 e2 d | g,1 r | g'2. g4 e2 d | g e a2. g4 |
	f2. g4 a2 g | d2. d4 g,1 | \repeat unfold 3 R\breve |
	r2 g'4 g c, c g2 | r g'4 g c, c g2 | R\breve
% 2
	r1 r2 c | e g2. c,4 e2 | d1 g, | g2 g'2. f4 e2 |
	e a2. gis8 fis gis4 gis | a2 e g g4 f | e d c d e f g2( |
	g4) fis8 e fis2 g1 | r2 g c, f( |
	\repeat volta 2 {
		f) f g g | g1 c,2 g' |
% 3
		f a g g | c, r4 g' c4. h8 c4 g | c,2 r4 g' c4. h8 c4 g |
		c,2 e d d | g, r4 d'4 g4. fis8 g4 d | g,2 r4 d'4 g4. fis8 g4 d |
		g,1. g2 | c\breve |
		\time 3/1
		\repeat unfold 5 R\breve. |
% 4
		g'1 g g | c,\breve c1 | g1 g g | c\breve c1 | R\breve. |
		g'\breve c,1 | g'1 a\breve |
	}
	\alternative {
		{
			\time 2/2
			\set Timing.measureLength = #(ly:make-moment 4/2)
			g1 r2 g |
			\set Timing.measureLength = #(ly:make-moment 2/2)
			c,
			\shape #'((0 . 0) (-1 . -0.2) (-2.3 . -0.2) (-3.4 . -0.2)) PhrasingSlur
			f\( <>\) |
		}
		{
			\set Timing.measureLength = #(ly:make-moment 4/2)
			\omit Slur
			g2 g e2.( d4 |
			\set Timing.measureLength = #(ly:make-moment 6/2)
			c2) g' g\breve \bar "|."
		}
	}
}
