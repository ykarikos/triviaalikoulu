BassOneMusic = \relative c {
	\set Staff.instrumentName = #"Bassus I"
	\set Staff.shortInstrumentName = "B I"

	\incipit { \clef "mensural-f" \globalkey \globaltime c1 }

	\clef bass
	c1 | g' | f | c2 g'( | g4) e a2 | g d |
	e a4. gis8 | a4 e a2 | e d | d8( e f g a2) | d, g4 c, | g'4. a8 g2 | c,1 |
	\repeat unfold 11 {R |}
	% s 122
	r2 c | g c | g'2. c,4 | g2 g' | g1 | r2 c, | f c | r c | f c4 e | f g c, d | g,1 |
	\repeat unfold 5 { R |}
	% s 123
	r2 g'( | g4) g g,2 | g'1 | d | r2 c | g c4( d |
	e d e f | g1) | e2 c | f e | a d, | a'4 c2 g4 | c,1 |
	\repeat unfold 3 { R | }
	% s 124
	r2 a | d c | f e | a g4. g8 | c,1 | R | R | R |
	r2 c | f d | e a4 g( | g) c, g'2 | c,1 | R | R |
	r2 g' | e4 c g2 | c r4 g' | e c g2 | c g' |

	% 125
	\time 3/1
    \set Score.tempoHideNote = ##t
    \tempo 2 = 240
	e\breve r1 |
	g1. d2 g1 | c,1. g2 c1 | f1. c2 f1 | g a g | c, c g | c\breve r1 |
	\repeat unfold 5 { R\breve. | }
	% 126
	\globaltime c1 | f2 a | g1 | R |
	r2 d | g h | a1 | R |
	r2 e | a e | a4 f g d | g e c g | c1 | R | R | R |
	% 127
	c2 g'4 g | e c g' g |
	e2 c | g'1 | e( | d ) | c( | c) \bar "|."
}
