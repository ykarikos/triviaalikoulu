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
	g4) fis8 e fis2 g1 | r2 g c, f( | f) f g g |
}
