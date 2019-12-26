AltoOneMusic = \relative c' {
	\set Staff.instrumentName = #"Altus I"
	\set Staff.shortInstrumentName = "A I"

	\incipit { \clef "mensural-c3" \key c \major \time 2/2 d'2. }

	d2. d4 e2 fis | g1 r | d2. d4 e2 fis | g g e a |
	a2. g8 f e4 f g2( | g) fis g1 | R\breve | R\breve |
	R\breve | r2 g4 g g g g2 | r2 g4 g g g g2 | R\breve |
% 2
	r1 r2 g | g d2. e4 h c | d2 d2. d4 g2 | g4 fis8 e d2 g g |
	a e r e | e e4 fis g2 g( | g4) f e f g2  g |
	a d, r1 | r2 g g a4 g |
	\repeat volta 2 {
		f2. e4 d2 d | d1 e2 d |
% 3
		f e g g | g r4 g g4. g8 g4 g | g2 r4 g g4. g8 g4 g |
		e4. d8 h4 c d2 d | d r4 d d4. d8 d4 d | d2 r4 d d4. d8 d4 d |
		d2 c g4 a h h | c2. d4 e1 |
		\time 3/1
		\repeat unfold 5 R\breve. |
% 4
		g1 g g | g\breve g1 | g g g | g\breve g1 | R\breve. |
		d\breve e1 | d d\breve |
	}
	\alternative {
		{
			\time 2/2
			\set Timing.measureLength = #(ly:make-moment 4/2)
			d1 r2 g |
			\set Timing.measureLength = #(ly:make-moment 2/2)
			g a4 g |
		}
		{
			\set Timing.measureLength = #(ly:make-moment 4/2)
			d2 g g2. f4
			\set Timing.measureLength = #(ly:make-moment 6/2)
			e2 c d\breve \bar "|."
		}
	}
}
